# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aribesni <aribesni@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/07 19:13:07 by aribesni          #+#    #+#              #
#    Updated: 2021/05/07 19:13:09 by aribesni         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

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
