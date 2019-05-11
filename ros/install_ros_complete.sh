#! /usr/bin/env bash

# Pass in ROS distro
if [[ ${#} -lt 1 ]]; then
	echo "Missing argument(s): ros_distribution; ex: kinetic"
	exit 1
fi
ROS_DISTRO=${1}

CURRENT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

bash ${CURRENT_DIR}/add_repo_sources.sh

bash ${CURRENT_DIR}/install_ros_desktop.sh ${ROS_DISTRO}
bash ${CURRENT_DIR}/add_ros_to_bashrc.sh ${ROS_DISTRO}

bash ${CURRENT_DIR}/install_reqd_pkgs.sh