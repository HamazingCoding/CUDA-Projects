#include <cuda_runtime.h>
#include <device_launch_parameters.h>

#include <stdio.h>

__global__ void hello_cuda()
{
	printf("threadIdx.x: %d, threadIdx.y: %d, threadIdx.z: %d, blockIdx.x: %d, blockIdx.y: %d, blockIdx.z: %d, gridDim.x: %d, gridDim.y: %d, gridDim.z: %d", threadIdx.x, threadIdx.y, threadIdx.z, blockIdx.x, blockIdx.y, blockIdx.z, gridDim.x, gridDim.y, gridDim.z);
}

int main()
{
	int nx, ny, nz;
	nx = 8;
	ny = 8;
	nz = 8;

	dim3 block(4, 4, 4);
	dim3 grid(nx / block.x, ny / block.y, nz / block.z);

	hello_cuda<<<grid, block>>> ();
	cudaDeviceSynchronize();

	cudaDeviceReset();

	return 0;
}