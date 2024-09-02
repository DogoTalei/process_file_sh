# process_file_sh
Este script de Bash toma un archivo de entrada, filtra las líneas que contienen arp o Host, elimina los caracteres >>, y guarda el resultado en un archivo llamado id_rsa. Si no se proporciona el archivo correcto o el archivo no existe, muestra un mensaje de error. Luego, muestra el contenido procesado.

Hazlo ejecutable: En la terminal, navega hasta el directorio donde guardaste el script y hazlo ejecutable con el siguiente comando:

chmod +x procesar_archivo.sh

Ejecuta el script: Ejecuta el script proporcionándole el archivo de entrada como argumento. Por ejemplo:

./procesar_archivo.sh datos.txt

Revisa el resultado: El script también mostrará el contenido con 

cat id_rsa


