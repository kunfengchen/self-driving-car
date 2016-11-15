#!/bin/bash

apt-get install -y python3.4 python3.4-dev
apt-get install -y python3-pip
pip3 install --upgrade pip

pip3 install jupyter

pip3 --no-cache-dir install \
        ipykernel \
        jupyter \
        matplotlib \
        numpy \
        scipy \
        sklearn \
        h5py \
        Pillow
