## REF: https://github.com/tensorflow/tensorflow/blob/master/tensorflow/tools/docker/Dockerfile.devel-gpu
## REQ (to build local Ubuntu 16.04 cuda:cudnn5-devel image):
##   git clone https://github.com/NVIDIA/nvidia-docker.git
##   cd ubuntu-16.04/cuda
##   make cudnn
FROM cuda:8.0-cudnn5-devel

## REF: https://github.com/phusion/baseimage-docker/tree/master/image
ADD ./dbuild /dbuild

RUN /dbuild/prepare.sh && \
    /dbuild/install_python3.sh &&\
    /dbuild/install_tf.sh &&\
    /dbuild/cleanup.sh
