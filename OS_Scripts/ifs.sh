#/bin/sh
echo "Digite seu nome"
read nome
echo "Digite a idade"
read idade
if [ -z $nome ]
then
	echo "Você não digitou seu nome"
else
	echo "seu nome é $nome"
	if [ $idade -gt 10 ]
	then
		echo "Você tem mais que 10 anos"
	else
		echo "Vc tem menos que 10"
	fi
fi
