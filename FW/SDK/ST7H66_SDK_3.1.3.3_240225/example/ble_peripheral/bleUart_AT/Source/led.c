/**************************************************************************************************
*******
**************************************************************************************************/

/*******************************************************************************
    @file     led.c
    @brief    Contains all functions support for led driver
    @version  0.1
    @date     14. Sep. 2020
    @author   bingliang.lou

    Copyright(C) 2016, PhyPlus Semiconductor
    All rights reserved.

*******************************************************************************/
#include "led.h"
//#include "common.h"
#include "error.h"
#include "bus_dev.h"
#include "bleuart.h"
/*********************************************************************
    MACROS
*/

/*********************************************************************
    CONSTANTS
*/

/*********************************************************************
    TYPEDEFS
*/

/*********************************************************************
    GLOBAL VARIABLES
*/
GPIO_Pin_e led_Pin;
LED_PWR_e led_pwr = LED_PWR_OFF;

/*********************************************************************
    LOCAL FUNCTIONS
*/
/*********************************************************************
    PUBLIC FUNCTIONS
*/
void set_led(LED_PWR_e led_pwr)
{
    switch(led_pwr)
    {
    case LED_PWR_OFF:
        led_pwr = LED_PWR_OFF;
        break;

    case LED_PWR_ON:
        led_pwr = LED_PWR_ON;
        break;

    default:
        led_pwr = LED_PWR_OFF;
        break;
    }
}

LED_PWR_e get_led(void)
{
    return led_pwr;
}

/*********************************************************************
    @fn      led_initial

    @brief   Initialize GPIO pin for LED.

    @params  pin: GPIO pin for controling LED.

    @return  N/A
*/
void led_initial(GPIO_Pin_e pin)
{
    led_Pin = pin;
    hal_gpio_pin_init(led_Pin, OEN);
    hal_gpio_write(led_Pin, 0);
    hal_gpio_pull_set(led_Pin, PULL_DOWN);
}

/*********************************************************************
    @fn      led_set_status

    @brief   Set LED status.
            No blink status here to make thing simple.
            Task can use event+timer for blink status by itself instead.

    @params  led_status: GPIO pin for controlling LED.

    @return  N/A
*/
void led_set_status(LED_STATUS_e led_status)
{
    switch(led_status)
    {
    case LED_STATUS_OFF:
        hal_gpio_write(led_Pin, 0);
        hal_gpio_pull_set(led_Pin, PULL_DOWN);
        set_led(LED_PWR_OFF);
        break;

    case LED_STATUS_ON:
        hal_gpio_write(led_Pin, 1);
        hal_gpio_pull_set(led_Pin, STRONG_PULL_UP); //STRONG_PULL_UP / WEAK_PULL_UP
        set_led(LED_PWR_ON);
        break;

    case LED_STATUS_BLINK:
        osal_start_timerEx( bleuart_TaskID, BUP_OSAL_EVT_LED_BLK_TIMER, 247 );
        break;

    default:
        hal_gpio_pull_set(led_Pin, PULL_DOWN);
        break;
    }
}
