#!/bin/bash
sudo apt-get install libbsd-dev xbacklight
cd /opt/zenbook/ambient-light-sensor/als/driver
make
sudo insmod als.ko
cd ../controller/service
qmake als-controller.pro -r -spec linux-g++-64
make
cd /opt/bin
sudo ln -s /opt/zenbook/ambient-light-sensor/als/controller/als-controller
echo ""
echo "########### ADD als-controller TO SYSTEM STARTUP! (/etc/rc.local)  ############"
