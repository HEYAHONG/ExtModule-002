/**************************************************************************************************
*******
**************************************************************************************************/

/**************************************************************************************************
    Filename:       OSAL_heartrate.c
    Revised:        $Date: 2011-03-30 20:15:59 -0700 (Wed, 30 Mar 2011) $
    Revision:       $Revision: 16 $


**************************************************************************************************/

/**************************************************************************************************
                                              INCLUDES
 **************************************************************************************************/
#include "OSAL.h"
#include "OSAL_Tasks.h"
#include "ll.h"

/* Application */
#include "i2c_demo.h"
#include "i2c_dma_demo.h"
#include "i2c_soft_demo.h"

/*********************************************************************
    GLOBAL VARIABLES
*/
#define I2C_DEMO 1
#define I2C_DMA  0
#define I2C_SOFT 0
// The order in this table must be identical to the task initialization calls below in osalInitTask.
__ATTR_SECTION_SRAM__ const pTaskEventHandlerFn tasksArr[] =
{
    LL_ProcessEvent,
    #if I2C_DEMO
    I2c_ProcessEvent,
    #endif
    #if I2C_DMA
    I2c_Dma_ProcessEvent,
    #endif
    #if I2C_SOFT
    I2c_Soft_ProcessEvent,
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
    LL_Init( taskID++);
    #if I2C_DEMO
    I2c_Demo_Init( taskID++);
    #endif
    #if I2C_DMA
    I2c_Dma_Demo_Init( taskID++);
    #endif
    #if I2C_SOFT
    I2c_Soft_Demo_Init( taskID++);
    #endif
}

/*********************************************************************
*********************************************************************/
