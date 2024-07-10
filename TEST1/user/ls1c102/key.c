#include "key.h"
#include "ls1x_gpio.h"



void KEY_init(void)
{
    // 设置GPIO为输入模式
    gpio_set_direction(KEY1_PIN, GPIO_Mode_In); // 设置按键1的GPIO为输入
    gpio_set_direction(KEY2_PIN, GPIO_Mode_In); // 设置按键2的GPIO为输入
    gpio_set_direction(KEY3_PIN, GPIO_Mode_In); // 设置按键3的GPIO为输入
    gpio_set_direction(KEY4_PIN, GPIO_Mode_In); // 设置按键4的GPIO为输入
}

uint8_t KEY_Check(void)
{
    uint8_t Keynum=0;
    if (!gpio_get_pin(KEY1_PIN))// 读取按键状态
    { 
        Keynum=1;
    }
    else if(!gpio_get_pin(KEY2_PIN))
    {
        Keynum=2;
    }
    else if(!gpio_get_pin(KEY3_PIN))
    {
        Keynum=3;
    }
    else if(!gpio_get_pin(KEY4_PIN))
    {
        Keynum=4;
    }
    else
    {
        return Keynum;
    }
   
}

