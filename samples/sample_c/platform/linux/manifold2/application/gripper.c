#include <wiringPi.h>
// #include <softpwm.h>
#include <stdio.h>
// 定义控制舵机的引脚为：GPIO1
#define PWM_PIN 26
void gripperSwitch(int open)
{
    // printf("wiringPi-C PWM test program\n");
    wiringPiSetup();
    pinMode(PWM_PIN, PWM_OUTPUT); // 设置PWM输出
    pwmSetMode(PWM_MODE_MS);      // 设置传统模式
    pwmSetClock(192);             // 设置分频
    pwmSetRange(2000);            // 设置周期分为2000步
    switch (open)
    {
    case 0:
        printf("close gripper");
        pwmWrite(PWM_PIN, 170);// 40度
        break;
    case 1:
        printf("open gripper");
        pwmWrite(PWM_PIN, 130);// -40度
    default:
        break;
    }
}