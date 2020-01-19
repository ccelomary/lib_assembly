# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mel-omar <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/17 20:10:05 by mel-omar          #+#    #+#              #
#    Updated: 2020/01/17 20:10:30 by mel-omar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
global _ft_strcmp

_ft_strcmp:
loop:
	mov bl, byte[rdi]
	mov cl, byte[rsi]
	cmp bl, 0
	je cmp1
	cmp cl, 0
	je cmp1
	cmp bl, cl
	jne cmp1
	inc rsi
	inc rdi
	jmp loop
cmp1:
	movzx rax, bl
	movzx rbx, cl
	sub rax, rbx
	ret
