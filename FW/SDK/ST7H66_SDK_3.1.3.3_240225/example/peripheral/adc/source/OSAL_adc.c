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
#include "rom_sym_def.h"
#include "OSAL.h"
#include "OSAL_Tasks.h"
#include "ll.h"

/* Application */
#include "adc_demo.h"
#include "adc_poilling_demo.h"
#include "adc_compare_demo.h"
#include "voice_demo.h"
#include "adc_config.h"
/*********************************************************************
    GLOBAL VARIABLES
*/

// The order in this table must be identical to the task initialization calls below in osalInitTask.
__ATTR_SECTION_SRAM__ const pTaskEventHandlerFn tasksArr[] =
{
    LL_ProcessEvent,
    #if (APP_RUN_MODE == ADC_RUNMODE_INTERRUPT)
    adc_ProcessEvent,
    #elif (APP_RUN_MODE == ADC_RUNMODE_POLLING)
    adc_Poilling_ProcessEvent,
    #elif (APP_RUN_MODE == ADC_RUNMODE_COMPARE)
    adc_Compare_ProcessEvent,
    #elif (APP_RUN_MODE == VOICE_RUNMODE)
    voice_ProcessEvent
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
    /*
        Application
    */
    #if(APP_RUN_MODE == ADC_RUNMODE_INTERRUPT)
    adc_Init( taskID++ );
    #elif (APP_RUN_MODE == ADC_RUNMODE_POLLING)
    adc_Poilling_Init( taskID++ );
    #elif (APP_RUN_MODE == ADC_RUNMODE_COMPARE)
    adc_Compare_Init( taskID++ );
    #elif (APP_RUN_MODE == VOICE_RUNMODE)
    voice_Init(taskID);
    #endif
}

/*********************************************************************
*********************************************************************/
