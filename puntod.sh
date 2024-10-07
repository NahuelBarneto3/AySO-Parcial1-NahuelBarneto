#Crea la estructura de directorios
sudo mkdir -p /home/parcial1/EstructuraAsimetrica/correo /home/parcial1/EstructuraAsimetrica/clientes

#Crea archivos en la carpeta correo
sudo touch /home/parcial1/EstructuraAsimetrica/correo/carta{1..100}

#Crea archivos en la carpeta clientes
sudo touch /home/parcial1/EstructuraAsimetrica/clientes/carta{1..100}

#Crea archivos en la carpeta correo para carteros
sudo touch /home/parcial1/EstructuraAsimetrica/correo/cartero{1..10}

echo "Estructura"
sudo tree Estructura_Asimetrica/
