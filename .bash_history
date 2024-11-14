pwd

ls
cd ./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source  ~/.bashrc  && history -a
source ~/.bashrc
sudo apt install wget gpg
UBUNTU_CODENAME=jammy
wget -O- "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367" | sudo gpg --dearmour -o /usr/share/keyrings/ansible-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/ansible-archive-keyring.gpg] http://ppa.launchpad.net/ansible/ansible/ubuntu $UBUNTU_CODENAME main" | sudo tee /etc/apt/sources.list.d/ansible.list
sudo apt update && sudo apt install ansible
ansible --version
ls
sudo systemctl status docker
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
# Add the repository to Apt sources:
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo docker run hello-world
sudo systemctl status docker
cd /var/lib/docker
ls
cd /var/lib
cd docker
cd /docker/
sudo cd docker
sudo ls /var/lib/docker
cd ..
cd
git clone https://github.com/RamiroZucco/UTNFRA_SO_2do_Parcial_zucco.git
ls
cd RTA_Examen_20241111
ls
cd ..
sudo fdisk -l
ls
cd UTNFRA_SO_2do_Parcial_zucco
mv ~/RTA_Examen_<fecha> .
mv ~/RTA_Examen_2024111 .
mv ../RTA_Examen_20241111 .
ls
git add .
git commit -m "Precondiciones realizadas"
git config --global user.email "zuccoramiro@gmail.com"
git config --global user.name "RamiroZucco"
git commit -m "Precondiciones realizadas"
git push origin main
git config --global credential.helper store
git push origin main 
sudo fdisk -l
sudo fdisk /dev/sdc << EOF
n
p
1

+1.6G
w
EOF

sudo fdisk -l /dev/sdc
sudo fdisk /dev/sdc << EOF
n
p
1

+1.5G
w
EOF

sudo fdisk -l /dev/sdc
sudo fdisk /dev/sdd << EOF
n
p
1

+800M
w
EOF

sudo fdisk -l /dev/sdd
sudo pvcreate /dev/sdc1 /dev/sdd1
sudo vgcreate vg_datos /dev/sdc1
sudo vgcreate vg_temp /dev/sdd1
sudo lvcreate -L 5M -n lv_docker vg_datos
sudo lvcreate -L 1.5G -n lv_workareas vg_datos
sudo lvcreate -L 512M -n lv_swap vg_temp
sudo lvremove /dev/vg_datos/lv_docker
sudo fdisk /dev/sdc
sudo fdisk -l /dev/sdc
sudo fdisk /dev/sdc
sudo fdisk -l /dev/sdc
sudo vgdisplay vg_datos
sudo fdisk /dev/sdc << EOF
n
p
1

+1.5G
w
EOF

