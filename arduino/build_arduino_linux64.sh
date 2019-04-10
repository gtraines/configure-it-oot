#!/bin/bash -ex

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
cd ${DIR}

ant -Djava.net.preferIPv4Stack=true -Dplatform=linux64 $@ clean dist
mv linux/arduino-*-linux64.tar.xz ../

