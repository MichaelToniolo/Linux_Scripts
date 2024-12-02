#!/bin/sh

# Crie um script que receba um número e exiba se ele é par ou ímpar.

read -p "Digite um número: " num
verifica=$(($num % 2))

if [ $verifica -eq 0 ]; then
    echo "O número $num é par"
else
    echo "O Número $num é impar"
fi