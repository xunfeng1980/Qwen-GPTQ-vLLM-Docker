FROM xunfeng/vllm:gptq-base


RUN pip install accelerate tiktoken fschat
