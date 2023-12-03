path <- "/Users/liza/Master/build_prediction_ml/data/bots/simple_bots_set_preprocessed_bot_names.csv"

df22 <- read.csv(path, sep = ",")
# df22$most_recent_duration <- df22$most_recent_duration / 1000 / 60

library(rms)

# ========= correlation analysis ========#

frmla <- ~ netapp_eseries_ci_time + mawawdeh_time + octaviasonar + cisco_fwaas_ci_time + prophetstor_ci + reduxio_devops_maxtime + ibmdb2_time + ATT_OSH_CI + ibm_gpfs_ci_maxtime + quantastor_ci + ibm_svf_ci_maxtime + open_e_ci_joviandss_time + huawei_ironic_driver_ci + sriovci + oracle_zfssa_ci_time + netapp_fc_ci_maxtime + oracle_zfssa_ci_maxtime + lenovo_lxca_ci + ibm_storage_ci + neutron_hyperv_ci + rdo_ci_downstream + seagate_ci + hds_hnas_ci + hyper_v_ci + veritas_hyperscale_ci + brocade_lbaas_ci_time + vedams_dothill_ci_maxtime + huawei_cinder_ci_maxtime + turbo_hipster_time + Open_EJovianDSS_maxtime + huawei_ironic_driver_ci_time + odl_jenkins + purestorage_thirdparty_ci_maxtime + vmware_congress_ci_maxtime + openstack_ironic_ci_time + cisco_ml2_ci_time + hitachi_ci_maxtime + ATT_airship_CI + hedvig_ci_time + cisco_csr1kv_ci_maxtime + ufcg_oneview_ci + vedams_lenovo_ci_time + nexentaci + nimbleci + ufcg_oneview_ci_time + intel_networking_ci_time + freescale_ci_maxtime + huawei_volume_ci_maxtime + cisco_tailf_ci + midokura_maxtime + sf_project_io_time +rerun_result

# + blockbridge + cinder_cisco_maxtime + odl_jenkins_time + netapp_ontap_ci_time + rdo_ci + emc_vmax_ci + neutron_hyperv_ci_maxtime + nec_cinder_ci_time + netapp_solidfire_ci + INSPUR_CI + metaplugintest + xio_ise_iscsi_ci + Intel_Zuul_maxtime + cloudfoundersci_time + cinokiaironic + hjy + Brocade_Openstack_CI + pluribus + vedams_hp_ci + reduxio_devops_time + hedvig_ci + ibm_storage_ci_maxtime + ibmxivci_time + brocade_oss_service_time + proliantci_maxtime + emc_unity_ci_time + hustnw_time + CloudbyteCI_maxtime + cinokiaironic_maxtime + hpn_time + xp_cinder_ci + Fujitsu_ETERNUS_CI_time + datacore_cinder_ci + prophetstor_ci_maxtime + LINBIT_LINSTOR_CI + varmourci_maxtime + lenovo_ci_maxtime + emc_corphd_ci_time + nexentaci_time + cisco_n1kv_ci_maxtime + nec_openstack_ci_time + launchpadsync_time + hgst_solutions_ci + airship2ci_time + ibm_gpfs_ci + intel_nfv_ci_time + ibmdb2 + lenovo_lxca_ci_maxtime + vmwareminesweeper_maxtime + infinidat_openstack_maxtime + hitachi_ci_time + hedvig_ci_maxtime + neutron_hyperv_ci_time + nec_cinder_ci_maxtime + ibmmanilaci + emc_vnx_ci_time + hp_cinder_ci_maxtime + dellpvme_ci + brocade_lbaas_ci_maxtime + dell_emc_sc_series_ci + zadara_time + mellanox + purestorage_cinder_ci_maxtime + storpoolci_maxtime + limestone_ci + emc_vnx_ci_maxtime + elasticrecheck_time + InfortrendCI_maxtime + datera_ci + emc_xio_ci + arista_test + sriov_taas + netapp_ci_maxtime + hpmsa_ci_time + sriov_taas_maxtime + nexentaedge_maxtime + cinder_cisco_time + quantastor_ci_time + reduxio_devops + vmwareminesweeper_time + contrail + nec_cinder_ci + Intel_Zuul + ATT_OSH_CI_time + emc_vmaxsmis_ci_maxtime + ibm_svf_ci_time + infinidat_openstack_time + coho_openstack_ci + k2_fc_time + hitachi_hbsd_ci_maxtime + intel_rsd_ci + charlespiercey_maxtime + fuel_packaging_ci_time + limestone_ci_maxtime + nimbleci_maxtime + ibm_zkvm_ci + hpe_nimble_time + vedams_hp_ci_maxtime + cisco_ucsm_ci_maxtime + ibmgpfscinderci_maxtime + jenkins_maxtime + disco_ci_maxtime + vedams_dothill_ci_time + emc_vmaxsmis_ci_time + cisco_fwaas_ci_maxtime + zuul + emc_xio_ci_maxtime + microsoft_iscsi_ci_time + sriovci_time + ddn_openstack_maxtime + purestorage_cinder_ci + dell_storage_ci_time + cisco_apic_ci_maxtime + nuage_ci_maxtime + netapp_ci + nova_hyperv_ci + dell_emc_ps_series_ci + disco_ci_time + ibm_zkvm_ci_time + hp_storage_blr_ci_maxtime + vzstorage_ci_maxtime + Fujitsu_iRMC_CI_time + hustnw + vedams_dothill_ci + seagate_ci_time + cisco_csr1kv_ci_time + zadara_maxtime + falconstor_ci_maxtime + xp_cinder_ci_time + emc_corphd_ci_maxtime + zvmosci_time + mellanox_maxtime + elasticrecheck_maxtime + mellanox_time + rdothirdparty_maxtime + microsoft_nova_ci + datera_maxtime + vtas_access_ci + ibmcimaster + blockbridge_maxtime + cisco_vpnaas_ci_maxtime + odl_jenkins_maxtime + Fujitsu_C_Fabric_CI_maxtime + xio_ise_iscsi_ci_time + blockbridge_time + pluribus_time + intel_nfv_ci + ddn_openstack_time + contrail_time + citrix_xenserver_ci + plumgrid_ci + virtuozzo6_ci_maxtime 


