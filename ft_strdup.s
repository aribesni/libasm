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
        mov r12, rdi
        call ft_strlen
        add rax, 1
        mov rdi, rax
        call malloc
        mov rdi, rax
        mov rsi, r12
        call ft_strcpy

        ret
