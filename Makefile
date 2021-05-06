NAME =	libasm.a

SRC =	ft_read.s ft_strcmp.s ft_strcpy.s ft_strdup.s ft_strlen.s ft_write.s

CC =	gcc

FLAG =	nasm -f elf64

OBJ =	${SRC:.c=.o}

all:	${NAME}

${NAME}:${OBJ}
			ar rcs -s ${NAME} ${OBJ}

%.o : %s
		nasm -f elf64 $<

test:	${NAME}
		clang -fno-builtin main.c ${OBJ} -o test

clean: 
		rm -f ${OBJ}

fclean:	clean
		rm -f ${NAME}

re:		fclean all