# coho_openstack_ci_maxtime + tegile_maxtime + vexxhost + hpe_nimble_maxtime + hpn + suse_ci_maxtime + arista_test_maxtime + brocade_lbaas_ci + CloudbyteCI + ericsson_cicd_time + Intel_Zuul_time + synocinder_maxtime + Fujitsu_C_Fabric_CI + hjy_maxtime + netapp_solidfire_ci_time + INSPUR_CI_maxtime + ibm_storewize_ci + ibmcimaster_time + quobyteci + dell_emc_sc_series_ci_time + datera_ci_time + netapp_solidfire_ci_maxtime + hp_cinder_ci_time + microsoft_cinder_ci_time + zuul_time + ibmgpci + tegile + storpoolci + Brocade_Openstack_CI_maxtime + ibmxivci_maxtime + sfci + huawei_ironic_driver_ci_maxtime + intel_networking_ci + suse_ci_time + nec_openstack_ci + datera + charlespiercey + powerkvm_time + turbo_hipster_maxtime + cisco_n1kv_ci_time + openstack_ironic_ci + bsn_maxtime + k2_fc + yangziguan_time + dell_emc_ps_series_ci_time + purestorage_thirdparty_ci_time + falconstor_ci + kaminario + fuel_packaging_ci_maxtime + neutronryu_maxtime + zvmosci_maxtime + emc_vmaxsmis_ci + InfortrendCI + yangziguan_maxtime + ibmsdnve + plumgrid_ci_maxtime + ibm_storewize_ci_maxtime + netapp_ontap_ci + hds_hnas_ci_maxtime + cinokiaironic_time + caiqilong + netapp_ci_time + brocade_oss_service + XenProject_CI_time + vmwareminesweeper + flashci_maxtime + ibm_storewize_ci_time + NetApp_ci + synocinder_time + purestorage_thirdparty_ci + vmware_congress_ci_time + quobyteci_maxtime + seagate_ci_maxtime + veritas_hyperscale_ci_time + sriov_taas_time + Fujitsu_C_Fabric_CI_time + cisco_tailf_ci_time + emc_unity_ci + hustnw_maxtime + netapp_fc_ci_time + INSPUR_CI_time + cisco_ironic_ci_maxtime + microsoft_neutron_ci + proliantci_time + sf_project_io + veritas_hyperscale_ci_maxtime + oneconvergence_time + open_e_ci_joviandss + Open_EJovianDSS_time + hpmsa_ci_maxtime + hp_storage_ci_time + XenProject_CI + ibm_storwize_ci_maxtime + vtas_access_ci_maxtime + ibmsdnve_time + rdo_ci_downstream_maxtime + hpe_nimble + intel_rsd_ci_time + prophetstor_ci_time + dell_emc_sc_series_ci_maxtime + powerkvm_maxtime + hyper_v_ci_time + yangziguan + microsoft_cinder_ci_maxtime + arista_test_time + hds_hnas_ci_time + tegile_time + purestorage_cinder_ci_time + rdo_ci_time + hpmsa_ci + nuage_ci + rdothirdparty_time + ericsson_cicd_maxtime + cisco_cinder_ci_time + nexentaedge_time + suse_ci + ibmmanilaci_time + vmem_openstack_ci_maxtime + storpoolci_time + varmourci_time + flashci_time + ibmxivci + ibmcimaster_maxtime + open_e_ci_joviandss_maxtime + hpn_maxtime + cisco_cinder_ci_maxtime + netapp_fc_ci + caiqilong_maxtime + cinder_cisco + airship2ci_maxtime + nec_openstack_ci_maxtime + hitachi_hbsd2_ci_time + hp_storage_blr_ci_time + cinder_smb3_ci_time + vmem_openstack_ci + launchpadsync_maxtime + octaviasonar_time + qnap_ci_maxtime + scality_ci_time + ATT_airship_CI_time + cloudfoundersci_maxtime + cisco_tailf_ci_maxtime + huawei_cinder_ci_time + Fujitsu_ETERNUS_CI + dell_storage_ci + Open_EJovianDSS + xio_ise_iscsi_ci_maxtime + nec__v_cinder_ci_time + a10networks_ci_time + hitachi_hbsd2_ci + quantastor_ci_maxtime + NetApp_ci_time + hitachi_hbsd_ci + intelpcici + microsoft_iscsi_ci + NetApp_ci_maxtime + lenovo_ci_time + cisco_ml2_ci + powervmci_maxtime + Fujitsu_iRMC_CI_maxtime + midokura_time + synocinder + microsoft_neutron_ci_time + xp_cinder_ci_maxtime + ibmsdnve_maxtime + scality_ci_maxtime + emc_scaleio_ci_time + rdo_ci_maxtime + cisco_vpnaas_ci + tintri_ci_maxtime + mawawdeh_maxtime + qnap_ci_time + ddn_openstack + rdo_ci_downstream_time + zteopenstackCI + vtas_access_ci_time + hitachi_hbsd2_ci_maxtime + neutronryu_time + microsoft_neutron_ci_maxtime + hyper_v_ci_maxtime + bsn + vedams_hp_ci_time + dellemc_powerstore_ci + falconstor_ci_time + vzstorage_ci + zteopenstackCI_maxtime + dellpvme_ci_maxtime + dell_emc_ps_series_ci_maxtime + emc_vnx_ci + datera_time + pluribus_maxtime + plumgrid_ci_time + turbo_hipster + huawei_volume_ci + zvmosci + hitachi_hbsd_ci_time + ericsson_cicd + a10networks_ci + metaplugintest_time + virtuozzo6_ci_time + cloudfoundersci + datacore_cinder_ci_maxtime + rdothirdparty + hjy_time + qnap_ci + cisco_ironic_ci + ibmgpci_time + emc_vmax_ci_maxtime + vexxhost_maxtime + proliantci + sfci_maxtime + microsoft_iscsi_ci_maxtime + microsoft_nova_ci_time + XenProject_CI_maxtime + swiftstack_cluster_ci_maxtime + datera_ci_maxtime + sfci_time + hp_storage_ci_maxtime + elasticrecheck + swiftstack_cluster_ci + netapp_ontap_ci_maxtime + dellemc_powerstore_ci_time + ibmgpfscinderci + hp_cinder_ci + varmourci + nec__v_cinder_ci + ibm_svf_ci + ibm_zkvm_ci_maxtime + oneconvergence_maxtime + powervmci + sriovci_maxtime + ibmgpfscinderci_time + citrix_xenserver_ci_maxtime + intel_nfv_ci_maxtime + netapp_eseries_ci_maxtime + scality_ci + LINBIT_LINSTOR_CI_time + tintri_ci_time + emc_scaleio_ci_maxtime + kaminario_maxtime + emc_scaleio_ci + oracle_zfssa_ci + brocade_oss_service_maxtime + dellemc_powerstore_ci_maxtime + zuul_maxtime + cisco_vpnaas_ci_time + fuel_packaging_ci + intelpcici_maxtime + nimbleci_time + cisco_n1kv_ci + huawei_ironic_ci_maxtime + InfortrendCI_time + nec__v_cinder_ci_maxtime + microsoft_nova_ci_maxtime + quobyteci_time + jenkins_time + nova_hyperv_ci_time + huawei_volume_ci_time + jenkins + nexentaedge + vexxhost_time + freescale_ci + virtuozzo6_ci + cisco_ucsm_ci_time + hgst_solutions_ci_maxtime + hp_storage_ci + airship2ci + vedams_lenovo_ci_maxtime + ATT_OSH_CI_maxtime + disco_ci + intelpcici_time + infinidat_openstack + kaminario_time + ATT_airship_CI_maxtime + cisco_apic_ci + dell_storage_ci_maxtime + hgst_solutions_ci_time + powerkvm + coho_openstack_ci_time + lenovo_ci + nexentaci_maxtime + metaplugintest_maxtime + datacore_cinder_ci_time + cinder_smb3_ci_maxtime + lenovo_lxca_ci_time + ibmdb2_maxtime + cisco_csr1kv_ci + ibmmanilaci_maxtime + cisco_ml2_ci_maxtime + openstack_ironic_ci_maxtime + bsn_time + cisco_ucsm_ci + a10networks_ci_maxtime + Fujitsu_iRMC_CI + ufcg_oneview_ci_maxtime + microsoft_cinder_ci + netapp_eseries_ci + Fujitsu_ETERNUS_CI_maxtime + nuage_ci_time + CloudbyteCI_time + cisco_apic_ci_time + hp_storage_blr_ci + ibm_gpfs_ci_time + cisco_cinder_ci + ibm_storage_ci_time + tintri_ci + charlespiercey_time + octaviasonar_maxtime + freescale_ci_time + emc_xio_ci_time + huawei_ironic_ci + flashci + zteopenstackCI_time + LINBIT_LINSTOR_CI_maxtime + oneconvergence + nova_hyperv_ci_maxtime + emc_unity_ci_maxtime + swiftstack_cluster_ci_time + mawawdeh + emc_vmax_ci_time + huawei_cinder_ci + limestone_ci_time + contrail_maxtime + caiqilong_time + hitachi_ci + ibmgpci_maxtime + k2_fc_maxtime + cisco_fwaas_ci + sf_project_io_maxtime + vzstorage_ci_time + Brocade_Openstack_CI_time + cisco_ironic_ci_time + powervmci_time + citrix_xenserver_ci_time + huawei_ironic_ci_time + vedams_lenovo_ci + ibm_storwize_ci + midokura + intel_networking_ci_maxtime + vmware_congress_ci + zadara + cinder_smb3_ci + emc_corphd_ci + vmem_openstack_ci_time + dellpvme_ci_time + neutronryu + ibm_storwize_ci_time + intel_rsd_ci_maxtime + launchpadsync 
vobj <- varclus(frmla, data = df22, trans = "abs")
vobjLabels <- c(
  "netapp_eseries_ci_time", "mawawdeh_time", "octaviasonar", "cisco_fwaas_ci_time", "prophetstor_ci", "reduxio_devops_maxtime", "ibmdb2_time", "ATT_OSH_CI", "ibm_gpfs_ci_maxtime", "quantastor_ci", "ibm_svf_ci_maxtime", "open_e_ci_joviandss_time", "huawei_ironic_driver_ci", "sriovci", "oracle_zfssa_ci_time", "netapp_fc_ci_maxtime", "oracle_zfssa_ci_maxtime", "lenovo_lxca_ci", "ibm_storage_ci", "neutron_hyperv_ci", "rdo_ci_downstream", "seagate_ci", "hds_hnas_ci", "hyper_v_ci", "veritas_hyperscale_ci", "brocade_lbaas_ci_time", "vedams_dothill_ci_maxtime", "huawei_cinder_ci_maxtime", "turbo_hipster_time", "Open_EJovianDSS_maxtime", "huawei_ironic_driver_ci_time", "odl_jenkins", "purestorage_thirdparty_ci_maxtime", "vmware_congress_ci_maxtime", "openstack_ironic_ci_time", "cisco_ml2_ci_time", "hitachi_ci_maxtime", "ATT_airship_CI", "hedvig_ci_time", "cisco_csr1kv_ci_maxtime", "ufcg_oneview_ci", "vedams_lenovo_ci_time", "nexentaci", "nimbleci", "ufcg_oneview_ci_time", "intel_networking_ci_time", "freescale_ci_maxtime", "huawei_volume_ci_maxtime", "cisco_tailf_ci", "midokura_maxtime", "sf_project_io_time", "rerun_result"
  
  # "blockbridge", "cinder_cisco_maxtime", "odl_jenkins_time", "netapp_ontap_ci_time", "rdo_ci", "emc_vmax_ci", "neutron_hyperv_ci_maxtime", "nec_cinder_ci_time", "netapp_solidfire_ci", "INSPUR_CI", "metaplugintest", "xio_ise_iscsi_ci", "Intel_Zuul_maxtime", "cloudfoundersci_time", "cinokiaironic", "hjy", "Brocade_Openstack_CI", "pluribus", "vedams_hp_ci", "reduxio_devops_time", "hedvig_ci", "ibm_storage_ci_maxtime", "ibmxivci_time", "brocade_oss_service_time", "proliantci_maxtime", "emc_unity_ci_time", "hustnw_time", "CloudbyteCI_maxtime", "cinokiaironic_maxtime", "hpn_time", "xp_cinder_ci", "Fujitsu_ETERNUS_CI_time", "datacore_cinder_ci", "prophetstor_ci_maxtime", "LINBIT_LINSTOR_CI", "varmourci_maxtime", "lenovo_ci_maxtime", "emc_corphd_ci_time", "nexentaci_time", "cisco_n1kv_ci_maxtime", "nec_openstack_ci_time", "launchpadsync_time", "hgst_solutions_ci", "airship2ci_time", "ibm_gpfs_ci", "intel_nfv_ci_time", "ibmdb2", "lenovo_lxca_ci_maxtime", "vmwareminesweeper_maxtime", "infinidat_openstack_maxtime", "hitachi_ci_time", "hedvig_ci_maxtime", "neutron_hyperv_ci_time", "nec_cinder_ci_maxtime", "ibmmanilaci", "emc_vnx_ci_time", "hp_cinder_ci_maxtime", "dellpvme_ci", "brocade_lbaas_ci_maxtime", "dell_emc_sc_series_ci", "zadara_time", "mellanox", "purestorage_cinder_ci_maxtime", "storpoolci_maxtime", "limestone_ci", "emc_vnx_ci_maxtime", "elasticrecheck_time", "InfortrendCI_maxtime", 
  
  
  # "datera_ci", "emc_xio_ci", "arista_test", "sriov_taas", "netapp_ci_maxtime", "hpmsa_ci_time", "sriov_taas_maxtime", "nexentaedge_maxtime", "cinder_cisco_time", "quantastor_ci_time", "reduxio_devops", "vmwareminesweeper_time", "contrail", "nec_cinder_ci", "Intel_Zuul", "ATT_OSH_CI_time", "emc_vmaxsmis_ci_maxtime", "ibm_svf_ci_time", "infinidat_openstack_time", "coho_openstack_ci", "k2_fc_time", "hitachi_hbsd_ci_maxtime", "intel_rsd_ci", "charlespiercey_maxtime", "fuel_packaging_ci_time", "limestone_ci_maxtime", "nimbleci_maxtime", "ibm_zkvm_ci", "hpe_nimble_time", "vedams_hp_ci_maxtime", "cisco_ucsm_ci_maxtime", 
  
  # "ibmgpfscinderci_maxtime", "jenkins_maxtime", "disco_ci_maxtime", "vedams_dothill_ci_time", "emc_vmaxsmis_ci_time", "cisco_fwaas_ci_maxtime", "zuul", "emc_xio_ci_maxtime", "microsoft_iscsi_ci_time", "sriovci_time", "ddn_openstack_maxtime", "purestorage_cinder_ci", "dell_storage_ci_time", "cisco_apic_ci_maxtime", "nuage_ci_maxtime", "netapp_ci", "nova_hyperv_ci", "dell_emc_ps_series_ci", "disco_ci_time", "ibm_zkvm_ci_time", "hp_storage_blr_ci_maxtime", "vzstorage_ci_maxtime", "Fujitsu_iRMC_CI_time", "hustnw", "vedams_dothill_ci", "seagate_ci_time", "cisco_csr1kv_ci_time", "zadara_maxtime", "falconstor_ci_maxtime", "xp_cinder_ci_time", "emc_corphd_ci_maxtime", "zvmosci_time", "mellanox_maxtime", "elasticrecheck_maxtime", "mellanox_time", "rdothirdparty_maxtime", "microsoft_nova_ci", "datera_maxtime", "vtas_access_ci", "ibmcimaster", "blockbridge_maxtime", "cisco_vpnaas_ci_maxtime", "odl_jenkins_maxtime", "Fujitsu_C_Fabric_CI_maxtime", "xio_ise_iscsi_ci_time", "blockbridge_time", "pluribus_time", "intel_nfv_ci", "ddn_openstack_time", "contrail_time", "citrix_xenserver_ci", "plumgrid_ci", "virtuozzo6_ci_maxtime"
  
  #  "coho_openstack_ci_maxtime", "tegile_maxtime", "vexxhost", "hpe_nimble_maxtime", "hpn", "suse_ci_maxtime", "arista_test_maxtime", "brocade_lbaas_ci", "CloudbyteCI", "ericsson_cicd_time", "Intel_Zuul_time", "synocinder_maxtime", "Fujitsu_C_Fabric_CI", "hjy_maxtime", "netapp_solidfire_ci_time", "INSPUR_CI_maxtime", "ibm_storewize_ci", "ibmcimaster_time", "quobyteci", "dell_emc_sc_series_ci_time", "datera_ci_time", "netapp_solidfire_ci_maxtime", "hp_cinder_ci_time", "microsoft_cinder_ci_time", "zuul_time", "ibmgpci", "tegile", "storpoolci", "Brocade_Openstack_CI_maxtime", "ibmxivci_maxtime", "sfci", "huawei_ironic_driver_ci_maxtime", "intel_networking_ci", "suse_ci_time", "nec_openstack_ci", "datera", "charlespiercey", "powerkvm_time", "turbo_hipster_maxtime", "cisco_n1kv_ci_time", "openstack_ironic_ci", "bsn_maxtime", "k2_fc", "yangziguan_time", "dell_emc_ps_series_ci_time", "purestorage_thirdparty_ci_time", "falconstor_ci", "kaminario", "fuel_packaging_ci_maxtime", "neutronryu_maxtime", "zvmosci_maxtime", "emc_vmaxsmis_ci", "InfortrendCI", "yangziguan_maxtime", "ibmsdnve", "plumgrid_ci_maxtime", "ibm_storewize_ci_maxtime", "netapp_ontap_ci", "hds_hnas_ci_maxtime", "cinokiaironic_time", "caiqilong", "netapp_ci_time", "brocade_oss_service", "XenProject_CI_time", "vmwareminesweeper", "flashci_maxtime", "ibm_storewize_ci_time", "NetApp_ci", "synocinder_time", "purestorage_thirdparty_ci", "vmware_congress_ci_time", "quobyteci_maxtime", "seagate_ci_maxtime", "veritas_hyperscale_ci_time", "sriov_taas_time", "Fujitsu_C_Fabric_CI_time", "cisco_tailf_ci_time", "emc_unity_ci", "hustnw_maxtime", "netapp_fc_ci_time", "INSPUR_CI_time", "cisco_ironic_ci_maxtime", "microsoft_neutron_ci", "proliantci_time", "sf_project_io", "veritas_hyperscale_ci_maxtime", "oneconvergence_time", "open_e_ci_joviandss", "Open_EJovianDSS_time", "hpmsa_ci_maxtime", "hp_storage_ci_time", "XenProject_CI", "ibm_storwize_ci_maxtime", "vtas_access_ci_maxtime", "ibmsdnve_time", "rdo_ci_downstream_maxtime", "hpe_nimble", "intel_rsd_ci_time", "prophetstor_ci_time", "dell_emc_sc_series_ci_maxtime", "powerkvm_maxtime", "hyper_v_ci_time", "yangziguan", "microsoft_cinder_ci_maxtime", "arista_test_time", "hds_hnas_ci_time", "tegile_time", "purestorage_cinder_ci_time", "rdo_ci_time", "hpmsa_ci", "nuage_ci", "rdothirdparty_time", "ericsson_cicd_maxtime", "cisco_cinder_ci_time", "nexentaedge_time", "suse_ci", "ibmmanilaci_time", "vmem_openstack_ci_maxtime", "storpoolci_time", "varmourci_time", "flashci_time", "ibmxivci", "ibmcimaster_maxtime", "open_e_ci_joviandss_maxtime", "hpn_maxtime", "cisco_cinder_ci_maxtime", "netapp_fc_ci", "caiqilong_maxtime", "cinder_cisco", "airship2ci_maxtime", "nec_openstack_ci_maxtime", "hitachi_hbsd2_ci_time", "hp_storage_blr_ci_time", "cinder_smb3_ci_time", "vmem_openstack_ci", "launchpadsync_maxtime", "octaviasonar_time", "qnap_ci_maxtime", "scality_ci_time", "ATT_airship_CI_time", "cloudfoundersci_maxtime", "cisco_tailf_ci_maxtime", "huawei_cinder_ci_time", "Fujitsu_ETERNUS_CI", "dell_storage_ci", "Open_EJovianDSS", "xio_ise_iscsi_ci_maxtime", "nec__v_cinder_ci_time", "a10networks_ci_time", "hitachi_hbsd2_ci", "quantastor_ci_maxtime", "NetApp_ci_time", "hitachi_hbsd_ci", "intelpcici", "microsoft_iscsi_ci", "NetApp_ci_maxtime", "lenovo_ci_time", "cisco_ml2_ci", "powervmci_maxtime", "Fujitsu_iRMC_CI_maxtime", "midokura_time", "synocinder", "microsoft_neutron_ci_time", "xp_cinder_ci_maxtime", "ibmsdnve_maxtime", "scality_ci_maxtime", "emc_scaleio_ci_time", "rdo_ci_maxtime", "cisco_vpnaas_ci", "tintri_ci_maxtime", "mawawdeh_maxtime", "qnap_ci_time", "ddn_openstack", "rdo_ci_downstream_time", "zteopenstackCI", "vtas_access_ci_time", "hitachi_hbsd2_ci_maxtime", "neutronryu_time", "microsoft_neutron_ci_maxtime", "hyper_v_ci_maxtime", "bsn", "vedams_hp_ci_time", "dellemc_powerstore_ci", "falconstor_ci_time", "vzstorage_ci", "zteopenstackCI_maxtime", "dellpvme_ci_maxtime", "dell_emc_ps_series_ci_maxtime", "emc_vnx_ci", "datera_time", "pluribus_maxtime", "plumgrid_ci_time", "turbo_hipster", "huawei_volume_ci", "zvmosci", "hitachi_hbsd_ci_time", "ericsson_cicd", "a10networks_ci", "metaplugintest_time", "virtuozzo6_ci_time", "cloudfoundersci", "datacore_cinder_ci_maxtime", "rdothirdparty", "hjy_time", "qnap_ci", "cisco_ironic_ci", "ibmgpci_time", "emc_vmax_ci_maxtime", "vexxhost_maxtime", "proliantci", "sfci_maxtime", "microsoft_iscsi_ci_maxtime", "microsoft_nova_ci_time", "XenProject_CI_maxtime", "swiftstack_cluster_ci_maxtime", "datera_ci_maxtime", "sfci_time", "hp_storage_ci_maxtime", "elasticrecheck", "swiftstack_cluster_ci", "netapp_ontap_ci_maxtime", "dellemc_powerstore_ci_time", "ibmgpfscinderci", "hp_cinder_ci", "varmourci", "nec__v_cinder_ci", "ibm_svf_ci", "ibm_zkvm_ci_maxtime", "oneconvergence_maxtime", "powervmci", "sriovci_maxtime", "ibmgpfscinderci_time", "citrix_xenserver_ci_maxtime", "intel_nfv_ci_maxtime", "netapp_eseries_ci_maxtime", "scality_ci", "LINBIT_LINSTOR_CI_time", "tintri_ci_time", "emc_scaleio_ci_maxtime", "kaminario_maxtime", "emc_scaleio_ci", "oracle_zfssa_ci", "brocade_oss_service_maxtime", "dellemc_powerstore_ci_maxtime", "zuul_maxtime", "cisco_vpnaas_ci_time", "fuel_packaging_ci", "intelpcici_maxtime", "nimbleci_time", "cisco_n1kv_ci", "huawei_ironic_ci_maxtime", "InfortrendCI_time", "nec__v_cinder_ci_maxtime", "microsoft_nova_ci_maxtime", "quobyteci_time", "jenkins_time", "nova_hyperv_ci_time", "huawei_volume_ci_time", "jenkins", "nexentaedge", "vexxhost_time", "freescale_ci", "virtuozzo6_ci", "cisco_ucsm_ci_time", "hgst_solutions_ci_maxtime", "hp_storage_ci", "airship2ci", "vedams_lenovo_ci_maxtime", "ATT_OSH_CI_maxtime", "disco_ci", "intelpcici_time", "infinidat_openstack", "kaminario_time", "ATT_airship_CI_maxtime", "cisco_apic_ci", "dell_storage_ci_maxtime", "hgst_solutions_ci_time", "powerkvm", "coho_openstack_ci_time", "lenovo_ci", "nexentaci_maxtime", "metaplugintest_maxtime", "datacore_cinder_ci_time", "cinder_smb3_ci_maxtime", "lenovo_lxca_ci_time", "ibmdb2_maxtime", "cisco_csr1kv_ci", "ibmmanilaci_maxtime", "cisco_ml2_ci_maxtime", "openstack_ironic_ci_maxtime", "bsn_time", "cisco_ucsm_ci", "a10networks_ci_maxtime", "Fujitsu_iRMC_CI", "ufcg_oneview_ci_maxtime", "microsoft_cinder_ci", "netapp_eseries_ci", "Fujitsu_ETERNUS_CI_maxtime", "nuage_ci_time", "CloudbyteCI_time", "cisco_apic_ci_time", "hp_storage_blr_ci", "ibm_gpfs_ci_time", "cisco_cinder_ci", "ibm_storage_ci_time", "tintri_ci", "charlespiercey_time", "octaviasonar_maxtime", "freescale_ci_time", "emc_xio_ci_time", "huawei_ironic_ci", "flashci", "zteopenstackCI_time", "LINBIT_LINSTOR_CI_maxtime", "oneconvergence", "nova_hyperv_ci_maxtime", "emc_unity_ci_maxtime", "swiftstack_cluster_ci_time", "mawawdeh", "emc_vmax_ci_time", "huawei_cinder_ci", "limestone_ci_time", "contrail_maxtime", "caiqilong_time", "hitachi_ci", "ibmgpci_maxtime", "k2_fc_maxtime", "cisco_fwaas_ci", "sf_project_io_maxtime", "vzstorage_ci_time", "Brocade_Openstack_CI_time", "cisco_ironic_ci_time", "powervmci_time", "citrix_xenserver_ci_time", "huawei_ironic_ci_time", "vedams_lenovo_ci", "ibm_storwize_ci", "midokura", "intel_networking_ci_maxtime", "vmware_congress_ci", "zadara", "cinder_smb3_ci", "emc_corphd_ci", "vmem_openstack_ci_time", "dellpvme_ci_time", "neutronryu", "ibm_storwize_ci_time", "intel_rsd_ci_maxtime", "launchpadsync"
)
plot(vobj, labels = vobjLabels)
abline(h = 0.3)

