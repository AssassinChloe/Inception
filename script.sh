#!/bin/bash
echo "coucou"
nginx
if [ $AUTOINDEX_INIT = "off" ]
then ./autoindex off
fi
service php7.3-fpm start
service mysql start
echo "CREATE DATABASE wordpress;"| mysql -u root --skip-password
echo "update mysql.user set plugin='' where user='root';"| mysql -u root --skip-password
bash
