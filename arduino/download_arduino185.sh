#! /usr/bin/env bash

SRC_DL_DIR=${1}
ARDUINO_SRC_DIR=${SRC_DL_DIR}/Arduino-1.8.5
ARDUINO_BUILD_DIR=${ARDUINO_SRC_DIR}/build

echo "/*=============================================================*/"
echo " * Downloading Arduino 1.8.5 release source to ${SRC_DL_DIR}"
echo "/*=============================================================*/"

cd ${SRC_DL_DIR}
wget https://github.com/arduino/Arduino/releases/download/1.8.5/Arduino-1.8.5.tar.xz

echo "/*=============================================================*/"
echo " * Untar Arduino 1.8.5 release source"
echo "/*=============================================================*/"
tar --xz -xf Arduino-1.8.5.tar.xz

cd ${ARDUINO_BUILD_DIR}
echo "/*=============================================================*/"
echo " * Downloading required resources to ${ARDUINO_BUILD_DIR}"
echo "/*=============================================================*/"
wget https://downloads.arduino.cc/libastylej-2.05.1-3.zip
wget https://downloads.arduino.cc/liblistSerials/liblistSerials-1.4.0.zip
wget https://downloads.arduino.cc/tools/arduino-builder-linuxarm-1.3.25.tar.bz2
wget https://downloads.arduino.cc/tools/arduino-builder-linux64-1.3.25.tar.bz2

echo "/*=============================================================*/"
echo " * Downloading required resources to ${ARDUINO_BUILD_DIR}"
echo "/*=============================================================*/"
cd ${ARDUINO_BUILD_DIR}/shared/
wget https://downloads.arduino.cc/reference-1.6.6-3.zip
wget https://downloads.arduino.cc/Galileo_help_files-1.6.2.zip
wget https://downloads.arduino.cc/Edison_help_files-1.6.2.zip


