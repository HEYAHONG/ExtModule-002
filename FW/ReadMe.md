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

由于ST17H66没有提供设备支持包，也没有提供编程算法，故而开发时选择ARMCM0,需要安装CMSIS支持包(一般情况下MDK的安装程序会自动安装CMSIS支持包)。

# BLE

本章节主要用于对部分BLE相关资源的说明。

## UUID

UUID为通用唯一识别码,用于标识资源。UUID通常为128位，但128位的UUID空间占用比较大，一般采用16位的短UUID。

16位短UUID与128位UUID可相互转化。一般情况下，16位短UUID是128位UUID的一部分。

对于同一种类型的资源而言，UUID值类似C语言枚举值，均是通过数字标识具体的资源。

蓝牙相关的数字分配可见：https://www.bluetooth.com/specifications/assigned-numbers/

## 广播包与扫描响应包

对于基于BLE的设备而言,最简单的应用就是使用广播包发送信息，实际应用的例子如某某TAG使用蓝牙进行追踪。

扫描响应包（有时也称广播响应包），在另外的设备进行主动扫描时响应，用于扩展广播数据的大小（如未特殊说明，后文所指广播数据也包括扫描响应包中的数据）。通常固定的数据由扫描响应包传输，变化的数据用广播包传输(广播包可一直发送)。

无论是广播包还是扫描响应包，所携带的广播数据长度最长为31字节。

广播数据由一个或者多个广播结构体组成，所有广播结构体的长度之和不能超过广播包与扫描响应包可携带数据的最大长度。

广播结构体由一字节长度+一字节广播类型+多字节广播结构体数据，其中长度指广播类型+广播结构体数据的长度，广播结构体数据由广播类型决定。

通常情况下，广播包的广播数据的第一个广播结构体为广播标志(广播类型为0x01)，占3个字节。

用户可使用厂商自定义数据类型的广播结构体发送自定义数据（对于上位机而言，比较容易获取广播数据中的厂商自定义数据），其余类型的广播结构体主要用于向外发送BLE相关配置。

## 设备名称

对于上位机而言，设备名称是区分不同自定义设备类型的方式之一(标准设备（如音频设备、HID设备）的区分类型的方式由BLE标准规定)。

对于BLE而言，设备名称主要可在以下场景中使用:

- 广播数据:广播数据中可携带设备名称信息。一般情况下，设备名称通常放在扫描响应包且在上位机扫描时显示。
- GAP服务(0x1800)的设备名称特征(0x2A00):此处的设备名称可与广播数据不同（也可以相同）。

## profile

BLE规定了一系列规范(在BLE标准中称profile)，用户遵循这些标准即可实现对相应蓝牙功能的开发，而无需再对上位机进行二次开发（标准服务的驱动一般无需用户开发，操作系统或者蓝牙栈会自动实现对标准服务的访问）。

一个profile可包含一个或多个服务，最终上位机与BLE设备之间的交互都是通过对服务的访问实现的。

一个服务可包含一个或多个特征，这些特征就是一个个数据点，上位机可通过访问特征获取具体的数据。

注意:此处只描述常用的profile/服务。

### GAP服务

GAP服务的UUID为0x1800。

GAP服务是BLE必须实现的服务，主要用于管理广播和连接事件的有关参数。

### GATT服务

GATT服务的UUID为0x1801。

GATT服务是BLE必须实现的服务。

### 设备信息服务

设备信息服务的UUID为 0x180A。

设备信息服务的实现是可选的，用户可通过设备信息服务提供以下信息:

- SYSTEM_ID
- MODEL_NUMBER
- SERIAL_NUMBER：序列号可用于区分同一型号的不同设备，通常情况下，序列号是唯一的。
- FIRMWARE_REV 
- HARDWARE_REV
- SOFTWARE_REV
- MANUFACTURER_NAME
- 11073_CERT_DATA
- PNP_ID

### 电池服务

电池服务的UUID为 0x180F。

电池服务的实现是可选的，用户可通过此服务提供电池信息（如电量）。

### SimpleProfile服务

设备信息服务的UUID为 0xFFF0。

SimpleProfile服务的实现是可选的。SimpleProfile服务通常用于自定义服务，通常情况下，其特征（自定义数据）的UUID从0xFFF1起。

与其它的profile不同，此服务通常不会被操作系统/蓝牙栈使用，因此用户需要手动编写上位机程序。

除了用户自行分配服务UUID（通常是长UUID，用于避免重复）创建非标准设备外，用户还可使用此服务创建非标准设备。

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

## BLE

### 广播包与扫描响应包

广播包与扫描响应包的配置主要由`GAPRole_SetParameter`函数完成，主要配置参数(函数第一个参数)如下:

- `GAPROLE_SCAN_RSP_DATA`
- `GAPROLE_ADVERT_DATA`
- `GAPROLE_ADVERT_ENABLED`
- `GAPROLE_ADVERT_OFF_TIME`

注意:此处只说明了常用的参数配置，完整的参数配置见SDK中的示例工程。

### 设备名称

广播数据中的设备名称在构造广播数据时填入，具体见广播包与扫描响应包的说明。

GAP服务(0x1800)的设备名称特征(0x2A00)可通过`GGS_SetParameter`设置(参数为`GGS_DEVICE_NAME_ATT`)。

### profile

profile相关代码见 [SDK根目录]/components/profiles 。

对于SDK 版本3.1.3.3_240225 支持的profiles见[profiles](SDK/ST7H66_SDK_3.1.3.3_240225/components/profiles)。

# 烧录与调试

ST17H66通常使用串口烧录，因此硬件上需要预留一些烧录测试引脚(VDD3，P9，P10，GND)。通常烧录方式如下:

- 在线烧录:通过上位机工具进行烧录。此方式通常用于调试烧录。
- 离线烧录:通过烧录硬件工具。此方式通常用于批量生产烧录。

ST17H66通常采用串口调试(即通过串口打印信息来进行调试)，一般也采用烧录测试引脚。

## 在线烧录

工具见目录[LeKit](LeKit)。具体教程见[官方下载目录](http://doc.lenze.club/)的教程。

## 离线烧录

具体硬件及其教程见[官方下载目录](http://doc.lenze.club/)的教程。

# 目录说明

- [数字]-[名称]：数字为固件编号，名称为固件名称。
- [LeKit](LeKit)：官方下载工具
- [SDK](SDK)：SDK目录
- [3rdparty](3rdparty):第三方目录

## 固件说明

- [001-simpleBlePeripheralBase](001-simpleBlePeripheralBase):简单BLE外设基础模板

# 官方链接

- 官网:http://lenzetech.com/
- 资料下载:http://doc.lenze.club/