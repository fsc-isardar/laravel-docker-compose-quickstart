#!/bin/bash

cd /var/www/html/laravel-project
#php artisan migrate:fresh --seed
chgrp -R www-data storage bootstrap/cache
chmod -R ug+rwx storage bootstrap/cache

apachectl -D FOREGROUND