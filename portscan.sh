#!/bin/bash
if [ "$1" == "" ]
then
    echo "Usage: ./portscan.sh [IP]"
    echo "Example ./portscan.sh 192.168.0.1"
else
    echo "Esperando o scanner de portas"
    nc -nvz $1 1-65535 > $1.txt 2>&1
fi
tac $1.txt
rm -rf $1.txt
