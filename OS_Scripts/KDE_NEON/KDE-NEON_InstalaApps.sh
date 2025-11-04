#!/bin/sh


sudo apt install nmap whois virtualbox -y
sudo apt remove openvpn -y

sudo flatpak install io.github.shiftey.Desktop -y
sudo flatpak install org.telegram.desktop -y

cd /home/michael/Downloads
wget https://launchpad.net/ubuntu/+source/openvpn/2.5.5-1ubuntu3/+build/23491549/+files/openvpn_2.5.5-1ubuntu3_amd64.deb && sudo dpkg -i openvpn_2.5.5-1ubuntu3_amd64.deb
sudo apt-mark hold openvpn
sudo apt install network-manager-openvpn -y
