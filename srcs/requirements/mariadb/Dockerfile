FROM debian:buster

RUN apt-get update && \
    apt-get -y install mariadb-server mariadb-client

RUN mkdir -p /var/run/mysqld

RUN chown -R mysql:root /run/mysqld && chown -R mysql:mysql /var/lib/mysql

COPY ./conf/my.cnf etc/mysql/mariadb.conf.d/my.cnf
COPY ./conf/script.sh .

EXPOSE 3306

CMD bash script.sh
