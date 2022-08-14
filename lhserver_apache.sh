#!/bin/bash

echo "Update"
apt-get -q update -y
apt-get -q upgrade --y
echo "Done"
apt-get -q install apache2 -y
apt-get -q install unzip -y

wget -P /temp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip /temp/main.zip -d /var/www/html