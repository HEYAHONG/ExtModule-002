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