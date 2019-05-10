#! /usr/bin/env bash
CURRENT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

bash ${CURRENT_DIR}/add_repo_sources.sh

bash ${CURRENT_DIR}/install_ros_desktop.sh
bash ${CURRENT_DIR}/install_reqd_pkgs.sh
