#!/bin/bash

apt update
apt install -y apache2
systemctl start apache2.service
systemctl enable apache2.service

#apt install -y software-properties-common
#echo -ne '\n' | add-apt-repository ppa:ondrej/php

#apt update
#apt install -y php7.3 php7.3-{common,gmp,curl,soap,bcmath,intl,mbstring,xmlrpc,mysql,gd,xml,cli,zip} libapache2-mod-php7.3


apt-get update
apt -y install software-properties-common
echo -ne '\n' | add-apt-repository ppa:ondrej/php

apt-get update
apt-get install -y php7.4 php7.4-{common,gmp,curl,soap,bcmath,intl,mbstring,xmlrpc,mysql,gd,xml,cli,zip} libapache2-mod-php7.4
apt-get install -y php7.4-cli php7.4-json php7.4-common php7.4-mysql php7.4-zip php7.4-gd php7.4-mbstring php7.4-curl php7.4-xml php7.4-bcmath

php -v
a2enmod php7.4
a2enmod rewrite
service apache2 restart


apt install -y curl
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
apt install -y nodejs

apt install -y mysql-server
