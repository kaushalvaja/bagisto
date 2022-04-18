sudo chmod -R 755 /var/www/html/
sudo chown -R bagisto:bagisto /var/www/html/

chown -R bagisto:bagisto /var/www/html/*

#cd /home/bagisto/bagisto/public

#php artisan key:generate
#php artisan config:cache

sudo service apache2 restart

