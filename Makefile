# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: bibrahim <bibrahim@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/04/12 18:05:30 by bibrahim          #+#    #+#              #
#    Updated: 2022/04/21 23:31:01 by bibrahim         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = push_swap
CC = cc
CHECKER = checker
INC = push_swap.h

CFLAGS = -Wall -Wextra -Werror

M_SRCS = utils.c \
		operation.c \
		moves.c \
		sort_small_nb.c \
		ft_atoi.c \
		ft_isdigit.c \
		ft_split.c \
		ft_strjoin.c \
		ft_calloc.c\
		ft_bzero.c\
		ft_strlcat.c \
		ft_strlcpy.c \
		get_next.c \
		sort_small_nb.c \
		sort_max.c \
		utils2.c \
		ft_strlen.c \
		utils3.c \
		longest_increasing_sub.c \
		args.c \
		push_swap.c\
		
M_SRCB = args.c\
		operation.c \
		moves.c\
		ft_atoi.c\
		ft_isdigit.c\
		ft_split.c\
		ft_strlen.c\
		ft_strjoin.c\
		ft_calloc.c\
		ft_bzero.c\
		ft_strlcat.c\
		ft_strlcpy.c\
		get_next.c\
		utils.c\
		checkers.c

M_OBJS = $(M_SRCS:.c=.o)

M_OBJB = $(M_SRCB:.c=.o)

all : $(NAME)

$(NAME) : $(M_OBJS)
	$(CC) $(CFLAGS) $^ -o $@
	@printf "push_swap was build ✅\n"

%.o : %.c push_swap.h
	$(CC) $(CFLAGS) -c $< -o $@
	
bonus : $(CHECKER) $(NAME)

$(CHECKER) : $(M_OBJB)
	$(CC) $(CFLAGS) $^ -o $@
	@printf "checker was build ✅\n"

%.o : %.c push_swap.h
	$(CC) $(CFLAGS) -c $< -o $@
	
clean:
	rm -rf $(M_OBJS) $(M_OBJB)
	@printf "ALL is in trash 🗑\n"

fclean: clean
	rm -rf $(NAME) $(CHECKER)
	@printf "ALL is in trash 🗑\n"

re: fclean all
