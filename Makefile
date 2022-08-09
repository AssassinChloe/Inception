# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cassassi <cassassi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/04 17:20:20 by cassassi          #+#    #+#              #
#    Updated: 2022/08/09 14:55:48 by cassassi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= inception
FILE	= srcs/docker-compose.yml
DC		= docker-compose -f

all: run

run:
		mkdir /home/cassassi/data/wordpress
		mkdir /home/cassassi/data/mariadb
		$(DC) $(FILE) up -d --build		

.PHONY: run

