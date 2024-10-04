#!/bin/bash

echo "creo los usuarios"
sudo useradd p1c2_2024_A1
sudo useradd p1c2_2024_A2
sudo useradd p1c2_2024_A3
sudo useradd p1c2_2024_P1

echo "creamos los grupos"
sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores

echo "modificamos los grupos de los usuarios"
sudo usermod -aG p1c2_2024_gAlumno p1c2_2024_A1
sudo usermod -aG p1c2_2024_gAlumno p1c2_2024_A2
sudo usermod -aG p1c2_2024_gAlumno p1c2_2024_A3
sudo usermod -aG p1c2_2024_gProfesores p1c2_2024_P1


echo "asignamos claves (misma clave que el usuario)"
echo "p1c2_2024_A1:p1c2_2024_A1" | sudo chpasswd
echo "p1c2_2024_A2:p1c2_2024_A2" | sudo chpasswd
echo "p1c2_2024_A3:p1c2_2024_A3" | sudo chpasswd
echo "p1c2_2024_P1:p1c2_2024_P1" | sudo chpasswd

echo "ajustamos los permisos"
sudo chmod -R 750 /Examenes-UTN/alumno_1
sudo chmod -R 760 /Examenes-UTN/alumno_2
sudo chmos -R 700 /Examenes-UTN/alumno_3

echo "Ajustamos los dueños"
sudo chown -R p1c2_2024_A1:p1c2_2024_A1 /Examenes-UTN/alumno_1  
sudo chown -R p1c2_2024_A2:p1c2_2024_A2 /Examenes-UTN/alumno_2
sudo chown -R p1c2_2024_A3:p1c2_2024_A3 /Examenes-UTN/alumno_3
sudo chown -R p1c2_2024_P1:p1c2_2024_gProfesores /Examenes-UTN/profesores


echo "Validamos permisos y owners"

sudo ls -ld /Examenes-UTN/alumno_1  
sudo ls -l /Examenes-UTN/alumno_1 

sudo ls -ld /Examenes-UTN/alumno_2
sudo ls -l /Examenes-UTN/alumno_2 

sudo ls -ld /Examenes-UTN/alumno_3
sudo ls -l /Examenes-UTN/alumno_3 

sudo ls -ld /Examenes-UTN/profesores
sudo ls -l /Examenes-UTN/profesores  
echo


echo "Creo archivo con p1c1_2024_u1 "
sudo  whoami > Examenes-UTN/alumno_1/validar1.txt p1c2_2024_A1 
sudo  whoami > Examenes-UTN/alumno_2/validar2.txt p1c2_2024_A2
sudo  whoami > Examenes-UTN/alumno_3/validar3.txt p1c2_2024_A3
sudo  whoami > /Examenes-UTN/profesores/validar4.txt p1c2_2024_P1

echo "Mostramos permisos de los archivos"
sudo ls -l Examenes-UTN/alumno_1/validar1.txt
sudo ls -l Examenes-UTN/alumno_2/validar2.txt
sudo ls -l Examenes-UTN/alumno_3/validar3.txt
sudo ls -l Examenes-UTN/profesores/validar4.txt

echo "Mostramos archivos: "
sudo cat Examenes-UTN/alumno_1/validar1.txt
sudo cat Examenes-UTN/alumno_2/validar2.txt
sudo cat Examenes-UTN/alumno_3/validar3.txt
sudo cat Examenes-UTN/profesores/validar4.txt
echo


