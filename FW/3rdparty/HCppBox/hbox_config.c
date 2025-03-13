#include "bcomdef.h"
#include "rf_phy_driver.h"
#include "global_config.h"
#include "OSAL.h"
#include "OSAL_PwrMgr.h"
#include "hbox_config.h"
#include "hbox.h"

hdefaults_tick_t hbox_tick_get(void)
{
    return osal_GetSystemClock();
}

/*
 * 使用UART0作为打印输出口
 */
static void hputchar(char c)
{
    hal_uart_send_buff(UART0, (uint8_t*)&c, sizeof(c));
}

static void sys_reset()
{
    NVIC_SystemReset();
    //若NVIC复位未实现，使用死循环通过硬件看门狗复位
    while(true)
    {

    }
}

static void hw_feed()
{

}


/*
 * hbox初始化
 */
void hbox_init(void)
{
    //初始化库函数
    h3rdparty_init();
    hprintf_set_callback(hputchar);

    hprintf("HBox Init.\r\n");
    hprintf("build time %04d/%02d/%02d %02d:%02d:%02d\r\n",hcompiler_get_date_year(),hcompiler_get_date_month(),hcompiler_get_date_day(),hcompiler_get_time_hour(),hcompiler_get_time_minute(),hcompiler_get_time_second());



    //初始化看门狗
    hwatchdog_set_hardware_dog_feed(hw_feed);
    hwatchdog_setup_software_dog(sys_reset,hbox_tick_get);

}

/*
 * hbox节拍,默认1ms调用一次
 */
static hdefaults_tick_t current_tick=0;
void hbox_tick(void)
{
    current_tick++;
    if((current_tick%10)==0)
    {
        //每10tick喂狗一次
        HWATCHDOG_FEED();
    }
    if((current_tick%3000)==0)
    {
        //每3000tick打印一次信息
        hprintf("HBox Tick=%08X.\r\n",(int)hdefaults_tick_get());
    }
}

static __IO int critical_nested=0;
void hbox_enter_critical()
{
    if(critical_nested==0)
    {
        HAL_ENTER_CRITICAL_SECTION();
    }
    critical_nested++;
}

void hbox_exit_critical()
{
    critical_nested--;
    if(critical_nested==0)
    {
        HAL_EXIT_CRITICAL_SECTION();
    }
}


void * hbox_malloc(size_t bytes)
{
    return osal_mem_alloc(bytes);
}

void hbox_free(void *ptr)
{
    osal_mem_free(ptr);
}

