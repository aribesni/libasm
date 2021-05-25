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
        mov rdx, 0              ; int i = 0

_printLoop:
        mov cl, [rsi + rdx]     ; copy src + i into smaller register
        cmp cl, 0               ; compare with '\0'
        jne _not_zero

        mov byte[rdi + rdx], 0  ; put '\0' at end of dest

        call _return

        ret

_not_zero:
        mov [rdi + rdx], cl     ; mov src + i into dest + i
        inc rdx                 ; i++
        call _printLoop

_return:
        mov rax, rdi            ; put dest in return value

        ret
