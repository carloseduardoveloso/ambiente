#!/bin/bash
echo 'Instalação do ansible'
apt update 
apt upgrade -y
apt install software-properties-common
apt-add-repository --yes --update ppa:ansible/ansible
apt install ansible -y
#ansible all -i /vagrant/ansible/hosts -m ping
echo 'Ansible instalado'
