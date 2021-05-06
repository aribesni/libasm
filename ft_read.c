#include <stdio.h>

//extern int ft_read(unsigned int fd, char *buf, size_t count);
extern int ft_read();

int     main(void)
{
    int fd;

//  printf("%i\n", ft_read(1, "Hello there", 11));
    printf("%i\n", ft_read());
    return (0);
}