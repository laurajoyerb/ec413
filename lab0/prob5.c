#include <stdio.h>
#include <stdlib.h>

// accepts an integer a, and prints it out in decimal.
int main() {
    int size;
    printf("Please enter the size of the array, each element of the array, and then the desired index of the sorted array:\n");
    scanf("%d", &size);

    int* arr = malloc(size*sizeof(int)); // arr points to head of array
    int* scanner = arr; // extra pointer to go through array

    for (int i = 0; i < size; i++)
    {
      scanf("%d", scanner); // accepts all integers for the array
      scanner++;
    }

    int search; // holds index to be returned after sorting
    scanf("%d", &search);

    

    printf("\n");
}
