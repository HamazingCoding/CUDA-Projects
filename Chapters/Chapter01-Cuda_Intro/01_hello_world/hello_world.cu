#include <stdlib.h>
#include <stdio.h>

_global_ void print_from_gpu(void) {
    printf("Hello World! from thread [%d,%d] \
    From device\n", threadIdx.x, BlockIdx.x);
}

int main(void) {
    printf("Hello World from host!\n");
    print_from_gpu<<<1,1>>>();
    cudaDeviceSynchronize();
return 0;
}