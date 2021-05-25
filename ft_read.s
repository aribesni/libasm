# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_read.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aribesni <aribesni@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/05/07 19:12:55 by aribesni          #+#    #+#              #
#    Updated: 2021/05/07 19:12:58 by aribesni         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

bits 64

extern __errno_location

section .text
        global ft_read

ft_read:
        mov rax, 0
 
        syscall                 ; syscall with rax at 0 == call function read
 
        cmp rax, 0
	jl _error
        
        ret

_error:
	mov rdi, rax
	neg rdi

	call __errno_location   ; call errno with code in rdi

	mov [rax], rdi          ; store errno return at the adress rax points to
	mov rax, -1
	
        ret
