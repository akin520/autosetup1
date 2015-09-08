#!/bin/bash
case "$1" in
        start)
        ulimit -SHn 512000
	/etc/init.d/php-fpm start
	/usr/local/nginx/sbin/nginx -t
	sleep 3
	/usr/local/nginx/sbin/nginx
        ;;
	reload)
	/etc/init.d/php-fpm restart
	/usr/local/nginx/sbin/nginx -s reload
        ;;
        stop)
	/etc/init.d/php-fpm stop
	/usr/local/nginx/sbin/nginx -s stop
        ;;
        *)
        echo $"Usage:"$0" {start|reload|stop}"
        ;;
esac

