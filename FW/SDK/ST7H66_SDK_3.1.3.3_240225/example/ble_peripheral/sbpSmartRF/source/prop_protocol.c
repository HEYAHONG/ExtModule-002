/**************************************************************************************************
*******
**************************************************************************************************/

/**************************************************************************************************
    Filename:       prop_protocol.c
    Revised:
    Revision:

    Description:    


**************************************************************************************************/

/*********************************************************************
    INCLUDES
*/
#include "rf_phy_driver.h"
#include "global_config.h"
#include "OSAL.h"
#include "OSAL_PwrMgr.h"
#include "log.h"
#include "timer.h"
#include "prop_protocol.h"
#include "ll.h"
#include "ll_hw_drv.h"
#include "clock.h"
#include "gpio.h"
#include "flash.h"


/*********************************************************************
    MACROS
*/
#define PPP_SET_SYNCWORD(x)                 PHY_REG_WT(0x4003004c,(x))
#define PPP_SET_CRC_SEED(x)                 subWriteReg(0x40030048,23,0,(x))
#define PPP_SET_WHITEN_SEED(x)              subWriteReg(0x40030048,31,24,(x))

/*********************************************************************
    CONSTANTS
*/
#define PPP_RFPHY_TX_ONLY                   (0x00)
#define PPP_RFPHY_RX_ONLY                   (0x01)
#define PPP_RFPHY_TRX_ONLY                  (0x02)
#define PPP_RFPHY_RX_TXACK                  (0x03)
#define PPP_RFPHY_TX_PENDING                (0x10)
#define PPP_RFPHY_RX_PENDING                (0x11)
#define PPP_RFPHY_TRX_PENDING               (0x12)
#define PPP_RFPHY_RX_TXACK_PENDING          (0x13)
#define PPP_RFPHY_IDLE                      (0xFF)

#define RFPHY_STATUS_SET_PENDING(x)             (0x10 |(x))
#define RFPHY_STATUS_CLR_PENDING(x)             (0x0F &(x))
#define LL_HW_MODE_STX                          (0x00)
#define LL_HW_MODE_SRX                          (0x01)
#define LL_HW_MODE_TRX                          (0x02)


#define PPP_HW_SCAN_DELAY                   (80)
#define PPP_HW_BB_DELAY                     (90)
#define PPP_HW_AFE_DELAY                    ( 8)
#define PPP_HW_PLL_DELAY                    (60)

#define DEFAULT_CRC_SEED                        (0x555555)

#define DEFAULT_WHITEN_SEED                     (0x37)
#define WHITEN_SEED_CH37                        (0x53)
#define WHITEN_SEED_CH38                        (0x33)
#define WHITEN_SEED_CH39                        (0x73)
#define DEFAULT_WHITEN_SEED                     (0x37)
#define WHITEN_OFF                              (0x00)

#define BLE_ADV_CHN37                           (02)
#define BLE_ADV_CHN38                           (26)
#define BLE_ADV_CHN39                           (80)


#define DEFAULT_SYNCWORD                        (0x8e89bed6)

#define PPP_PKT_FMT_1M                      (0x01)
#define PPP_PKT_FMT_2M                      (0x02)
#define PPP_PKT_FMT_500K                    (0x05)
#define PPP_PKT_FMT_100K                    (0x06)

#define PPP_HW_MAX_RX_TO                    (20000)
#define PPP_HW_MIN_SCAN_TIME_US             (2000)
#define RFPHY_TX_PENDING_RETRY_DLY              (2)  //Ms
#define RFPHY_RX_PENDING_RETRY_DLY              (2)  //Ms

extern uint8 ll_hw_get_tr_mode(void);
extern volatile uint32 llWaitingIrq;
/*********************************************************************
    TYPE Define
*/
typedef struct pktCfg_s
{
    uint8_t     pktFmt;
    uint8_t     pduLen;
    uint8_t     wtSeed;
    uint8_t     crcFmt;
    uint32_t    crcSeed;
    uint32_t    syncWord;
} pktCfg_t;

typedef struct phyCtx_s
{
    uint8_t     Status;
    uint32_t    txIntv;
    uint32_t    txDuration;
    uint32_t    rxIntv;
    uint32_t    rxDuration;
    uint8_t     rfChn;
    uint32_t    rxOnlyTO;
    uint16_t    rxAckTO;
    uint32_t    rxScanT0;
} phyCtx_t;

typedef struct phySch_s
{
    uint32_t    txMargin;
    uint32_t    rxMargin;
} phySch_t;

