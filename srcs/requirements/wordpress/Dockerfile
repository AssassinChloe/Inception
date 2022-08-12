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
RUN apt-get update &&apt-get -y install wget php7.3 php-mysql php-fpm php-cgi

COPY conf/www.conf /var/www/html/

RUN mkdir /run/php

COPY conf/script.sh /usr/local/bin/
ENTRYPOINT ["/usr/local/bin/script.sh"]

WORKDIR /var/www/html/

EXPOSE 9000

CMD ["/usr/sbin/php-fpm7.3", "-F"]