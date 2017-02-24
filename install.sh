#!/bin/bash

tools=(build-essential cmake curl openjdk-8-jdk libgtk2.0-dev pkg-config libv4l-dev libavcodec-dev libavformat-dev libswscale-dev python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev ant)

apt-get update && apt-get install -y ${tools[@]}

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

export ANT_HOME=/usr/bin/ant

curl -sL https://github.com/Itseez/opencv/archive/3.2.0.tar.gz | tar xvz -C /tmp

cd /tmp/opencv-3.2.0 && mkdir build && cd build

cmake -D BUILD_SHARED_LIBS=OFF ..
make -j8

mkdir /opencv-java-bin
cp bin/opencv-320.jar lib/libopencv_java320.so /opencv-java-bin/
cp lib/libopencv_java320.so /usr/lib/x86_64-linux-gnu/

mkdir /gen
