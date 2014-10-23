#!/bin/bash
sudo apt-get install libbsd-dev xbacklight qt4-qmake g++
cd /opt/zenbook/ambient-light-sensor/controller
git submodule init
git submodule update
cd als_driver
make
sudo insmod als.ko
cd ../service
qmake als-controller.pro -r -spec linux-g++-64
make
cd /opt/bin
sudo ln -s /opt/zenbook/ambient-light-sensor/controller/service/als-controller
echo ""
echo "########### ADD als-controller TO SYSTEM STARTUP! (/etc/rc.local)  ############"
