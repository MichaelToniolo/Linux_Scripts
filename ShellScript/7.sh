#!/bin/sh

# Crie um script que verifique se um arquivo tem permissão de leitura, escrita e execução.

read -p "Digite o nome de um arquivo para verificar suas permissões: " arquivo

if [ -f "$arquivo" ]; then
    echo -e "\nListando suas permissões"
    ls -l $arquivo
    echo -e "\n"
else
    echo "Arquivo não encontrado"
fi