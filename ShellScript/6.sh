#!/bin/sh

# Crie um script que receba um nome de arquivo e verifique se ele existe. 
# Exiba uma mensagem de confirmação.

read -p "Digite o nume de um arquivo: " arquivo

if [ -f "$arquivo" ]; then
    echo "O arquivo $arquivo existe"
else
    echo "O arquivo $arquivo não existe"
fi