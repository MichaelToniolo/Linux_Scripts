#!/bin/sh

# Crie um script que peça ao usuário um nome de arquivo. 
# Usando case, o script verifica a extensão do arquivo e exibe uma mensagem correspondente, 
# como "Arquivo de imagem" para .jpg, "Arquivo de texto" para .txt, etc.

read -p "DIGITE O NOME DE UM ARQUIVO: " arquivo
extensao=${arquivo##*.} #### BRUXARIA INEXPLICÁVEL AINDA
case $extensao in
    "jpg")
        echo "Arquivo de imagem";;
    "txt")
        echo "Arquivo de TXT";;
    *)
        echo "TIPO INVÁLIDO";;

esac
