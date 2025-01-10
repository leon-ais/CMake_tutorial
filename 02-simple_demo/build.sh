#########################################################################
# File Name:    build.sh
# Author:       leon-ais
# mail:         leon_ais@qq.com
# Created Time: Fri Jan 10 13:37:13 2025
#########################################################################
#!/bin/bash

# 获取脚本所在目录的绝对路径
SCRIPT_DIR=$(dirname $(realpath "$0"))

# 如果存在bin目录，则删除
if [ -d "$SCRIPT_DIR/bin" ]; then
    rm -rf "$SCRIPT_DIR/bin"
fi
# 如果存在build目录，则删除
if [ -d "$SCRIPT_DIR/build" ]; then
    rm -rf "$SCRIPT_DIR/build"
fi
# 创建build目录
mkdir "$SCRIPT_DIR/build"
# 进入build目录
cd "$SCRIPT_DIR/build"

# 定义可执行程序名
EXECUTABLE_NAME="my_calculator"

# 判断操作系统（win下执行有问题）
OS=$(uname -s)
if [ "$OS" = "Darwin" ]; then
    # macOS系统
    clang++ -std=c++17 "$SCRIPT_DIR/src/*.cpp" -o "$EXECUTABLE_NAME"
else
    # Windows, linux, others
    g++ -std=c++17 "$SCRIPT_DIR/src/*.cpp" -o "$EXECUTABLE_NAME"
fi

# 创建bin目录拷贝可执行文件
mkdir "$SCRIPT_DIR/bin" && cp "$SCRIPT_DIR/build/$EXECUTABLE_NAME"* "$SCRIPT_DIR/bin" && cd "$SCRIPT_DIR/bin"
# 执行可执行文件
./$EXECUTABLE_NAME
