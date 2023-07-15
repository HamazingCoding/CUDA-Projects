# Array Addition (CUDA)

This code demonstrates the addition of two arrays, `a` and `b`, using both the host (CPU) and the device (GPU) in CUDA. The resulting array is stored in array `c`. The code also provides functions to initialize the arrays with sequential values and to print the output.

## Dependencies
- The code requires the following libraries to be included:
  - `stdio.h`: Provides input/output functions like `printf`.
  - `stdlib.h`: Provides memory allocation and deallocation functions like `malloc` and `free`.
  - `cuda.h`: Provides CUDA runtime functions and data types.

## Constants
- `N` is defined as 512 using `#define`. It represents the size of the arrays `a`, `b`, and `c`.

## Functions
### `void host_add(int *a, int *b, int *c)`
- This function performs the addition of corresponding elements of arrays `a` and `b` using the CPU and stores the result in array `c`.
- It uses a loop that iterates `N` times, adding each pair of elements from arrays `a` and `b` and storing the result in array `c`.

### `__global__ void device_add(int *a, int *b, int *c)`
- This CUDA kernel function performs the addition of corresponding elements of arrays `a` and `b` using the GPU and stores the result in array `c`.
- It uses the `blockIdx.x` variable to determine the current block index, and performs the addition operation on the corresponding elements of arrays `a` and `b` and stores the result in array `c`.

### `void fill_array(int *data)`
- This function initializes an array `data` with sequential values starting from 0 up to `N-1`.
- It uses a loop that iterates `N` times, assigning each element of the array `data` with the corresponding index value.

### `void print_output(int *a, int *b, int *c)`
- This function prints the values of arrays `a`, `b`, and `c` in a formatted manner.
- It uses a loop that iterates `N` times and prints the corresponding elements of arrays `a`, `b`, and `c` using `printf`.

## Main Function
- The `main` function is the entry point of the program.
- It declares pointers `a`, `b`, and `c` to store the host (CPU) arrays, and `d_a`, `d_b`, and `d_c` to store the device (GPU) arrays.
- The variable `size` is calculated as the product of `N` and the size of an integer (`sizeof(int)`).
- Memory is allocated for host arrays `a`, `b`, and `c` using `malloc` based on the calculated size.
- Memory is allocated for device arrays `d_a`, `d_b`, and `d_c` using `cudaMalloc` based on the calculated size.
- The `fill_array` function is called to initialize host arrays `a` and `b` with sequential values.
- The input data is transferred from the host to the device using `cudaMemcpy`.
- The `device_add` CUDA kernel function is launched with `N` blocks and 1 thread per block to perform the addition of arrays `d_a` and `d_b` and store the result in array `d_c`.
- The result is transferred from the device to the host using `cudaMemcpy`.
- The `print_output` function is called to display the values of arrays `a`, `b`, and `c`.
- Memory allocated for host and device arrays is released using `free` and `cudaFree`, respectively.
- The program returns 0 to indicate successful execution.

Note: This code demonstrates the usage of CUDA for array addition on both the host (CPU) and the device (GPU). It can serve as a starting point for developing more complex GPU-accelerated applications using CUDA.
