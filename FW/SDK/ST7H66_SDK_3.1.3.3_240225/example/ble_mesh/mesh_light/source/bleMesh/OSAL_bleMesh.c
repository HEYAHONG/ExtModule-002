/**************************************************************************************************
*******
**************************************************************************************************/

/**************************************************************************************************
    Filename:       OSAL_bleMesh.c
    Revised:
    Revision:

    Description:    This file contains function that allows user setup tasks



**************************************************************************************************/

/**************************************************************************************************
                                              INCLUDES
 **************************************************************************************************/

//#include "hal_types.h"
#include "OSAL.h"
#include "OSAL_Tasks.h"

/* LL */
#include "ll.h"

/* HCI */
#include "hci_tl.h"

/* L2CAP */
#include "l2cap.h"

/* gap */
#include "gap.h"
#include "gapgattserver.h"

/* GATT */
#include "gatt.h"
#include "gattservapp.h"
#include "EM_os.h"

/* Timer */
#if defined ( OSAL_CBTIMER_NUM_TASKS )
    #include "osal_cbTimer.h"
#endif

/* Profiles */
#include "peripheral.h"

/* Application */
#include "bleMesh.h"

/* Timer */
#if defined ( EM_USE_EXT_TIMER )
    #include "cbTimer.h"
    #include "EXT_cbtimer.h"
#endif

/*********************************************************************
    GLOBAL VARIABLES
*/

// The order in this table must be identical to the task initialization calls below in osalInitTask.
__ATTR_SECTION_SRAM__ const pTaskEventHandlerFn tasksArr[] =
{
    LL_ProcessEvent,                                                    // task 0
    HCI_ProcessEvent,                                                   // task 1
    L2CAP_ProcessEvent,                                                 // task 2
    GAP_ProcessEvent,                                                   // task 3
    GATT_ProcessEvent,                                                  // task 4
    GATTServApp_ProcessEvent,                                           // task 5
    bleMesh_ProcessEvent,                                               // task 6

    #if defined ( OSAL_CBTIMER_NUM_TASKS )
    OSAL_CBTIMER_PROCESS_EVENT( osal_CbTimerProcessEvent ),             // task 7
    #endif
    #if defined ( EM_USE_EXT_TIMER )
    CBTIMER_PROCESS_EVENT( CbTimerProcessEvent ),                       // task 8
    #endif

};

__ATTR_SECTION_SRAM__ const uint8 tasksCnt = sizeof( tasksArr ) / sizeof( tasksArr[0] );
uint16* tasksEvents;

/*********************************************************************
    FUNCTIONS
 *********************************************************************/

/*********************************************************************
    @fn      osalInitTasks

    @brief   This function invokes the initialization function for each task.

    @param   void

    @return  none
*/
void osalInitTasks( void )
{
    uint8 taskID = 0;
    tasksEvents = (uint16*)osal_mem_alloc( sizeof( uint16 ) * tasksCnt);
    osal_memset( tasksEvents, 0, (sizeof( uint16 ) * tasksCnt));
    /* LL Task */
    LL_Init( taskID++ );
    /* HCI Task */
    HCI_Init( taskID++ );
    /* L2CAP Task */
    L2CAP_Init( taskID++ );
    /* GAP Task */
    GAP_Init( taskID++ );
    /* GATT Task */
    GATT_Init( taskID++ );
    /* Profiles */
    GATTServApp_Init( taskID++ );
    /* Application */
    bleMesh_Init( taskID++ );
    #if defined ( OSAL_CBTIMER_NUM_TASKS )
    /* Callback Timer Tasks */
    osal_CbTimerInit( taskID );
    taskID += OSAL_CBTIMER_NUM_TASKS;
    #endif
    #if defined ( EM_USE_EXT_TIMER )
    /* Callback Timer Tasks */
    CbTimerInit( taskID );
    #endif
}


/*********************************************************************
*********************************************************************/
