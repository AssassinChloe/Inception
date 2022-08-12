# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cassassi <cassassi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/04 17:20:04 by cassassi          #+#    #+#              #
#    Updated: 2022/08/09 14:53:28 by cassassi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster
RUN apt-get update &&apt-get -y install wget php7.3 php-mysql php-fpm php-xml
WORKDIR var/www/html/
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.1.0/phpMyAdmin-5.1.0-english.tar.xz
RUN tar -xf phpMyAdmin-5.1.0-english.tar.xz && rm -rf phpMyAdmin-5.1.0-english.tar.xz
RUN mv phpMyAdmin-5.1.0-english phpmyadmin
RUN wget https://fr.wordpress.org/wordpress-6.0.1-fr_FR.tar.gz
RUN tar -xf wordpress-6.0.1-fr_FR.tar.gz \
&& rm -rf wordpress-6.0.1-fr_FR.tar.gz
COPY wp-config.php var/www/html/wordpress