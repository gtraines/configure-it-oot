#! /usr/bin/env bash

if [[ ${#} -lt 1 ]]; then
	echo "Missing argument(s): *.service filename"
	exit 1
fi

SVC_FILE=${1}

sudo systemctl stop ${SVC_FILE}
sudo systemctl disable ${SVC_FILE}
