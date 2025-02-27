/**************************************************************************************************
*******
**************************************************************************************************/

/**************************************************************************************************
    Filename:       adc_demo.h
    Revised:        $Date $
    Revision:       $Revision $


**************************************************************************************************/

#ifndef __ADC_DEMO_H__
#define __ADC_DEMO_H__

#ifdef __cplusplus
extern "C"
{
#endif

/*********************************************************************
    INCLUDES
*/
#include "types.h"
#include "adc_config.h"

#if (APP_RUN_MODE == ADC_RUNMODE_INTERRUPT)


/*********************************************************************
    CONSTANTS
*/

/*********************************************************************
    MACROS
*/

/*********************************************************************
    FUNCTIONS
*/

extern void adc_Init( uint8 task_id );


extern uint16 adc_ProcessEvent( uint8 task_id, uint16 events );


#endif

/*********************************************************************
*********************************************************************/

#ifdef __cplusplus
}
#endif

#endif
