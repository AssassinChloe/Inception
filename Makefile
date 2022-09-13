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

run:
		mkdir -p /home/cassassi/data/mariadb_data
		mkdir -p /home/cassassi/data/wordpress_data
		sudo $(DC) $(FILE) up -d --build		

stop:	
		$(DC) $(FILE) stop

start:
		$(DC) $(FILE) start

clean:
		$(DC) $(FILE) down
		docker rmi -f nginx wordpress mariadb
		docker rm -f nginx wordpress mariadb

fclean: clean
		sudo rm -rf /home/cassassi/data/mariadb_data
		sudo rm -rf /home/cassassi/data/wordpress_data


.PHONY: run stop start clean fclean

