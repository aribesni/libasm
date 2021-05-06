#include <string.h>
#include <stdio.h>
#include <stdlib.h>

extern char *ft_strdup(const char *s1);
extern size_t ft_strlen(const char *s);
extern char *ft_strcpy(char *, char *);

int     main(void)
{
    printf("%s\n", ft_strdup("Hello World !!"));
//    ft_strdup("Hello World !\n");
    return (0);
}