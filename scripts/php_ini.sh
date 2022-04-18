#!/bin/bash

cp /etc/php/7.4/apache2/php.ini /etc/php/7.4/apache2/php.ini_orig

echo "file_uploads = On
allow_url_fopen = On
short_open_tag = On
memory_limit = 256M
upload_max_filesize = 100M
max_execution_time = 360
date.timezone = America/Chicago " >  /etc/php/7.4/apache2/php.ini
