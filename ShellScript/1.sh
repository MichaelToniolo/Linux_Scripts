#/bin/bash

#Crie um script que peça um número ao usuário, calcule e exiba o dobro desse número.

read -p "Digite um numero :" num

echo "O dobro deste número é: $(($num * 2))"