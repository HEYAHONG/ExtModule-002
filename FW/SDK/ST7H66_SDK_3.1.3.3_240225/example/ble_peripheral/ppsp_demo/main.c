/**************************************************************************************************
*******
**************************************************************************************************/

#include "bus_dev.h"
#include "gpio.h"
#include "clock.h"
#include "timer.h"
#include "jump_function.h"
#include "pwrmgr.h"
#include "mcu.h"
#include "gpio.h"
#include "log.h"
#include "rf_phy_driver.h"
#include "flash.h"
#include "version.h"
#include "watchdog.h"
// patch max gatt num conn
#include "host_cfg.h"

#define DEFAULT_UART_BAUD   115200
#define DEF_DTM_EXT_API_TEST_MODE   (0)

/*********************************************************************
    LOCAL FUNCTION PROTOTYPES
*/

/*********************************************************************
    EXTERNAL FUNCTIONS
*/

extern void init_config(void);
extern int app_main(void);
extern void hal_rom_boot_init(void);

/*********************************************************************
    CONNECTION CONTEXT RELATE DEFINITION
*/

#define   BLE_MAX_ALLOW_CONNECTION              1
#define   BLE_MAX_ALLOW_PKT_PER_EVENT_TX        3
#define   BLE_MAX_ALLOW_PKT_PER_EVENT_RX        3
#define   BLE_PKT_VERSION                       BLE_PKT_VERSION_5_1 //BLE_PKT_VERSION_4_0 //BLE_PKT_VERSION_5_1     


/*  BLE_MAX_ALLOW_PER_CONNECTION
    {
    ...
    struct ll_pkt_desc *tx_conn_desc[MAX_LL_BUF_LEN];     // new Tx data buffer
    struct ll_pkt_desc *rx_conn_desc[MAX_LL_BUF_LEN];

    struct ll_pkt_desc *tx_not_ack_pkt;
    struct ll_pkt_desc *tx_ntrm_pkts[MAX_LL_BUF_LEN];
    ...
    }
    tx_conn_desc[] + tx_ntrm_pkts[]    --> BLE_MAX_ALLOW_PKT_PER_EVENT_TX * BLE_PKT_BUF_SIZE*2
    rx_conn_desc[]             --> BLE_MAX_ALLOW_PKT_PER_EVENT_RX * BLE_PKT_BUF_SIZE
    tx_not_ack_pkt             --> 1*BLE_PKT_BUF_SIZE

*/

#define   BLE_PKT_BUF_SIZE                  (((BLE_PKT_VERSION == BLE_PKT_VERSION_5_1) ? 1 : 0) *  BLE_PKT51_LEN \
                                             + ((BLE_PKT_VERSION == BLE_PKT_VERSION_4_0) ? 1 : 0) * BLE_PKT40_LEN \
                                             + (sizeof(struct ll_pkt_desc) - 2))

//#define   BLE_MAX_ALLOW_PER_CONNECTION          ( (BLE_MAX_ALLOW_PKT_PER_EVENT_TX * BLE_PKT_BUF_SIZE*2) \
//                                                  +(BLE_MAX_ALLOW_PKT_PER_EVENT_RX * BLE_PKT_BUF_SIZE)   \
//                                                  + BLE_PKT_BUF_SIZE )
#define   BLE_MAX_ALLOW_PER_CONNECTION          ( BLE_PKT_BUF_SIZE )


#define   BLE_CONN_BUF_SIZE                 (BLE_MAX_ALLOW_CONNECTION * BLE_MAX_ALLOW_PER_CONNECTION)


ALIGN4_U8            g_pConnectionBuffer[BLE_CONN_BUF_SIZE];
llConnState_t               pConnContext[BLE_MAX_ALLOW_CONNECTION];

/*********************************************************************
    CTE IQ SAMPLE BUF config
*/
//#define BLE_SUPPORT_CTE_IQ_SAMPLE TRUE
#ifdef BLE_SUPPORT_CTE_IQ_SAMPLE
    uint16 g_llCteSampleI[LL_CTE_MAX_SUPP_LEN * LL_CTE_SUPP_LEN_UNIT];
    uint16 g_llCteSampleQ[LL_CTE_MAX_SUPP_LEN * LL_CTE_SUPP_LEN_UNIT];
