#include "ls1x.h"
#include "dht11.h"
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
#include "BEEP.h"
#include "esp8266.h"

#include "iic.h"
#include "oled.h"
#include "key.h"
#define LED GPIO_PIN_20
#define beep GPIO_PIN_63

static uint16_t temperature;
static uint16_t humidity;

uchar_t Keynum, mode = 0, select = 0, change = 0;
char str[50];
uint8_t data[8] = {0x55, 0xAA, 0x00, 0x00, 0x00, 0x00, 0x00, 0xBB}; // 温湿度数据上云平台    数据包
char hour = 8, min = 47, sec = 40;                                  // 时钟初值
char h1 = 8, m1 = 30, s1 = 0;                                       // 设定时间初值
char h2 = 12, m2 = 29, s2 = 0;
char h3 = 18, m3 = 29, s3 = 58;
char A = 1, B = 2, C = 3, D = 4; // 四种药品初始数量
// char str[30];

void Display(void)
{
  // OLED显示界面
  OLED_Clear();
  OLED_ShowNum(30, 2, hour, 2, 16);
  OLED_ShowString(47, 2, ":", 16);
  OLED_ShowNum(52, 2, min, 2, 16);
  OLED_ShowString(69, 2, ":", 16);
  OLED_ShowNum(74, 2, sec, 2, 16);
  sprintf(str, "温度: %2d ℃", temperature / 10);
  OLED_Show_Str(5, 4, str, 16); // 显示温度
  sprintf(str, "湿度: %2d %%RH", humidity / 10);
  OLED_Show_Str(5, 6, str, 16); // 显示湿度
  if (wifi_connected == 0)
  {
    if (esp8266_check_cmd('T')) // 当收到'T'字符时，表示ESP8266连接成功
    {
      OLED_Clear(); // OLED显示界面
      wifi_connected = 1;
      delay_ms(1000);
      OLED_Clear(); // OLED显示界面
      delay_ms(500);
      OLED_Show_Str(20, 3, "温度:    ℃", 16); // OLED显示界面
      OLED_Show_Str(20, 6, "湿度:    %RH", 16);
      gpio_write_pin(LED, 1);
      BEEP_ON;
      delay_ms(500);
      BEEP_OFF;
    }
  }
  if (wifi_connected == 1)
  {
    delay_ms(1500);
    data[6] = (data[2] + data[3] + data[4] + data[5]) % 256; // 计算校验和
    // printf("%s",data);
    UART_SendDataALL(UART0, data, 8);
  }
  if (Keynum == 2)
  {
    select++;
    if (select == 4)
    {
      select = 0;
    }
  }
  switch (select)
  {
  case 1:
    if (Keynum == 3)
    {
      hour++;
      if (hour == 24)
      {
        hour = 0;
      }
    }
    if (Keynum == 4)
    {
      hour--;
      if (hour == 0)
      {
        hour = 23;
      }
    }
    break;
  case 2:
    if (Keynum == 3)
    {
      min++;
      if (min == 60)
      {
        min = 0;
      }
    }
    if (Keynum == 4)
    {
      min--;
      if (min == 0)
      {
        min = 59;
      }
    }
    break;
  case 3:
    if (Keynum == 3)
    {
      sec++;
      if (sec == 60)
      {
        sec = 0;
      }
    }
    if (Keynum == 4)
    {
      sec--;
      if (sec == 0)
      {
        sec = 59;
      }
    }
    break;
  }
}
void Set_time1(void)
{
  OLED_Clear();
  OLED_Show_Str(10, 1, "早上吃药时间", 16);
  OLED_ShowNum(30, 3, h1, 2, 16);
  OLED_ShowString(47, 3, ":", 16);
  OLED_ShowNum(52, 3, m1, 2, 16);
  OLED_ShowString(69, 3, ":", 16);
  OLED_ShowNum(74, 3, s1, 2, 16);

  if (Keynum == 2)
  {
    select++;
    if (select > 3)
    {
      select = 0;
    }
  }
  switch (select)
  {
  case 1:
    if (Keynum == 3)
    {
      h1++;
      if (h1 == 24)
      {
        h1 = 0;
      }
    }
    if (Keynum == 4)
    {
      h1--;
      if (h1 == 0)
      {
        h1 = 23;
      }
    }
    break;
  case 2:
    if (Keynum == 3)
    {
      m1++;
      if (m1 == 60)
      {
        m1 = 0;
      }
    }
    if (Keynum == 4)
    {
      m1--;
      if (m1 == 0)
      {
        m1 = 59;
      }
    }
    break;
  case 3:
    if (Keynum == 3)
    {
      s1++;
      if (s1 == 60)
      {
        s1 = 0;
      }
    }
    if (Keynum == 4)
    {
      s1--;
      if (s1 == 0)
      {
        s1 = 59;
      }
    }
    break;
  }
}
void Set_time2(void)
{
  OLED_Clear();
  OLED_Show_Str(10, 1, "中午吃药时间", 16);
  OLED_ShowNum(30, 3, h2, 2, 16);
  OLED_ShowString(47, 3, ":", 16);
  OLED_ShowNum(52, 3, m2, 2, 16);
  OLED_ShowString(69, 3, ":", 16);
  OLED_ShowNum(74, 3, s2, 2, 16);

  if (Keynum == 2)
  {
    select++;
    if (select > 3)
    {
      select = 0;
    }
    switch (select)
    {
    case 1:
      if (Keynum == 3)
      {
        h2++;
        if (h2 == 24)
        {
          h2 = 0;
        }
      }
      if (Keynum == 4)
      {
        h2--;
        if (h2 == 0)
        {
          h2 = 23;
        }
      }
      break;
    case 2:
      if (Keynum == 3)
      {
        m2++;
        if (m2 == 60)
        {
          m2 = 0;
        }
      }
      if (Keynum == 4)
      {
        m2--;
        if (m2 == 0)
        {
          m2 = 59;
        }
      }
      break;
    case 3:
      if (Keynum == 3)
      {
        s2++;
        if (s2 == 60)
        {
          s2 = 0;
        }
      }
      if (Keynum == 4)
      {
        s2--;
        if (s2 == 0)
        {
          s2 = 59;
        }
      }
      break;
    }
  }
}

