#!/bin/bash

# script creado para la maestria DevOps
# imprime el nombre del script
echo "Nombre del script: $0"

# imprime el # de los argumentos
num=$#
echo "Número de argumentos: $num"

# valida que se haya ingresado argumentos
if [ $# -eq 0 ]; then
    echo "No se ingresaron argumentos"
fi

# valida si existe 1 o 2 argumentos 
if [ $num -ge 2 ]; then
    echo "$1 $2"  # imprime en la misma linea los dos primeros argumentos
elif [ $num -eq 1 ]; then
    echo "$1"  # imprime solo el primer argumento
fi

# valida si hay mas de 2 argumentos e imprime en cada linea respectiva
if [ $num -gt 2 ]; then
    for arg in "${@:3}"; do
        echo "$arg"
    done
fi