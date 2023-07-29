from pytorch/pytorch:2.0.1-cuda11.7-cudnn8-devel
# RUN apt-get update && apt-get install -y --no-install-recommends \
#     build-essential \
#     cmake \
#     git \
#     curl \
#     vim \
#     ca-certificates \
#     libjpeg-dev \
#     libpng-dev \
#     && rm -rf /var/lib/apt/lists/*
# RUN pip install --no-cache-dir \
COPY src/notebooks/docker/exp_1/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
RUN pip list
CMD ["bash"]
