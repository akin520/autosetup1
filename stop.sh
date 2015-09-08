#!/bin/bash
/usr/local/php/sbin/php-fpm stop
kill `cat /usr/local/nginx/logs/nginx.pid`
/usr/local/nginx/sbin/nginx -t


