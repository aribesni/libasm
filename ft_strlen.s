bits 64

section .text
	global ft_strlen

ft_strlen:
		mov rax, rdi
		call _print

        ret

_print:
		push rax
		mov rbx, 0

_printLoop:
		inc rax
		inc rbx
		mov cl, [rax]
		cmp cl, 0
		jne _printLoop

		pop rsi
		mov rax, rbx

		ret