typedef struct phyDebug_s
{
    uint32_t   rx_data_cnt;
    uint32_t   rx_data_ign;
    uint32_t   rx_crc_err;
    uint32_t   rx_txack_cnt;
    uint32_t   tx_data_cnt;
    uint32_t   tx_ack_cnt;
    uint32_t   tx_retry_cnt;
    uint32_t   rx_txack_t0;
    uint32_t   rx_txack_t1;
} phyDeubg_t;
/*********************************************************************
    LOCAL VARIABLES
*/
uint8 PPP_TaskID; // Task ID for internal task/event processing
//volatile uint32 phyWaitingIrq = FALSE;
uint32 PHY_ISR_entry_time = 0;

__align(4) uint8_t  phyBufRx[256];
__align(4) uint8_t  phyBufTx[256];
static uint8_t s_pubAddr[6];
uint8_t adv_buffer[32];


uint16 phyFoff=0;
uint8  phyCarrSens=0;
uint8  phyRssi=0;

static pktCfg_t s_pktCfg;
static phyCtx_t s_phy;
static phyDeubg_t s_phyDbg;
static phySch_t s_phySch;
/*********************************************************************
    LOCAL FUNCTIONS
*/
extern void PPP_IRQHandler(void);
uint32 BLE_IRQHandler_Restore = NULL;
void PPP_Set_BLE_IRQHandler(void)
{
    if(BLE_IRQHandler_Restore)
        JUMP_FUNCTION(V4_IRQ_HANDLER)                   =   BLE_IRQHandler_Restore;
}

static uint32  read_ble_remainder_time(void)
{
    uint32 currentCount;
    uint32 g_tim1_pass = read_current_fine_time();
    currentCount = AP_TIM1->CurrentCount;

    if((currentCount < 6) || NVIC_GetPendingIRQ(TIM1_IRQn))
        return 0;
    else
        return (currentCount >> 2);
}

static uint8 phy_allow_tx(void)
{
    uint32 advTime, margin;
    uint32 remainTime;
    uint8 ret = FALSE;
    uint16 pktLen = phyBufTx[1]+2+3;//pdulen + header + crc

    if(s_pktCfg.pktFmt==PPP_PKT_FMT_1M)
    {
        pktLen = pktLen<<3;
    }
    else
    {
        pktLen = pktLen<<2;
    }

    // Hold off interrupts.
    HAL_ENTER_CRITICAL_SECTION( );
    // read global config to get advTime and margin
    advTime = pktLen+200; //
    margin = s_phySch.txMargin;
    // remain time before trigger LL HW
    remainTime = read_ble_remainder_time();

    if ((remainTime > advTime + margin)
            && !llWaitingIrq)
        ret = TRUE;

    HAL_EXIT_CRITICAL_SECTION();

    if(ret==FALSE)
    {
        //LOG("[DIS TX] s%d r%d a%d m%d\n",llWaitingIrq,remainTime,advTime,margin);
    }

    return ret;
}

static uint8 phy_allow_rx(uint32_t* scanTimeAllow)
{
    uint32 scanTime, margin;
    uint32 remainTime;
    uint8 ret = FALSE;
    uint32_t t0=read_current_fine_time();
    // Hold off interrupts.
    HAL_ENTER_CRITICAL_SECTION( );
    // read global config to get advTime and margin
    margin = s_phySch.rxMargin;
    // remain time before trigger LL HW
    remainTime = read_ble_remainder_time();
    remainTime = remainTime>margin ?
                 remainTime - margin : 0;
    scanTime = (TIME_DELTA(t0, s_phy.rxScanT0)<s_phy.rxOnlyTO) ?
               s_phy.rxOnlyTO - TIME_DELTA(t0, s_phy.rxScanT0) :
               0;
    scanTime = remainTime>scanTime ? scanTime : remainTime;
    scanTime = scanTime<PPP_HW_MIN_SCAN_TIME_US ? 0 : scanTime;
    scanTime  = scanTime>0xffff ? 0xffff:scanTime;// max scan time out is 16bit

    if ((scanTime) && !llWaitingIrq)
        ret = TRUE;

    *scanTimeAllow = scanTime;
    HAL_EXIT_CRITICAL_SECTION();

    if(ret==FALSE)
    {
        //LOG("[DIS RX] s%d r%d a%d m%d\n",llWaitingIrq,remainTime,scanTime,margin);
    }

    return ret;
}
static uint8_t phy_rx_data_check(void)
{
    if(s_phy.Status==PPP_RFPHY_RX_TXACK)
    {
        //process data check
        return TRUE;
    }

    osal_set_event(PPP_TaskID,PPP_RX_DATA_PROCESS_EVT);
    return 0;
}

