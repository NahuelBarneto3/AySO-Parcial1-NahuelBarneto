# Mostrar el estado actual de los discos y particiones
echo "Estado actual de los discos y particiones:"
lsblk
#Asignacion de la ruta correcta del disco a una variable para usarla luego
DISCO="/dev/sdc" #se carga la variable DISCO con /dev/sdc 
#Particionamienta
echo "Particionando el disco $DISCO..."
(
echo n  # Nueva partición
echo p  # Primaria
echo 1  # Número de partición
echo   # Primer sector (predeterminado)
echo +2.5G  # Tamaño de la partición
echo n  # Nueva partición
echo p  # Primaria
echo 2  # Número de partición
echo   # Primer sector (predeterminado)
echo +2.5G  # Tamaño de la partición
echo n  # Nueva partición
echo p  # Primaria
echo 3  # Número de partición
echo   # Primer sector (predeterminado)
echo +2.5G  # Tamaño de la partición
echo n  # Nueva partición
echo e  # Extendida
echo 4  # Número de partición
echo   # Primer sector (predeterminado)
echo   # Último sector (predeterminado)
echo n  # Nueva partición lógica
echo l  # Lógica
echo   # Número de partición (predeterminado)
echo   # Primer sector (predeterminado)
echo +2.5G  # Tamaño de la partición
echo w  # Escribir cambios
) |sudo fdisk $DISCO
# Formatear las particiones
echo "Formateando las particiones con ext4..."
sudo mkfs.ext4 ${DISCO}1
sudo mkfs.ext4 ${DISCO}2
sudo mkfs.ext4 ${DISCO}3
sudo mkfs.ext4 ${DISCO}5
#Crear directorios de montaje
echo "Creando directorios de montaje..."
sudo mkdir -p /mnt/part1
sudo mkdir -p /mnt/part2
sudo mkdir -p /mnt/part3
sudo mkdir -p /mnt/part4
# Montar las particiones
echo "Montando las particiones..."
mount ${DISCO}1 /mnt/part1
mount ${DISCO}2 /mnt/part2
mount ${DISCO}3 /mnt/part3
mount ${DISCO}5 /mnt/part4
# Mostrar el estado de las particiones montadas
echo "Estado de las particiones montadas:"
lsblk
