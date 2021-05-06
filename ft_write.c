#include <stdio.h>

extern int ft_strlen(char *);
extern int ft_write(int fd, const void *buf, size_t count);

int        main(void)
{
    char   s1[] = "Hello there !\n";
    char   s2[] = "How are you ?\n";
    ft_write(1, &s1, 14);
    printf("length : %i\n", ft_strlen(s1));
    ft_write(1, &s2, 14);
    return (0);
}