sudo pvcreate /dev/sdc1 /dev/sdd1
sudo pvremove /dev/sdc1
sudo pvremove /dev/sdd1
sudo vgreduce vg_datos /dev/sdc1
sudo vgreduce vg_temp /dev/sdd1
sudo fdisk -l
sudo lvremove /dev/vg_datos/lv_docker
sudo lvremove /dev/vg_datos/lv_workareas
sudo lvremove /dev/vg_temp/lv_swap
sudo vgreduce vg_datos /dev/sdc1
sudo vgreduce vg_temp /dev/sdd1
sudo umount /var/lib/docker
sudo umount /work
sudo swapoff /dev/vg_temp/lv_swap
sudo vgremove vg_datos
sudo vgremove vg_temp
sudo pvremove /dev/sdc1
sudo pvremove /dev/sdd1
sudo pvcreate /dev/sdc1 /dev/sdd1
sudo vgcreate vg_datos /dev/sdc1
sudo vgcreate vg_temp /dev/sdd1
sudo lvcreate -L 5M -n lv_docker vg_datos
sudo lvcreate -L 1.5G -n lv_workareas vg_datos
sudo lvcreate -L 1.4G -n lv_workareas vg_datos
sudo lvcreate -L 512M -n lv_swap vg_temp
sudo mkfs.ext4 /dev/vg_datos/lv_docker
sudo mkfs.ext4 /dev/vg_datos/lv_workareas
sudo mkswap /dev/vg_temp/lv_swap
cd / 
cd ..
cd
ls
cd UTNFRA_SO_2do_Parcial_zucco
ls
cd ..
ls
cd UTN-FRA_SO_Examenes
ls
sudo mount /dev/vg_datos/lv_docker /var/lib/docker
ls
cd .. 
cd  /var/lib/docker
ls
cd ..
cd
sudo mount /dev/vg_datos/lv_workareas /work
cd / 
ls
cd var
ls
cd lib
ls
cd docker
ls
cd /
ls
cd
ls
sudo mkdir -p /work
cd /
ls
cd work
ls
cd
sudo mount /dev/vg_datos/lv_workareas /work
cd /
cd work
ls
sudo swapon /dev/vg_temp/lv_swap
cd 
sudo bash -c 'cat << EOF >> /etc/fstab
/dev/vg_datos/lv_docker    /var/lib/docker    ext4    defaults    0    0
/dev/vg_datos/lv_workareas /work              ext4    defaults    0    0
/dev/vg_temp/lv_swap       none               swap    sw          0    0
EOF'
ls
cd / 
ls
cd etc
ls
cd fstab
cd /fstab
cd /
cd 
cd /etc/fstab
sudo systemctl restart docker
sudo systemctl status docker
free -h
sudo pvs
sudo lsblk -f
ls
cd UTNFRA_SO_2do_Parcial_zucco
ls
cd RTA_Examen_20241111
ls
vim Punto_A.sh
cd ..
git add .
git commit -m "Punto A realizado"
git push origin main
cd UTNFRA_SO_2do_Parcial_zucco
cd RTA_Examen_20241111
vim Punto_A.sh
git add .
cd ..
git add .
git commit -m "Punto A modificado"
git push origin main
sudo su
history
ls
cd /usr/local/bin/
ls
cd ..
ls
cd
ls
cd UTN-FRA_SO_Examenes
ls
cd 202406
ls
cd bash_script
ls
cd Lista_Usuarios.txt
cat Lista_Usuarios.txt
cd
cd /usr/local/bin/
ls
sudo vim Zucco_AltaUser-Groups.sh
ls
cd
chmod 755 /usr/local/bin/Zucco_AltaUser-Groups.sh
sudo chmod 755 /usr/local/bin/Zucco_AltaUser-Groups.sh
sudo /usr/local/bin/Zucco_AltaUser-Groups.sh
sudo ./Zucco_AltaUser-Groups.sh zucco /home/zucco/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cd /usr/local/bin
sudo chmod 755 Zucco_AltaUser-Groups.sh
sudo ./Zucco_AltaUser-Groups.sh zucco /home/zucco/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
ls
cat Zucco_AltaUser-Groups.sh
vim Zucco_AltaUser-Groups.sh
sudo vim Zucco_AltaUser-Groups.sh
grep "zucco" /etc/shadow
sudo grep "zucco" /etc/shadow
sudo ./Zucco_AltaUser-Groups.sh 2P_202406_Prog1 /home/zucco/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cd
sudo ./Zucco_AltaUser-Groups.sh 2P_202406_Prog1 /home/zucco/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
ls /home/zucco/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo ./Zucco_AltaUser-Groups.sh 2P_202406_Prog1 /home/zucco/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cd /usr/local/bin
sudo ./Zucco_AltaUser-Groups.sh 2P_202406_Prog1 /home/zucco/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo chmod +x Zucco_AltaUser-Groups.sh
/usr/local/bin$ sudo ./Zucco_AltaUser-Groups.sh 2P_202406_Prog1 /home/zucco/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo ./Zucco_AltaUser-Groups.sh 2P_202406_Prog1 /home/zucco/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
ls /home/zucco/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cat /home/zucco/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cd
ls
sudo /usr/local/bin/Zucco_AltaUser-Groups.sh 2P_202406_Prog1 /home/zucco/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo /usr/local/bin/Zucco_AltaUser-Groups.sh /home/zucco/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
getent group | grep 2P_GDesa
getent passwd | grep 2P_202406_Prog2
sudo grep "zucco" /etc/shadow
sudo grep "2P_202406_Prog1" /etc/shadow
cd /usr/local/bin
ls
sudo vim Zucco_AltaUser-Groups.sh
sudo chmod 733 Zucco_AltaUser-Groups.sh
sudo ./Zucco_AltaUser-Groups.sh zucco /home/zucco/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cd /usr/local/bin/
ls
sudo vim Zucco_AltaUser-Groups.sh
cd
sudo systemctl status docker
cd /usr/local/bin
ls
cat Zucco_AltaUser-Groups.sh
sudo cat Zucco_AltaUser-Groups.sh
sudo chmod 733 Zucco_AltaUser-Groups.sh
sudo ./zucco_AltaUser-Groups.sh zucco /home/zucco/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo ./Zucco_AltaUser-Groups.sh zucco /home/zucco/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo ./Zucco_AltaUser-Groups.sh zucco /UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo ./Zucco_AltaUser-Groups.sh/zucco/home/zucco/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cd
ls
./usr/local/bin/Zucco_AltaUser-Groups.sh  UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cd /usr/local/bin
ls
cd
sudo vgdisplay vg_datos | grep "PE Size"
sudo /usr/local/bin/Zucco_AltaUser-Groups.sh zucco ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cat Zucco_AltaUser-Groups.sh
cd /usr/local/bin
sudo cat Zucco_AltaUser-Groups.sh
cd
sudo /usr/local/bin/Zucco_AltaUser-Groups.sh zucco /home/zucco/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo /usr/local/bin/Zucco_AltaUser-Groups.sh /home/zucco/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt zucco
getent passwd | grep 2P_202406_Prog1
sudo grep zucco /etc/shadow
getent group | grep 2P_GDesa
getent group | grep 2P_GTest
ls -l /work/2P_202406_Prog1
ls -l /work/2P_202406_Prog2
sudo grep 2P_202406_Prog1 /etc/shadow
ls
cd UTN-FRA_SO_Examenes
cd /202406/bash_script/
cd /202406/bash_script
ls
cd 202406
cd
cd /UTN-FRA_SO_Examenes/202406
cd UTN-FRA_SO_Examenes
cd 202406
ls
cd bash_script
ls
sudo cat Lista_Usuarios.txt 
history
cd 202406
cd bash_script
ls
cd
getent group 2P_GDesa
getent group 2P_GTest
getent group 2PSupervisores
getent passwd 2P_202406_Prog1
getent passwd 2P_202406_Prog2
getent passwd 2P_202406_Test1
getent passwd 2P_202406_Supervisor
sudo grep zucco /etc/shadow
sudo grep 2P_202406_Prog1 /etc/shadow
sudo grep 2P_202406_Prog2 /etc/shadow
sudo grep 2P_202406_Test1 /etc/shadow
sudo grep 2P_202406_Supervisor /etc/shadow
sudo userdel -r 2P_202406_Prog1
sudo userdel -r 2P_202406_Prog2
sudo userdel -r 2P_202406_Test1
sudo userdel -r 2P_202406_Supervisor
sudo kill 22497
sudo userdel -r 2P_202406_Prog1
sudo userdel -r 2P_202406_Prog2
sudo userdel -r 2P_202406_Test1
sudo userdel -r 2P_202406_Supervisor
sudo kill 22497
ps -p 22497
sudo userdel -r 2P_202406_Prog1
sudo kill -9 22497
sudo su 2P_202406_Prog1
sudo userdel -r 2P_202406_Prog1
sudo groupdel 2P_GDesa
sudo groupdel 2P_GTest
sudo groupdel 2PSupervisores
getent passwd | grep '2P_202406_Prog1'
getent passwd | grep 2P_202406_Prog1
getent group | grep '2P_GTest'
sudo /usr/local/bin/Zucco_AltaUser-Groups.sh /home/zucco/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt zucco
sudo grep 2P_202406_Prog1 /etc/shadow
sudo grep 2P_202406_Prog2 /etc/shadow
sudo grep 2P_202406_Test1 /etc/shadow
sudo grep 2P_202406_Supervisor /etc/shadow
sudo grep zucco /etc/shadow
cd /usr/local/bin/
ls
cat Zucco_AltaUser-Groups.sh
sudo cat Zucco_AltaUser-Groups.sh
cd
ls
cd UTNFRA_SO_2do_Parcial_zucco/
ls
cd RTA_Examen_20241111/
LS
ls
sudo vim Punto_A.sh
sudo vim Punto_B.sh
cd ..
git add .
git commit -m "Punto B realizado"
git push origin main 
ls
cd
ls
cd UTN-FRA_SO_Examenes
ls
cd 202406
ls
cd docker
ls
sudo cat index.html
sudo vim index.html
sudo cat index.html
cd 
df -h /var/lib/docker/
sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker
df -h /var/lib/docker/
sudo systemctl restart docker
sudo systemctl status docker
ls 
cd UTN-FRA_SO_Examenes
ls
cd
cp -r UTN-FRA_SO_Examenes/202406 UTNFRA_SO_2do_Parcial_zucco/
ls
cd UTNFRA_SO_2do_Parcial_zucco
ls
cd 202406
ls
cd docker
ls
cd ..
ls
rm -ri 202406
ls
rm -r 202406
ls
cd
cd UTN-FRA_SO_Examenes/
LS
ls
cd 202406
ls
cd docker
ls
sudo usermod -a -G docker zucco
cd
sudo usermod -a -G docker zucco
cd /UTN-FRA_SO_Examenes/202406/docker
cd /UTN-FRA_SO_Examenes/202406/docker/
cd UTN-FRA_SO_Examenes/
cd 202406
cd docker
sudo usermod -a -G docker zucco
docker login -u ramirozucco
ls
cd UTN-FRA_SO_Examenes/
cd 202406
ls
cd docker
ls
touch Dockerfile
ls
sudo vim Dockerfile
sudo vim run.sh
ls
chmod +x run.sh
sudo chmod +x run.sh
docker build -t ramirozucco/web1-zucco:latest .
ls
sudo vim Dockerfile
sudo lsblk
sudo fdisk /dev/sdd << EOF
n
p
2

