#include <stdio.h>

// Basic program for converting user-inputted decimal value to hex
int main() {
    int dec;
    printf("Please enter an integer in decimal: ");
    scanf("%d", &dec);

    int hexNum[32];
    int remain; // remainder
    int digits = 0; // counts how many digits of hex are used, also used as an index
    while (dec > 0)
    {
      remain = dec%16;
      dec /= 16;
      hexNum[digits] = remain;
      digits++;
    }

    for (int i = digits - 1; i >= 0; i--) // prints all remainders backwards
    {
      if (hexNum[i] > 9)
        printf("%c", hexNum[i] + 55); // adds 55 to get "A" instead of 10 from ASCII equivalent
      else
        printf("%d",hexNum[i]);
    }
    printf("\n");
    return 0;
}
