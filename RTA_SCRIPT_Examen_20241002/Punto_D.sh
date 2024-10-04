#!/bin/bash

echo "Haciendo magia y creando estructura Asimétrica"

mkdir -p ~/Estructura_Asimetrica/{{correo,clientes}/cartas_{2..100},correo/carteros_{1..10}}


echo "Hora de verificar si está lograda la estructura"

tree  ~/Estructura_Asimetrica/ --noreport | pr -T -s' ' -w 80 --column 4

echo "Lograda? Sí"


