# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cassassi <cassassi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/04 17:20:04 by cassassi          #+#    #+#              #
#    Updated: 2022/08/16 11:35:24 by cassassi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster
RUN apt-get update && apt-get -y install curl php7.3-fpm php7.3-common php7.3-mysql mariadb-client
RUN mkdir -p /var/run && mkdir -p /run/php
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv -f wp-cli.phar /usr/local/bin/wp
COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf

COPY ./conf/script.sh /etc/
CMD ["bash", "/etc/script.sh"]
