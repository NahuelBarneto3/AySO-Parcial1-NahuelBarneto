echo "Información del Total de Memoria RAM:" > Filtro_Basico.txt
grep "MemTotal" /proc/meminfo >> Filtro_Basico.txt

# Agregar información del fabricante del chasis
echo -e "\nInformación del Fabricante del Chasis:" >> Filtro_Basico.txt
sudo dmidecode -t chassis >> Filtro_Basico.txt
