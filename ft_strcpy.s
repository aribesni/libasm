bits 64

section .text
        global ft_strcpy

ft_strcpy:
        mov rbx, 0
        call _printLoop

        ret

_not_zero:
        mov [rdi + rbx], cl
        inc rbx
        call _printLoop

_printLoop:
        mov cl, [rsi + rbx]
        cmp cl, 0
        jne _not_zero

        mov byte[rdi + rbx], 0

        mov rax, rdi

        ret