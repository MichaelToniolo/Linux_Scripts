#!/bin/sh

sudo apt update
sudo apt purge snapd
sudo apt install gnone-session -y

sudo apt install vanilla-gnome-desktop vanilla-gnome-default-settings
sudo apt clean
sudo apt autoremove


