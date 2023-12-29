#!/usr/bin/env python3

import os
import requests
from dotenv import load_dotenv

gitlab_hostname = os.getenv("gitlab_hostname")
project_id = os.getenv("gitlab_project_id")
api_string = f"api/v4/projects/{project_id}/variables"
headers = {"PRIVATE-TOKEN": os.getenv("gitlab_access_token")}

url = f"https://{gitlab_hostname}/{api_string}"

def get_variables():
  r = requests.get(url, headers=headers, verify=False)
  return r.json()

def create_variables():
  """
  creates gitlab project variables from environment variables
  """
  print('Creating project variables')
  for key, value in os.environ.items():
    if str(key).startswith("gitlab"):
      r = requests.post(url, headers=headers, data={"key": key, "value": value}, verify=False)
      if r.status_code == 201:
        print(f"Successfully added {key} to project variables")
      elif r.status_code == 400:
        print(f"{key} already exists in project variables")
      else:
        print(f"{r.status_code}: Failed to add {key} to project variables")
      
if __name__ == "__main__":
  create_variables()