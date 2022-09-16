# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    script.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cassassi <cassassi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/16 13:28:29 by cassassi          #+#    #+#              #
#    Updated: 2022/09/16 13:28:30 by cassassi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/sh

if [ ! -f /var/www/html/wp-config.php ]; then
    until mysqladmin -hmariadb -u${MYSQL_USER} -p${MYSQL_USER_PASSWORD} ping; do
        sleep 2
    done
        cd /var/www/html/ && wp core download --allow-root
        wp config create --dbname=${MYSQL_DATABASE} --dbuser=${MYSQL_USER} --dbpass=${MYSQL_USER_PASSWORD} --dbhost=${WP_DB_HOST} --dbcharset="utf8" --dbcollate="utf8_general_ci" --allow-root
        wp core install --url=cassassi.42.fr --title=${WP_TITLE} --admin_user=${MYSQL_ADMIN} --admin_password=${MYSQL_ADMIN_PASSWORD} --admin_email=${MYSQL_ADMIN_MAIL} --skip-email --allow-root
        wp user create ${MYSQL_USER} ${MYSQL_USER_MAIL} --role=author --user_pass=${MYSQL_USER_PASSWORD} --allow-root 
fi

php-fpm7.3 -F -R
