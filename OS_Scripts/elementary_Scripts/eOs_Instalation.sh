#!/bin/sh

echo "INSTALANDO PROPERTIES-COMMON"
sudo apt install software-properties-common -y
echo "INSTALAÇÃO OK"

echo "ADICIONANDO REPOSITÓRIO PANTHEON-TWEAKS"
sudo add-apt-repository -y ppa:philip.scott/pantheon-tweaks

echo "TERMINADO ADIÇÃO DO REPO PANTHEON-TWEAKS"
sudo apt update 

echo "ATUALIZANDO E INSTALANDO PANTHEON-TWEAKS"
sudo apt install pantheon-tweaks -y

echo "INSTALANDO O LIBRE OFFICE"
sudo apt install libreoffice -y

echo "INSTALANDO O SPOTIFY"
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

sudo apt-get update && sudo apt-get install spotify-client -y

echo "INSTALANDO FLAMESHOT"
sudo apt install flameshot -y

echo "INSTALANDO MONITOR"
sudo add-apt-repository ppa:stsdc/monitor
sudo apt install com.github.stsdc.monitor -y




