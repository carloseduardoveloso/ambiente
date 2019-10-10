#!/bin/bash
echo 'Instalação do ansible'
apt update 
apt upgrade -y
apt install software-properties-common
apt-add-repository --yes --update ppa:ansible/ansible
apt install ansible -y
echo 'Ansible instalado'

echo 'Copiando arquivos hosts e playbook'
cp /vagrant/ansible/hosts /home/vagrant/hosts
cp /vagrant/ansible/mysql57.playbook.yml /home/vagrant/mysql57.playbook.yml
echo 'Copiando chave ssh'
cp /vagrant/ssh_keys/id_rsa /home/vagrant/
echo 'Editando permissões das chaves'
chmod 600 /home/vagrant/id_rsa
chown vagrant:vagrant /home/vagrant/id_rsa
echo 'Verificando acesso as maquinas via ansible'
ansible all -i hosts -m ping
echo 'Executando o playbook do mysql57'
ansible-playbook -i hosts mysql57.playbook.yml
