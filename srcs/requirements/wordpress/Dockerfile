# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cassassi <cassassi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/04 17:20:04 by cassassi          #+#    #+#              #
#    Updated: 2022/08/15 14:39:43 by cassassi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster
RUN apt-get update &&apt-get -y install wget php7.3 php-mysql php-fpm php-cgi
COPY conf/www.conf/etc/php7/php-fpm.d/www.conf
# RUN		mkdir 					-p /var/www/html
# RUN		adduser 				-u 82 -D -S -G www-data www-data
# RUN		chmod 777 				-R /var/www/html
# RUN		chown 					-R www-data:www-data /var/www/html
COPY conf/script.sh .
EXPOSE 9000
ENTRYPOINT ["script.sh"]