+380M
t
2
8e
wq
EOF

sudo fdisk /dev/sdc << EOF
n
p
2

+300M
t
2
8e
w
EOF

sudo fdisk /dev/sdd << EOF
n
p
2

+380M
t
2
8e
w
EOF

sudo fdisk -l /dev/sdd
sudo fdisk /dev/sdd
sudo lsblk
sudo fdisk /dev/sdc
sudo lsblk
sudo fdisk /dev/sdd
sudo fdisk /dev/sdc
sudo pvcreate /dev/sdd2
sudo vgextend vg_datos /dev/sdd2
sudo lvextend -L +320M /dev/mapper/vg_datos-lv_docker
sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker
sudo pvcreate /dev/sdc2
sudo vgextend vg_datos /dev/sdc2
sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker
docker build -t ramirozucco/web1-zucco:latest .
docker push ramirozucco/web1-zucco:latest
ls
cat run.sh
./run.sh
docker ps
ifconfig
sudo netstat -tulnp | grep 8080
sudo vim run.sh
sudo apt install net-tools
ifconfig
cd
ls
cd UTNFRA_SO_2do_Parcial_zucco
ls
cd RTA_Examen_20241111
ls
sudo vim Punto_C.sh 
cat vim Punto_C.sh
cd ..
git add .
git commit -m "Punto C realizado"
git push origin main
cd
history
sudo su - zucco
sudo su - zucco
ls
cd UTN-FRA_SO_Examenes
ls
cd 202406
ls
cd ansible
ls
cd roles
ls
cd 2do_parcial
ls
mkdir templates
ls
cd templates
vim datos_alumno.txt.j2
ls
vim datos_equipo.txt.j2
cd ..
ls
cd vars
ls
vim main.yml
cd ..
ls
cd tasks
ls
vim main.yml
ls
cd .. 
ls
cd tests
ls
sudo cat test.yml
cd ..
ls
cd ..
ls
ansible-playbook -i inventory/hosts playbook.yml
ls
cd roles
ls
cd 2do_parcial
ls
cd tasks
ls
vim main.yml
cd ..
cd .. 
-ansible-playbook -i inventory/hosts playbook.yml
ansible-playbook -i inventory/hosts playbook.yml
cd
sudo su - 2PSupervisores
sudo visudo
sudo - 2P_202406_Supervisor
su - 2P_202406_Supervisor
s
ls
ls -l /tmp/2do_parcial/
ls -l /tmp/2do_parcial/alumno/
ls -l /tmp/2do_parcial/equipo/
cat /tmp/2do_parcial/alumno/datos_alumno.txt
cat /tmp/2do_parcial/equipo/datos_equipo.txt
ls
cd UTN-FRA_SO_Examenes
ls
cd 202406
ls
cd ansible
ls
cd roles
ls
cd 2do_parcial
ls
cd tasks
ls
vim main.yml
cd ..
ansible-playbook -i inventory/hosts playbook.yml
su - 2P_202406_Supervisor
sudo visudo
cd
ls
cd UTN-FRA_SO_Examenes
ls
cd 202406
ls
cd ansible
ls
cd roles
ls
cd 2do_parcial
ls
cd tasks
ls
vim main.yml
cd 
ls
cd UTNFRA_SO_2do_Parcial_zucco
ls
cd RTA_Examen_20241111
ls
vim Punto_D.sh
cd ..
git add .
git commit -m "Punto D realizado"
git push origin main
cd
ls
history -a
cp -r UTN-FRA_SO_Examenes/202406 UTNFRA_SO_2do_Parcial_zucco/
cd UTNFRA_SO_2do_Parcial_zucco
ls
cd
ls
cp ~/.bash_history ~/UTNFRA_SO_2do_Parcial_zucco/
ls
cd UTNFRA_SO_2do_Parcial_zucco
ls
ls -a
ls
cp ~/.bash_history ~/UTNFRA_SO_2do_Parcial_zucco/.bash_history
ls
cd 
