cd /usr/local/bin/
sudo vim Zucco_AltaUser-Groups.sh


#DENTRO DEL SCRIPT PUSE ESTO:
#!/bin/bash

sudo groupadd 2P_GDesa
sudo groupadd 2P_GTest
sudo groupadd 2PSupervisores
lista=$1
usuario=$2

ANT_IFS=$IFS
IFS=$'\n'

for i in `cat $lista | awk -F ',' '{print $1" "$2" "$3}' | grep -v ^#`
do
        contrasena=$(grep "^$usuario:" /etc/shadow | awk -F ':' '{print$2}')
        usuarioParametros=$(echo $i | awk '{print$1}')
        grupo=$(echo $i | awk '{print$2}')
        home=$(echo $i | awk '{print$3}')
        sudo useradd -d $home -g $grupo -p $contrasena $usuarioParametros
done
IFS=$ANT_IFS

#UNA VEZ FUERA DEL SCRIPT desde el home de mi usuario creado (su - zucco)

sudo chmod 733 Zucco_AltaUser-Groups.sh

sudo /usr/local/bin/Zucco_AltaUser-Groups.sh /home/zucco/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt zucco
