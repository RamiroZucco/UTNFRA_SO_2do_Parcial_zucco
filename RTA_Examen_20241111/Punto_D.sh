#En /<Path-Repo>/202406/ansible/roles/2do_parcial:

mdkir templates

#En /<Path-Repo>/202406/ansible/roles/2do_parcial/templates:

vim datos_alumno.txt.j2

#Dentro de esta plantilla:
Nombre: {{Nombre}}
Apellido: {{Apellido}}
Division: {{Division}}

vim datos_equipo.txt.j2

#Dentro de esta otra plantilla:
IP: {{ansible_default_ipv4.address}}
Distribucion: {{ansible_distribution}} {{ansible_distribution_version}}
Cantidad de Cores: {{ansible_processor_cores}}

#En /<Path-Repo>/202406/ansible/roles/2do_parcial/vars:

vim main.yml

#Dentro de este archivo:
Nombre : "Ramiro"
Apellido: "Zucco"
Division: "114"

#En /<Path-Repo>/202406/ansible/roles/2do_parcial/tasks:

vim main.yml

#Dentro de este archivo:
---
# tasks file for 2do_parcial
- name: Crear estructura de directorios alumno
  become: yes
  file:
    path: "/tmp/2do_parcial/alumno"
    state: directory
    mode: '0755'
    recurse: yes

- name: Crear estructura de directorios equipo
  become: yes
  file:
    path: "/tmp/2do_parcial/equipo"
    state: directory
    mode: '0755'
    recurse: yes

- name: Crear archivo datos_alumno.txt
  become: yes
  template:
    src: datos_alumno.txt.j2
    dest: /tmp/2do_parcial/alumno/datos_alumno.txt
    mode: '0755'

- name: Crear archivo datos_equipo.txt
  become: yes
  template:
    src: datos_equipo.txt.j2
    dest: /tmp/2do_parcial/equipo/datos_equipo.txt
    mode: '0755'

- name: Configurar sudoers para el grupo 2PSupervisores no requiera contraseña
  become: yes
  lineinfile:
    path: /etc/sudoers
    state: present
    regexp: '^%2PSupervisores'
    line: '%2PSupervisores ALL=(ALL) NOPASSWD: ALL'
    validate: 'visudo -cf %s'


#En /<Path-Repo>/202406/ansible:

ansible-playbook -i inventory/hosts playbook.yml

