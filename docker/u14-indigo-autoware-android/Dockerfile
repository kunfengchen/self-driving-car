FROM kunfengchen/u14-indigo-autoware

RUN apt-get update && apt-get install -y \
    default-jdk \
    ros-indigo-rosjava

## Install Android SDK
## Ref: http://wiki.ros.org/ApplicationsPlatform/Clients/Android/Tutorials/Getting%20Started
## Ref: http://wiki.ros.org/sig/Rosjava/Android%20Studio/Download
## SHA1 1afb54c3ba7716246ef2cd248bdddd248d1442d4
RUN cd /tmp \
    && curl -fSLO https://dl.google.com/dl/android/studio/ide-zips/2.2.1.0/android-studio-ide-145.3330264-linux.zip \
    && echo "1afb54c3ba7716246ef2cd248bdddd248d1442d4  android-studio-ide-145.3330264-linux.zip" | sha1sum -c - \
    && unzip -d /opt android-studio-ide-145.3330264-linux.zip \
    && rm android-studio-ide-145.3330264-linux.zip

RUN echo "export PATH=\${PATH}:/opt/android-studio/sdk/tools:/opt/android-studio/sdk/platform-tools:/opt/android-studio/bin" >> ~/.bashrc \
    && echo "export ANDROID_HOME=/opt/android-studio/sdk" >> ~/.bashrc

## TODO
# RUN andriod && studio.sh

##RUN ["/bin/bash", "-c", "cd ~/Autoware/ros/src \
##    && source /opt/ros/indigo/setup.bash \
##    && catkin_init_workspace \
##    && cd ../ \
##    && ./catkin_make_release"]

RUN rm -rf /var/lib/apt/lists/
