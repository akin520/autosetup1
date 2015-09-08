#!/bin/bash
ulimit -SHn 51200
/usr/local/php/sbin/php-fpm start
/usr/local/nginx/sbin/nginx -t
sleep 4
/usr/local/nginx/sbin/nginx
