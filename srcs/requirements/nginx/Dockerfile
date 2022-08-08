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
RUN apt-get update && apt-get -y install nginx\
openssl
RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out /etc/ssl/cassassi.42.fr.pem -keyout /etc/ssl/cassassi.42.fr.key -subj "/C=FR/ST=Paris/L=Paris/O=42 School/OU=llescure/CN=cassassi.42.fr"
COPY nginx.conf etc/nginx/conf
# RUN chmod 755 script.sh
# RUN chmod 755 autoindex
# ENTRYPOINT ./script.sh
# ENV AUTOINDEX_INIT on
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]