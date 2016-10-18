#! /bin/bash

docker run -it --rm \
   -p 2022:22 \
   --env="DISPLAY=192.168.99.1:0" \
   --volume "$HOME/.Xauthority:/root/.Xauthority:rw" \
   --volume "$HOME/sharefolder:/sharefolder" \
   kunfengchen/u14-indigo-autoware /bin/bash
