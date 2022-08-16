# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cassassi <cassassi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/04 17:19:39 by cassassi          #+#    #+#              #
#    Updated: 2022/08/16 11:30:10 by cassassi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster
RUN apt-get update && apt-get -y install nginx openssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
-subj "/C=FR/ST=IDF/L=Paris/O=42/OU=cassassi/CN=cassassi.42.fr" \
-keyout /etc/ssl/cassassi.42.fr.key \
-out /etc/ssl/cassassi.42.fr.crt
COPY ./conf/nginx.conf /etc/nginx/nginx.conf
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]