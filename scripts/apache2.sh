#!/bin/bash

cp /etc/apache2/apache2.conf /etc/apache2/apache2.conf_orig

echo " <Directory /home/bagisto/bagisto/public/>
        Options FollowSymLinks
        AllowOverride All
        Require all granted
</Directory>"  >>  /etc/apache2/apache2.conf
