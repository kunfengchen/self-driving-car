FROM ros:indigo-ros-base
##### ref: https://hub.docker.com/_/ros/

### Install dependencies for building Autowire https://github.com/CPFL/Autoware
RUN apt-get update && apt-get install -y \
    ros-indigo-pcl-ros \
    ros-indigo-roslint \
    ros-indigo-theora-image-transport \
    libopencv-dev \
    libnlopt-dev freeglut3-dev qt5-default \
    libqt5opengl5-dev libssh2-1-dev libarmadillo-dev \
    libpcap-dev gksu libgl1-mesa-dev \
    ros-indigo-sound-play \
    ros-indigo-nmea-navsat-driver \
    ros-indigo-desktop-full=1.1.4-0*

### Install other tools (optional)
RUN apt-get update && apt-get install -y \
   git \
   openssh-server \
   && rm -rf /var/lib/apt/lists/

### Install Autoware
RUN cd $HOME \
    && git clone https://github.com/CPFL/Autoware.git

RUN apt-get update && apt-get install -y \
    ros-indigo-jsk-visualization \
    && rm -rf /var/lib/apt/lists/

RUN ["/bin/bash", "-c", "cd ~/Autoware/ros/src \
    && source /opt/ros/indigo/setup.bash \
    && catkin_init_workspace \
    && cd ../ \
    && ./catkin_make_release"]

RUN apt-get update && apt-get install -y \
    gnome-terminal \
    && rm -rf /var/lib/apt/lists/
