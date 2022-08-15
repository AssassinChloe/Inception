# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cassassi <cassassi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/04 17:19:47 by cassassi          #+#    #+#              #
#    Updated: 2022/08/15 14:07:37 by cassassi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster
RUN apt-get update && apt-get -y install mariadb-server mariadb-client
RUN mkdir -p /var/run/mysqld
RUN mkdir -p /var/lib/mysql
RUN chown -R mysql:root run/mysqld && chown -R mysql:mysql /var/lib/mysql

RUN rm -rf etc/mysql/my.cnf etc/my.cnf ~/my.cnf
EXPOSE 3306
COPY ./conf/script.sh .
COPY ./conf/my.cnf etc/mysql/my.cnf
COPY ./conf/my.cnf etc/mysql/mariadb.conf.d/my.cnf
COPY ./conf/my.cnf etc/my.cnf
COPY ./conf/my.cnf ~/my.cnf
CMD bash script.sh