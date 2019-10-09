#!/bin/bash
echo 'Configuração do arquivo hosts'
rm -f /etc/hosts
touch /etc/hosts
echo '10.2.0.15     cacher' >> /etc/hosts
echo '10.2.6.78     mysql57' >> /etc/hosts
echo 'Configuração do arquivo hosts finalizada'

echo 'Configuração da chave de acesso'
cat /vagrant/ssh_keys/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
echo 'Configuração da chave de acesso finalizada'

echo 'Configuração do cacher'
rm -f /etc/apt/apt.conf.d/00aptproxy
touch /etc/apt/apt.conf.d/00aptproxy
echo 'Acquire::http::Proxy "http://cacher:3142";' > /etc/apt/apt.conf.d/00aptproxy 
echo 'Configuração do cacher finalizado'

echo 'Configurações basicas finalizadas'