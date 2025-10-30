#!/bin/sh


sudo zypper in whois nmap gnome-calendar opi touchegg flatpak

sudo flatpak install flameshot -y
sudo flatpak install spotify -y
sudo flatpak install io.github.shiftey.Desktop -y
sudo flatpak install com.mattjakeman.ExtensionManager -y
sudo flatpak install org.telegram.desktop -y
sudo flatpak install com.github.donadigo.appeditor -y

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

flatpak permission-set screenshot screenshot flameshot yes && flatpak permission-set screenshot screenshot org.flameshot.Flameshot yes
