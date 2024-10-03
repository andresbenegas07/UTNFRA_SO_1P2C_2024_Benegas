#!/bin/bash

DISCO_TP="/dev/sdb"

echo "Script haciendo magia..."

sudo fdisk $DISCO_TP << EOF
n
p


+10M

n
p


+10M

n
p


+10M

n
e


+1OM

n

+10M

n

+10M

n

+10M

n

+10M

n

+10M

n

+10M

n

+10M

w
EOF

echo
echo "Mostrar particionamientos"
sudo fdisk $DISCO_TP -l

echo
echo "Formateando las particiones"
sudo mkfs.ext4 ${DISCO_TP}1
sudo mkfs.ext4 ${DISCO_TP}2
sudo mkfs.ext4 ${DISCO_TP}3
sudo mkfs.ext4 ${DISCO_TP}5
sudo mkfs.ext4 ${DISCO_TP}6
sudo mkfs.ext4 ${DISCO_TP}7
sudo mkfs.ext4 ${DISCO_TP}8
sudo mkfs.ext4 ${DISCO_TP}9
sudo mkfs.ext4 ${DISCO_TP}10
sudo mkfs.ext4 ${DISCO_TP}11

echo
echo "Monto particiones"
sudo mount ${DISCO_TP}1 /Examenes-UTN/alumno_1/parcial_1
sudo mount ${DISCO_TP}2 /Examenes-UTN/alumno_1/parcial_2
sudo mount ${DISCO_TP}3 /Examenes-UTN/alumno_1/parcial_3  
sudo mount ${DISCO_TP}5 /Examenes-UTN/alumno_2/parcial_1  
sudo mount ${DISCO_TP}6 /Examenes-UTN/alumno_2/parcial_2
sudo mount ${DISCO_TP}7 /Examenes-UTN/alumno_2/parcial_3
sudo mount ${DISCO_TP}8 /Examenes-UTN/alumno_3/parcial_1 
sudo mount ${DISCO_TP}9 /Examenes-UTN/alumno_3/parcial_2 
sudo mount ${DISCO_TP}10 /Examenes-UTN/alumno_3/parcial_3
sudo mount ${DISCO_TP}11 /Examenes-UTN/profesores

echo
echo "Muestro montajes"
sudo df -h 
lsblk -f /dev/sdb

echo
echo "Fin del script del punto B"
