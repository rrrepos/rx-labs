MODEL="meta-llama/Meta-Llama-3-8B-Instruct" 

docker run --runtime nvidia --gpus all \
    -v ~/.cache/huggingface:/root/.cache/huggingface \
    --env-file "docker.env" \
    -p 8000:8000 \
    --ipc=host \
    vllm/vllm-openai:latest \
    --model $MODEL
