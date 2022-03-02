# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: zmoussam <zmoussam@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/12/14 21:48:09 by zmoussam          #+#    #+#              #
#    Updated: 2021/12/19 14:16:12 by zmoussam         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = cc
FLAGS =  -Wall -Werror -Wextra
CFILES = ft_put_all_number.c\
            ft_ft.c\
			ft_ft2.c\
            ft_printf.c
OFILES = ${CFILES:.c=.o}
NAME = libftprintf.a
INC = ft_printf.h


all : ${NAME}
bonus : all

${NAME} : ${OFILES}
	ar -rc ${NAME} ${OFILES}

%.o:%.c ${INC}
	${CC} -c ${FLAGS} $<
clean :
	rm -f ${OFILES} 

fclean : clean
	rm -f ${NAME}

re : fclean all