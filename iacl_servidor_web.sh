#!/bin/bash

echo "Criando servidor web..."

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Copiando repositório git..."

cd /tmp
wget https://github.com/guimleite/portfolio/archive/refs/heads/master.zip
unzip master.zip
cd /tmp/portfolio-master/portfolio/
cp -R * /var/www/html/


