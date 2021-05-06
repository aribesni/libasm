#include <stdio.h>

extern char *ft_strcpy(char *, char *);

int main(void)
{
    char rdi[] = "hello, how are you ?";
    char rsi[] = "hi";
    printf("%s\n", ft_strcpy(rdi, rsi));
    return (0);
}