frmla <- ~ queued_month + queued_day + queued_hour + queued_min + most_recent_label + most_recent_duration + timeout_ratio + deletions + insertions + author_tedency + files_tedency + changes_to_related_files + changes_to_any_file
plot(varclus(frmla, data = df22, trans = "abs"))
abline(h = 0.3)

# ========= redundency analysis ========#

redun_obj <- redun(frmla, data = df22, r2 = 0.9, nk = 0)
print(redun_obj)

## OUTPUT
# Redundancy Analysis
#
# redun(formula = frmla, data = df22, r2 = 0.9, nk = 0)
#
# n: 105663 	p: 13 	nk: 0
#
# Number of NAs:	 0
#
# Transformation of target variables forced to be linear
#
# R-squared cutoff: 0.9 	Type: ordinary
#
# R^2 with which each variable can be predicted from all other variables:
#
#             queued_month               queued_day              queued_hour               queued_min        most_recent_label     most_recent_duration
#                    0.002                    0.011                    0.029                    0.036                    0.127                    0.012
#            timeout_ratio                deletions               insertions           author_tedency            files_tedency changes_to_related_files
#                    0.484                    0.474                    0.323                    0.616                    0.595                    0.345
#      changes_to_any_file
#                    0.566
#
# No redundant variables

# ========= Allocate Degrees of Freedom ========#

