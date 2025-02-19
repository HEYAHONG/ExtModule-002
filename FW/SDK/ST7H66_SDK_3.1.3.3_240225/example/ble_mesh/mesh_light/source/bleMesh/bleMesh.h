/**************************************************************************************************
*******
**************************************************************************************************/

/**************************************************************************************************
    Filename:       bleMesh.h
    Revised:
    Revision:

    Description:    This file contains the bleMesh sample application
                  definitions and prototypes.


**************************************************************************************************/

#ifndef BLEMESH_H
#define BLEMESH_H

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

extern uint8 bleMesh_TaskID;   // Task ID for internal task/event processing



// BLE Mesh Task Events

/*********************************************************************
    MACROS
*/

#define BLEMESH_START_DEVICE_EVT                            0x0001
#define BLEMESH_UART_RX_EVT                                 0x0002
#define BLEMESH_GAP_SCANENABLED                             0x0004
#define BLEMESH_LIGHT_PRCESS_EVT                            0x0008
#define BLEMESH_GAP_TERMINATE                               0x0010
#define BLEMESH_GAP_MSG_EVT                                 0x0400


/*********************************************************************
    FUNCTIONS
*/

/*
    Task Initialization for the BLE Application
*/
extern void bleMesh_Init( uint8 task_id );

/*
    Task Event Processor for the BLE Application
*/
extern uint16 bleMesh_ProcessEvent( uint8 task_id, uint16 events );

/*********************************************************************
*********************************************************************/

#ifdef __cplusplus
}
#endif

#endif /* BLEMESH_H */
