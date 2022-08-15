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
RUN chown -R mysql /var/lib/mysql
RUN chmod 777 /var/lib/mysql
EXPOSE 3306
COPY ./conf/script.sh .
COPY ./conf/my.cnf etc/mysql/my.cnf
COPY ./conf/my.cnf etc/my.cnf
COPY ./conf/my.cnf ~/my.cnf
ENTRYPOINT [script.sh]