frmla <- label~queued_month + queued_day + queued_hour + queued_min + most_recent_label + most_recent_duration + timeout_ratio + deletions + insertions + author_tedency + files_tedency + changes_to_related_files + changes_to_any_file
objLabels <- c(
  "recent build status", "timeout ratio", "author tendency", "file tendency",
  "recent build duration", "queued hour", "changes to related files", "insertions", "changes to any file",
  "queued min", "deletions", "queued month", "queued day"
) # fix this
plot(spearman2(formula = frmla, data = df22, p = 2), labels = rev(objLabels))


# ========= Fit model ========#
frmla <- label~queued_month + queued_day + queued_hour + queued_min + most_recent_label + rcs(most_recent_duration, 3) + rcs(timeout_ratio, 3) + deletions + insertions + rcs(author_tedency, 3) + rcs(files_tedency, 3) + changes_to_related_files + changes_to_any_file
print(frmla)

# label ~ queued_month + queued_day + queued_hour + queued_min +
#     most_recent_label + rcs(most_recent_duration, 3) + rcs(timeout_ratio,
#     3) + deletions + insertions + rcs(author_tedency, 3) + rcs(files_tedency,
#     3) + changes_to_related_files + changes_to_any_file

dd <- datadist(df22)
options(datadist = "dd")
model <- lrm(frmla, data = df22, x = T, y = T, scale = TRUE)
# maxit=1000 https://stackoverflow.com/questions/51706904/unable-to-fit-model-using-lrm-fit
print(model)

