#!/bin/bash

apt update
apt install -y apache2
systemctl start apache2.service
systemctl enable apache2.service

apt install -y software-properties-common
echo -ne '\n' | add-apt-repository ppa:ondrej/php

apt update
apt install -y php7.3 php7.3-{common,gmp,curl,soap,bcmath,intl,mbstring,xmlrpc,mysql,gd,xml,cli,zip} libapache2-mod-php7.3

php -v
a2enmod php7.3
a2enmod rewrite
service apache2 restart


apt install -y curl
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
apt install -y nodejs

apt install -y mysql-server
