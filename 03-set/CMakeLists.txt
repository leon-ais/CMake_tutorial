# 要求CMake版本至少为3.20
cmake_minimum_required(VERSION 3.20)
# 定义项目名称和版本号
project(03-set VERSION 1.0)
# 指定C++标准为17
set(CMAKE_CXX_STANDARD 17)
# 定义变量EXECUTABLE_OUTPUT_PATH，指定可执行文件的输出路径
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
# 定义变量DIR_SRCS，包含src目录下所有的.cpp文件
file(GLOB DIR_SRCS ${PROJECT_SOURCE_DIR}/src/*.cpp)
# 根据变量DIR_SRCS生成可执行文件calc
add_executable(calc ${DIR_SRCS})