#endif


/*********************************************************************
    OSAL LARGE HEAP CONFIG
*/
#if ( HOST_CONFIG & OBSERVER_CFG )
    #define     LARGE_HEAP_SIZE  (4*1024)
#else
    #define     LARGE_HEAP_SIZE  (6*1024)
#endif
ALIGN4_U8   g_largeHeap[LARGE_HEAP_SIZE];

#define     LL_LINKBUF_CFG_NUM                0

#define     LL_PKT_BUFSIZE                    280
#define     LL_LINK_HEAP_SIZE    ( ( BLE_MAX_ALLOW_CONNECTION * 3 + LL_LINKBUF_CFG_NUM ) * LL_PKT_BUFSIZE )//basic Space + configurable Space
ALIGN4_U8   g_llLinkHeap[LL_LINK_HEAP_SIZE];
/*********************************************************************
    GLOBAL VARIABLES
*/
volatile uint8 g_clk32K_config;
volatile sysclk_t g_spif_clk_config;


/*********************************************************************
    EXTERNAL VARIABLES
*/
extern uint32_t  __initial_sp;


static void hal_low_power_io_init(void)
{
    //========= pull all io to gnd by default
    ioinit_cfg_t ioInit[]=
    {
        
        {GPIO_P02,   GPIO_FLOATING   },/*SWD*/
        {GPIO_P03,   GPIO_FLOATING   },/*SWD*/
        {GPIO_P09,   GPIO_PULL_UP    },/*UART TX*/
        {GPIO_P10,   GPIO_PULL_UP    },/*UART RX*/
        {GPIO_P11,   GPIO_PULL_DOWN  },
        {GPIO_P14,   GPIO_PULL_DOWN  },
        {GPIO_P15,   GPIO_PULL_DOWN  },
        {GPIO_P16,   GPIO_FLOATING   },
        {GPIO_P18,   GPIO_PULL_DOWN  },
        {GPIO_P20,   GPIO_PULL_DOWN  },
        #if(SDK_VER_CHIP==__DEF_CHIP_QFN32__)
        
        {GPIO_P00,   GPIO_PULL_DOWN  },
        {GPIO_P01,   GPIO_PULL_DOWN  },
        {GPIO_P07,   GPIO_PULL_DOWN  },
        {GPIO_P17,   GPIO_FLOATING   },/*32k xtal*/
        {GPIO_P23,   GPIO_PULL_DOWN  },
        {GPIO_P24,   GPIO_PULL_DOWN  },
        {GPIO_P25,   GPIO_PULL_DOWN  },
        {GPIO_P26,   GPIO_PULL_DOWN  },
        {GPIO_P27,   GPIO_PULL_DOWN  },
        {GPIO_P31,   GPIO_PULL_DOWN  },
        {GPIO_P32,   GPIO_PULL_DOWN  },
        {GPIO_P33,   GPIO_PULL_DOWN  },
        {GPIO_P34,   GPIO_PULL_DOWN  },
        #endif
    };

    for(uint8_t i=0; i<sizeof(ioInit)/sizeof(ioinit_cfg_t); i++)
        hal_gpio_pull_set(ioInit[i].pin,ioInit[i].type);

    DCDC_CONFIG_SETTING(0x0a);
    DCDC_REF_CLK_SETTING(1);
    DIG_LDO_CURRENT_SETTING(0x01);
    //hal_pwrmgr_RAM_retention(RET_SRAM0|RET_SRAM2);
    #if ( HOST_CONFIG & OBSERVER_CFG )
    hal_pwrmgr_RAM_retention(RET_SRAM0|RET_SRAM1);
    #else
    hal_pwrmgr_RAM_retention(RET_SRAM0|RET_SRAM1|RET_SRAM2);
    #endif
    hal_pwrmgr_RAM_retention_set();
    hal_pwrmgr_LowCurrentLdo_enable();
}

