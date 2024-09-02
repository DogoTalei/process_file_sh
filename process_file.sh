#!/bin/bash

# Comprobamos si se ha proporcionado un archivo como argumento
if [ $# -ne 1 ]; then
  echo "Uso: $0 <archivo_entrada>"
  exit 1
fi

# Asignamos el argumento a una variable
INPUT_FILE="$1"
OUTPUT_FILE="id_rsa"

# Comprobamos si el archivo de entrada existe
if [ ! -f "$INPUT_FILE" ]; then
  echo "El archivo $INPUT_FILE no existe."
  exit 1
fi

# Procesamos el archivo y guardamos el resultado en el archivo id_rsa
cat "$INPUT_FILE" | grep -v -e arp -e Host | tr -d '>>' > "$OUTPUT_FILE"

# Mostrar el contenido procesado en la terminal
echo "Contenido procesado guardado en $OUTPUT_FILE:"
cat "$OUTPUT_FILE"
