#!/usr/bin/env bash

# Pass in ROS distro
if [[ ${#} -lt 1 ]]; then
	echo "Missing argument(s): ros_distribution; ex: kinetic"
	exit 1
fi
ROS_DISTRO=${1}

sudo chmod +x /opt/ros/${ROS_DISTRO}/setup.bash

echo "source /opt/ros/${ROS_DISTRO}/setup.bash" >> ~/.bashrc
echo "export PYTHONPATH=/usr/lib/python2.7/dist-packages:$PYTHONPATH"
source ~/.bashrc
