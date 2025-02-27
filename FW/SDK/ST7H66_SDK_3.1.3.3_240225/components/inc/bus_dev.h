/**************************************************************************************************
*******
**************************************************************************************************/

/**************************************************************************************************
    Filename:       bus_dev.h
    Revised:
    Revision:

    Description:    This file contains the SoC MCU relate definitions

 **************************************************************************************************/

#ifndef __BUS_DEV_H__
#define __BUS_DEV_H__

#ifdef __cplusplus
extern "C" {
#endif

#include "mcu.h"

enum
{
    RSTC_COLD_UP = 0,
    RSTC_WARM_UP = 1,
    RSTC_OFF_MODE = 2,
    RSTC_WAKE_IO = 3,
    RSTC_WAKE_RTC = 4,
    RSTC_WARM_NDWC = 5  //user mode, no dwc

};

/* -------------------------  Interrupt Number Definition  ------------------------ */

typedef enum IRQn
{
    /* -------------------  Cortex-M0 Processor Exceptions Numbers  ------------------- */
    NonMaskableInt_IRQn           = -14,      /*  2 Non Maskable Interrupt */
    HardFault_IRQn                = -13,      /*  3 HardFault Interrupt */



    SVCall_IRQn                   =  -5,      /* 11 SV Call Interrupt */

    PendSV_IRQn                   =  -2,      /* 14 Pend SV Interrupt */
    SysTick_IRQn                  =  -1,      /* 15 System Tick Interrupt */

    /* ----------------------  PHY BUMBEE M0 Interrupt Numbers  --------------------- */
    BB_IRQn                       =   4,      /* Base band Interrupt */
    KSCAN_IRQn                    =   5,      /* Key scan Interrupt */
    RTC_IRQn                      =   6,      /* RTC Timer Interrupt */

    WDT_IRQn                      =  10,      /* Watchdog Timer Interrupt */
    UART0_IRQn                    =  11,      /* UART0 Interrupt */
    I2C0_IRQn                     =  12,      /* I2C0 Interrupt */
    I2C1_IRQn                     =  13,      /* I2C1 Interrupt */
    SPI0_IRQn                     =  14,       /* SPI0 Interrupt */
    SPI1_IRQn                     =  15,       /* SPI1 Interrupt */
    GPIO_IRQn                     =  16,      /* GPIO Interrupt */
    UART1_IRQn                    =  17,      /* UART1 Interrupt */
    SPIF_IRQn                     =  18,      /* SPIF Interrupt */
    DMAC_IRQn                     =  19,      /* DMAC Interrupt */
    TIM1_IRQn                     =  20,      /* Timer1 Interrupt */
    TIM2_IRQn                     =  21,      /* Timer2 Interrupt */
    TIM3_IRQn                     =  22,      /* Timer3 Interrupt */
    TIM4_IRQn                     =  23,      /* Timer4 Interrupt */
    TIM5_IRQn                     =  24,      /* Timer5 Interrupt */
    TIM6_IRQn                     =  25,      /* Timer6 Interrupt */

    AES_IRQn                      =  28,      /* AES Interrupt */
    ADCC_IRQn                     =  29,      /* ADC Interrupt */
    QDEC_IRQn                     =  30,      /* QDEC Interrupt */
    RNG_IRQn                      =  31      /* RNG Interrupt */
} IRQn_Type;




#if (PHY_MCU_TYPE == MCU_BUMBEE_M0)
#define ATTRIBUTE_ISR
#include "core_bumbee_m0.h"
#endif
#if(PHY_MCU_TYPE == MCU_BUMBEE_CK802)
#define ATTRIBUTE_ISR  __attribute__((isr))
#include "core_802.h"
#endif

#if (PHY_MCU_TYPE == MCU_BUMBEE_M0 || PHY_MCU_TYPE == MCU_BUMBEE_CK802)
#include "mcu_phy_bumbee.h"
#elif ((PHY_MCU_TYPE == MCU_PRIME_A1) ||(PHY_MCU_TYPE == MCU_PRIME_A2))
#include "mcu_phy_prime.h"
#else
#error "undefine mcu type"
#endif

#endif
