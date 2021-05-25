# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_write.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aribesni <aribesni@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/07 19:13:22 by aribesni          #+#    #+#              #
#    Updated: 2021/05/07 19:13:23 by aribesni         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

bits 64

extern __errno_location

section .text
        global ft_write

ft_write:
        mov rax, 1
       
	    syscall					; syscall with rax at 1 == call function write
       
	    cmp rax, 0
		jl _error
	
        ret

_error:
		mov rdi, rax
		neg rdi
	
		call __errno_location	; call errno with code in rdi

		mov [rax], rdi			; store errno return at the adress rax points to
		mov rax, -1

		ret
