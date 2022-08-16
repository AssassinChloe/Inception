# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cassassi <cassassi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/04 17:19:47 by cassassi          #+#    #+#              #
#    Updated: 2022/08/16 11:22:14 by cassassi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster
RUN apt-get update && apt-get -y install mariadb-server mariadb-client
RUN mkdir -p /var/run/mysqld
RUN chown -R mysql:root /run/mysqld && chown -R mysql:mysql /var/lib/mysql
COPY ./conf/script.sh .
COPY ./conf/my.cnf etc/mysql/mariadb.conf.d/my.cnf
EXPOSE 3306
CMD bash script.sh