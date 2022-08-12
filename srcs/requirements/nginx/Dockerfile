# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cassassi <cassassi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/04 17:19:39 by cassassi          #+#    #+#              #
#    Updated: 2022/08/09 14:05:58 by cassassi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster
RUN apt-get update && apt-get -y install nginx openssl && rm -rf /var/lib/apt/lists/*
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
-out /etc/ssl/cassassi.42.fr.pem \
-keyout /etc/ssl/cassassi.42.fr.key \
-subj "/C=FR/ST=Paris/L=Paris/O=42 School/OU=cassassi/CN=cassassi.42.fr"
COPY conf/nginx.conf etc/nginx/conf.d
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]