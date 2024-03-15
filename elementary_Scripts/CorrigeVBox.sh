#/bin/sh

sudo apt install linux-headers-$(uname -r) -y
sudo apt install dkms -y
sudo /sbin/vboxconfig
