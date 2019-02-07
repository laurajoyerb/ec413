#include <stdio.h>
#include <string.h>
#include <math.h>

// accepts an 8-bit string of an unsigned integer in binary
int main() {
    char binStr[10];

    printf("String: ");
    scanf("%s", binStr);

    char sign = binStr[0]; // holds positive or negative sign

    int bin[7]; // holds binary magnitude

    // Flips bits for negative numbers
    if (sign == '1')
    {
      for (int i = 1; i < 8; i++)
      {
        if (binStr[i] == '0')
          bin[i - 1] = 1;
        else
          bin[i - 1] = 0;
      }
    }
    else // keeps bits the same for positive numbers
    {
      for (int i = 1; i < 8; i++)
      {
        if (binStr[i] == '0')
          bin[i - 1] = 0;
        else
          bin[i - 1] = 1;
      }
    }

    // Convert to decimal
    int dec = 0;
    for (int i = 6; i >= 0; i--)
    {
      dec += bin[i] * pow(2, 6 - i);
    }

    if (sign == '1')
    {
      // Add one if negative
      dec++;
      printf("-");
    }
    printf("%d\n", dec);
}
