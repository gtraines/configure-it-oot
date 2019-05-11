#!/usr/bin/env bash

# Pass in ROS distro
if [[ ${#} -lt 1 ]]; then
	echo "Missing argument(s): ros_distribution; ex: kinetic"
	exit 1
fi
ROS_DISTRO=${1}

sudo apt-get update
sudo apt-get install ros-${ROS_DISTRO}-desktop-full
sudo rosdep init
rosdep update
