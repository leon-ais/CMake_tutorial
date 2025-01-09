#include <ctime>
#include <iostream>
#include "math.h"

using namespace std;

int main()
{
    int a = 0;
    int b = 0;
    // 调用 srand 函数设置随机数种子
    srand(static_cast<unsigned int>(time(nullptr)));
    // 随机生成两个整数
    a = rand() % 100;
    b = rand() % 100;

    // 调用四个源文件执行四则运算
    cout << a << " + " << b << " = " << myadd(a, b) << endl;
    cout << a << " - " << b << " = " << mysub(a, b) << endl;
    cout << a << " * " << b << " = " << mymul(a, b) << endl;
    cout << a << " / " << b << " = " << mydiv(a, b) << endl;

    return 0;
}