#!/bin/bash
case "$1" in
start)
    kill $(ps -ef|grep name[d]|awk '{print $2}')
    /usr/local/named/sbin/named -gc /usr/local/named/etc/named.conf&
    echo -e "dns starting....\n"
    ;;
stop)
    kill $(ps -ef|grep name[d]|awk '{print $2}')
    echo -e "dns stoping....\n"
    ;;
*)
    echo "Usage :$0 {start|stop}"
    exit 1
esac
exit 0
