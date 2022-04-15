#!/bin/bash


mysql -uroot  -e "create database bagisto;"
mysql -uroot -e "CREATE USER 'bagistouser'@'localhost' IDENTIFIED BY 'bagisto';"
mysql -uroot -e "GRANT ALL ON bagisto.* TO 'bagistouser'@'localhost' WITH GRANT OPTION;"
mysql -uroot -e "flush privileges;"
#exit;
