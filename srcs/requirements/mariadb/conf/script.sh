# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    script.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cassassi <cassassi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/04 17:19:51 by cassassi          #+#    #+#              #
#    Updated: 2022/08/16 11:27:42 by cassassi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/sh
if [ ! -d /var/lib/mysql/${MYSQL_DATABASE} ]; then
    mysqld&
    until mysqladmin ping; do
        sleep 2
    done

    cd /root/
    mysql -e "CREATE DATABASE ${MYSQL_DATABASE};"
    
    mysql -e "CREATE USER '${ADMIN_USER}'@'%' IDENTIFIED BY '${ADMIN_PASSWORD}';"
    mysql -e "GRANT ALL PRIVILEGES ON *.* TO '${ADMIN_USER}'@'%';"
    mysql -e "FLUSH PRIVILEGES;"
    
    mysql -e "CREATE USER IF NOT EXISTS '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"
    mysql -e "GRANT ALL PRIVILEGES ON ${MYSQL_DATABASE}.* TO '${MYSQL_USER}'@'%';"
    mysql -e "FLUSH PRIVILEGES;"

    mysql -e "DELETE FROM mysql.user WHERE user=''"
    mysql -e "DELETE FROM mysql.user WHERE user='root'" .
    mysql -e "FLUSH PRIVILEGES;"
    
    killall mysqld

fi
mysqld
