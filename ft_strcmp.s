bits 64

section .text
        global ft_strcmp

ft_strcmp:
        mov rbx, 0
        call _printLoop

        ret

_compare
        sub rdx, rcx
        mov rax, rdx

        ret

_not_zero:
        movzx rdx, byte[rdi + rbx]
        cmp rdx, rcx
        jnz _compare
        inc rbx
        call _printLoop

_printLoop:
        movzx rcx, byte[rsi + rbx]
        cmp rcx, 0
        jne _not_zero
        mov rax, 0

        ret