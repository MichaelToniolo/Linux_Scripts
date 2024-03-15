#!/bin/bash


if [ $1 -z ]
then
	echo "##### LISTANDO SUBDOMINIOS E DIRETORIOS DE SITES###"
	echo " "
	echo "MODO DE USO >>>> ./recondomain.sh [sitealvo] [suawordlist.txt]"
	echo " "
else
	for palavra in $(cat small.txt)
	do
		resposta=$(curl -s -o /dev/null -w "%{http_code}" $1/$palavra/)
	if [ $resposta == "200" ]
	then
		echo Found: $palavra

	fi
	done
fi

