/**************************************************************************************************
*******
**************************************************************************************************/

/**************************************************************************************************
    Filename:       bleuart_at_dma.h
    Revised:        $Date $
    Revision:       $Revision $


**************************************************************************************************/

#ifndef __BLEUART_AT_DMA_H__
#define __BLEUART_AT_DMA_H__

#include "types.h"
#include "dma.h"

#ifdef __cplusplus
extern "C"
{
#endif

/**
    @brief DMAC Channel configuration structure type definition for bleuart_at module
*/
typedef enum
{
    AT_BUF_DIV_256=0,
    AT_BUF_DIV_128,
    AT_BUF_DIV_64,
    AT_BUF_DIV_32,
    AT_BUF_DIV_16,
    AT_BUF_DIV_MAX,
} AT_BUF_DIV_e;

/*********************************************************************
    FUNCTIONS
*/
void at_dma_rx_init(void);
void at_dma_tx_init(void);
void at_dma_deinit(void);
uint8_t at_dma_start(uint32_t dst_addr);
void at_dma_uart_to_BLE_DMA_rx(void);
void at_dma_uart_to_BLE_notify_data(void);
bool at_dma_get_notify_flag(void);
void at_dma_set_notify_flag(bool n_flag);
AT_BUF_DIV_e at_dma_get_div(void);
void at_dma_set_div(AT_BUF_DIV_e div);
uint32_t at_get_count(void);
uint8_t at_dma_get_buf_len(void);
void at_dma_set_buf_len(uint8_t b_len);
void at_dma_move_ble_data(uint8_t* pdata);
void at_dma_BLE_to_uart_DMA_tx(void);
bool at_dma_get_send_flag(void);
void at_dma_set_send_flag(bool n_flag);
/*********************************************************************
*********************************************************************/

#ifdef __cplusplus
}
#endif

#endif /* __BLEUART_AT_DMA_H__ */
