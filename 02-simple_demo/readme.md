# 02-simple_demo

## 编译运行
```bash shell
(base) ➜  02-simple_demo g++ *.cpp -o calc
(base) ➜  02-simple_demo ./calc 
83 + 86 = 169
83 - 86 = -3
83 * 86 = 7138
83 / 86 = 0.965116
```

## 注意事项
标准库里已经内置div函数，注意不能同名，否则因为不知道调用哪个函数导致无法编译。