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

section .text
        global ft_read

ft_read:
        mov rax, 0
        syscall

        ret
