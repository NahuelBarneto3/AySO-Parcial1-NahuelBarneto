# Estado de las carpetas antes de cambiar permisos
echo "Estado carpetas antes de cambiar permisos"
ll /home/parcial1/Examenes-UTN/

# Crear grupos

sudo groupadd grupodevops
sudo groupadd grupodiseño
sudo groupadd grupodeveloper
sudo groupadd grupotester

# Crear usuarios y añadir a los grupos secundarios
sudo useradd -m -G grupodeveloper developer
# Usuario tester
sudo useradd -m -G grupodiseño tester
# Usuario devops
sudo useradd -m -G grupodevops devops
# Usuario disenador
sudo useradd -m diseñador

# Mostrar los usuarios creados
echo "Usuarios y grupos creados:"
getent passwd developer tester devops disenador
getent group grupodevops grupodiseno grupodeveloper

#Cambio de permisos de las carpetas

sudo chmod -R 750 Examenes-UTN/alumno_1
sudo chmod -R 760 Examenes-UTN/alumno_2
sudo chmod -R 700 Examenes-UTN/alumno_3
sudo chmod -R 775 Examenes-UTN/profesores

#Cambio de propietario y grupo de las carpetas

sudo chown developer:developer Examenes-UTN/alumno_1
sudo chown tester:tester Examenes-UTN/alumno_2
sudo chown devops:devops Examenes-UTN/alumno_3
sudo chown diseñador:diseñador Examenes-UTN/profesores

echo "Estado carpetas despues de cambiar permisos"

ll /home/parcial1/Examenes-UTN/


#Creacion de validar.txt en cada carpeta con el whoami

sudo touch /Examenes-UTN/alumno_1/validar.txt

sudo -u "developer" whoami >> ~/parcial1/Examenes-UTN/alumno_1/validar.txt
sudo -u "tester" whoami >> ~# Estado de las carpetas antes de cambiar permisos
echo "Estado carpetas antes de cambiar permisos"
# Crear grupos, gruopadd agrega un grupo

sudo groupadd grupodevops
sudo groupadd grupodiseno
sudo groupadd grupodeveloper
sudo groupadd grupotester

# Crear usuarios y añadir a los grupos secundarios
# Usuario developer, useradd agrega un user -m crea un HOME para el user -G agrega al user a un grupo
sudo useradd -m -G grupodeveloper developer
# Usuario tester 
sudo useradd -m -G grupodiseño tester
# Usuario devops
sudo useradd -m -G grupodevops devops
# Usuario disenador
sudo useradd -m diseñador

# Mostrar los usuarios creados
echo "Usuarios y grupos creados:"
getent passwd developer tester devops disenador
getent group grupodevops grupodiseno grupodeveloper

# El comando CHMOD en Linux se utiliza para cambiar los permisos de archivos y directorios. Los permisos determinan quién puede leer, escribir o ejecutar un archivo o directorio.
#PERMISOS --- El primer guion es para los permisos del propietario, segundo para el grupo y tercero es para otros
#4 = Lectura (r)
#2 = Escritura (w)
#1 = Ejecución (x)
#Estos se suman para dar la cantidad de permisos necesarios a cada uno
#EJ> 755 Propietario: rwx | Grupo:r-x | Otros: --x


sudo chmod -R 750 Examenes-UTN/alumno_1
sudo chmod -R 760 Examenes-UTN/alumno_2
sudo chmod -R 700 Examenes-UTN/alumno_3
sudo chmod -R 775 Examenes-UTN/profesores

# El comando chown en Linux se utiliza para cambiar el propietario y/o el grupo de un archivo o directorio.
#sudo chown usuario:grupo archivo.txt, si se deja en blanco el prop se cambia solo el grupo

sudo chown developer:developer Examenes-UTN/alumno_1
sudo chown tester:tester Examenes-UTN/alumno_2
sudo chown devops:devops Examenes-UTN/alumno_3
sudo chown diseñador:diseñador Examenes-UTN/profesores

echo "Estado carpetas despues de cambiar permisos"

ll Examenes-UTN/

#Creo el archivo validar.txt con touch 
#sudo -u "usuario" esta ultima ejecuta la siguiente instruccion como el #usuario indicado entre las comillas.


sudo touch /home/parcial1/validarAlumno1.txt
sudo touch /home/parcial1/validarAlumno2.txt
sudo touch /home/parcial1/validarAlumno3.txt
sudo touch /home/parcial1/validarprofesores.txt

sudo -u developer whoami >> /home/parcial1/validarAlumno1.txt
sudo -u tester whoami >> /home/parcial1/validarAlumno2.txt
sudo -u devops whoami >> /home/parcial1/validarAlumno3.txt
sudo -u diseñador whoami >> /home/parcial1/validarprofesores.txt
