#include "ls1x.h"
#include "Config.h"
#include "ls1x_gpio.h"
#include "ls1x_latimer.h"
#include "ls1c102_ptimer.h"
#include "ls1x_common.h"
#include "ls1x_gpio.h"
#include "ls1x_exti.h"
#include "ls1x_latimer.h"
#include "ls1x_rtc.h"
#include "ls1c102_touch.h"
#include "ls1x_string.h"
#include "ls1x_wdg.h"
#include "ls1x_uart.h"
#include "ls1x_spi.h"
#include "ls1c102_i2c.h"
#include "ls1x_uart.h"
#include "ls1x_clock.h"
#include "UserGpio.h"
#include "Config.h"
#include "oled.h"
#include "queue.h"
#include "led.h"
#include "iic.h"
char str[50];
uint8_t received_data = 0;
int duty;
uint8_t Read_Buffer[DATA_LEN]; // 设置接收缓冲数组
uint8_t Read_length;
int main(int arg, char *args[])
{

    bool flag = 0;
    uint8_t temperature = 0, temperatureL = 0;
    uint8_t humidity = 0, humidityL = 0;
    char temp_str[6];  // 存储温度字符串
    char humi_str[6];  // 存储湿度字符串
    SystemClockInit(); // 时钟等系统配置
    GPIOInit();        // io配置
    IIC_Init();
    OLED_Init();
    timer_init(100); // set time 0.1ms
    EnableInt();     // 开总中断

    Queue_Init(&Circular_queue);

    Uart0_init(9600); // 串口0初始化，io06 io07   串口初始化需要在开启EnableInt之后
    duty = 5; // 初始设置0度
    
    while (1)
    {

        if (Queue_isEmpty(&Circular_queue) == 0) // 判断队列是否为空，即判断是否收到数据
        {
            Read_length = Queue_HadUse(&Circular_queue); // 返回队列中数据的长度
            // memset(Read_Buffer, 0, DATA_LEN);//填充接收缓冲区为0
            Queue_Read(&Circular_queue, Read_Buffer, Read_length); // 读取队列缓冲区的值到接收缓冲区
                                                                   // /OLED_Show_Str(40, 6, Read_Buffer, 16);
            if (Read_Buffer[0] == '1')
            {

                
                duty = 15; // 初始设置90度
                delay_ms(1000);
                memset(Read_Buffer, 0, DATA_LEN); // 填充接收缓冲区为0
            }
        }
        else
        {
            memset(Read_Buffer, 0, DATA_LEN); // 填充接收缓冲区为0
        }
    }
    return 0;
}