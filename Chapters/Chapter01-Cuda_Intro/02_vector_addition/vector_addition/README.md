# Array Addition

This code demonstrates the addition of two arrays, `a` and `b`, element-wise and stores the result in array `c`. The code also provides functions to initialize the arrays with sequential values and to print the output.

## Dependencies
- The code requires the following libraries to be included:
  - `stdio.h`: Provides input/output functions like `printf`.
  - `stdlib.h`: Provides memory allocation and deallocation functions like `malloc` and `free`.

## Constants
- `N` is defined as 512 using `#define`. It represents the size of the arrays `a`, `b`, and `c`.

## Functions
### `void host_add(int *a, int *b, int *c)`
- This function performs the addition of corresponding elements of arrays `a` and `b` and stores the result in array `c`.
- It uses a loop that iterates `N` times, adding each pair of elements from arrays `a` and `b` and storing the result in array `c`.

### `void fill_array(int *data)`
- This function initializes an array `data` with sequential values starting from 0 up to `N-1`.
- It uses a loop that iterates `N` times, assigning each element of the array `data` with the corresponding index value.

### `void print_output(int *a, int *b, int *c)`
- This function prints the values of arrays `a`, `b`, and `c` in a formatted manner.
- It uses a loop that iterates `N` times and prints the corresponding elements of arrays `a`, `b`, and `c` using `printf`.

## Main Function
- The `main` function is the entry point of the program.
- It declares pointers `a`, `b`, and `c` to store the arrays.
- The variable `size` is calculated as the product of `N` and the size of an integer (`sizeof(int)`).
- Memory is allocated for arrays `a`, `b`, and `c` using `malloc` based on the calculated size.
- The `fill_array` function is called to initialize arrays `a` and `b` with sequential values.
- The `host_add` function is called to perform the addition of arrays `a` and `b` and store the result in array `c`.
- The `print_output` function is called to display the values of arrays `a`, `b`, and `c`.
- Memory allocated for arrays `a`, `b`, and `c` is released using `free`.
- The program returns 0 to indicate successful execution.

Note: This code demonstrates a basic implementation of array addition and can serve as a starting point for more complex operations involving arrays.
