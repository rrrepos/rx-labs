if [[ -z "$1" ]]; then
    echo "Token is empty"
    exit 1
fi

HUGGING_FACE_HUB_TOKEN="$1"