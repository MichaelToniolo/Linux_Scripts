#!/bin/bash

#SCRIPT AJUSTADO PARA APLICAR WPA3 PARA SAMSUNG A13 (MEU DISPOSITIVO)


nmcli connection modify Hotspot 802-11-wireless-security.key-mgmt sae
echo  -e "CRIANDO A CONEXÃO....VERIFIQUE DADOS NAS CONFIGURAÇÕES DO HOTSPOT"
nmcli connection up Hotspot

