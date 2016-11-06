FROM ubuntu:16.04

## REF: https://github.com/phusion/baseimage-docker/tree/master/image
ADD ./dbuild /dbuild

RUN /dbuild/prepare.sh && \
    /dbuild/install_cuda8.sh &&\
    /dbuild/cleanup.sh
