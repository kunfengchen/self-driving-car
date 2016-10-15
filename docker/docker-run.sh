#! /bin/bash

xhost +

docker run -it --rm \
   --net host \
   --env="DISPLAY" \
   --env="QT_X11_NO_MITSHM=1" \
   --volume "$HOME/.Xauthority:/root/.Xauthority:rw" \
   --volume "$HOME/sharefolder:/sharefolder:shared" \
   --volume /dev/video0:/dev/video0 \
   kfc:u14-ros-indigo-autoware /bin/bash
