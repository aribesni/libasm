bits 64

section .text
        global ft_read

ft_read:
        mov rax, 0
        syscall

        ret