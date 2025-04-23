#!/bin/sh


sudo apt install gnome-tweaks gnome-software-plugin-flatpak nmap whois flatpak -y
sudo flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
sudo apt remove openvpn -y

sudo flatpak install flameshot -y
sudo flatpak install io.github.shiftey.Desktop -y
sudo flatpak install com.mattjakeman.ExtensionManager -y
sudo flatpak install org.telegram.desktop -y
sudo flatpak install com.github.donadigo.appeditor -y
flatpak permission-set screenshot screenshot org.flameshot.Flameshot yes
flatpak permission-set screenshot screenshot flameshot yes

cd /home/michael/Downloads
wget https://launchpad.net/ubuntu/+source/openvpn/2.5.5-1ubuntu3/+build/23491549/+files/openvpn_2.5.5-1ubuntu3_amd64.deb && sudo dpkg -i openvpn_2.5.5-1ubuntu3_amd64.deb
sudo apt-mark hold openvpn
sudo apt install network-manager-openvpn-gnome -y
