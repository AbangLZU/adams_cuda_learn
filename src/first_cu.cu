#include "first_cu.h"

#include <thrust/sort.h>

//kernal definition
__global__ void mat_add(){

}

FirstCuda::FirstCuda() {}

FirstCuda::~FirstCuda() {}

void FirstCuda::run_cuda_op() {
	check_cuda_dev(0);
}

void FirstCuda::check_cuda_dev(int dev_id){
	cudaDeviceProp dev_prop;
	cudaGetDeviceProperties(&dev_prop, dev_id);
	std::cout << "使用GPU device " << dev_id << ": " << dev_prop.name << std::endl;
	std::cout << "SM的数量：" << dev_prop.multiProcessorCount << std::endl;
	std::cout << "每个线程块的共享内存大小：" << dev_prop.sharedMemPerBlock / 1024.0 << " KB" << std::endl;
	std::cout << "每个线程块的最大线程数：" << dev_prop.maxThreadsPerBlock << std::endl;
	std::cout << "每个EM的最大线程数：" << dev_prop.maxThreadsPerMultiProcessor << std::endl;
	std::cout << "每个SM的最大线程束数：" << dev_prop.maxThreadsPerMultiProcessor / 32 << std::endl;
}