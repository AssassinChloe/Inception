# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cassassi <cassassi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/04 17:20:20 by cassassi          #+#    #+#              #
#    Updated: 2022/08/15 13:52:26 by cassassi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= inception
FILE	= srcs/docker-compose.yml
DC		= docker-compose -f

all: run
		mkdir -p /home/cassassi/data/mariadb
		mkdir -p /home/cassassi/data/wp

run:
		$(DC) $(FILE) up -d --build		

stop:	
		$(DC) $(FILE) stop

start:
		$(DC) $(FILE) start

fclean:
		docker stop $(docker ps -qa)
		docker rm $(docker ps -qa)
		docker rmi -f $(docker image -qa)
		docker volume rm $(docker volume ls -q)
		docker network rm $(docker network ls -q) 2>/dev/null

.PHONY: run stop start

