# Qwen-GPTQ-vLLM-Docker

## Base vLMM GPTQ Image
https://github.com/chu-tianxiang/vllm-gptq

## With Qwen Requirements

## Run
```
sudo docker run -d -p 8000:8000  --gpus='"device=0"' --name qwen-int4-vllm -v /data/Qwen-14B-Chat-Int4:/model/Qwen-14B-Chat-Int4 --entrypoint=python3 xunfeng/vllm:gptq-base-with-qwen   -m vllm.entrypoints.openai.api_server --model /model/Qwen-14B-Chat-Int4 --trust-remote-code --quantization gptq
```

```
time curl --location --request POST 'http://gpu:8000/v1/chat/completions' --header 'User-Agent: Apifox/1.0.0 (https://apifox.com)' --header 'Content-Type: application/json' --data-raw '{ "model": "/model/Qwen-14B-Chat-Int4", "messages": [{"role":"user","content":"讲个故事,有关齐齐小男孩开着飞船去宇宙探险的故事"}], "max_tokens": 1000, "temperature": 0.9,"stop":["<|im_end|>","<|endoftext|>"] }'
```
