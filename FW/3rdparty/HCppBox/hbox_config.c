#include "bcomdef.h"
#include "rf_phy_driver.h"
#include "global_config.h"
#include "OSAL.h"
#include "OSAL_PwrMgr.h"
#include "watchdog.h"
#include "hbox_config.h"
#include "hbox.h"
#include "time.h"

hdefaults_tick_t hbox_tick_get(void)
{
    return osal_GetSystemClock();
}

/*
 * 使用UART0作为打印输出口
 */
static void huart0_putchar(char c)
{
    hal_uart_send_buff(UART0, (uint8_t*)&c, sizeof(c));
}

static uint8_t uart0_rx_buffer[128]= {0};
void uart0_Hdl(uart_Evt_t* event)
{
    if(event!=NULL)
    {
        switch(event->type)
        {
        case UART_EVT_TYPE_RX_DATA:
        case UART_EVT_TYPE_RX_DATA_TO:
        {
            hringbuf_t * buffer=hringbuf_get(uart0_rx_buffer,sizeof(uart0_rx_buffer));
            if(event->data!=NULL && event->len > 0)
            {
                hringbuf_input(buffer,event->data,event->len);
            }
        }
        break;
        default:
        {
        }
        break;
        }
    }
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
    hal_watchdog_feed();
}

/*
 * shell相关变量
 */
int hbox_shell_putchar(int ch)
{
    if(ch>0)
    {
        huart0_putchar(ch&0xFF);
    }
    return ch;

}
int hbox_shell_getchar(void)
{
    int ch=EOF;
    {
        hringbuf_t * buffer=hringbuf_get(uart0_rx_buffer,sizeof(uart0_rx_buffer));
        if(hringbuf_get_length(buffer))
        {
            uint8_t ch_val=0;
            hringbuf_output(buffer,&ch_val,sizeof(ch_val));
            ch=ch_val;
        }
    }
    return ch;
}

static void hbox_shell_init(void)
{
    hshell_context_external_api_t api=hshell_context_default_external_api();
    api.getchar=hbox_shell_getchar;
    api.putchar=hbox_shell_putchar;
    hshell_external_api_set(NULL,api);
    hshell_command_name_shortcut_set(NULL,true);
    HSHELL_COMMANDS_REGISTER(NULL);	//注册命令
}

static void hbox_shell_loop(void)
{
    while(0==hshell_loop(NULL));
}

/*
 * hbox初始化
 */
void hbox_init(void)
{

    //初始化hruntime组件
    hruntime_init_lowlevel();

    //初始化系统循环槽
    heventslots_set_slots_to_table(HEVENTSLOTS_SYSTEM_SLOTS_LOOP,NULL);

    //初始化库函数
    h3rdparty_init();
    hprintf_set_callback(huart0_putchar);


    //初始化看门狗
    hwatchdog_set_hardware_dog_feed(hw_feed);
    hwatchdog_setup_software_dog(sys_reset,hbox_tick_get);

    //初始化shell
    hbox_shell_init();

    //初始化hruntime组件
    hruntime_init();
		

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

    //调用更新时间
    time(NULL);

    //运行shell循环
    hbox_shell_loop();

    //运行hruntime组件
    hruntime_loop();

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

#ifndef USING_HMEMORYHEAP

void * hbox_malloc(size_t bytes)
{
    return osal_mem_alloc(bytes);
}

void hbox_free(void *ptr)
{
    osal_mem_free(ptr);
}

#else
static int cmd_free(int argc,const char *argv[])
{
    hshell_context_t * hshell_ctx=hshell_context_get_from_main_argv(argc,argv);
    size_t total=0,free=0;
    hmemoryheap_get_info(&total,&free);
    hshell_printf(hshell_ctx,"total:%d bytes,free: %d bytes\r\n",total,free);
    return 0;
}
HSHELL_COMMAND_EXPORT(free,cmd_free,show meminfo);
#endif

static int cmd_version(int argc,const char *argv[])
{
    hshell_context_t * hshell_ctx=hshell_context_get_from_main_argv(argc,argv);
    hshell_printf(hshell_ctx,"SDK Version %08X\r\n",SDK_VER_RELEASE_ID);
    return 0;
}

HSHELL_COMMAND_EXPORT(version,cmd_version,show version);

static int  cmd_reboot(int argc,const char *argv[])
{
    NVIC_SystemReset();
    return 0;
}

HSHELL_COMMAND_EXPORT(reboot,cmd_reboot,reboot system);


static int cmd_datetime_entry(int argc,const char *argv[])
{
    hshell_context_t * hshell_ctx=hshell_context_get_from_main_argv(argc,argv);
    time_t time_now=time(NULL);
    hshell_printf(hshell_ctx,"%s",asctime(localtime(&time_now)));
    return 0;
};
HSHELL_COMMAND_EXPORT(datetime,cmd_datetime_entry,show datetime);


#if defined(HDEFAULTS_LIBC_ARMCLIB)
#pragma import(__use_no_semihosting)
time_t time(time_t *timer)
{
    time_t ret=0;
    {
        hgettimeofday_timeval_t tv= {0};
        hgettimeofday(&tv,NULL);
        ret=tv.tv_sec;
    }
    if(timer!=NULL)
    {
        (*timer)=ret;
    }
    return ret;
}

/*
 * 设置当前时间
 */
void set_time(time_t new_time)
{
    hgettimeofday_timeval_t tv= {0};
    tv.tv_sec=new_time;
    hsettimeofday(&tv,NULL);
}
static int cmd_set_datetime_entry(int argc,const char *argv[])
{
    hshell_context_t * hshell_ctx=hshell_context_get_from_main_argv(argc,argv);
    if(argc <=1)
    {
        hshell_printf(hshell_ctx,"set_datetime [year] [month] [day] [hour] [minute] [second]\r\n");
    }
    else
    {
        time_t time_now=time(NULL);
        struct tm time_now_struct= {0};
        localtime_r(&time_now,&time_now_struct);
        if(argc >= 2)
        {
            time_now_struct.tm_year=atoi(argv[1])-1900;
        }
        if(argc >= 3)
        {
            time_now_struct.tm_mon=atoi(argv[2])-1;
        }
        if(argc >= 4)
        {
            time_now_struct.tm_mday=atoi(argv[3]);
        }
        if(argc >= 5)
        {
            time_now_struct.tm_hour=atoi(argv[4]);
        }
        if(argc >= 6)
        {
            time_now_struct.tm_min=atoi(argv[5]);
        }
        if(argc >= 7)
        {
            time_now_struct.tm_sec=atoi(argv[6]);
        }
        time_now=mktime(&time_now_struct);
        set_time(time_now);
    }
    return 0;
};
HSHELL_COMMAND_EXPORT(set_datetime,cmd_set_datetime_entry,set datetime.);


#endif
