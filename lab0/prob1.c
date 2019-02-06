#include <stdio.h>

// Basic program for converting user-inputted decimal value to 32-bit binary
int main() {
    int dec;
    printf("Please enter an integer in decimal: ");
    scanf("%d", &dec);

    int bin[32];
    int remain;
    for (int i = 31; i >= 0; i--)
    {
      remain = dec%2;
      dec /= 2;
      bin[i] = remain;
    }

    for (int i = 0; i < 32; i++)
    {
      printf("%d",bin[i]);
    }
    printf("\n");
    return 0;
}