## OUTPUT
# Logistic Regression Model
#
#  lrm(formula = frmla, data = df22, x = T, y = T, scale = TRUE)
#
#                          Model Likelihood        Discrimination    Rank Discrim.
#                                Ratio Test               Indexes          Indexes
#  Obs         105663    LR chi2    6399.44        R2       0.473    C       0.939
#   0          104362    d.f.            18    R2(18,105663)0.059    Dxy     0.877
#   1            1301    Pr(> chi2) <0.0001    R2(18,3854.9)0.809    gamma   0.880
#  max |deriv|  1e-06                              Brier    0.008    tau-a   0.021
#
#                           Coef      S.E.    Wald Z Pr(>|Z|)
#  Intercept                  -8.5865  0.2080 -41.28 <0.0001
#  queued_month                0.0162  0.0099   1.63 0.1041
#  queued_day                  0.0325  0.0193   1.68 0.0926
#  queued_hour                -0.0050  0.0054  -0.92 0.3582
#  queued_min                  0.0015  0.0020   0.74 0.4579
#  most_recent_label           2.9321  0.0841  34.86 <0.0001
#  most_recent_duration        0.2052  0.0180  11.38 <0.0001
#  most_recent_duration'      -0.2546  0.0224 -11.36 <0.0001
#  timeout_ratio             175.5653  9.7594  17.99 <0.0001
#  timeout_ratio'           -913.6013 53.9267 -16.94 <0.0001
#  deletions                   0.0000  0.0000  -0.33 0.7384
#  insertions                  0.0000  0.0000  -0.22 0.8296
#  author_tedency              0.3812  0.1123   3.39 0.0007
#  author_tedency'            -7.3061  2.2477  -3.25 0.0012
#  author_tedency''           11.1223  3.4384   3.23 0.0012
#  files_tedency               0.0349  0.0120   2.91 0.0037
#  files_tedency'             -0.0931  0.0324  -2.87 0.0041
#  changes_to_related_files   -0.0001  0.0001  -1.29 0.1964
#  changes_to_any_file         0.0000  0.0000   0.65 0.5145


