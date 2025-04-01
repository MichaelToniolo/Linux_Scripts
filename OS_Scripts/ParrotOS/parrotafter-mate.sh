#!/bin/sh

sudo apt purge chromium codium -y
sudo apt install flameshot flatpak virtualbox

flatpak install flathub com.visualstudio.code -y
flatpak install flathub com.spotify.Client -y
flatpak install flathub io.github.shiftey.Desktop -y
