#!/bin/bash

export TF_BINARY_URL=https://storage.googleapis.com/tensorflow/linux/gpu/tensorflow-0.11.0-cp35-cp35m-linux_x86_64.whl
pip3 install --ignore-installed --upgrade $TF_BINARY_URL
