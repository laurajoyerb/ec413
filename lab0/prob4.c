#include <stdio.h>

// recursively finds fibonacci number
int fib(int digit)
{
  if (digit == 0)
    return 0;
  else if (digit == 1 || digit == 2)
    return 1;
  else
    return fib(digit - 1) + fib(digit - 2);
}

// accepts an integer n, and prints out the n-th fibonacci number
int main() {
    int num;
    printf("Please enter an integer in decimal: ");
    scanf("%d", &num);

    int fibNum = fib(num);

    printf("The n-th fibonacci number is: %d\n",fibNum);
}
