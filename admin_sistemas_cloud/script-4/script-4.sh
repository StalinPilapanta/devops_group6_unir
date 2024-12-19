#!/bin/bash

read -p "Proporcionar primer parametro:  " file1
read -p "Proporcionar segundo parametro: " file2

# Verificar que el archivo uno exista
if [ ! -f "$file1" ]; then
  echo "Error: El archivo '$file1' no existe."
  exit 1
fi

# Verificar que el archivo dos exista
if [ ! -f "$file2" ]; then
  echo "Error: El archivo '$file2' no existe."
  exit 1
fi

# Copiar el archivo origen al destino
cp "$file1" "$file2"

# Verificar si la copia fue exitosa
if [ $? -eq 0 ]; then
  echo "El archivo '$file1' se copió correctamente sobre '$file2'."
else
  echo "Error: No se pudo copiar el archivo."
  exit 1
fi
