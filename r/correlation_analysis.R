# path <- "/Users/liza/Master/build_prediction_ml/data/jobs_set_full_with_bot_names.csv"
# path <- "/Users/liza/Master/build_prediction_ml/data/bots/simple_bots_set_preprocessed_bot_names.csv"
# path <- "/Users/liza/Master/build_prediction_ml/data/features/features_combined.csv"
# path <- "/Users/liza/Master/build_prediction_ml/data/features/features_with_patch_info_normalized.csv"
path <- "/Users/liza/Master/build_prediction_ml/data/features/features_with_patch_info_normalized_files.csv"

df22 <- read.csv(path, sep = ",")

library(rms)
library(ggplot2)

# ========= correlation analysis ========#

frmla <- ~ user_success_ratio + bots_success_ratio + bots_flip_success_ratio + jobs_success_ratio + lines_inserted + lines_deleted + number_of_unique_files_touched
  
vobj <- varclus(frmla, data = df22, trans = "abs")
vobjLabels <- c(
  "user_success_ratio","bots_success_ratio","bots_flip_success_ratio","jobs_success_ratio","lines_inserted", "lines_deleted", "number_of_unique_files_touched"
  )
plot(vobj, labels = vobjLabels)
abline(h = 0.3)

frmla <- ~ user_success_ratio + bots_success_ratio + bots_flip_success_ratio + jobs_success_ratio + lines_inserted + lines_deleted
plot(varclus(frmla, data = df22, trans = "abs"))
abline(h = 0.3)

# ========= redundency analysis ========#

redun_obj <- redun(frmla, data = df22, r2 = 0.9, nk = 0)
print(redun_obj)

# ========= Allocate Degrees of Freedom ========#

frmla <- label~user_success_ratio + bots_success_ratio + bots_flip_success_ratio + jobs_success_ratio + lines_inserted + lines_deleted
objLabels <- c(
  "user success ratio", "bots success ratio", "bots flip success ratio", "jobs success ratio", "lines_inserted", "lines_deleted"
) 
plot(spearman2(formula = frmla, data = df22, p = 2), labels = rev(objLabels))


# ========= Fit model ========#
frmla <- label~ rcs(user_success_ratio, 3) + rcs(bots_success_ratio,3) + rcs(bots_flip_success_ratio,3) + jobs_success_ratio + lines_inserted + lines_deleted
print(frmla)

dd <- datadist(df22)
options(datadist = "dd")
model <- lrm(frmla, data = df22, x = T, y = T, scale = TRUE)
# maxit=1000 # https://stackoverflow.com/questions/51706904/unable-to-fit-model-using-lrm-fit
print(model)

# ========= Assesment of Model stability ========# RERUN
num_iter <- 1000
val_obj <- validate(model, B = num_iter)
print(val_obj)

# ========= Estimate AUC mean optimism ========#
# http://rstudio-pubs-static.s3.amazonaws.com/6232_a31888dc084148caaffde80482a1afe4.html
CalculateAucFromDxy <- function(validate) {
  ## Test if the object is correct
  stopifnot(class(validate) == "validate")

  ## Calculate AUCs from Dxy's
  aucs <- (validate["Dxy", c("index.orig", "training", "test", "optimism", "index.corrected")]) / 2 + 0.5

  ## Get n
  n <- validate["Dxy", c("n")]

  ## Combine as result
  res <- rbind(validate, AUC = c(aucs, n))

  ## Fix optimism
  res["AUC", "optimism"] <- res["AUC", "optimism"] - 0.5

  ## Return results
  res
}

print(CalculateAucFromDxy(val_obj))

# ========= Estimate the power of explanatory variables ========#

print(anova(model, test = "Chisq", tol = 1e-13))

undo_transform <- function(x) {
  result <- exp(x) / (1 + exp(x))
  return(result)
}

bootcov_model <- bootcov(model, B = num_iter)

ggplot(Predict(bootcov_model, bots_flip_success_ratio, fun = function(x) {
  return(undo_transform(x))
})) +
  theme_classic() +
  xlab("Bots flip success ratio") +
  ylab("Probability") +
  theme(
    axis.text.x = element_text(size = 10),
    axis.text.y = element_text(size = 10),
    axis.title.x = element_text(size = 10),
    axis.title.y = element_text(size = 10)
  ) +
  theme(panel.border = element_rect(color = "black", fill = NA, size = 1))

ggplot(Predict(bootcov_model, user_success_ratio, fun = function(x) {
  return(undo_transform(x))
})) +
  theme_classic() +
  xlab("User success ratio") +
  ylab("Probability") +
  theme(
    axis.text.x = element_text(size = 10),
    axis.text.y = element_text(size = 10),
    axis.title.x = element_text(size = 10),
    axis.title.y = element_text(size = 10)
  ) +
  theme(panel.border = element_rect(color = "black", fill = NA, size = 1)) +
  scale_x_continuous(trans = "log10") +
  scale_x_log10(
    breaks = scales::trans_breaks("log10", function(x) 10^x),
    labels = scales::trans_format("log10", scales::math_format(10^.x))
  )
