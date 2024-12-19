#!/bin/bash

read -p "Por favor, proporciona un archivo como parámetro: " file

extension="${file##*.}"

if [ "$extension" == "jpg" ] || [ "$extension" == "JPG" ]; then
    mkdir -p ~/fotos/
    cp "$file" ~/fotos/
    echo "El archivo se ha copiado a fotos."
else
    echo "El archivo no es JPG."
fi
