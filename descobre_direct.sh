#!/bin/bash
echo "#############################################"
echo "script para descoberta de diretorios em shell"
echo "#############################################"
echo " "
echo "Informe o site alvo: $1"
for palavras in `cat lista.txt`
do
saida1=$(curl -s -o /dev/null -w "%{http_code}" $1/$palavras/)
if [ $saida1 == "200" ]
echo " "
echo "Encontrando diretorios"
then
echo "Diretorio encontrado ==> $1/$palavras/"
fi
done
echo " "
echo "################################################################################## "
for palavras in `cat lista.txt`
do
saida2=$(curl -s -o /dev/null -w "%{http_code}" $1/$palavras)
if [ $saida2 == "200" ]
echo " "
echo "Encontrando arquivos"
then
echo "Arquivo encontrado ==> $1/$palavras"
fi
done
