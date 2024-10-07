#!/bin/bash

# Crear el archivo Filtro_Avanzado.txt
touch Filtro_Avanzado.txt

# Obtener la IP Pública y agregarla al archivo
echo "IP Pública:" > Filtro_Avanzado.txt
sudo curl -s ifconfig.me >> Filtro_Avanzado.txt

# Agregar un espacio
sudo echo "" >> Filtro_Avanzado.txt

# Obtener el nombre del usuario actual desde /etc/passwd y agregarlo al archivo
echo "Nombre del usuario actual:" >> Filtro_Avanzado.txt
sudo grep "$(whoami):" /etc/passwd | awk -F: '{print $1}' >> Filtro_Avanzado.txt

# Agregar un espacio
echo "" >> Filtro_Avanzado.txt

# Obtener el hash del nombre del usuario actual desde /etc/shadow y agregarlo al archivo
echo "Hash del nombre del usuario actual:" >> Filtro_Avanzado.txt
sudo grep "$(whoami):" /etc/shadow | awk -F: '{print $2}' >> Filtro_Avanzado.txt

