#!/bin/sh

# PROJETO DE LIVEWALLPAPER OPENSUSE 
# LINK BASE: https://github.com/jeffshee/gnome-ext-hanabi

#For GNOME 47 (experimental)
cd ~/Downloads
git clone https://github.com/jeffshee/gnome-ext-hanabi.git -b gnome-47

#DEPENDÊNCIAS
sudo zypper dup

#CODECS
sudo zypper install opi
opi codecs

#OUTRAS
# Build time dependencies (Git, Meson)
sudo zypper install meson git-core

# Typelib of GstPlay and GstAudio
sudo zypper install typelib-1_0-GstPlay-1_0 typelib-1_0-GstAudio-1_0

sudo zypper install clapper

cd gnome-ext-hanabi
./run.sh install




