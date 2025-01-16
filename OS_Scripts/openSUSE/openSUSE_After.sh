#!/bin/sh


sudo zypper in whois nmap gnome-calendar opi touchegg

sudo flatpak install flameshot -y
sudo flatpak install spotify -y
sudo flatpak install io.github.shiftey.Desktop -y
sudo flatpak install com.mattjakeman.ExtensionManager -y
sudo flatpak install org.telegram.desktop -y
sudo flatpak install com.github.donadigo.appeditor -y

sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ntype=rpm-md\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" |sudo tee /etc/zypp/repos.d/vscode.repo > /dev/null

sudo zypper ref
sudo zypper in code

flatpak permission-set screenshot screenshot flameshot yes && flatpak permission-set screenshot screenshot org.flameshot.Flameshot yes
