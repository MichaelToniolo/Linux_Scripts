#!/bin/sh


sudo pacman -Syu $(mhwd-kernel -li |grep running |cut -d"(" -f2 |cut -d")" -f1)-virtualbox-host-modules
sudo vboxreload

]