static void ble_mem_init_config(void)
{
    //ll linkmem setup
    extern void ll_osalmem_init(osalMemHdr_t* hdr, uint32 size);
    ll_osalmem_init((osalMemHdr_t*)g_llLinkHeap, LL_LINK_HEAP_SIZE);
    osal_mem_set_heap((osalMemHdr_t*)g_largeHeap, LARGE_HEAP_SIZE);
    LL_InitConnectContext(pConnContext,
                          g_pConnectionBuffer,
                          BLE_MAX_ALLOW_CONNECTION,
                          BLE_MAX_ALLOW_PKT_PER_EVENT_TX,
                          BLE_MAX_ALLOW_PKT_PER_EVENT_RX,
                          BLE_PKT_VERSION);
    Host_InitContext(   MAX_NUM_LL_CONN,
                        glinkDB,glinkCBs,
                        smPairingParam,
                        gMTU_Size,
                        gAuthenLink,
                        l2capReassembleBuf,l2capSegmentBuf,
                        gattClientInfo,
                        gattServerInfo);
    #ifdef  BLE_SUPPORT_CTE_IQ_SAMPLE
    LL_EXT_Init_IQ_pBuff(g_llCteSampleI,g_llCteSampleQ);
    #endif
}

static void hal_rfphy_init(void)
{
    //Watchdog_Init(NULL);
    //============config the txPower
    g_rfPhyTxPower  = RF_PHY_TX_POWER_0DBM; //RF_PHY_TX_POWER_EXTRA_MAX;//;
    //============config BLE_PHY TYPE
    g_rfPhyPktFmt   = PKT_FMT_BLE1M;
    //============config RF Frequency Offset
    g_rfPhyFreqOffSet   =RF_PHY_FREQ_FOFF_00KHZ;
    //============config xtal 16M cap
    XTAL16M_CAP_SETTING(0x09);
    XTAL16M_CURRENT_SETTING(0x03);
    hal_rc32k_clk_tracking_init();
    hal_rom_boot_init();
    NVIC_SetPriority((IRQn_Type)BB_IRQn,    IRQ_PRIO_REALTIME);
    NVIC_SetPriority((IRQn_Type)TIM1_IRQn,  IRQ_PRIO_HIGH);     //ll_EVT
    NVIC_SetPriority((IRQn_Type)TIM2_IRQn,  IRQ_PRIO_HIGH);     //OSAL_TICK
    NVIC_SetPriority((IRQn_Type)TIM4_IRQn,  IRQ_PRIO_HIGH);     //LL_EXA_ADV
    //ble memory init and config
    ble_mem_init_config();
    hal_rfPhyFreqOff_Set();
}


static void hal_init(void)
{
    hal_low_power_io_init();
    clk_init(g_system_clk); //system init
    hal_rtc_clock_config((CLK32K_e)g_clk32K_config);
    hal_pwrmgr_init();
    xflash_Ctx_t cfg =
    {
        .rd_instr       =   XFRD_FCMD_READ_DUAL
    };
    hal_spif_cache_init(cfg);
    LOG_INIT();
    hal_gpio_init();
}

#if(DEF_DTM_EXT_API_TEST_MODE==1)
static void simple_rfphy_dtm_ext_demo(void)
{
    uint8_t txPower = RF_PHY_TX_POWER_0DBM;
    uint8_t rfChnIdx = 10;
    int8_t  rfFoff = RF_PHY_FREQ_FOFF_00KHZ;
    uint32_t testTimeUs = 100000;
    uint8_t pktType = 0;//0 :prbs9, 1:11110000, 2:10101010
    uint8_t pktLength =31;
    uint32_t numTxPkt = 100;
    uint8_t testMod=0;
    uint32_t accCode = RF_PHY_DTM_SYNC_WORD;//
    uint8_t rxEstRssi;
    uint8_t rxEstCarrSens;
    uint16_t rxPktNum;
    uint16_t rxEstFoff;
    uint8_t xtal_cap = 0x09;
    rf_phy_dtm_ext_acc_code_set(accCode);

    while(1)
    {
        hal_watchdog_feed();
        testMod = (hal_gpio_read(P11)<<1)|(hal_gpio_read(P7));

        if(testMod==0)
        {
            LOG("single tone\n") ;
            rf_phy_dtm_ext_tx_singleTone(txPower,rfChnIdx,xtal_cap,rfFoff,testTimeUs);
            WaitMs(3*1000);
        }
        else if(testMod==1)
        {
            LOG("modulation\n") ;
            rf_phy_dtm_ext_tx_modulation(txPower,rfChnIdx,xtal_cap,rfFoff,pktType,testTimeUs);
            WaitMs(3*1000);
        }
        else if(testMod==2)
        {
            LOG("tx burst\n") ;
            rf_phy_dtm_ext_tx_mod_burst(txPower,rfChnIdx,xtal_cap,rfFoff,pktType,pktLength,numTxPkt,20*1000/*pktIntv*/);
        }
        else if(testMod == 3)
        {
            LOG("rx burst\n");
            uint16_t rxTimeOut = 2000;//ms
            rf_phy_dtm_ext_rx_demod_burst(rfChnIdx,rfFoff,xtal_cap,pktLength,rxTimeOut,5000/*rxWindow*/,
                                          &rxEstFoff,&rxEstRssi,&rxEstCarrSens,&rxPktNum);
            LOG("%x %x %x [%d]",rxEstFoff,rxEstRssi,rxEstCarrSens,rxPktNum);
        }
    }
}
#endif



