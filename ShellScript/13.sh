#/bin/bash

# Use um laço while para somar os números de 1 a 100 e exibir o resultado total.

numero=-1
while [ $numero -le 100 ]; do
    echo "$numero"
    numero=$((numero + 1))
done