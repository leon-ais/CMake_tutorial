#########################################################################
# File Name:    build.sh
# Author:       leon-ais
# mail:         leon_ais@qq.com
# Created Time: Fri Jan 10 13:37:13 2025
#########################################################################
#!/bin/bash

# 如果存在bin目录，则删除
if [ -d "bin" ]; then
    rm -rf bin
fi
# 如果存在build目录，则删除
if [ -d "build" ]; then
    rm -rf build
fi
# 创建build目录
mkdir build
# 进入build目录
cd build
# 执行clang++编译
clang++ -std=c++17 ../src/*.cpp -o my_calculator
# 创建bin目录拷贝可执行文件
cd .. && mkdir bin && cp build/my_calculator bin && cd bin
# 执行可执行文件
./my_calculator