void phy_set_channel(uint8 rfChnIdx)
{
    if(g_rfPhyFreqOffSet>=0)
        PHY_REG_WT(0x400300b4, (g_rfPhyFreqOffSet<<16)+(g_rfPhyFreqOffSet<<8)+rfChnIdx);
    else
        PHY_REG_WT(0x400300b4, ((255+g_rfPhyFreqOffSet)<<16)+((255+g_rfPhyFreqOffSet)<<8)+(rfChnIdx-1) );
}

void phy_hw_go(void)
{
    //20190115 ZQ recorded ll re-trigger
    if(llWaitingIrq==TRUE)
    {
        LOG("[PHY TRIG ERR]\n");
    }

    *(volatile uint32_t*)(LL_HW_BASE+ 0x14) = LL_HW_IRQ_MASK;   //clr  irq status
    *(volatile uint32_t*)(LL_HW_BASE+ 0x0c) = 0x0001;           //mask irq :only use mode done
    *(volatile uint32_t*)(LL_HW_BASE+ 0x00) = 0x0001;           //trig
    uint8_t rfChnIdx = PHY_REG_RD(0x400300b4)&0xff;

    if(rfChnIdx<2)
    {
        rfChnIdx=2;
    }
    else if(rfChnIdx>80)
    {
        rfChnIdx=80;
    }

    if(s_pktCfg.pktFmt==PKT_FMT_BLE2M)
        subWriteReg(0x40030094,7,0,RF_PHY_TPCAL_CALC(g_rfPhyTpCal0_2Mbps,g_rfPhyTpCal1_2Mbps,(rfChnIdx-2)>>1));
    else
        subWriteReg(0x40030094,7,0,RF_PHY_TPCAL_CALC(g_rfPhyTpCal0,g_rfPhyTpCal1,(rfChnIdx-2)>>1));
}


void phy_hw_stop(void)
{
    uint8_t cnt=0;
    ll_hw_set_rx_timeout(33);//will trigger ll_hw_irq=RTO

    while(llWaitingIrq)
    {
        WaitRTCCount(3);
        cnt++;

        if(cnt>10)
        {
            LOG("[PHY STOP ERR]\n");
            break;
        }
    };
}

void phy_hw_set_srx(uint16 rxTimeOutUs)
{
    ll_hw_set_rx_timeout(rxTimeOutUs);
    ll_hw_set_srx();
    ll_hw_set_trx_settle(   PPP_HW_BB_DELAY,         // set BB delay
                            PPP_HW_AFE_DELAY,
                            PPP_HW_PLL_DELAY);        //RxAFE,PLL
}

void phy_hw_set_stx(void)
{
    ll_hw_set_stx();
    ll_hw_set_trx_settle(   PPP_HW_BB_DELAY,         // set BB delay
                            PPP_HW_AFE_DELAY,
                            PPP_HW_PLL_DELAY);        //RxAFE,PLL
}

void phy_hw_set_trx(uint16 rxTimeOutUs)
{
    ll_hw_set_rx_timeout(rxTimeOutUs);
    ll_hw_set_trx();
    ll_hw_set_trx_settle(   PPP_HW_BB_DELAY,         // set BB delay
                            PPP_HW_AFE_DELAY,
                            PPP_HW_PLL_DELAY);        //RxAFE,PLL
}

void phy_hw_timing_setting(void)
{
    ll_hw_set_tx_rx_release (10,     1);
    ll_hw_set_rx_tx_interval(       60);        //T_IFS=150us for BLE 1M
    ll_hw_set_tx_rx_interval(       66);        //T_IFS=150us for BLE 1M
    ll_hw_set_trx_settle    (57, 8, 52);        //TxBB,RxAFE,PL
}

void phy_hw_pktFmt_Config(pktCfg_t cfg)
{
    //baseband cfg
    rf_phy_bb_cfg(cfg.pktFmt);

    //pktfmt
    if(cfg.crcFmt==LL_HW_CRC_NULL)
    {
        //fix length mode ,no hw crc gen/check
        ll_hw_set_pplus_pktfmt(cfg.pduLen);
        ll_hw_ign_rfifo(LL_HW_IGN_NONE);
    }
    else
    {
        //crc
        ll_hw_set_crc_fmt(cfg.crcFmt,cfg.crcFmt);
        PPP_SET_CRC_SEED(cfg.crcSeed);
        ll_hw_ign_rfifo(LL_HW_IGN_CRC);
    }

    //whiten
    PPP_SET_WHITEN_SEED(cfg.wtSeed);
    //syncword
    PPP_SET_SYNCWORD(cfg.syncWord);
}

