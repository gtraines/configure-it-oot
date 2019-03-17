#! /usr/bin/env bash

if [[ ${#} -lt 2 ]]; then
	echo "Missing argument(s): path-to-service-file *.service filename"
	exit 1
fi

SVC_FILE_PATH=${1}
SVC_FILE=${2}

sudo cp ${SVC_FILE_PATH}/${SVC_FILE} /lib/systemd/system/${SVC_FILE}
sudo chmod 644 /lib/systemd/system/${SVC_FILE}

# Step 2 – Configure systemd
# Now the unit file has been defined we can tell systemd 
# to start it during the boot sequence :

sudo systemctl daemon-reload
sudo systemctl enable ${SVC_FILE}