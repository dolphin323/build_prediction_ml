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

for change_id in tqdm(change_ids):
    if not collection.count_documents({"change_id": change_id}):
        response = requests.get(
            f"https://review.openstack.org/changes/?q=change:{change_id}&o=ALL_REVISIONS&o=ALL_FILES&o=DETAILED_ACCOUNTS"
        )

        json_content = json.loads(response.content[4:])
        for res in json_content:
            collection.insert_one(res)
        time.sleep(2)
