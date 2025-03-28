#include "bcomdef.h"
#include "rf_phy_driver.h"
#include "global_config.h"
#include "OSAL.h"
#include "OSAL_PwrMgr.h"
#include "watchdog.h"
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

static uint8_t uart0_rx_buffer[256]= {0};
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
static int hbox_shell_putchar(int ch)
{
    if(ch>0)
    {
        hputchar(ch&0xFF);
    }
    return ch;

}
static int hbox_shell_getchar(void)
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
    hbox_shell_putchar('\r');
    hbox_shell_putchar('\n');
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
    //初始化库函数
    h3rdparty_init();
    hprintf_set_callback(hputchar);


    //初始化看门狗
    hwatchdog_set_hardware_dog_feed(hw_feed);
    hwatchdog_setup_software_dog(sys_reset,hbox_tick_get);

    //初始化shell
    hbox_shell_init();

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

    //运行shell循环
    hbox_shell_loop();
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
