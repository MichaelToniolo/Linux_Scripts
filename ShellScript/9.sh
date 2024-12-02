#!/bin/sh

# Crie um script que exiba um menu com operações básicas (adição, subtração, multiplicação e divisão). O usuário escolhe a operação e fornece dois números. 
# O script realiza a operação selecionada e exibe o resultado.

echo -e "OPERADORES MATEMÁTICOS\n1- SOMA\n2- SUBTRACAO\n3- DIVISAO\n4- MULTIPLICAÇÃO\n5- SAIR"

read -p "DIGITE A OPERAÇÃO QUE QUER FAZER: " op

case $op in
    1)
        echo -e "[SELECIONADO SOMA]\n"
        read -p "DIGITE UM NÚMERO: " num1
        read -p "DIGITE OUTRO NÚMERO: " num2
        echo "RESULTADO: $(($num1 + $num2))";;
    2)
        echo -e "[SELECIONADO SUBTRAÇÃO]\n"
        read -p "DIGITE UM NÚMERO: " num1
        read -p "DIGITE OUTRO NÚMERO: " num2
        echo "RESULTADO: $(($num1 - $num2))";;
    3)
        echo -e "[SELECIONADO DIVISÃO]\n"
        read -p "DIGITE UM NÚMERO: " num1
        read -p "DIGITE OUTRO NÚMERO: " num2
        echo "RESULTADO: $(($num1 / $num2))";;
    4)
        echo -e "[SELECIONADO MULTIPLICAÇÃO]\n"
        read -p "DIGITE UM NÚMERO: " num1
        read -p "DIGITE OUTRO NÚMERO: " num2
        echo "RESULTADO: $(($num1 * $num2))";;
    5)
        echo "SAIU";;
    *)
        echo "Opção Inválida";;
esac
    

    