# Cmake教程：by爱编程的大丙

## 章节目录
* 00-hello_cmake
* 01-intro
* 02-simple_demo
* 03-set_01
* 04-set_02

## 学习本教程使用开发环境
### 操作系统
* Windows 10 专业版
* WSL2 Ubuntu 22.04.5 LTS
### 开发工具
* Visual Studio Code 1.96.2
### 环境版本
* Cmake 3.22.1
* GNU Make 4.3
* GDB 12.1
* GCC 11.4.0
* G++ 11.4.0

## 启动WSL2并查看工具版本
```bash shell
(base) PS D:\workspace\code\cmake_tutorial> wsl
(base) ➜  cmake_tutorial
(base) ➜  cmake_tutorial ls
00-hello_cmake  01-intro  02-simple_demo  03-set_01  04-set_02  README.md
(base) ➜  cmake_tutorial
(base) ➜  cmake_tutorial cmake --version
cmake version 3.22.1
(base) ➜  cmake_tutorial
(base) ➜  cmake_tutorial make --version
GNU Make 4.3
Built for x86_64-pc-linux-gnu
(base) ➜  cmake_tutorial
(base) ➜  cmake_tutorial g++ --version
g++ (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
(base) ➜  cmake_tutorial
(base) ➜  cmake_tutorial gcc --version
gcc (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0
(base) ➜  cmake_tutorial
(base) ➜  cmake_tutorial gdb --version
GNU gdb (Ubuntu 12.1-0ubuntu1~22.04.2) 12.1
```
