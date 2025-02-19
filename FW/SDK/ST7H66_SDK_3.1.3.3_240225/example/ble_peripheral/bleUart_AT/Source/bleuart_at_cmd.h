/**************************************************************************************************
*******
**************************************************************************************************/

/**************************************************************************************************
    Filename:       gpio_demo.h
    Revised:        $Date $
    Revision:       $Revision $


**************************************************************************************************/

#ifndef __GPIO_DEMO_H__
#define __GPIO_DEMO_H__

#include "types.h"

#ifdef __cplusplus
extern "C"
{
#endif
#include "cliface.h"

// General Macroes for AT module.
#define BUF_LEN                      512
#define AT_MODULE_NAME_SIZE          13
#define AT_MODULE_PIN_SIZE           8
#define AT_ADV_DATA_SIZE             13
#define AT_ADV_INTERVAL_MIN_625US    32
#define AT_ADV_INTERVAL_MAX_625US    6400
#define AT_ADV_INTERVAL_DEF_625US    320
#define AT_CONN_INTERVAL_MIN_1250US  6
#define AT_CONN_INTERVAL_MAX_1250US  3199
#define AT_CONN_TIMEOUT_MIN_10MS     10
#define AT_CONN_TIMEOUT_MAX_10MS     3200
#define AT_CONN_TIMEOUT_DEF_10MS     200

#ifdef BLEUART_DEDICATE
typedef enum
{
    UART_PARITY_N,
    UART_PARITY_O,
    UART_PARITY_E,
} UART_PARITY_e;
#endif

typedef struct
{
    bool    connectable;
    bool    led_mod;
    bool    ble_role; //1 - master/ 0 - slave
    uint8_t mod_name[AT_MODULE_NAME_SIZE];
    uint8_t mac_addr[6]; //BLE MAC addr
    uint8_t mod_pin[AT_MODULE_PIN_SIZE];
    uint8_t rfpw;  // RF power
    uint8_t pw_mod; // power mode.
    uint16_t adv_int; // advertising interval.
    uint16_t conn_int[2]; // connect interval.
    uint16_t conn_timeout; // connect timeout.
    uint16_t search_uuid; // find uuid
    uint16_t srv_uuid;   //service uuid
    uint16_t pt_uuid;    // pass through uuid.
    #ifdef BLEUART_DEDICATE
    uint32_t baudrate[2];
    #else
    uint32_t baudrate;
    #endif
    uint32_t auto_slp_time;
} AT_ctx_t;


extern uint8_t cmdstr[64];
extern uint8_t cmdlen;
extern const CLI_COMMAND cli_cmd_list[26];
/*********************************************************************
    FUNCTIONS
*/

/**
    Use FS API to fetch data from/to flash.
    osal_snv_read()/osal_snv_write()
**/
void     at_initialize_fs(void);
uint8_t  at_snv_read_flash(void);
void     at_get_ctx(AT_ctx_t* m_at_ctx);
void     at_get_ctx_def(AT_ctx_t* m_at_ctx);
uint32_t at_get_baudrate(void);

#ifdef BLEUART_DEDICATE
//UART_PARITY_e at_get_uart_parity(void);
uint32_t at_get_uart_parity(void);
#endif

uint8_t  at_get_pw_mode(void);
bool     at_get_led_mode(void);
uint32_t at_get_auto_slp_time(void);
void     at_Init(void);
uint16_t at_default(uint32_t argc, uint8_t* argv[]);
uint16_t at_at(uint32_t argc, uint8_t* argv[]);
uint16_t at_reset(uint32_t argc, uint8_t* argv[]);
void       at_update_bd_addr(void);
uint8_t  at_get_cmdlen(void);
bool     at_get_dma_flag(void);
bool     at_get_rxpath_flag(void);
/*********************************************************************
*********************************************************************/

#ifdef __cplusplus
}
#endif

#endif /* HEARTRATE_H */
