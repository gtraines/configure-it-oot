#! /usr/bin/env bash

USER_NAME=${1}
echo "Adding ${USER_NAME} to groups..."

sudo usermod -a -G sudo ${USER_NAME}
sudo usermod -a -G adm ${USER_NAME}
sudo usermod -a -G dialout ${USER_NAME}
sudo usermod -a -G audio ${USER_NAME}
sudo usermod -a -G video ${USER_NAME}
sudo usermod -a -G plugdev ${USER_NAME}
sudo usermod -a -G users ${USER_NAME}
sudo usermod -a -G input ${USER_NAME}
sudo usermod -a -G netdev ${USER_NAME}
sudo usermod -a -G spi ${USER_NAME}
sudo usermod -a -G i2c ${USER_NAME}
sudo usermod -a -G gpio ${USER_NAME}