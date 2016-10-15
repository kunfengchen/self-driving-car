#! /bin/bash

docker run -it --rm \
   --net host \
   --env="DISPLAY" \
   --volume "$HOME/.Xauthority:/root/.Xauthority:rw" \
   --volume "$HOME/sharefolder:/sharefolder" \
   kunfengchen/sdc:u14-ros-indigo-autoware /bin/bash
