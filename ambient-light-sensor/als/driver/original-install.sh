#!/bin/bash
sudo dkms add     -m als -v master
sudo dkms install -m als -v master
echo als >> /etc/modules


