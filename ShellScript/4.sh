#!/bin/sh

# Crie um menu simples onde o usuário pode escolher uma opção (1, 2 ou 3). 
#Use o comando read com -n 1 para capturar a entrada e exiba uma mensagem dependendo da escolha.

echo -e "OP 1 - 1\nOP 2 - 2\nOP 3 - 3\nSAIR - 4"

read -p "ESCOLHA O NÚMERO DA OPÇÃO: " menu

case $menu in
    1)
        echo "OP 1";;
    2)
        echo "OP 2";;
    3)
        echo "OP 3";;
    4)
        echo "SAIU";;
    *)
        echo "OPÇÃO INVÁLIDA";;
esac
