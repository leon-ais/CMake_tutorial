cmake_minimum_required(VERSION 3.20)
project(02-simple-demo VERSION 1.0)
add_executable(my_calculator src/add.cpp src/div.cpp src/mul.cpp src/sub.cpp src/main.cpp) # 好像没法识别src/*.cpp，先写绝对路径吧