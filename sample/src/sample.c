#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <mmath.h>

int main(void)
{
    /* Print fibonacci numbers */
    int i;
    printf("Fibonacci numbers:\n");
    for (i = 0; i < 10; i++) {
        printf("%d\n", fib(i));
    }
}

