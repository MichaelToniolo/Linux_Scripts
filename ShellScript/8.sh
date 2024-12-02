#!/bin/sh

# Crie um script que receba dois números inteiros e exiba o maior entre eles.

read -p "DIGITE UM NÚMERO: " num1
read -p "DIGITE OUTRO NUMERO: " num2

if [ $num1 -gt $num2 ]; then
    echo "$num1 É MAIOR QUE $num2"
elif [ $num1 -lt $num2 ]; then
    echo "$num2 É MAIOR QUE $num1"
else
    echo "$num1 E $num2 SÃO IGUAIS"
fi