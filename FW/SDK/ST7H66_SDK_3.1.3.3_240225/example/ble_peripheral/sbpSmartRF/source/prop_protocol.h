/**************************************************************************************************
*******
**************************************************************************************************/

/**************************************************************************************************
    Filename:       prop_protocol.h
    Revised:
    Revision:

    Description:    
                  definitions and prototypes.


**************************************************************************************************/

#ifndef PROPPROTOCOL_H
#define PROPPROTOCOL_H

#ifdef __cplusplus
extern "C"
{
#endif

/*********************************************************************
    INCLUDES
*/

/*********************************************************************
    CONSTANTS
*/

#define RFPHY_RX_SCAN_ALLWAYS_ON               (0xFFFFFFFF)

// PHY PLUS PHY Task Events
#define PPP_PERIODIC_TX_EVT         0x0001
#define PPP_PERIODIC_RX_EVT         0x0002
#define PPP_TX_DONE_EVT             0x0004
#define PPP_RX_DONE_EVT             0x0008
#define PPP_TRX_DONE_EVT            0x0010
#define PPP_RX_DATA_PROCESS_EVT     0x0020
#define PPP_TX_PENDING_PROCESS_EVT  0x0040
#define PPP_RX_PENDING_PROCESS_EVT  0x0080

#define PPP_TX_DURATION_PERIODIC    0xFFFFFFFF
#define PPP_RX_DURATION_PERIODIC    0xFFFFFFFF

/*********************************************************************
    MACROS
*/

/*********************************************************************
    FUNCTIONS
*/
uint8_t phy_rf_start_rx(uint32 rxTimeOut);
uint8_t phy_rf_stop_rx(void);
uint8_t phy_rf_stop_tx(void);
uint8_t phy_rf_get_current_status(void);

/*
    Task Initialization for the PHYPLUS PHY Application
*/
extern void PPP_Init( uint8 task_id );

/*
    Task Event Processor for the PHYPLUS PHY Application
*/
extern uint16 PropProtocol_ProcessEvent( uint8 task_id, uint16 events );

void phy_tx_send_data(uint8_t* txPayload,uint8_t dlen, uint32 txIntv,uint32 txDura);

/*********************************************************************
*********************************************************************/

#ifdef __cplusplus
}
#endif

#endif /* PROPPROTOCOL_H */
