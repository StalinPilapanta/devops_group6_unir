#!/bin/bash

# Obtener la fecha actual en formato año-mes-día
fecha=$(date +%Y%m%d)

# Iterar sobre todos los archivos con extensión .jpg (o .JPG) en el directorio actual
for archivo in *.jpg *.JPG; do
    # Comprobar si hay archivos que coincidan con el patrón
    if [[ -f "$archivo" ]]; then
        # Renombrar el archivo añadiendo el prefijo de fecha
        nuevo_nombre="${fecha}-${archivo}"
        mv "$archivo" "$nuevo_nombre"
        echo "Renombrado: $archivo -> $nuevo_nombre"
    fi
done