uint8_t phy_rf_tx(void)
{
    if(phy_allow_tx()==FALSE)
    {
        return PPlus_ERR_BUSY;
    }
    else
    {
        JUMP_FUNCTION(V4_IRQ_HANDLER)                   =   (uint32_t)&PPP_IRQHandler;
    }

    phy_hw_stop();
    HAL_ENTER_CRITICAL_SECTION();
    phy_hw_pktFmt_Config(s_pktCfg);
    phy_hw_timing_setting();
    phy_set_channel(s_phy.rfChn);

    if(s_phy.Status==PPP_RFPHY_TRX_ONLY)
        phy_hw_set_trx(s_phy.rxAckTO);
    else
        phy_hw_set_stx();

    ll_hw_rst_tfifo();
    ll_hw_rst_rfifo();
    set_max_length(0xff);
    //need updata phyBufTx
    ll_hw_write_tfifo(phyBufTx,phyBufTx[1]+2);
    phy_hw_go();
    llWaitingIrq=TRUE;
    HAL_EXIT_CRITICAL_SECTION();
    return PPlus_SUCCESS;
}
uint8_t phy_rf_rx(void)
{
    uint32_t scanTime;

    if(phy_allow_rx(&scanTime)==FALSE)
    {
        return PPlus_ERR_BUSY;
    }
    else
    {
        JUMP_FUNCTION(V4_IRQ_HANDLER)                   =   (uint32_t)&PPP_IRQHandler;
    }

    phy_hw_stop();
    HAL_ENTER_CRITICAL_SECTION();
    phy_hw_pktFmt_Config(s_pktCfg);
    phy_hw_timing_setting();
    phy_set_channel(s_phy.rfChn);
    phy_hw_set_srx((0xffff&scanTime));
    ll_hw_rst_tfifo();
    ll_hw_rst_rfifo();
    set_max_length(0xff);
    phy_hw_go();
    llWaitingIrq=TRUE;
    HAL_EXIT_CRITICAL_SECTION();
    return PPlus_SUCCESS;
}
void phy_rx_data_process(void)
{
    uint8_t pduLen=0;

    if(s_pktCfg.crcFmt==LL_HW_CRC_NULL)
    {
        pduLen = s_pktCfg.pduLen;
    }
    else
    {
        pduLen=phyBufRx[1];
    }

    uint8_t peer_addr[6]= {0xEF,0xEE,0xEE,0xEE,0xEE,0xFE};

    if(osal_memcmp(peer_addr,phyBufRx+2,6))     //len 5->6
    {
        s_phyDbg.rx_txack_cnt++;
        LOG("-------------------------\n");
        LOG("[PHY RX] [-%03ddbm %4dKHz %02d CH] ",phyRssi,phyFoff-512,s_phy.rfChn);

        for(uint8_t i=0; i<pduLen+2; i++)
            LOG("%02x ",phyBufRx[i]);

        LOG("\n");
    }
}

void phy_tx_buf_updata(uint8_t* adva,uint8_t* txHead,uint8_t* txPayload,uint8_t dlen)
{
    if(txHead)
        osal_memcpy(&(phyBufTx[0]),&(txHead[0]),2);          //copy tx header

    if(adva)
        osal_memcpy(&(phyBufTx[2]),&(adva[0]),6);              //copy AdvA

    if(dlen)
        osal_memcpy(&(phyBufTx[8]),&(txPayload[0]),dlen);      //copy payload

    LOG("\n-----------------------------------------------\n");
    LOG("PHY BUF Tx Dump\n");

    for(uint8_t i=0; i<phyBufTx[1]+2; i++)
        LOG("%02x ",phyBufTx[i]);

    LOG("\n-----------------------------------------------\n");
}
void phy_rf_process_recv(void)
{
    if(s_phy.Status == PPP_RFPHY_IDLE)
        return;

    HAL_ENTER_CRITICAL_SECTION();
    s_phy.Status = RFPHY_STATUS_CLR_PENDING(s_phy.Status);
    uint8_t ret= phy_rf_rx();
    HAL_EXIT_CRITICAL_SECTION();

    if(ret==PPlus_ERR_BUSY)
    {
        s_phy.Status = RFPHY_STATUS_SET_PENDING(s_phy.Status);

        if(RFPHY_RX_PENDING_RETRY_DLY)
            osal_start_timerEx(PPP_TaskID,PPP_RX_PENDING_PROCESS_EVT,RFPHY_RX_PENDING_RETRY_DLY);
        else
            osal_set_event(PPP_TaskID,PPP_RX_PENDING_PROCESS_EVT);
    }
}

void phy_rf_process_tsmt(void)
{
    if(s_phy.Status == PPP_RFPHY_IDLE)
        return;

    HAL_ENTER_CRITICAL_SECTION();
    s_phy.Status = RFPHY_STATUS_CLR_PENDING(s_phy.Status);
    uint8_t ret= phy_rf_tx();
    HAL_EXIT_CRITICAL_SECTION();

    if(ret==PPlus_ERR_BUSY)
    {
        s_phy.Status = RFPHY_STATUS_SET_PENDING(s_phy.Status);

        if(RFPHY_TX_PENDING_RETRY_DLY)
            osal_start_timerEx(PPP_TaskID,PPP_TX_PENDING_PROCESS_EVT,RFPHY_TX_PENDING_RETRY_DLY);
        else
            osal_set_event(PPP_TaskID,PPP_TX_PENDING_PROCESS_EVT);
    }
}

