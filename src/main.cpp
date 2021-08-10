#include <iostream>
#include "first_cu.h"

int main() {
	std::cout << "Frist Cuda programming" << std::endl;

	FirstCuda cuda;
	cuda.run_cuda_op();

	return 0;
}
