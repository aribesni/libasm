#include <string.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>

extern char *ft_strdup(const char *s1);
extern size_t ft_strlen(const char *s);
extern char *ft_strcpy(char *s1, char *s2);
extern int ft_strcmp(char *s1, char *s2);
extern ssize_t ft_write(int fd, const void *buf, size_t count);
extern ssize_t ft_read(int fd, const void *buf, size_t count);

void     test_strdup(void)
{
    printf("%s\n", ft_strdup("Hello World !!"));
//    ft_strdup("Hello World !\n");
}

void     test_read(void)
{
//    int fd;

//  printf("%i\n", ft_read(1, "Hello there", 11));
    printf("%zi\n", ft_read(1, "Hello there", 11));
}

void     test_strcmp()
{
//    ft_strcmp(argv[1], argv[2]);
    printf("%i\n", ft_strcmp("12342", "12344"));
//    printf("%s %s\n", argv[1], argv[2]);
}

void     test_strcpy(void)
{
    char rdi[] = "hello, how are you ?";
    char rsi[] = "hi";
    printf("%s\n", ft_strcpy(rdi, rsi));
}

void     test_write(void)
{
    char   s1[] = "Hello there !\n";
    char   s2[] = "How are you ?\n";
    ft_write(1, &s1, 14);
    printf("length : %zu\n", ft_strlen(s1));
    ft_write(1, &s2, 14);
}

int     main(void)
{
    test_strdup();
//    test_read();
    test_strcmp();
    test_strcpy();
    test_write();
    return (0);
}