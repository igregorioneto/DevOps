#!/bin/bash
echo "Criando um servidor de arquivos..."
apt-get update -y
apt-get upgrate -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e criando arquivos da execução..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio
unzip main.zip
cd /linux-site-dio
cp -R * /var/www/html

echo "Fim..."