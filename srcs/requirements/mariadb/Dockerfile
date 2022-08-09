# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cassassi <cassassi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/04 17:19:47 by cassassi          #+#    #+#              #
#    Updated: 2022/08/09 14:47:16 by cassassi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster
RUN apt-get update && apt-get -y install mariadb-server mariadb-client

ENTRYPOINT ./script.sh
CMD ["mysqld", "--bind-address=0.0.0.0"]