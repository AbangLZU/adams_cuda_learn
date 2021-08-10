cmake_minimum_required(VERSION 3.20)
project(cuda_learn)

set(CMAKE_CXX_STANDARD 11)

find_package(CUDA)
include_directories(${CUDA_INCLUDE_DIRS})

cuda_add_library(cuda_lib
        src/first_cu.cu
        )

add_executable(cuda_learn src/main.cpp src/first_cu.h )
target_link_libraries(cuda_learn ${CUDA_LIBRARIES}  ${CUDA_CUBLAS_LIBRARIES}
        ${CUDA_curand_LIBRARY} cuda_lib)