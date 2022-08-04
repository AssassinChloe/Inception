# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cassassi <cassassi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/04 17:19:39 by cassassi          #+#    #+#              #
#    Updated: 2022/08/04 17:19:40 by cassassi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster
RUN apt-get update && apt-get -y install nginx
RUN wget https://github.com/FiloSottile/mkcert/releases/download/v1.4.1/mkcert-v1.4.1-linux-amd64 && mv mkcert-v1.4.1-linux-amd64 mkcert && chmod 755 mkcert && \
./mkcert -install && ./mkcert localhost
COPY nginx.conf etc/nginx/sites-available/default
# RUN chmod 755 script.sh
# RUN chmod 755 autoindex
# ENTRYPOINT ./script.sh
# ENV AUTOINDEX_INIT on
EXPOSE 443