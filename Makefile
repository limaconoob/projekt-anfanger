# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jpepin <jpepin@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/09/05 09:39:50 by jpepin            #+#    #+#              #
#    Updated: 2016/11/13 09:03:34 by jpepin           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

MAKE = make
CC = gcc
RM = rm -f
CFLAGS = -Wall -Werror -Wextra
CPPFLAGS = -I./
LDLIBS =
LDFLAGS =

LIB = libmkd.a
NAME = mkdir

SRC = main.c

OBJ = $(SRC:.c=.o)

all: $(NAME)

$(NAME):
	$(CC) $(CFLAGS) $(CPPFLAGS) $(SRC) -c
	$(CC) $(CFLAGS) $(CPPFLAGS) $(OBJ) $(LDFLAGS) $(LDLIBS) -o $(NAME)

lib:
	$(CC) $(CPPFLAGS) $(SRC) -c
	ar rc $(LIB) $(OBJ)

clean:
	$(RM) $(OBJ)

fclean: clean
	$(RM) $(NAME) $(LIB)

re: fclean all

.PHONY: all clean fclean re