void phy_tx_send_data(uint8_t* txPayload,uint8_t dlen, uint32 txIntv,uint32 txDura)
{
    uint8_t txHead[2]= {0x00,0x00};
    txHead[1]=6+dlen;
    phy_tx_buf_updata(0,txHead,txPayload,dlen);
    s_phy.txIntv = txIntv;
    s_phy.txDuration = txDura;
    osal_set_event(PPP_TaskID,PPP_PERIODIC_TX_EVT);
}
/*******************************************************************************
    @fn          PPP_IRQHandler

    @brief      Interrupt Request Handler for Link Layer

    input parameters

    @param       None.

    output parameters

    @param       None.

    @return      None
*/
void PPP_IRQHandler(void)
{
    uint8         mode;
    uint32_t      irq_status;
    //uint32_t      T2, delay;
    PHY_ISR_entry_time = read_current_fine_time();
    irq_status = ll_hw_get_irq_status();

    if (!(irq_status & LIRQ_MD))          // only process IRQ of MODE DONE
    {
        ll_hw_clr_irq();                  // clear irq status
        PPP_Set_BLE_IRQHandler();
        return;
    }

    llWaitingIrq = FALSE;
    HAL_ENTER_CRITICAL_SECTION();
    mode = ll_hw_get_tr_mode();

    // ===================   mode TRX process 1
    if (mode == LL_HW_MODE_STX  &&
            (s_phy.Status == PPP_RFPHY_TX_ONLY)
       )
    {
        osal_set_event(PPP_TaskID,PPP_TX_DONE_EVT);
        s_phyDbg.tx_data_cnt++;
    }
    else if(mode == LL_HW_MODE_SRX  &&
            (s_phy.Status == PPP_RFPHY_RX_ONLY)
           )
    {
        rf_phy_get_pktFoot(&phyRssi,&phyFoff,&phyCarrSens);

        if(s_pktCfg.crcFmt==LL_HW_CRC_NULL)
        {
            if(0==(irq_status & LIRQ_RTO))
            {
                uint16_t pktLen;
                uint32_t pktFoot0, pktFoot1;
                ll_hw_read_rfifo_pplus(phyBufRx, &pktLen,&pktFoot0,&pktFoot1);
                rf_phy_get_pktFoot_fromPkt(pktFoot0,pktFoot1,
                                           &phyRssi,&phyFoff,&phyCarrSens);
                phy_rx_data_check();
            }
        }
        else
        {
            if(irq_status & LIRQ_COK)
            {
                uint16_t pktLen;
                uint32_t pktFoot0, pktFoot1;
                ll_hw_read_rfifo(phyBufRx, &pktLen,&pktFoot0,&pktFoot1);
                rf_phy_get_pktFoot_fromPkt(pktFoot0,pktFoot1,
                                           &phyRssi,&phyFoff,&phyCarrSens);
                phy_rx_data_check();
                s_phyDbg.rx_data_cnt++;
            }
            else if(irq_status & LIRQ_CERR)
            {
                s_phyDbg.rx_crc_err++;
            }
        }

        osal_set_event(PPP_TaskID,PPP_RX_DONE_EVT);
    }
    else if(mode == LL_HW_MODE_TRX  &&
            (s_phy.Status == PPP_RFPHY_TRX_ONLY)
           )
    {
        rf_phy_get_pktFoot(&phyRssi,&phyFoff,&phyCarrSens);

        if(s_pktCfg.crcFmt==LL_HW_CRC_NULL)
        {
            if(0==(irq_status & LIRQ_RTO))
            {
                uint16_t pktLen;
                uint32_t pktFoot0, pktFoot1;
                ll_hw_read_rfifo_pplus(phyBufRx, &pktLen,&pktFoot0,&pktFoot1);
                rf_phy_get_pktFoot_fromPkt(pktFoot0,pktFoot1,
                                           &phyRssi,&phyFoff,&phyCarrSens);
                phy_rx_data_check();
            }
        }
        else
        {
            if(irq_status & LIRQ_COK)
            {
                uint16_t pktLen;
                uint32_t pktFoot0, pktFoot1;
                ll_hw_read_rfifo(phyBufRx, &pktLen,&pktFoot0,&pktFoot1);
                rf_phy_get_pktFoot_fromPkt(pktFoot0,pktFoot1,
                                           &phyRssi,&phyFoff,&phyCarrSens);
                phy_rx_data_check();
            }
        }

        osal_set_event(PPP_TaskID,PPP_TRX_DONE_EVT);
    }

    // post ISR process
    ll_hw_clr_irq();
    PPP_Set_BLE_IRQHandler();
    HAL_EXIT_CRITICAL_SECTION();
}

