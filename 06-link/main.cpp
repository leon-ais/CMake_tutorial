/* ************************************************************************
> File Name:     main.cpp
> Author:        leon-ais
> mail:          leon_ais@qq.com
> Created Time:  Mon Jan 13 22:04:26 2025
> Description:   
 ************************************************************************/

#include <iostream>
#include "calc.h"

using namespace std;

int main()
{
    int a = 27;
    int b = 4;

    // 调用四个源文件执行四则运算
    cout << a << " + " << b << " = " << myadd(a, b) << endl;
    cout << a << " - " << b << " = " << mysub(a, b) << endl;
    cout << a << " * " << b << " = " << mymul(a, b) << endl;
    cout << a << " / " << b << " = " << mydiv(a, b) << endl;

    return 0;
}
