# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cassassi <cassassi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/16 11:37:27 by cassassi          #+#    #+#              #
#    Updated: 2022/09/16 11:37:28 by cassassi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update && \
    apt-get -y install mariadb-server \
    mariadb-client

RUN mkdir -p /var/run/mysqld

RUN chown -R mysql:root /run/mysqld && chown -R mysql:mysql /var/lib/mysql

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./conf/script.sh .

EXPOSE 3306

CMD bash script.sh