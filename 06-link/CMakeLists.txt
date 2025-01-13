# 要求CMake版本至少为3.20
cmake_minimum_required(VERSION 3.20)
# 定义项目名称和版本号
project(03-set VERSION 1.0)
# 指定C++标准为17
set(CMAKE_CXX_STANDARD 17)
# 定义变量EXECUTABLE_OUTPUT_PATH，指定可执行文件的输出路径
set(EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin)
# 定义变量DIR_SRCS，包含src目录下所有的.cpp文件
# aux_source_directory(${PROJECT_SOURCE_DIR}/src DIR_SRCS) # 不推荐 ACX
file(GLOB DIR_SRCS ${PROJECT_SOURCE_DIR}/*.cpp)
# 包含头文件目录
include_directories(${PROJECT_SOURCE_DIR}/include)
# 指定库文件的输出路径
# set(LIBRARY_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/lib)
# 生成动态库
# add_library(calc_dynamic SHARED ${DIR_SRCS})
# 生成静态库
# add_library(calc_static STATIC ${DIR_SRCS})
# 指定库文件的搜索路径
link_directories(${PROJECT_SOURCE_DIR}/lib)
# 链接动态库（过时）
# link_libraries(calc_dynamic) # 不推荐
# 根据变量DIR_SRCS生成可执行文件calc
add_executable(calc ${DIR_SRCS})
# 链接动态库
target_link_libraries(calc ${PROJECT_SOURCE_DIR}/lib/libcalc_dynamic.so)
# 链接静态库
# target_link_libraries(calc ${PROJECT_SOURCE_DIR}/lib/libcalc_static.a)