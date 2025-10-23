#!/bin/sh

sudo zypper in libnsl3
sudo ln -s /usr/lib64/libnsl.so.3 /usr/lib64/libnsl.so.1
sudo chmod +x xampp-linux-x64-8.2.12-0-installer.run
