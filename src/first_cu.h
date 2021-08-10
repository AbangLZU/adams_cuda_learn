//
// Created by rdcas on 2021/8/10.
//

#ifndef CUDA_LEARN_FIRST_CU_H
#define CUDA_LEARN_FIRST_CU_H

class FirstCuda{
public:
	FirstCuda();
	~FirstCuda();

	void run_cuda_op();

	// check and print gpu device information
	void check_cuda_dev(int dev_id);

private:

};
#endif //CUDA_LEARN_FIRST_CU_H
