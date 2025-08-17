FROM pytorch/pytorch:2.6.0-cuda12.4-cudnn9-devel

WORKDIR /workspace

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        libgl1 \
        libglib2.0-0 \
        libsm6 \
        libxext6 \
        libxrender1 && \
    rm -rf /var/lib/apt/lists/*

RUN pip install --no-cache-dir \
    compressai==1.2.6 \
    opencv-python-headless==4.11.0.86 \
    biwkv4-cuda \
    ansnp
