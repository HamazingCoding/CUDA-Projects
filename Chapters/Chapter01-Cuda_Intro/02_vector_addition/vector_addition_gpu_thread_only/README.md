## CUDA Vector Addition

This repository contains a simple CUDA program that performs vector addition using both CPU and GPU (CUDA) implementations. The vector addition is done on arrays of size N, where N is defined as 512 in the code.

### Prerequisites

To compile and run this CUDA program, you need:

- NVIDIA GPU with CUDA support
- CUDA Toolkit installed on your system
- C compiler (e.g., gcc)

### Code Description

The main purpose of this code is to demonstrate how to perform vector addition using CUDA parallel programming. Here's a brief description of the key components:

- `host_add`: This function is responsible for performing vector addition on the CPU (host). It takes two input arrays `a` and `b`, and stores the result in array `c`.

- `device_add`: This is the CUDA kernel function that executes on the GPU. It performs vector addition in parallel by utilizing multiple threads. Each thread handles a specific element of the arrays `a`, `b`, and `c`.

- `fill_array`: A utility function to initialize an array with consecutive indices.

- `print_output`: A helper function to print the input arrays `a` and `b`, along with the resulting array `c`.

### Running the Code

1. Ensure that you have the CUDA Toolkit installed on your system.

2. Compile the code using a C compiler (e.g., gcc) and link the CUDA libraries:

3. Run the executable:


### Output

The program will display the elements of arrays `a`, `b`, and `c` on the console, showing the result of the vector addition.

### Additional Notes

Feel free to modify the value of `N` in the code to perform vector addition on arrays of different sizes. Experiment with larger arrays to observe the benefits of parallel processing provided by CUDA.

For more information about CUDA programming and GPU acceleration, refer to the NVIDIA CUDA documentation.

**Note**: Make sure to adjust the compilation command based on your system's setup, including the location of the CUDA Toolkit and any additional libraries.

