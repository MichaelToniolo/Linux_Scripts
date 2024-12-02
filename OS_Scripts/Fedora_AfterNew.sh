#!/bin/sh

sudo dnf install \
  https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf install \
  https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

cd /home/michael/Downloads/ &&  wget https://download.virtualbox.org/virtualbox/7.0.14/VirtualBox-7.0-7.0.14_161095_fedora36-1.x86_64.rpm && sudo yum install VirtualBox-7.0-7.0.14_161095_fedora36-1.x86_64.rpm

sudo dnf install gnome-tweaks vlc touchegg whois nmap thunderbird code google-chrome-stable code -y
sudo dnf config-manager --set-enabled fedora-cisco-openh264
sudo dnf groupupdate Multimedia -y

flatpak install org.flameshot.Flameshot

## Troque o FFmpeg do Fedora para o FFmpeg do RPM Fusion:
sudo dnf swap ffmpeg-free ffmpeg --allowerasing -y

## Instale os pacotes multimídia para os aplicativos que utilizam o GStreamer:
sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin -y

## E faça uma atualização no grupo "Áudio e Vídeo" com:
sudo dnf groupupdate sound-and-video -y

sudo systemctl enable touchegg.service
sudo systemctl start touchegg.service
flatpak permission-set screenshot screenshot org.flameshot.Flameshot yes

