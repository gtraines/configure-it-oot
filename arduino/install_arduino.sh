#! /usr/bin/env bash

SRC_DIR=~/Source
ARDUINO_SRC_DIR=${SRC_DIR}/Arduino-1.8.5
ARDUINO_BUILD_DIR=${ARDUINO_SRC_DIR}/build

CURRENT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# We need non-headless (due to GUI)
sudo apt-get install openjdk-11-dbg
sudo apt-get install openjdk-11-jdk
sudo apt-get install ant

chmod +x ${CURRENT_DIR}/download_arduino185.sh
bash ${CURRENT_DIR}/download_arduino185.sh

cp ${CURRENT_DIR}/build_arduino_arm.sh ${ARDUINO_BUILD_DIR}

cd ${ARDUINO_BUILD_DIR}/linux/
wget https://downloads.arduino.cc/tools/avr-gcc-4.9.2-atmel3.5.4-arduino2-armhf-pc-linux-gnu.tar.bz2
wget https://downloads.arduino.cc/tools/avrdude-6.3.0-arduino9-armhf-pc-linux-gnu.tar.bz2

chmod +x ${ARDUINO_BUILD_DIR}/build_arduino_arm.sh
bash ${ARDUINO_BUILD_DIR}/build_arduino_arm.sh

