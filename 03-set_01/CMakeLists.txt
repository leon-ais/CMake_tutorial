cmake_minimum_required(VERSION 3.20)
project(03-set VERSION 1.0)
set(CMAKE_CXX_STANDARD 17)
# 定义变量DIR_SRCS，包含src目录下所有的.cpp文件
file(GLOB DIR_SRCS src/*.cpp)
# 根据变量DIR_SRCS生成可执行文件calc
add_executable(calc ${DIR_SRCS})