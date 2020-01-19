section .text
	global _ft_strcpy
_ft_strcpy:
	mov rbx, 0
while:
	cmp byte[rsi + rbx], 0
	je endwhile
	movzx rcx, byte[rsi + rbx]
	mov [rdi + rbx], rcx
	inc rbx
	jmp while
endwhile:
	mov byte[rdi + rbx], 0
	mov rax, rdi
	ret

