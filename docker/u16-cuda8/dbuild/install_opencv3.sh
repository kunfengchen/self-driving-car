#!/bin/bash

# Build from the source for python3 and CUDA
# REF: http://cyaninfinite.com/tutorials/installing-opencv-in-ubuntu-for-python-3/

# TODO: NOT tested yet

apt-get install -y install build-essential cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev

apt-get install -y python3.5-dev

python3.5-config --includes
# The output:
# -I/usr/include/python3.5m -I/usr/include/x86_64-linux-gnu/python3.5m
cp /usr/include/x86_64-linux-gnu/python3.5m/pyconfig.h /usr/include/python3.5m/

mkdir /tmp/OpenCV-tmp
cd /tmp/OpenCV-tmp

git clone https://github.com/Itseez/opencv.git

mv opencv opencv-3

mkdir build

cd build

cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local ../opencv-3

make -j 12

# Build errro:
# https://github.com/thrust/thrust/issues/800
#   git clone https://github.com/thrust/thrust.git
#   cd /usr/local/cuda-8.0/include
#   sudo mv thrust/ thrust-old
#   ln -s /srv/git/thrust/thrust/thrust 
#   cd /tmp/OpenCV-tmp
#   make -j 12

make install

# ImportError: dynamic module does not define module export function (PyInit_cv2)
cd /usr/local/lib/python3.5/dist-packages/
sudo ln -s cv2.cpython-35m-x86_64-linux-gnu.so cv2.so
