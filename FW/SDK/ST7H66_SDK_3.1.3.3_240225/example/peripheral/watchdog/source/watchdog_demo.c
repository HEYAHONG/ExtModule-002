/**************************************************************************************************
*******
**************************************************************************************************/

/**************************************************************************************************
    Filename:       watchdog_demo.c
    Revised:        $Date $
    Revision:       $Revision $


**************************************************************************************************/

/*********************************************************************
    INCLUDES
*/

#include "OSAL.h"
#include "watchdog_demo.h"
#include "log.h"
#include "gpio.h"
#include "clock.h"
#include "pwrmgr.h"

static volatile uint8_t watchdog_demo_TaskID;
#define DEMO_1000MS_EVENT    0x0001
#define DEMO_1000MS_CYCLE    1000

void wdg_reg_print(void)
{
    LOG("CR:0x%x\n",AP_WDT->CR);//rw
    LOG("TORR:0x%x\n",AP_WDT->TORR);//rw
    LOG("CCVR:0x%x\n",AP_WDT->CCVR);//r: Current Counter Value Register
    LOG("STAT:0x%x\n",AP_WDT->STAT);//r
    LOG("EOI:0x%x\n",AP_WDT->EOI);//r
}

void wdg_state_print(void)
{
    LOG("\nfun:%s\n",__func__);

    if(AP_WDT->CR & 0x01)
    {
        LOG("watchdog enable\n");
    }
    else
    {
        LOG("watchdog disable\n");
    }

    LOG("watchdog clock gate:0x%x\n",AP_PCR->SW_CLK1&_CLK_WDT);

    if(AP_PCRM->CLKSEL & (1UL<<16))
    {
        LOG("watchdog clock src:XTAL 32k\n");
    }
    else
    {
        LOG("watchdog clock src:RC 32k\n");
    }
}

void Watchdog_Demo_Init( uint8 task_id )
{
    watchdog_demo_TaskID = task_id;
    LOG("watchdog demo start:\n");

    if(CFG_SLEEP_MODE == PWR_MODE_NO_SLEEP)
    {
        LOG("system no sleep\n");
    }
    else if(CFG_SLEEP_MODE == PWR_MODE_SLEEP)
    {
        LOG("system enable sleep\n");
    }

    wdg_state_print();
    osal_start_reload_timer(watchdog_demo_TaskID, DEMO_1000MS_EVENT, DEMO_1000MS_CYCLE);
}


uint16 Watchdog_Demo_ProcessEvent( uint8 task_id, uint16 events )
{
    static uint8_t counter = 0;

    if(events & DEMO_1000MS_EVENT)
    {
        counter++;

        if(counter > 1)
        {
            LOG("system will disable sleep\n");
            wdg_state_print();
            LOG("while(1);");

            while(1);;

//          HAL_ENTER_CRITICAL_SECTION();
//          while(1)
//          {
//              hal_watchdog_feed();
//          }
        }
        else
        {
            LOG("system is running:%d\n",counter);
        }

        return (events ^ DEMO_1000MS_EVENT);
    }

    return 0;
}
