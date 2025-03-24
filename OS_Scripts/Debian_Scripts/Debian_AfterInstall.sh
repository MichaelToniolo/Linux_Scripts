#!/bin/sh

sudo apt update
sudo sudo apt install flatpak whois nmap thunderbird gnome-software-plugin-flatpak -y
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

sudo apt purge gnome-games -y
sudo remove openvpn -y
sudo flatpak install flameshot -y
sudo flatpak install spotify -y
sudo flatpak install io.github.shiftey.Desktop -y
sudo flatpak install com.mattjakeman.ExtensionManager -y
sudo flatpak install org.telegram.desktop -y
sudo flatpak install com.github.donadigo.appeditor -y

cd ~/Downloads
wget https://launchpad.net/ubuntu/+source/openvpn/2.5.5-1ubuntu3/+build/23491549/+files/openvpn_2.5.5-1ubuntu3_amd64.deb && sudo dpkg -i openvpn_2.5.5-1ubuntu3_amd64.deb
sudo apt-mark hold openvpn -y
sudo apt install network-manager-openvpn-gnome -y

cd ~/Downloads
sudo wget https://cfhcable.dl.sourceforge.net/project/xampp/XAMPP%20Linux/8.2.12/xampp-linux-x64-8.2.12-0-installer.run?viasf=1 && mv xampp-linux-x64-8.2.12-0-installer.run\?viasf\=1 xampp-linux-x64-8.2.12-0-installer.run && sudo mv sudo chmod +x xampp-linux-x64-8.2.12-0-installer.run && sudo ./xampp-linux-x64-8.2.12-0-installer.run




