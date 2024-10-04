#!/bin/bash

echo "Filtrando la info de la memoria RAM y creando un .txt"

grep MemTotal /proc/meminfo > ~/repogit/UTNFRA_SO_1P2C_2024_Benegas/RTA_ARCHIVOS_Examen_20241002/Filtro_Basico.txt

echo "Filtrando la info de chasis y guardandola en un .txt"

sudo dmidecode -t chassis | grep Manufacturer >> Filtro_Basico.txt  
