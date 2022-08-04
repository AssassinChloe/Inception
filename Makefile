# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cassassi <cassassi@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/04 17:20:20 by cassassi          #+#    #+#              #
#    Updated: 2022/08/04 18:23:46 by cassassi         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= inception
FILE	= srcs/docker-compose.yml
DC		= docker-compose -f

build :
		$(DC) $(FILE) build $(NAME)
up:
		$(DC) $(FILE) up -d $(NAME)		
start:
		$(DC) $(FILE) start $(NAME)
down:
		$(DC) $(FILE) down $(NAME)
destroy:
		$(DC) $(FILE) down -v $(NAME)
stop:
		$(DC) $(FILE) stop $(NAME)
restart: stop up build

.PHONY: build up start down destroy stop restart 

