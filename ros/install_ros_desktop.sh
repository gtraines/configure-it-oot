#!/usr/bin/env bash
sudo apt-get update
sudo apt-get install ros-melodic-desktop-full
sudo rosdep init
rosdep update
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
echo "export PYTHONPATH=/usr/lib/python2.7/dist-packages:$PYTHONPATH"
source ~/.bashrc