# ========= Assesment of Model stability ========# RERUN
num_iter <- 1000
val_obj <- validate(model, B = num_iter)
print(val_obj)

## OUTPUT
#           index.orig training    test optimism index.corrected   n
# Dxy           0.8771   0.8762  0.8760   0.0002          0.8769 391
# R2            0.4727   0.4719  0.4697   0.0023          0.4705 391
# Intercept     0.0000   0.0000 -0.0061   0.0061         -0.0061 391
# Slope         1.0000   1.0000  0.9904   0.0096          0.9904 391
# Emax          0.0000   0.0000  0.0031   0.0031          0.0031 391
# D             0.0606   0.0595  0.0602  -0.0007          0.0613 391
# U             0.0000   0.0000  0.0003  -0.0003          0.0003 391
# Q             0.0606   0.0595  0.0599  -0.0004          0.0610 391
# B             0.0082   0.0080  0.0082  -0.0002          0.0083 391
# g             1.5850   1.5886  1.5754   0.0132          1.5717 391
# gp            0.0212   0.0207  0.0211  -0.0004          0.0215 391

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

## OUTPUT
#              index.orig      training          test      optimism index.corrected   n
# Dxy        0.8770747437  0.8762328234  0.8760148375  0.0002179860    0.8768567578 391
# R2         0.4727084334  0.4719398250  0.4696883783  0.0022514467    0.4704569867 391
# Intercept  0.0000000000  0.0000000000 -0.0061142312  0.0061142312   -0.0061142312 391
# Slope      1.0000000000  1.0000000000  0.9904145535  0.0095854465    0.9904145535 391
# Emax       0.0000000000  0.0000000000  0.0031491355  0.0031491355    0.0031491355 391
# D          0.0605551381  0.0594571481  0.0601563706 -0.0006992225    0.0612543607 391
# U         -0.0000189281 -0.0000189281  0.0002554794 -0.0002744075    0.0002554794 391
# Q          0.0605740662  0.0594760762  0.0599008912 -0.0004248150    0.0609988812 391
# B          0.0081802489  0.0080105346  0.0081713420 -0.0001608074    0.0083410563 391
# g          1.5849577212  1.5885684442  1.5753522918  0.0132161524    1.5717415689 391
# gp         0.0211784869  0.0207421510  0.0210967204 -0.0003545694    0.0215330563 391
# AUC        0.9385373719  0.9381164117  0.9380074187  0.0001089930    0.9384283789 391

