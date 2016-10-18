#! /bin/bash

docker run -it --rm \
   --net host \
   --env="DISPLAY" \
   --volume "$HOME/.Xauthority:/root/.Xauthority:rw" \
   --volume "$HOME/sharefolder:/sharefolder" \
   kunfengchen/u14-indigo-autoware-android /bin/bash
