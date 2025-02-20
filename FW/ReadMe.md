# 说明

ST17H66是一颗蓝牙SOC,其特点如下:

- 支持BLE、SIG MESH。
- 64 KB SRAM
- 256KB SPI NOR flash memory

# 工具

主要使用的操作系统:

- Windows 10及更新版本:Keil MDK5开发固件程序。

## Keil MDK5

MDK5为集成开发环境，可对固件程序进行编译等

MDK5的最低版本为5.29。

# SDK

SDK见目录[SDK](SDK)。

## OSAL

对于许多蓝牙BLE/Zigbee的SOC芯片而言，通常采用OSAL或者及其变体(如[WCH](https://www.wch.cn/)的TMOS)作为多任务框架。

### 任务

OSAL通常不能动态管理任务（如不能动态删除任务），所有任务均需要在启动OSAL前配置完成。

对于一个OSAL任务而言，主要包括以下两个部分:

- 任务初始化：函数原型为`void Task_Init( uint8_t task_id );`，其中task_id为任务ID，通常为该任务在`pTaskEventHandlerFn`的位置(确保task_id唯一)，此参数可用于发送事件与任务定时器。此函数需要放在OSAL初始化函数`void osalInitTasks( void )`中且需要传入正确的task_id。
- 事件处理函数:函数原型为`uint16_t Task_ProcessEvent( uint8_t task_id, uint16_t events )`,其中task_id为任务ID，通常为该任务在`pTaskEventHandlerFn`的位置(确保task_id唯一),events为事件(通常按位定义，即每一位可定义一个事件,最高位为系统事件`SYS_EVENT_MSG`)，返回值为未处理的事件(已处理的事件的位需要在任务中清除)。此函数需要放入`pTaskEventHandlerFn`数组中。

对于任务而言，至少需要处理`SYS_EVENT_MSG`事件消息，通常使用osal_msg_*相关API处理消息。

# 烧录与调试

ST17H66通常使用串口烧录，因此硬件上需要预留一些烧录测试引脚(VDD3，P9，P10，GND)。通常烧录方式如下:

- 在线烧录:通过上位机工具进行烧录。此方式通常用于调试烧录。
- 离线烧录:通过烧录硬件工具。此方式通常用于批量生产烧录。

ST17H66通常采用串口调试(即通过串口打印信息来进行调试)，一般也采用烧录测试引脚。

## 在线烧录

工具见目录[LeKit](LeKit)。具体教程见[官方下载目录](http://doc.lenze.club/)的教程。

## 离线烧录

具体硬件及其教程见[官方下载目录](http://doc.lenze.club/)的教程。

# 官方链接

- 官网:http://lenzetech.com/
- 资料下载:http://doc.lenze.club/