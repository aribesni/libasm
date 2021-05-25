# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aribesni <aribesni@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/07 19:13:13 by aribesni          #+#    #+#              #
#    Updated: 2021/05/07 19:13:14 by aribesni         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

bits 64

extern  ft_strlen
extern  ft_strcpy
extern  malloc

section .text
        global ft_strdup

ft_strdup:
        push r12                ; push r12 onto the stack
        mov r12, rdi            ; mov str in r12
        call ft_strlen          ; ft_strlen returns size in rax

        add rax, 1              ; add 1 to size for '\0'
        mov rdi, rax            ; mov size in rdi to call malloc
        call malloc             ; returns string in rax

        mov rdi, rax            ; mov new string in first param of ft_strcpy
        mov rsi, r12            ; mov first string in second param of ft_strcpy
        call ft_strcpy          ; returns string in rax

        pop r12                 ; restore r12 to preserve its value

        ret                     ; return rax