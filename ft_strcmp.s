# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aribesni <aribesni@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/07 19:13:01 by aribesni          #+#    #+#              #
#    Updated: 2021/05/07 19:13:04 by aribesni         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

bits 64

section .text
        global ft_strcmp

ft_strcmp:
        mov rbx, 0                      ; int i = 0

_printLoop:
        movzx rcx, byte[rdi + rbx]      ; move *dest + i in register rcx
        movzx rdx, byte[rsi + rbx]      ; mov *src + i in register rdx
      
        cmp rcx, rdx                    ; compare *src and *dest
        jne _return                     ; if result != 0 call _return
      
        cmp rcx, 0                      ; compare with '\0'
        je _return                      ; if result == 0 call _return
      
        cmp rdx, 0                      ; compare with '\0'
        je _return                      ; if result == 0 call _return
      
        inc rbx                         ; i++
        jmp _printLoop                  ; loop

_return:
        mov rbx, 0                      ; preserve register rbx
        sub rcx, rdx                    ; *dest - *src 
        mov rax, rcx                    ; move result in return value

        ret

