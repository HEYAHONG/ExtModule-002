#include "led.h"
#include "gpio.h"
#include "hbox.h"

static uint64_t led0_table=0x5555555555555555;

uint64_t led_get_table(uint8_t index)
{
    switch(index)
    {
    case 0:
        return led0_table;
    default:
        break;
    }
    return 0;
}

void led_set_table(uint8_t index,uint64_t table)
{
    switch(index)
    {
    case 0:

    {
        led0_table=table;
    }
    break;
    default:
        break;
    }
}


static uint8_t led_index=0;
static hdefaults_tick_t last_tick=0;
static void led_slot(void *param,void * signal)
{
    (void)param;
    if(hdefaults_get_api_table()->tick_get()-last_tick < 100)
    {
        //未到达100ms
        return;
    }
    else
    {
        last_tick=hdefaults_get_api_table()->tick_get();
    }
    hal_gpio_write(LED0_PIN,((led0_table&(1ULL << (led_index)))!=0)?1:0);
    led_index++;
    if(led_index > 63)
    {
        led_index=0;
    }
}

void led_init(void)
{
    static bool init=false;
    if(init)
    {
        return;
    }
    init = true;
    hal_gpio_pin_init(LED0_PIN,GPIO_OUTPUT);
    hal_gpio_pull_set(LED0_PIN,GPIO_PULL_UP_S);
    hal_gpio_write(LED0_PIN,1);
#ifndef HRUNTIME_USING_LOOP_SECTION
    {
        heventslots_t *slots_loop=heventslots_get_slots_from_table(HEVENTSLOTS_SYSTEM_SLOTS_LOOP);
        if(slots_loop!=NULL)
        {
            uint32_t id=heventslots_register_slot(slots_loop,NULL,led_slot,NULL);
            hprintf("LED init ok!id=%d\r\n",(int)id);
        }
        else
        {
            //初始化失败
            hprintf("LED init failed!\r\n");
            init=false;
        }
    }
#endif
}

#ifdef HRUNTIME_USING_INIT_SECTION
void  hled_init(const hruntime_function_t *func)
{
    led_init();
    hprintf("LED init ok!\r\n");
}
HRUNTIME_INIT_EXPORT(led,0,hled_init,NULL);
#endif
#ifdef HRUNTIME_USING_LOOP_SECTION
void  hled_loop(const hruntime_function_t *func)
{
    led_slot(NULL,NULL);
}
HRUNTIME_LOOP_EXPORT(led,0,hled_loop,NULL);
#endif

static int cmd_led(int argc,const char *argv[])
{
    hshell_context_t * hshell_ctx=hshell_context_get_from_main_argv(argc,argv);
    if(argc == 1)
    {
        //显示LED表
        hshell_printf(hshell_ctx,"led:\r\n");
        hshell_printf(hshell_ctx,"\t0\tled0\r\n");
    }
    if(argc == 2)
    {
        //显示LED表
        int lednum=atoi(argv[1]);
        uint64_t led_table=led_get_table(lednum);
        hshell_printf(hshell_ctx,"led%d table=%08X%08X\r\n",lednum,(uint32_t)(led_table>>32),(uint32_t)led_table);
    }
    if(argc >= 3)
    {
        //设置LED表
        int lednum=atoi(argv[1]);
        uint64_t led_table=strtoull(argv[2],NULL,16);
        led_set_table(lednum,led_table);
        hshell_printf(hshell_ctx,"led%d table=%08X%08X\r\n",lednum,(uint32_t)(led_table>>32),(uint32_t)led_table);
    }
    return 0;
}

HSHELL_COMMAND_EXPORT(led,cmd_led,show led info\nled [lednum]);

