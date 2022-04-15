#!/bin/bash

#mysql -uroot  << create database bagisto;
#CREATE USER 'bagistouser'@'localhost' IDENTIFIED BY 'bagisto';
#GRANT ALL ON bagisto.* TO 'bagistouser'@'localhost' WITH GRANT OPTION;
#flush privileges;
#exit;


mysql -uroot  -e "create database bagisto;"
mysql -uroot -e "CREATE USER 'bagistouser'@'localhost' IDENTIFIED BY 'bagisto';"
mysql -uroot -e "GRANT ALL ON bagisto.* TO 'bagistouser'@'localhost' WITH GRANT OPTION;"
mysql -uroot -e "flush privileges;"
#exit;
