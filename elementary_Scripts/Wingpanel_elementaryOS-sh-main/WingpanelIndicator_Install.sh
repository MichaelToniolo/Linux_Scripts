#/bin/bash

echo "Criando Pasta de Programas..."
mkdir ~/Programas && cd ~/Programas/


echo "Instalando o git..."
sudo apt install git -y


echo "Baixando o app do Repositório Git"
git clone https://github.com/Lafydev/wingpanel-indicator-ayatana
cd wingpanel-indicator-ayatana


echo "Instalando dependencias para ODIN (6.0) e derivados"
sudo apt-get install libwingpanel-dev indicator-application libgdk-pixbuf2.0-0 -y
sudo apt -f install

echo "Instalando Indicadores"
sudo dpkg -i com.github.lafydev.wingpanel-indicator-ayatana_2.0.8_odin.deb 


echo "SE TUDO CORREU BEM, FAÇA OS PROCEDIMENTOS ABAIXO"
echo " "
echo " "
echo "1 - Abra as Configurações de Sistema"
echo "2 - Clique em aplicações"
echo "3 - Clique em um quadro informando comando personalizado"
echo "4 - Adicione o comando /usr/lib/x86_64-linux-gnu/indicator-application/indicator-application-service "
echo "5 - Reincie o computador"
echo "CREDITOS À Lafydev - https://github.com/Lafydev/wingpanel-indicator-ayatana"
