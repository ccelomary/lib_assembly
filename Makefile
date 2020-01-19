# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mel-omar <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/18 21:19:54 by mel-omar          #+#    #+#              #
#    Updated: 2020/01/18 21:42:24 by mel-omar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a
all:
	@nasm -f macho64 ft_strcmp.s -o ft_strcmp.o
	@nasm -f macho64 ft_strlen.s -o ft_strlen.o
	@nasm -f macho64 ft_write.s -o ft_write.o
	@nasm -f macho64 ft_read.s -o ft_read.o
	@nasm -f macho64 ft_strdup.s -o ft_strdup.o
	@ar rc $(NAME) ft_strcmp.o ft_strlen.o ft_write.o ft_read.o ft_strdup.o
	@ranlib $(NAME)
clean:
	@rm -f *.o
fclean: clean
	@rm -f $(NAME)
re : fclean all
