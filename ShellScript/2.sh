#!/bin/sh

# Peça para que o usuário digite uma senha e a oculte com -s. Em seguida, exiba uma mensagem confirmando que a senha foi armazenada.

read -s -p "Digite uma senha para armazenar: " senha

echo -e "\nSenha armazenada com sucesso"