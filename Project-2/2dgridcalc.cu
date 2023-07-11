#include <cuda_runtime.h>
#include <device_launch_parameters.h>

#include <stdio.h>

__global__ void unique_grid_calculation_2d(int * data)
{
	int tid = threadIdx.x;
	int offset = blockIdx.x * blockDim.x;
	int gid = tid + offset;
	printf("blockIdx.x: %d, blockIdx.y: %d, threadIdx.x: %d, gid : %d - data : %d \n", 
		blockIdx.x, blockIdx.y, tid, gid, data[gid]);
}

int main()
{
	int array_size = 16;
	int array_byte_size = sizeof(int) * array_size;
	int h_data[] = { 23,9,4,53,65,12,1,33,22,43,56,4,76,81,94,32 };

	int* d_data;
	cudaMalloc((void**)&d_data, array_byte_size);
	cudaMemcpy(d_data, h_data, array_byte_size, cudaMemcpyHostToDevice);

	dim3 block(4);
	dim3 grid(4);

	unique_grid_calculation_2d << <grid, block>> > (d_data);
	cudaDeviceSynchronize();

	cudaDeviceReset();

	return 0;
}