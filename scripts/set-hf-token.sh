#!/bin/bash
if [[ -z "$1" ]]; then
    echo "Token is empty"
    exit 1
fi

export HUGGING_FACE_HUB_TOKEN="$1"

env_file="./docker.env"

echo "HUGGING_FACE_HUB_TOKEN=$1" > $env_file


echo "The Hugging Face token you have set is: ""$1"
echo "--------------------------------------"
echo "if wrong run the script again"

