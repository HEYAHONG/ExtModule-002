/**************************************************************************************************
*******
**************************************************************************************************/

/**************************************************************************************************
    Filename:       extBlePeripheral.h
    Revised:
    Revision:

    Description:    This file contains the Simple BLE Peripheral sample application
                  definitions and prototypes.


**************************************************************************************************/

#ifndef SIMPLEBLEPERIPHERAL_H
#define SIMPLEBLEPERIPHERAL_H

#ifdef __cplusplus
extern "C"
{
#endif

/*********************************************************************
    INCLUDES
*/

/*********************************************************************
    CONSTANTS
*/


// Simple BLE Peripheral Task Events
#define SBP_START_DEVICE_EVT                           0x0001
//#define SBP_ENTER_NOCONN_EVT                           0x0004
#define SBP_RESET_ADV_EVT                              0x0008
#define SBP_STOP_ADV_EVT                               0x0010
#define SBP_PEROID_EVT                                 0x0020
#define SBP_NOTIFY_TEST_EVT                            0x0040
//#define SBP_PER_REPORT_INTV_EVT                        0x0010
//#define SBP_DLE_CHANGE_EVT                             0x0020
//#define SBP_PHY_UPDATE_EVT                             0x0040
//#define SBP_CONN_NOTIFY_EVT                            0x0080
//#define SBP_RTC_TEST_EVT                               0x0100

/*********************************************************************
    MACROS
*/

/*********************************************************************
    FUNCTIONS
*/

/*
    Task Initialization for the BLE Application
*/
extern void extBlePeripheral_Init( uint8 task_id );

/*
    Task Event Processor for the BLE Application
*/
extern uint16 extBlePeripheral_ProcessEvent( uint8 task_id, uint16 events );

/*********************************************************************
*********************************************************************/

#ifdef __cplusplus
}
#endif

#endif /* SIMPLEBLEPERIPHERAL_H */
