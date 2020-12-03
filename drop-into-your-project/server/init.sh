#!/bin/bash

cd /var/www/html/laravel-project
#php artisan migrate:fresh --seed
chgrp -R www-data storage bootstrap/cache
chmod -R ug+rwx storage bootstrap/cache
php artisan cache:clear
php artisan config:clear

apachectl -D FOREGROUND