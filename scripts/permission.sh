sudo chmod -R 755 /home/bagisto/bagisto
sudo chown -R bagisto:bagisto /home/bagisto/bagisto/

chown -R bagisto:bagisto /home/bagisto

cd /home/bagisto/bagisto/public

php artisan key:generate
php artisan config:cache

sudo service apache2 restart