/*********************************************************************
    @fn      PPP_Init

    @brief   Initialization function for the Simple BLE Peripheral App Task.
            This is called during initialization and should contain
            any application specific initialization (ie. hardware
            initialization/setup, table initialization, power up
            notificaiton ... ).

    @param   task_id - the ID assigned by OSAL.  This ID should be
                      used to send messages and set timers.

    @return  none
*/

void PPP_Init(uint8 task_id)
{
    PPP_TaskID = task_id;
    //set phy irq handeler
    //JUMP_FUNCTION(V4_IRQ_HANDLER)                   =   (uint32_t)&PPP_IRQHandler;
    BLE_IRQHandler_Restore = JUMP_FUNCTION(V4_IRQ_HANDLER) ;
    // read flash driectly becasue HW has do the address mapping for read Flash operation
    uint8_t p[6];
    hal_flash_read(0x11004000,p,6);
    s_pubAddr[3] = p[0];
    s_pubAddr[2] = p[1];
    s_pubAddr[1] = p[2];
    s_pubAddr[0] = p[3];
    s_pubAddr[5] = p[4]+1;
    s_pubAddr[4] = p[5];

    //init tx buf
    for(uint8_t i=0; i<255; i++)
        phyBufTx[i]=0;

    // config tx buf
    //adv buffer init
    {
        adv_buffer[0] = 0x02;
        adv_buffer[1] = 0x01;
        adv_buffer[2] = 0x06;
        adv_buffer[3] = 0x1B;
        adv_buffer[4] = 0xFF;
        adv_buffer[5] = 0x04;
        adv_buffer[6] = 0x05;
        adv_buffer[7] = 0x01;
        adv_buffer[8] = 0x02;
        adv_buffer[9] = 0x03;
        adv_buffer[10] = 0xcc; //
        adv_buffer[11] = 0x00; //
        adv_buffer[12] = 0x03; //
        adv_buffer[13] = 0xaa; //
        adv_buffer[14] = 0x00; //
        adv_buffer[15] = 0x93; //
        adv_buffer[16] = 0xaa; //
        adv_buffer[17] = 0x67; //
        adv_buffer[18] = 0xF7;
        adv_buffer[19] = 0xDB;
        adv_buffer[20] = 0x34;
        adv_buffer[21] = 0xC4;
        adv_buffer[22] = 0x03;
        adv_buffer[23] = 0x8E;
        adv_buffer[24] = 0x5C;
        adv_buffer[25] = 0x0B;
        adv_buffer[26] = 0xAA;
        adv_buffer[27] = 0x97;
        adv_buffer[28] = 0x30;
        adv_buffer[29] = 0x56;
        adv_buffer[30] = 0xE6;
        uint8_t advHead[2]= {0x00,(31+6)};
        //tx buf date update
        phy_tx_buf_updata(s_pubAddr,advHead,adv_buffer,31);
    }
    //phy pktfmt config
    s_phy.Status        =   PPP_RFPHY_IDLE;
    s_phy.txIntv        =   100;//ms
    s_phy.txDuration    =   PPP_TX_DURATION_PERIODIC;// periodic adv event
    s_phy.rxIntv        =   200;//ms
    s_phy.rxDuration    =   PPP_RX_DURATION_PERIODIC;// periodic rx event
    s_phy.rxAckTO       =   500;//us
    s_phy.rxOnlyTO      =   10*1000;//us
    s_phy.rfChn         =   40;//26;//BLE_ADV_CHN37     //to test on secondary chn
    s_pktCfg.pktFmt     =   PPP_PKT_FMT_1M;
    s_pktCfg.pduLen     =   31+6;
    s_pktCfg.crcFmt     =   LL_HW_CRC_BLE_FMT;//LL_HW_CRC_BLE_FMT;LL_HW_CRC_NULL
    s_pktCfg.crcSeed    =   DEFAULT_CRC_SEED;
    s_pktCfg.wtSeed     =   WHITEN_SEED_CH37;//DEFAULT_WHITEN_SEED;
    s_pktCfg.syncWord   =   DEFAULT_SYNCWORD;
    s_phySch.txMargin   =   1500;//us
    s_phySch.rxMargin   =   2000;//us
    //VOID osal_start_timerEx(PPP_TaskID, PPP_PERIODIC_TX_EVT, 1000);
    //VOID osal_start_timerEx(PPP_TaskID, PPP_PERIODIC_RX_EVT, 2500);
    LOG("[PHY] init done %d rfchn%d SW[%8x] CRC[%d %8x] WT[%2x] BLE_IRQ[%x]\n"\
        ,s_phy.Status,s_phy.rfChn,s_pktCfg.syncWord,s_pktCfg.crcFmt, s_pktCfg.crcSeed,s_pktCfg.wtSeed,BLE_IRQHandler_Restore);
}

