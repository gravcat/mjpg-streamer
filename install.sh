#!/bin/bash
# https://github.com/foosel/OctoPrint/wiki/Setup-on-a-Raspberry-Pi-running-Raspbian

echo "Installing mjpg-streamer and required depencencies. Totally on you if you didn't want to install things, but also didn't read this file first!"

cd ~
sudo apt-get install git subversion libjpeg8-dev imagemagick libav-tools libv4l-dev cmake
git clone https://github.com/jacksonliam/mjpg-streamer.git
cd mjpg-streamer/mjpg-streamer-experimental
export LD_LIBRARY_PATH=.
make

echo "Script is done!"
echo "If you observed any bad stuffs you'll need to check that out. Otherwise you should be good to go with the service file in this repository"
