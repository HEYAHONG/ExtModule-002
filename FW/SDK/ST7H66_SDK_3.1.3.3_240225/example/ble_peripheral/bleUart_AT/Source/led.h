/**************************************************************************************************
*******
**************************************************************************************************/

/*******************************************************************************
    @file     led.h
    @brief    Contains all functions support for led driver
    @version  0.1
    @date     14. Sep. 2020
    @author   bingliang.lou

    Copyright(C) 2016, PhyPlus Semiconductor
    All rights reserved.

*******************************************************************************/
#ifndef _LED_H_
#define _LED_H_

#include "types.h"
#include "gpio.h"

typedef enum
{
    LED_STATUS_OFF,
    LED_STATUS_ON,
    LED_STATUS_BLINK,
} LED_STATUS_e;

typedef enum
{
    LED_PWR_OFF,
    LED_PWR_ON,
} LED_PWR_e;

void led_initial(GPIO_Pin_e pin);
void led_set_status(LED_STATUS_e led_status);
void set_led(LED_PWR_e led_pwr);
LED_PWR_e get_led(void);

#endif








