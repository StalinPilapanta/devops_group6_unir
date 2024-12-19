#!/bin/bash
echo "Texto ingresado: $1"

filetype=$(file -b $1)

echo "Tipo texto ingresado: $filetype"

#Validar si existe un archivo
if [[ $filetype != "directory" ]]
then
   if [ -f "$1" ]
   then
      echo "El archivo: ${1}, existe"
   else
      echo "El archivo: ${1}, no existe"
   fi
fi

#Validar si existe el directorio
if [[ $filetype = "directory" ]]
then
   if [ -d "$1" ]
   then
      echo "El directorio: ${1}, existe"
   else
      echo "El directorio: ${1}, no existe"
   fi
fi

#Ejecutar el comando ls
echo "Comando ls: "
ls $1
