#!/usr/bin/env bash

source .env

mv ${BASE_PATH}/${gitlab_path_to_var_file}.bak ${BASE_PATH}/${gitlab_path_to_var_file}
mv ${BASE_PATH}/${gitlab_path_to_template}.bak ${BASE_PATH}/${gitlab_path_to_template}
# echo ${BASE_PATH}/${gitlab_path_to_var_file}.bak 
# echo ${BASE_PATH}/${gitlab_path_to_var_file}
