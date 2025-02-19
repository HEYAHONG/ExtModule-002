/**************************************************************************************************
*******
**************************************************************************************************/

/**************************************************************************************************
    Filename:       gpio_demo.h
    Revised:        $Date $
    Revision:       $Revision $


**************************************************************************************************/

#ifndef __I2C_DMA_DEMO_H__
#define __I2C_DMA_DEMO_H__

#include "types.h"

#ifdef __cplusplus
extern "C"
{
#endif
#define KEY_I2C_DMA_WRITE_DATA_EVT    0x0001
#define KEY_I2C_DMA_READ_DATA_EVT     0x0002
#define KEY_I2C_DMA_RX_DATA_EVT       0x0004
typedef enum
{
    I2C_MODE_TX,
    I2C_MODE_RX,
    I2C_MODE_NUM,
} I2c_mode_en;

void I2c_Dma_Demo_Init( uint8 task_id );
uint16 I2c_Dma_ProcessEvent( uint8 task_id, uint16 events);
/*********************************************************************
*********************************************************************/

#ifdef __cplusplus
}
#endif

#endif /* HEARTRATE_H */