# ========= Estimate the power of explanatory variables ========#

print(anova(model, test = "Chisq", tol = 1e-13))

## OUTPUT
#  Factor                   Chi-Square d.f. P
#  queued_month                2.64     1   0.1041
#  queued_day                  2.83     1   0.0926
#  queued_hour                 0.84     1   0.3582
#  queued_min                  0.55     1   0.4579
#  most_recent_label        1215.49     1   <.0001
#  most_recent_duration      133.69     2   <.0001
#   Nonlinear                128.98     1   <.0001
#  timeout_ratio             739.36     2   <.0001
#   Nonlinear                287.02     1   <.0001
#  deletions                   0.11     1   0.7384
#  insertions                  0.05     1   0.8296
#  author_tedency             12.16     3   0.0069
#   Nonlinear                 11.74     2   0.0028
#  files_tedency               8.89     2   0.0117
#   Nonlinear                  8.22     1   0.0041
#  changes_to_related_files    1.67     1   0.1964
#  changes_to_any_file         0.42     1   0.5145
#  TOTAL NONLINEAR           645.04     5   <.0001
#  TOTAL                    4350.03    18   <.0001

# change size
print(anova(model, test = "Chisq", tol = 1e-13, insertions, deletions))
#  Factor     Chi-Square d.f. P
#  insertions 0.05       1    0.8296
#  deletions  0.11       1    0.7384
#  TOTAL      0.15       2    0.9264

