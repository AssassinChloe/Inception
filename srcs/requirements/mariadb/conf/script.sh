# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    script.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cassassi <cassassi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/04 17:19:51 by cassassi          #+#    #+#              #
#    Updated: 2022/08/04 17:19:53 by cassassi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/sh

/usr/bin/mysql_install_db --user=root --basedir=/usr --datadir=/var/lib/mysql
/usr/bin/mysqld --user=root --datadir=var/lib/mysql && sleep 2
mysql -e "CREATE DATABASE IF NOT EXIST ${MYSQL_DATABASE};"

mysql -e "CREATE USER '${ADMIN_USER}'@'%' IDENTIFIED BY '${ADMIN_PASSWORD}';"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO '${ADMIN_USER}'@'%';"
mysql -e "FLUSH PRIVILEGES;"

mysql -e "CREATE USER '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"
mysql -e "GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%';"
mysql -e "FLUSH PRIVILEGES;"

mysql -e "DELETE FROM mysql.user WHERE user=''"
mysql -e "DELETE FROM mysql.user WHERE user='root'"
mysql -e "FLUSH PRIVILEGES;"

pkill mysqld
/usr/bin/mysqld --user=root --datadir=var/lib/mysql
