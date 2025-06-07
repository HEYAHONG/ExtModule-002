#ifndef __APP_UART_H_INCLUDE__
#define __APP_UART_H_INCLUDE__
#include "stdint.h"
#include "inttypes.h"
#include "stdlib.h"
#include "gpio.h"
#include "uart.h"
#ifdef __cplusplus
extern "C"
{
#endif // __cplusplus

#define APP_UART_RX_PIN GPIO_P02
#define APP_UART_TX_PIN GPIO_P03
#define APP_UART_BAUD   115200

/*
 * 应用串口初始化
 */
void app_uart_init(void);

/*
 * 应用串口发送
 */
void app_uart_send(uint8_t *data,size_t datalen);

/*
 * 应用串口接收
 */
typedef void (*app_uart_rx_callback_t)(uint8_t *data,size_t datalen);
void app_uart_set_receive_callback(app_uart_rx_callback_t cb);

#ifdef __cplusplus
}
#endif // __cplusplus

#endif
