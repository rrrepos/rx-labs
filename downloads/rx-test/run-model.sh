if [[ -z "$1" ]]; then
    echo "Token is empty"
    exit 1
fi

hfprefix="HUGGING_FACE_HUB_TOKEN="
HFTOKEN="$hfprefix""$1"

MODEL="meta-llama/Meta-Llama-3-8B-Instruct" 

docker run --runtime nvidia --gpus all \
    -v ~/.cache/huggingface:/root/.cache/huggingface \
    --env $HFTOKEN \
    -p 8000:8000 \
    --ipc=host \
    vllm/vllm-openai:latest \
    --model $MODEL
