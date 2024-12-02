#!/bin/bash

# Crie um script que solicite uma resposta do usuário ("sim" ou "não") com um tempo limite de 3 segundos. 
# Se o tempo esgotar, exiba "Tempo esgotado".

read -t3 -p "Digite antes de 3 segundos a letra X: " num
echo -e "\nTempo esgotado"
