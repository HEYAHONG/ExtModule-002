#include "app_uart.h"
#include "hbox.h"

static app_uart_rx_callback_t uart_callback=NULL;
static void uart_Hdl(uart_Evt_t* pev)
{
    if(pev!=NULL)
    {
        switch(pev->type)
        {
        case UART_EVT_TYPE_RX_DATA:
        case UART_EVT_TYPE_RX_DATA_TO:
        {
            if(uart_callback!=NULL)
            {
                uart_callback(pev->data,pev->len);
            }
            else
            {
                //默认行为,直接发送数据
                app_uart_send(pev->data,pev->len);
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

void app_uart_send(uint8_t *data,size_t datalen)
{
    if(data==NULL || datalen == 0)
    {
        return;
    }
    while(hal_uart_get_tx_ready(UART1)!=PPlus_SUCCESS);
    hal_uart_send_buff(UART1,data,datalen);
}

void app_uart_set_receive_callback(app_uart_rx_callback_t cb)
{
    uart_callback=cb;
}

void app_uart_init()
{
    app_uart_configure(APP_UART_BAUD,'N');
}

void app_uart_configure(int baud,char parity)
{
    hal_uart_deinit(UART1);
    hal_gpio_pin_init(APP_UART_TX_PIN,GPIO_OUTPUT);
    hal_gpio_pull_set(APP_UART_TX_PIN,GPIO_PULL_UP_S);
    hal_gpio_pin_init(APP_UART_RX_PIN,GPIO_INPUT);
    hal_gpio_pull_set(APP_UART_RX_PIN,GPIO_PULL_UP);
    bool have_parity=false;
    if(parity=='O' || parity=='E')
    {
        have_parity=true;
    }
    if(have_parity)
    {
        hal_uart_set_parity_plan(UART1,parity=='E');
    }
    uart_Cfg_t cfg =
    {
        .tx_pin = APP_UART_TX_PIN,
        .rx_pin = APP_UART_RX_PIN,
        .rts_pin = GPIO_DUMMY,
        .cts_pin = GPIO_DUMMY,
        .baudrate = APP_UART_BAUD,
        .use_fifo = TRUE,
        .hw_fwctrl = FALSE,
        .use_tx_buf = FALSE,
        .parity     = have_parity,
        .evt_handler = uart_Hdl,
    };
    hal_uart_init(cfg, UART1);//uart init

}
#ifdef HRUNTIME_USING_INIT_SECTION
void  happ_uart_init(const hruntime_function_t *func)
{
    app_uart_init();
    hprintf("App uart init ok!\r\n");
}
HRUNTIME_INIT_EXPORT(app_uart,0,happ_uart_init,NULL);
#endif
#ifdef HRUNTIME_USING_LOOP_SECTION
void  happ_uart_loop(const hruntime_function_t *func)
{

}
HRUNTIME_LOOP_EXPORT(app_uart,0,happ_uart_loop,NULL);
#endif
