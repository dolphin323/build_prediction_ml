import requests
import json
import time
from pymongo import MongoClient
import json
import pandas as pd
from IPython.display import display
from tqdm import tqdm


def read_builds_info_change_ids(file_name):
    with open(file_name, "r") as json_file:
        loaded_dict = pd.read_json(json_file)
        converted_dict = {
            tuple(
                key.replace("(", "").replace(")", "").replace(" ", "").split(",")
            ): value
            for key, value in loaded_dict.items()
        }

    change_ids = set()
    for key, value in converted_dict.items():
        change_ids.add(key[0].replace("'", ""))

    return change_ids


conn = MongoClient("127.0.0.1", 27017)
db = conn["recheck_prediction"]
collection = db["patch_and_user"]

change_ids = read_builds_info_change_ids("../../data/data.json")

print(len(collection.distinct("change_id")))
print(len(change_ids))
# 22671
# 22671


pipeline = [
    {"$group": {"_id": "$change_id", "count": {"$sum": 1}}},
    {"$match": {"count": {"$gt": 1}}},
]

result = list(collection.aggregate(pipeline))

# Output the non-unique values and their counts
for item in result:
    print(f"Field Value: {item['_id']}, Count: {item['count']}")
