bits 64

extern  ft_strlen
extern  ft_strcpy

section .text
        global ft_strdup

ft_strdup:
        mov r12, rdi
        call ft_strlen
        add rax, 1
        mov rdi, rax
        call malloc
        mov rdi, rax
        mov rsi, r12
        call ft_strcpy

        ret
