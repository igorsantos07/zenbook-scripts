#!/bin/bash
sudo apt-get install libbsd-dev xbacklight
cd /opt/zenbook/ambient-light-sensor/als/driver
make
sudo insmod als.ko
cd ../controller
qmake als-controller.pro -r -spec linux-g++-64
make
cd /opt/bin
ln -s /opt/netbook/als/controller/als-controller
echo "########### ADICIONAR als-controller NO STARTUP DO SISTEMA ############"
