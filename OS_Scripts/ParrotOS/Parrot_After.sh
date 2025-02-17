#!/bin/sh

sudo parrot-update

sudo apt install policykit-1-gnome xfce4 xfce4-goodies xfce4-panel-profiles light-locker flameshot -y
sudo apt purge mate* -y

flatpak install flathub com.visualstudio.code
flatpak install flathub com.spotify.Client
flatpak install flathub io.github.shiftey.Desktop

