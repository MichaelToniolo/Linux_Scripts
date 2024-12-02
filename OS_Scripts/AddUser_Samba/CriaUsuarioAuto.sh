#!/bin/sh

BACKUPTIME=`date +%b-%d-%y`
cp /etc/samba/smb.conf /etc/samba/smb.conf.$BACKUPTIME

ADHOMES=/home/ADHomes/

mkdir $ADHOMES


read -p "Digite o numero de usuarios a serem adicionados: " USERSNUMB

for i in $(seq 1 $USERSNUMB);
	do

read -p "Digite o Nome do Usuário $i: "  NOMEUSU

adduser "$NOMEUSU"

mkdir $ADHOMES$NOMEUSU

chmod 770 $ADHOMES$NOMEUSU

chown $NOMEUSU:$NOMEUSU $ADHOMES$NOMEUSU

smbpasswd -a $NOMEUSU

echo [Home $NOMEUSU] >> /etc/samba/smb.conf
echo comment = Pasta Pessoal >> /etc/samba/smb.conf
echo path = $ADHOMES$NOMEUSU >> /etc/samba/smb.conf
echo available = yes >> /etc/samba/smb.conf
echo writable = yes >> /etc/samba/smb.conf
echo browsable = yes >> /etc/samba/smb.conf
echo valid users = @$NOMEUSU >> /etc/samba/smb.conf

# Aqui, além do grupo do usuário, você coloca também o da administração, ou TI, ou etc... 
echo valid group = $NOMEUSU administracao >> /etc/samba/smb.conf

echo create mask = 770 >> /etc/samba/smb.conf
echo directory mask = 770 >> /etc/samba/smb.conf
echo "" >> /etc/samba/smb.conf
echo "" >> /etc/samba/smb.conf

	done

echo "------------------------------------"
echo "Script finalizado com sucesso"
echo "------------------------------------"
