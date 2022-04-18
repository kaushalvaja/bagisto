apt install git
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
composer -V

chown -R bagisto:bagisto /home/bagisto

cd /home/bagisto/bagisto/public

composer install

php artisan key:generate
php artisan config:cache
