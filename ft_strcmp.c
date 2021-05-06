#include <stdio.h>

extern int ft_strcmp(char *s1, char *s2);

int     main(int argc, char **argv)
{
//    ft_strcmp(argv[1], argv[2]);
    printf("%i\n", ft_strcmp(argv[1], argv[2]));
//    printf("%s %s\n", argv[1], argv[2]);
    return (0);
}