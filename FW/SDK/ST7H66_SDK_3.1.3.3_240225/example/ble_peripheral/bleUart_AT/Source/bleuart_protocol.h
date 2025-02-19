/**************************************************************************************************
*******
**************************************************************************************************/



#ifndef _BLE_UART_PROTOCOL_H
#define _BLE_UART_PROTOCOL_H

#include "types.h"
#include "bleuart.h"

typedef struct
{
    uint8_t ev;

} BUP_Evt_t;


typedef void (*BUP_CB_t)(BUP_Evt_t* pev);

int BUP_disconnect_handler(void);
int BUP_connect_handler(void);
int BUP_data_BLE_to_uart_completed(void);
int BUP_data_BLE_to_uart_send(void);
int BUP_data_BLE_to_uart(uint8_t* pdata, uint8_t size);
int BUP_data_uart_to_BLE_send(void);
int BUP_data_uart_to_BLE(void);
int BUP_init(void);
void gpio_wakeup_handle(void);
void gpio_sleep_handle(void);
uint8_t get_uart_idx(void);
void set_uart_idx(uint8_t idx);
bStatus_t bleuart_notify_data(uint8_t n_size, uint8_t* n_data);
#endif /*_BLE_UART_PROTOCOL_H*/

