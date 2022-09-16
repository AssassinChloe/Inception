# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cassassi <cassassi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/04 17:20:20 by cassassi          #+#    #+#              #
#    Updated: 2022/09/16 13:27:54 by cassassi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= inception
FILE	= srcs/docker-compose.yml
DC		= docker-compose -f

all: run

run:
		sudo mkdir -p /home/cassassi/data/db_data
		sudo mkdir -p /home/cassassi/data/wp_data
		$(DC) $(FILE) up -d --build		

stop:	
		$(DC) $(FILE) stop

start:
		$(DC) $(FILE) start

clean:
		$(DC) $(FILE) down -v
		docker rmi -f nginx wordpress mariadb

fclean: clean
		sudo rm -rf /home/cassassi/data/db_data
		sudo rm -rf /home/cassassi/data/wp_data

re:		clean all

.PHONY: run stop start clean fclean re
