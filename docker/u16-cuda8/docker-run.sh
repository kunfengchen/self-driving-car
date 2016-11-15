#! /bin/bash

nvidia-docker run -it --rm \
   --env="DISPLAY" \
   --volume "$HOME/.Xauthority:/root/.Xauthority:rw" \
   --volume "$HOME/sharefolder:/sharefolder" \
   kunfengchen/sdc/u16-cudnn5-tf11 /bin/bash
