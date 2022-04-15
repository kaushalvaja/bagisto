#!/bin/bash

mysql -uroot  << create database bagisto;
CREATE USER 'bagistouser'@'localhost' IDENTIFIED BY 'bagisto';
GRANT ALL ON bagisto.* TO 'bagistouser'@'localhost' WITH GRANT OPTION;
flush privileges;
exit;

