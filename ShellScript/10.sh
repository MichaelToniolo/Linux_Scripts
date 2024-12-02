#!/bin/sh

# Escreva um script que peça um nome de arquivo ao usuário e exiba uma mensagem dizendo 
# se é um diretório um arquivo regular ou outro tipo de arquivo.

read -p "DIGITE UM NOME DE ARQUIVO: " arquivo

if [ -d $arquivo ]; then
    echo "$arquivp é um diretório"
elif [ -f $arquivo ]; then
    echo "$arquivo é um arquivo"
else
    echo "É UM ARQUIVO REGULAR QUALQUER"
fi
