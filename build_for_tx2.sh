#!/bin/bash
sudo apt-get update
sudo apt-get install -y \
 gstreamer1.0-tools gstreamer1.0-alsa \
 gstreamer1.0-plugins-base gstreamer1.0-plugins-good \
 gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly \
 gstreamer1.0-libav \
 libgstreamer1.0-dev \
 libgstreamer-plugins-base1.0-dev \
 libgstreamer-plugins-good1.0-dev \
 libgstreamer-plugins-bad1.0-dev \
 cmake libgflags-dev v4l-utils
mv Makefile_tx2 Makefile && make && mkdir bin && cd bin && wget https://pjreddie.com/media/files/yolov3-tiny.weights && cd .. && chmod +x yolov3-tiny_usbcam.sh
