section .text
	extern  _malloc
	global	_ft_strdup

len:
	mov rbx, 0
loop1:
	cmp byte[rdi  + rbx], 0
	je endloop1
	inc rbx
	jmp loop1
endloop1:
	mov rax, rbx
	ret
_ft_strdup:
	call len
	push rdi
	mov rdi, rax
	call _malloc
	pop rdi
	cmp rax, 0
	je exit
	mov rdx, 0
loop2:
	cmp byte[rdi + rdx], 0
	je endloop2
	movzx rbx, byte[rdi + rdx]
	mov [rax + rdx], rbx
	inc rdx
	jmp loop2
endloop2:
	mov byte[rax + rdx], 0
	ret
exit:
	ret
