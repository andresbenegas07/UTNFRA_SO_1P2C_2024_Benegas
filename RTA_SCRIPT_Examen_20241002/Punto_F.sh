#!/bin/bash

echo "Creo el archivo avanzado con los datos de IP, usuario, etc:"

echo
echo "Mi IP Publica es: $(curl -s ifconfig.me)" > ~/repogit/UTNFRA_SO_1P2C_2024_Benegas/RTA_ARCHIVOS_Examen_20241002/Filtro_Avanzado.txt

echo "Mi usuario es: $(whoami)" >> ~/repogit/UTNFRA_SO_1P2C_2024_Benegas/RTA_ARCHIVOS_Examen_20241002/Filtro_Avanzado.txt

echo "El Hash de mi usuario es: $(sudo grep $(whoami) /etc/shadow | awk -F ':' '{print $2}') >> ~/repogit/UTNFRA_SO_1P2C_2024_Benegas/RTA_ARCHIVOS_Examen_20241002/Filtro_Avanzado.txt"

cat Filtro_Avanzado.txt


git remote get-url origin
