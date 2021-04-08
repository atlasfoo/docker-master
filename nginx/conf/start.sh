#!/bin/bash

# Starting php
echo "*** Starting php"
/etc/init.d/php8.0-fpm start


# Start nginx
echo "*** Starting nginx"
nginx -g 'daemon off;'
