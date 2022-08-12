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
id [! -d /var/lib/mysql/${MYSQL_DATABASE}];
echo "CREATE DATABASE wordpress;"| mysql -u root --skip-password
echo "update mysql.user set plugin='' where user='root';"| mysql -u root --skip-password
service mysql start
mysql -u root --skip-password
mysql -u root --skip-password