static void show_phy_debug_info(void)
{
    LOG("[PHY DBG]st %02x [TX]dat %d ack %d rty %d [ackT]%d %d [RX]dat %d ack%d crc %d ign %d \n"
        ,s_phy.Status,s_phyDbg.tx_data_cnt,s_phyDbg.tx_ack_cnt,s_phyDbg.tx_retry_cnt
        ,s_phyDbg.rx_txack_t0,s_phyDbg.rx_txack_t1
        ,s_phyDbg.rx_data_cnt,s_phyDbg.rx_txack_cnt,s_phyDbg.rx_crc_err,s_phyDbg.rx_data_ign);
}

static void process_rx_done_evt(void)
{
    /**
        37->38->39 scan channel
    */
    uint32_t t0=read_current_fine_time();

    if(TIME_DELTA(t0, s_phy.rxScanT0)<s_phy.rxOnlyTO)
    {
        phy_rf_process_recv();
        return;
    }
    else
    {
        //update rx scan time stamp on next chn
        s_phy.rxScanT0 = t0;
    }

    if(s_phy.rfChn==BLE_ADV_CHN37)
    {
        s_phy.rfChn = BLE_ADV_CHN38;
        s_pktCfg.wtSeed = WHITEN_SEED_CH38;
        phy_rf_process_recv();
    }
    else if(s_phy.rfChn==BLE_ADV_CHN38)
    {
        s_phy.rfChn = BLE_ADV_CHN39;
        s_pktCfg.wtSeed = WHITEN_SEED_CH39;
        phy_rf_process_recv();
    }
    else if(s_phy.rfChn==BLE_ADV_CHN39)
    {
        s_phy.rfChn = BLE_ADV_CHN37;
        s_pktCfg.wtSeed = WHITEN_SEED_CH37;
        phy_rf_process_recv();
    }

    if(PPP_RFPHY_IDLE ==s_phy.Status)
        show_phy_debug_info();
}


static void process_tx_done_evt(void)
{
    /**
        37->38->39 adv channel
    */
    if(s_phy.rfChn==BLE_ADV_CHN37)
    {
        s_phy.rfChn = BLE_ADV_CHN38;
        s_pktCfg.wtSeed = WHITEN_SEED_CH38;
        phy_rf_process_tsmt();
    }
    else if(s_phy.rfChn==BLE_ADV_CHN38)
    {
        s_phy.rfChn = BLE_ADV_CHN39;
        s_pktCfg.wtSeed = WHITEN_SEED_CH39;
        phy_rf_process_tsmt();
    }
    else if(s_phy.rfChn==BLE_ADV_CHN39)
    {
        s_phy.Status = PPP_RFPHY_IDLE;
    }

    if(PPP_RFPHY_IDLE ==s_phy.Status)
        show_phy_debug_info();
}

uint8_t phy_rf_stop_tx(void)
{
    if( PPP_RFPHY_TX_ONLY ==s_phy.Status ||
            PPP_RFPHY_TX_PENDING ==s_phy.Status ||
            PPP_RFPHY_IDLE ==s_phy.Status)
    {
        if(PPP_RFPHY_TX_ONLY ==s_phy.Status)
            phy_hw_stop();
        else
        {
            osal_set_event(PPP_TaskID,PPP_TX_DONE_EVT);
        }

        s_phy.Status = PPP_RFPHY_IDLE;
        s_phy.txIntv = 0;
        s_phy.txDuration = 0;
        return PPlus_SUCCESS;
    }
    else if(s_phy.Status ==PPP_RFPHY_IDLE )
    {
        return PPlus_SUCCESS;
    }
    else
        return PPlus_ERR_INVALID_STATE;
}
uint8_t phy_rf_stop_rx(void)
{
    if( PPP_RFPHY_RX_ONLY ==s_phy.Status ||
            PPP_RFPHY_RX_PENDING ==s_phy.Status ||
            PPP_RFPHY_IDLE ==s_phy.Status)
    {
        s_phy.rxOnlyTO=0;
        s_phy.rxIntv = 0;
        s_phy.rxDuration = 0;

        if(PPP_RFPHY_RX_ONLY ==s_phy.Status)
            phy_hw_stop();
        else
        {
            osal_set_event(PPP_TaskID,PPP_RX_DONE_EVT);
        }

        s_phy.Status = PPP_RFPHY_IDLE;
        return PPlus_SUCCESS;
    }
    else
        return PPlus_ERR_INVALID_STATE;
}

