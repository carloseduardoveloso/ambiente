#!/bin/bash
echo 'Instalação do Apt-Cacher-NG'
apt update
apt upgrade -y 
apt install -y apt-cacher-ng
systemctl status apt-cacher-ng
echo 'Apt-Cacher-NG instalado'