/////////////////////////////////////////////////////////////////////////////////////////////////////////
int  main(void)
{
    watchdog_config(WDG_2S);
    g_system_clk = SYS_CLK_XTAL_16M;//SYS_CLK_DBL_32M;//SYS_CLK_XTAL_16M;//SYS_CLK_DLL_64M;//SYS_CLK_DLL_48M;
    g_clk32K_config = CLK_32K_RCOSC;//CLK_32K_XTAL,CLK_32K_RCOSC
    #if(FLASH_PROTECT_FEATURE == 1)
    hal_flash_enable_lock(MAIN_INIT);
    #endif
    #if defined ( __GNUC__ )
    extern const uint32_t* const jump_table_base[];
    osal_memcpy((void*)0x1fff0000, (void*)jump_table_base, 1024);
    #endif
    drv_irq_init();
    drv_irq_init();
    init_config();
    #if ( HOST_CONFIG & OBSERVER_CFG )
    extern void ll_patch_advscan(void);
    ll_patch_advscan();
    #else
    extern void ll_patch_slave(void);
    ll_patch_slave();
    #endif
    #if(CFG_HCLK_DYNAMIC_CHANGE)
    extern void ll_patch_hclk_dynamic_chg(void);
    ll_patch_hclk_dynamic_chg();
    #endif

		extern void ll_patch_adv(void);
    ll_patch_adv();	
		extern void ll_patch_sleep(void);
		ll_patch_sleep();
		
    hal_rfphy_init();
    hal_init();

    if(hal_gpio_read(P20)==1)
    {
        extern  uint8_t        g_dtmManualConfig;
        g_dtmManualConfig = RF_PHY_DTM_MANUL_ALL;
        rf_phy_direct_test();
    }

    #if(DEF_DTM_EXT_API_TEST_MODE)
    simple_rfphy_dtm_ext_demo();
    #endif
    LOG("SDK Version ID %08x \n",SDK_VER_RELEASE_ID);
    LOG("MAX_NUM_LL_CONN %d , GATT_MAX_NUM_CONN %d\n",MAX_NUM_LL_CONN,GATT_MAX_NUM_CONN);
    LOG("rfClk %d rcClk %d sysClk %d tpCap[%02x %02x]\n",g_rfPhyClkSel,g_clk32K_config,g_system_clk,g_rfPhyTpCal0,g_rfPhyTpCal1);
    LOG("sizeof(struct ll_pkt_desc) = %d, buf size = %d\n", sizeof(struct ll_pkt_desc), BLE_CONN_BUF_SIZE);
    LOG("sizeof(g_pConnectionBuffer) = %d, sizeof(pConnContext) = %d, sizeof(largeHeap)=%d \n",\
        sizeof(g_pConnectionBuffer), sizeof(pConnContext),sizeof(g_largeHeap));
    LOG("[REST CAUSE] %d\n ",g_system_reset_cause);
    app_main();
}


/////////////////////////////////////  end  ///////////////////////////////////////



















