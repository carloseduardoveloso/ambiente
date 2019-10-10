#!/bin/bash
echo 'Configuração do arquivo hosts'
rm -f /etc/hosts
touch /etc/hosts
echo '192.168.50.51     cacher' >> /etc/hosts
echo '192.168.50.52     ansible' >> /etc/hosts
echo '192.168.50.55     mysql57' >> /etc/hosts
echo 'Configuração do arquivo hosts finalizada'

echo 'Configuração da chave de acesso'
cat /vagrant/ssh_keys/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys
echo 'Configuração da chave de acesso finalizada'

echo 'Configuração do cacher'
rm -f /etc/apt/apt.conf.d/00aptproxy
touch /etc/apt/apt.conf.d/00aptproxy
echo 'Acquire::http::Proxy "http://cacher:3142";' > /etc/apt/apt.conf.d/00aptproxy 
echo 'Configuração do cacher finalizado'

echo 'Configurações básicas finalizadas'