# Tendency Family
print(anova(model, test = "Chisq", tol = 1e-13, author_tedency, files_tedency))
#  Factor          Chi-Square d.f. P
#  author_tedency  12.16      3    0.0069
#   Nonlinear      11.74      2    0.0028
#  files_tedency    8.89      2    0.0117
#   Nonlinear       8.22      1    0.0041
#  TOTAL NONLINEAR 20.27      3    0.0001
#  TOTAL           20.77      5    0.0009

# build history
# fix error https://stat.ethz.ch/pipermail/r-help/2007-September/141709.html add the tol argument to the anova call, e.g. tol=1e-13
print(anova(model, test = "Chisq", tol = 1e-13, most_recent_label, most_recent_duration, timeout_ratio))
#  Factor               Chi-Square d.f. P
#  most_recent_label    1215.49    1    <.0001
#  most_recent_duration  133.69    2    <.0001
#   Nonlinear            128.98    1    <.0001
#  timeout_ratio         739.36    2    <.0001
#   Nonlinear            287.02    1    <.0001
#  TOTAL NONLINEAR       440.14    2    <.0001
#  TOTAL                3063.19    5    <.0001

# current build
print(anova(model, test = "Chisq", tol = 1e-13, queued_month, queued_day, queued_hour, queued_min))
#  Factor       Chi-Square d.f. P
#  queued_month 2.64       1    0.1041
#  queued_day   2.83       1    0.0926
#  queued_hour  0.84       1    0.3582
#  queued_min   0.55       1    0.4579
#  TOTAL        6.79       4    0.1474




# Author experience
print(anova(model, test = "Chisq", tol = 1e-13, changes_to_related_files, changes_to_any_file))
#  Factor                   Chi-Square d.f. P
#  changes_to_related_files 1.67       1    0.1964
#  changes_to_any_file      0.42       1    0.5145
#  TOTAL                    1.95       2    0.3767



undo_transform <- function(x) {
  result <- exp(x) / (1 + exp(x))
  return(result)
}

bootcov_model <- bootcov(model, B = num_iter)

ggplot(Predict(bootcov_model, timeout_ratio, fun = function(x) {
  return(undo_transform(x))
})) +
  theme_classic() +
  xlab("Timeout ratio") +
  ylab("Probability") +
  theme(
    axis.text.x = element_text(size = 10),
    axis.text.y = element_text(size = 10),
    axis.title.x = element_text(size = 10),
    axis.title.y = element_text(size = 10)
  ) +
  theme(panel.border = element_rect(color = "black", fill = NA, size = 1))

ggplot(Predict(bootcov_model, most_recent_duration, fun = function(x) {
  return(undo_transform(x))
})) +
  theme_classic() +
  xlab("Recent build duration (minutes)") +
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
