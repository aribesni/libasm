# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aribesni <aribesni@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/07 19:13:18 by aribesni          #+#    #+#              #
#    Updated: 2021/05/07 19:13:19 by aribesni         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

bits 64

section .text
		global ft_strlen

ft_strlen:
		mov rcx, 0			; int i = 0

_printLoop:
		mov dl, [rdi]
		cmp dl, 0			; compare with '\0'
		je _return

		inc rcx				; i++
		inc rdi				; move through string
		
		jmp _printLoop

_return:
		mov rax, rcx		; move i into return value

		ret