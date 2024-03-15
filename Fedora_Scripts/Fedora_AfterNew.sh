#!/bin/sh

sudo dnf install \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
  
sudo dnf install \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
  
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

cd /home/michael/Downloads/ &&  wget https://download.virtualbox.org/virtualbox/7.0.14/VirtualBox-7.0-7.0.14_161095_fedora36-1.x86_64.rpm && sudo yum install VirtualBox-7.0-7.0.14_161095_fedora36-1.x86_64.rpm

flatpak install org.flameshot.Flameshot
flatpak install com.mattjakeman.ExtensionManager

sudo dnf install gnome-tweaks vlc touchegg whois nmap thunderbird code google-chrome-stable code

sudo systemctl enable touchegg.service

flatpak permission-set screenshot screenshot flameshot yes

flatpak permission-set screenshot screenshot org.flameshot.Flameshot yes
