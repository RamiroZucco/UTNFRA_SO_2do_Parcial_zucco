#Dentro de la carpeta <Path-Repo>/202406/docker/ edito el archivo con mis datos con vim:

sudo vim index.html

sudo usermod -a -G docker zucco
sudo su - zucco
docker login -u ramirozucco

touch Dockerfile

#Dentro del Dockerfile: FROM nginx COPY index.html /usr/share/nginx/HTML

sudo vim run.sh

#Dentro de run.sh: #!/bin/bash docker run -d -p 8080:80 ramirozucco/web1-zucco

sudo chmod +x run.sh

sudo fdisk /dev/sdd << EOF
n
p
2

+220M
t
2
8e
Wq
EOF

sudo fdisk /dev/sdc << EOF
n
p
2


t
2
8e
Wq
EOF

sudo pvcreate /dev/sdd2
sudo vgextend vg_datos /dev/sdd2
sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker

sudo pvcreate /dev/sdc2
sudo vgextend vg_datos /dev/sdc2
sudo lvextend -l +100%FREE /dev/mapper/vg_datos-lv_docker
sudo resize2fs /dev/mapper/vg_datos-lv_docker

docker build -t ramirozucco/web1-zucco:latest .
docker push ramirozucco/web1-zucco:latest
./run.sh