void Set_time3(void)
{
  OLED_Clear();
  OLED_Show_Str(10, 1, "晚上吃药时间", 16);
  OLED_ShowNum(30, 3, h3, 2, 16);
  OLED_ShowString(47, 3, ":", 16);
  OLED_ShowNum(52, 3, m3, 2, 16);
  OLED_ShowString(69, 3, ":", 16);
  OLED_ShowNum(74, 3, s3, 2, 16);

  if (Keynum == 2)
  {
    select++;
    if (select > 3)
    {
      select = 0;
    }
  }
  switch (select)
  {
  case 1:
    if (Keynum == 3)
    {
      h3++;
      if (h3 == 24)
      {
        h3 = 0;
      }
    }
    if (Keynum == 4)
    {
      h3--;
      if (h3 == 0)
      {
        h3 = 23;
      }
    }
    break;
  case 2:
    if (Keynum == 3)
    {
      m3++;
      if (m3 == 60)
      {
        m3 = 0;
      }
    }
    if (Keynum == 4)
    {
      m3--;
      if (m3 == 0)
      {
        m3 = 59;
      }
    }
    break;
  case 3:
    if (Keynum == 3)
    {
      s3++;
      if (s3 == 60)
      {
        s3 = 0;
      }
    }
    if (Keynum == 4)
    {
      s3--;
      if (s3 == 0)
      {
        s3 = 59;
      }
    }
    break;
  }
}
void Set_num(void) // 药品数量
{
  OLED_Clear();
  OLED_ShowString(10, 2, "A:", 16);
  OLED_ShowNum(30, 2, A, 2, 16);
  OLED_ShowString(58, 2, "B:", 16);
  OLED_ShowNum(70, 2, B, 2, 16);
  OLED_ShowString(10, 4, "C:", 16);
  OLED_ShowNum(30, 4, C, 2, 16);
  OLED_ShowString(58, 4, "D:", 16);
  OLED_ShowNum(70, 4, D, 2, 16);
  if (Keynum == 2)
  {
    change++;
    if (change > 5)
    {
      change = 0;
    }
  }
  switch (change)
  {
  case 1:
    if (Keynum == 3)
    {
      A++;
    }
    if (Keynum == 4)
    {
      A--;
    }
    break;
  case 2:
    if (Keynum == 3)
    {
      B++;
    }
    if (Keynum == 4)
    {
      B--;
    }
    break;
  case 3:
    if (Keynum == 3)
    {
      C++;
    }
    if (Keynum == 4)
    {
      C--;
    }
    break;
  case 4:
    if (Keynum == 3)
    {
      D++;
    }
    if (Keynum == 4)
    {
      D--;
    }
    break;
  }
}

int main(int arg, char *args[])
{
  KEY_init();
  BEEP_Init();
  SystemClockInit(); // 时钟等系统配置
  GPIOInit();        // io配置
  OLED_Init();       // OLED初始化
  DHT11_Init();      // DHT11初始化
  EnableInt();       // 开总中断
  timer_init(1000);
  Uart0_init(9600); // 串口0初始化，io06 io07   串口初始化需要在开启EnableInt之后

  while (DHT11_Init()) // 检测是否接入温湿度传感器
  {
    OLED_Show_Str(10, 4, "未检测到传感器", 16); // OLED显示界面
  }
  OLED_Show_Str(0, 4, "                ", 16); // OLED显示界面
  OLED_Show_Str(20, 3, "温度:     ℃", 16);     // OLED显示界面
  OLED_Show_Str(20, 6, "湿度:     %RH", 16);

  while (1)
  {
    DHT11_Read_Data(&temperature, &humidity); // 读取温湿度值
    data[2] = temperature / 10; // 将温湿度数据存放至数据包中
    data[3] = humidity / 10;

    // sprintf(str, "%2d", temperature / 10);
    // OLED_Show_Str(70, 3, str, 16); // 显示温度
    // sprintf(str, "%2d", humidity / 10);
    // OLED_Show_Str(70, 6, str, 16); // 显示湿度       //显示湿度
    Keynum = KEY_Check();
    if (Keynum == 1)
    {
      mode++;
      mode %= 5;
    }
    switch (mode)
    {
    case 0:
      Display();
      break;
    case 1:
      Set_time1();
      break; // 模式一 设置早上吃药时间
    case 2:
      Set_time2();
      break; // 模式二 设置中午吃药时间
    case 3:
      Set_time3();
      break; // 模式三 设置晚上吃药时间
    case 4:
      Set_num();
      break; // 模式四 设置四种药品数量
    }
  }
}
