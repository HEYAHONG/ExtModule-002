/**************************************************************************************************
*******
**************************************************************************************************/

/**************************************************************************************************
    Filename:       bsp_btn_demo.h
    Revised:        $Date $
    Revision:       $Revision $


**************************************************************************************************/

#ifndef __BSP_BTN_DEMO_H__
#define __BSP_BTN_DEMO_H__


#ifdef __cplusplus
extern "C"
{
#endif

/*********************************************************************
    INCLUDES
*/
#include "bus_dev.h"
#include "log.h"

/*********************************************************************
    CONSTANTS
*/



/*********************************************************************
    MACROS
*/
#define BSP_BTN_EVT_SYSTICK                                 (0x0001)

// ! row gpio
#define KSCAN_ROW_0_GPIO        GPIO_P00
#define KSCAN_ROW_1_GPIO        GPIO_P24
#define KSCAN_ROW_2_GPIO        GPIO_P07
#define KSCAN_ROW_3_GPIO        GPIO_P34

// ! col gpio
#define KSCAN_COL_0_GPIO        GPIO_P11
#define KSCAN_COL_1_GPIO        GPIO_P23
#define KSCAN_COL_2_GPIO        GPIO_P25
#define KSCAN_COL_3_GPIO        GPIO_P18

/*
    Task Initialization for the Demo Application
*/
extern void Demo_Init( uint8 task_id );

/*
    Task Event Processor for the Demo Application
*/
extern uint16 Demo_ProcessEvent( uint8 task_id, uint16 events );


/*********************************************************************
*********************************************************************/

#ifdef __cplusplus
}
#endif

#endif
