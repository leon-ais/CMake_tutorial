# 06-link

## 链接库
1. 可以生成静态库和动态库（add_library SHARED / STATIC）；
2. 可以指定生成库的路径（library_output_path）；
3. 发布库时，只需发布头文件（.h）和库文件（libxxx_static.a libxxx_dynamic.so）；
4. 链接库时，需要指定库的路径（link_directories）和库的名称（link_libraries）；

## 注意事项

1. CMake中有两个宏函数：
   - `link_libraries`：全局宏，用了之后会对后面所有目标生效，因此需要放在`add_executable`之前使之生效（副作用比较大）；
   - `target_link_libraries`：局部性，CMake在解析时会先创建目标，目标创建之后再处理链接关系，因此为方便清晰可读，常常放在`add_executable`之后；