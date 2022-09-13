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

RUN apt-get update && \
    apt-get -y install nginx openssl

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/ssl/private/cassassi.42.fr.key \
    -out /etc/ssl/certs/cassassi.42.fr.crt \
    -subj "/C=FR/ST=Paris/O=42 School/OU=cassassi/CN=cassassi@student.42.fr"
    
COPY ./conf/nginx.conf /etc/nginx/nginx.conf

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]