uint8_t phy_rf_start_rx(uint32 rxTimeOut)
{
    if(PPP_RFPHY_IDLE !=s_phy.Status)
        return PPlus_ERR_BUSY;

    s_phy.rxOnlyTO = rxTimeOut;
    s_phy.Status = PPP_RFPHY_RX_ONLY;
    s_phy.rfChn = BLE_ADV_CHN37;
    s_phy.rxScanT0 = read_current_fine_time();
    s_pktCfg.wtSeed = WHITEN_SEED_CH37;
    phy_rf_process_recv();
    return PPlus_SUCCESS;
}

uint8_t phy_rf_get_current_status(void)
{
    return s_phy.Status;
}

/*********************************************************************
    @fn      PropProtocol_ProcessEvent

    @brief   Application Task event processor.  This function
            is called to process all events for the task.  Events
            include timers, messages and any other user defined events.

    @param   task_id  - The OSAL assigned task ID.
    @param   events - events to process.  This is a bit map and can
                     contain more than one event.

    @return  events not processed
*/
uint16 PropProtocol_ProcessEvent(uint8 task_id, uint16 events)
{
    VOID task_id;

    if (events & PPP_PERIODIC_TX_EVT)
    {
        if(s_phy.txDuration)
        {
            if(s_phy.Status==PPP_RFPHY_IDLE)
            {
                s_phy.Status = PPP_RFPHY_TX_ONLY;
                s_phy.rfChn = BLE_ADV_CHN37;
                s_pktCfg.wtSeed = WHITEN_SEED_CH37;
                phy_rf_process_tsmt();
                osal_start_timerEx(PPP_TaskID,PPP_PERIODIC_TX_EVT,s_phy.txIntv);
            }
            else
            {
                LOG("SKIP TX_EVT Current Stats %d\n",s_phy.Status);
                osal_start_timerEx(PPP_TaskID,PPP_PERIODIC_TX_EVT,s_phy.txIntv);
            }

            if(s_phy.txDuration!=PPP_TX_DURATION_PERIODIC)
            {
                s_phy.txDuration = (s_phy.txDuration>s_phy.txIntv) ? s_phy.txDuration-s_phy.txIntv: 0;
            }
        }

        return(events ^ PPP_PERIODIC_TX_EVT);
    }

    if (events & PPP_PERIODIC_RX_EVT)
    {
        if(s_phy.rxDuration)
        {
            if(s_phy.Status==PPP_RFPHY_IDLE)
            {
                s_phy.Status = PPP_RFPHY_RX_ONLY;
                s_phy.rfChn = BLE_ADV_CHN37;
                s_phy.rxScanT0 = read_current_fine_time();
                s_pktCfg.wtSeed = WHITEN_SEED_CH37;
                phy_rf_process_recv();
                osal_start_timerEx(PPP_TaskID,PPP_PERIODIC_RX_EVT,s_phy.rxIntv);
            }
            else
            {
                LOG("SKIP RX_EVT Current Stats %d\n",s_phy.Status);
                osal_start_timerEx(PPP_TaskID,PPP_PERIODIC_RX_EVT,20);
            }

            if(s_phy.rxDuration!=PPP_RX_DURATION_PERIODIC)
            {
                s_phy.rxDuration = (s_phy.rxDuration>s_phy.rxIntv) ? s_phy.rxDuration-s_phy.rxIntv: 0;
            }
        }

        return(events ^ PPP_PERIODIC_RX_EVT);
    }

    if(events & PPP_TX_PENDING_PROCESS_EVT)
    {
        phy_rf_process_tsmt();
        return(events ^ PPP_TX_PENDING_PROCESS_EVT);
    }

    if(events & PPP_RX_PENDING_PROCESS_EVT)
    {
        phy_rf_process_recv();
        return(events ^ PPP_RX_PENDING_PROCESS_EVT);
    }

    if(events & PPP_RX_DATA_PROCESS_EVT)
    {
        phy_rx_data_process();
        return(events ^ PPP_RX_DATA_PROCESS_EVT);
    }

    if(events & PPP_TX_DONE_EVT)
    {
        process_tx_done_evt();
        return(events ^ PPP_TX_DONE_EVT);
    }

    if(events & PPP_RX_DONE_EVT)
    {
        process_rx_done_evt();
        return(events ^ PPP_RX_DONE_EVT);
    }

    if(events & PPP_TRX_DONE_EVT)
    {
        //TODO
        return(events ^ PPP_TRX_DONE_EVT);
    }

    return 0;
}

/*********************************************************************
*********************************************************************/
