#!/bin/bash
echo "###############################################################"
echo "Identificando hosts"
echo "###############################################################"
echo ""
echo "Identifique o ttl recebido no ping"
echo "ttl 64 Linux"
echo "ttl 255 Unix"
echo "ttl 128 Windows"
echo "Olhar tabelas ttls no google ajuda a identificar melhor"
echo " "
#Modificar ttl e ip aqui
for i in $(seq 1 255);do ping -c1 172.19.0.$i;done | grep ttl=64
