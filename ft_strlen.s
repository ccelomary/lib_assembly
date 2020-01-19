# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mel-omar <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/17 20:12:10 by mel-omar          #+#    #+#              #
#    Updated: 2020/01/17 20:32:50 by mel-omar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strlen

_ft_strlen:
	mov rbx, 0
while:
	cmp byte[rdi + rbx], 0
	je endwhile
	inc rbx
	jmp while
endwhile:
	mov rax, rbx
	ret
