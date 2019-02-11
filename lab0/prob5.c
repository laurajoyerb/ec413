#include <stdio.h>
#include <stdlib.h>

int comp (const void * elem1, const void * elem2)
{
    int f = *((int*)elem1);
    int s = *((int*)elem2);
    if (f > s) return  1;
    if (f < s) return -1;
    return 0;
}

// Global variables for binary search (easier for recursion)
int first, middle, last, search, ind;
int arr[1000];

void binSearch(int first, int middle, int last, int search, int arr[])
{
  if (first > last)
  {
    printf("Number not found\n");
    return;
  }
  else
  {
    if (arr[middle] < search)
    {
      first = middle + 1;
      middle = (first + last)/2;
      return binSearch(first, middle, last, search, arr);
    }
    else if (arr[middle] == search)
    {
      ind = middle;
    }
    else
    {
      last = middle - 1;
      middle = (first + last)/2;
      return binSearch(first, middle, last, search, arr);
    }
  }
}

// accepts an array of user-specified size as well as a desired element--the program returns the index of this element in the sorted array
int main() {
    int size;
    printf("Please enter the size of the array, each element of the array, and then the desired index of the sorted array:\n");
    scanf("%d", &size); // holds the size of the array

    int* arrP = malloc(size*sizeof(int)); // arr points to head of array
    int* scanner = arrP; // extra pointer to go through array

    int i;
    for (i = 0; i < size; i++)
    {
      scanf("%d", scanner); // accepts all integers for the array
      scanner++;
    }

    // holds element to be searched after sorting
    scanf("%d", &search);

    // populates array without pointer weirdness
    for (i = 0; i < size; i++)
    {
      arr[i] = *arrP;
      arrP++;
    }

    qsort(arr, size, sizeof(*arr), comp); // sorts array

    first = 0;
    last = size - 1;
    middle = (first + last)/2;

    binSearch(first, middle, last, search, arr);

    printf("%d\n", ind); // prints index of desired element
}
