#!/bin/sh

sudo dnf update
sudo dnf install kernel-devel
#modprobe vboxdrv
/sbin/vboxconfig
