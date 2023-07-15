# CUDA Array Addition

This code demonstrates a CUDA program for adding two arrays of integers using parallel processing on the GPU.

## Prerequisites

- NVIDIA CUDA Toolkit must be installed on the system.

## Code Explanation

The code performs the following steps:

1. Definition of array size: The macro `N` is defined with a value of 512, representing the size of the arrays to be added.

2. Host Function for Array Addition: The `host_add` function performs the array addition on the CPU. It iterates through each element of the arrays and computes the sum.

3. Device Function for Array Addition: The `device_add` function is executed on the GPU. It uses CUDA syntax to define a kernel function that is executed by multiple threads in parallel. Each thread calculates the sum of corresponding elements from the input arrays.

4. Array Initialization: The `fill_array` function initializes the input arrays with consecutive index values.

5. Memory Allocation: Memory is allocated for host copies of the input and output arrays (`a`, `b`, `c`). Additionally, memory is allocated for device copies of the arrays (`d_a`, `d_b`, `d_c`).

6. Data Transfer: The input arrays (`a` and `b`) are copied from the host to the device using `cudaMemcpy`.

7. Kernel Invocation: The `device_add` kernel function is launched on the GPU with the specified number of blocks and threads per block.

8. Result Retrieval: The computed sum array (`d_c`) is copied from the device to the host (`c`) using `cudaMemcpy`.

9. Output Display: The `print_output` function displays the elements of the input arrays and the computed sum array.

10. Memory Deallocation: The allocated memory for all arrays is freed.

## How to Run

1. Ensure that the NVIDIA CUDA Toolkit is installed.
2. Compile the code using the appropriate compiler command. For example:
