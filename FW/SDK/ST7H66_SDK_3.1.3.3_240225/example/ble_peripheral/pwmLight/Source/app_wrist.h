/**************************************************************************************************
*******
**************************************************************************************************/

/**************************************************************************************************
    Filename:       heartrate.h
    Revised:        $Date $
    Revision:       $Revision $

    Description:    This file contains the wrist demo application and prototypes.


**************************************************************************************************/

#ifndef __WRIST_H
#define __WRIST_H

#include "types.h"


/*********************************************************************
    INCLUDES
*/

/*********************************************************************
    CONSTANTS
*/


/** Wrist Task Events**/
//start
#define START_DEVICE_EVT                        0x0001

//timer
#define TIMER_UI_EVT                            0x0002  //for UI timer event
#define TIMER_DT_EVT                            0x0004  //for datetime sync
#define TOUCH_PRESS_EVT                         0x0008  //for touch key event
#define TIMER_HR_EVT                            0x0010  //for heartrate detect
#define TIMER_BATT_EVT                          0x0020  //for battery detect
#define BATT_VALUE_EVT                          0x0040  //event for battery voltage value update
#define BATT_CHARGE_EVT                         0x0080  //event for battery charge status change
#define ACC_DATA_EVT                            0x0100  //event for accelerator data change
#define TIMER_LIGHT_EVT                         0x0200  //for led light timeout
#define TIMER_KSCAN_DEBOUNCE_EVT                0x0400  //for keyscan debounce
#define RESET_ADV_EVT                           0x0800  //for adv reset



/*********************************************************************
    MACROS
*/

/*********************************************************************
    FUNCTIONS
*/

extern uint8 AppWrist_TaskID;

/*
    Task Initialization for the BLE Application
*/
extern void appWristInit( uint8 task_id );

/*
    Task Event Processor for the BLE Application
*/
extern uint16 appWristProcEvt( uint8 task_id, uint16 events );

/*********************************************************************
*********************************************************************/


#endif /* __WRIST_H */
