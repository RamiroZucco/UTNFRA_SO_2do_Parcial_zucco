sudo fdisk /dev/sdc << EOF
n
p
1

+1.5G
w
EOF

sudo fdisk /dev/sdd << EOF
n
p
1

+800M
w
EOF

sudo pvcreate /dev/sdc1 /dev/sdd1

sudo vgcreate vg_datos /dev/sdc1
sudo vgcreate vg_temp /dev/sdd1

sudo lvcreate -L 5M -n lv_docker vg_datos
sudo lvcreate -L 1.4G -n lv_workareas vg_datos
sudo lvcreate -L 512M -n lv_swap vg_temp

sudo mkfs.ext4 /dev/vg_datos/lv_docker
sudo mkfs.ext4 /dev/vg_datos/lv_workareas
sudo mkswap /dev/vg_temp/lv_swap

sudo mkdir -p /var/lib/docker
sudo mkdir -p /work

sudo mount /dev/vg_datos/lv_docker /var/lib/docker
sudo mount /dev/vg_datos/lv_workareas /work
sudo swapon /dev/vg_temp/lv_swap

sudo bash -c 'cat << EOF >> /etc/fstab
/dev/vg_datos/lv_docker    /var/lib/docker    ext4    defaults    0    0
/dev/vg_datos/lv_workareas /work              ext4    defaults    0    0
/dev/vg_temp/lv_swap       none               swap    sw          0    0
EOF'
