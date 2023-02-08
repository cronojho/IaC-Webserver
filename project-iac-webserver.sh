#!/bin/bash

echo "Atualizando Sistema Aguarde...."

apt update
apt upgrade -y

echo "Instalando serviços do Servidor WEB...."

apt install apache2 -y
apt install unzip -y

echo "Baixando e Configurando template de um Site WEB...."

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -O /tmp/main.zip

unzip /tmp/main.zip -d /tmp/site

cp -r /tmp/site/* /var/www/html/

echo "Processo Finalizado, testar com o IP do servidor"


