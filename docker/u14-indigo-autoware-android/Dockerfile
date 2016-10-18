FROM kunfengchen/u14-indigo-autoware

RUN apt-get update && apt-get install -y \
    default-jdk \
    ros-indigo-rosjava

##RUN ["/bin/bash", "-c", "cd ~/Autoware/ros/src \
##    && source /opt/ros/indigo/setup.bash \
##    && catkin_init_workspace \
##    && cd ../ \
##    && ./catkin_make_release"]

RUN rm -rf /var/lib/apt/lists/
