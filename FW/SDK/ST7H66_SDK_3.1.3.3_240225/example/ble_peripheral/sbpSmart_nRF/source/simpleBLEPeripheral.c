/**************************************************************************************************
*******
**************************************************************************************************/

/**************************************************************************************************
    Filename:       simpleBLEPeripheral.c
    Revised:
    Revision:

    Description:    This file contains the Simple BLE Peripheral sample application


**************************************************************************************************/
/*********************************************************************
    INCLUDES
*/
#include "bcomdef.h"
#include "rf_phy_driver.h"
#include "global_config.h"
#include "OSAL.h"
#include "OSAL_PwrMgr.h"
#include "gatt.h"
#include "hci.h"
#include "gapgattserver.h"
#include "gattservapp.h"
//#include "devinfoservice.h"
#include "sbpProfile_ota.h"
#include "ota_app_service.h"
#include "peripheral.h"
#include "gapbondmgr.h"
#include "pwrmgr.h"
#include "gpio.h"
#include "simpleBLEPeripheral.h"
#include "ll.h"
#include "ll_hw_drv.h"
#include "ll_def.h"
#include "hci_tl.h"
#include "prop_protocol.h"
#include "rf_phy_nrf.h"
//#include "led_light.h"
/*********************************************************************
    MACROS
*/
//#define LOG(...)
/*********************************************************************
    CONSTANTS
*/

// How often to perform periodic event
#define SBP_PERIODIC_EVT_PERIOD                   5000

#define DEVINFO_SYSTEM_ID_LEN             8
#define DEVINFO_SYSTEM_ID                 0


#define DEFAULT_DISCOVERABLE_MODE             GAP_ADTYPE_FLAGS_GENERAL

// Minimum connection interval (units of 1.25ms, 80=100ms) if automatic parameter update request is enabled
#define DEFAULT_DESIRED_MIN_CONN_INTERVAL     24//32//80

// Maximum connection interval (units of 1.25ms, 800=1000ms) if automatic parameter update request is enabled
#define DEFAULT_DESIRED_MAX_CONN_INTERVAL     800//48//800

// Slave latency to use if automatic parameter update request is enabled
#define DEFAULT_DESIRED_SLAVE_LATENCY         0

// Supervision timeout value (units of 10ms, 1000=10s) if automatic parameter update request is enabled
#define DEFAULT_DESIRED_CONN_TIMEOUT          500//1000

// Whether to enable automatic parameter update request when a connection is formed
#define DEFAULT_ENABLE_UPDATE_REQUEST         TRUE

// Connection Pause Peripheral time value (in seconds)
#define DEFAULT_CONN_PAUSE_PERIPHERAL         6

#define INVALID_CONNHANDLE                    0xFFFF

// Default passcode
#define DEFAULT_PASSCODE                      0//19655

// Length of bd addr as a string
#define B_ADDR_STR_LEN                        15

#define RESOLVING_LIST_ENTRY_NUM              10


/*********************************************************************
    build define
*/

#define APP_CFG_RPA_TEST                       0

#define DBG_RTC_TEST                           1

#define LATENCY_TEST                           0

/*********************************************************************
    TYPEDEFS
*/

/*********************************************************************
    GLOBAL VARIABLES
*/
perStatsByChan_t g_perStatsByChanTest;

/*********************************************************************
    EXTERNAL VARIABLES
*/
volatile uint8_t g_current_advType = LL_ADV_CONNECTABLE_UNDIRECTED_EVT;

//extern wtnrTest_t wtnrTest;
extern l2capSARDbugCnt_t g_sarDbgCnt;
extern uint32 g_osal_mem_allo_cnt;
extern uint32 g_osal_mem_free_cnt;

extern uint32 counter_tracking;

extern uint32 g_counter_traking_avg;
extern uint32 g_counter_traking_cnt;
extern uint32_t  g_TIM2_IRQ_TIM3_CurrCount;
extern uint32_t  g_TIM2_IRQ_to_Sleep_DeltTick;
extern uint32_t  g_osal_tick_trim;
extern uint32_t  g_TIM2_IRQ_PendingTick;
extern uint32_t  g_TIM2_wakeup_delay;

/*********************************************************************
    EXTERNAL FUNCTIONS
*/


/*********************************************************************
    LOCAL VARIABLES
*/
static uint8 simpleBLEPeripheral_TaskID;   // Task ID for internal task/event processing

static gaprole_States_t gapProfileState = GAPROLE_INIT;
static  uint8_t notifyBuf[256];
static uint16 notifyInterval = 0;
static uint8 notifyPktNum = 0;
static uint8 connEvtEndNotify =0;
static uint16 notifyCnt = 0;
static uint8 nrf_tx_intv=0;
static uint8 nrf_rx_intv=0;
static uint8 nrf_rx_cnt=0;
static uint8 s_rf_dlen = 0;

#if(LATENCY_TEST==1)
    static uint16 disLatInterval = 0;
    static uint8 disLatTxNum = 0;
    static uint16 disLatCnt = 0;
#endif

#if(APP_CFG_RPA_TEST==1)
    static uint8  peerIrkList[RESOLVING_LIST_ENTRY_NUM][LL_ENC_IRK_LEN];
    static uint8  localIrkList[RESOLVING_LIST_ENTRY_NUM][LL_ENC_IRK_LEN];
    static uint8  peerAddrList[RESOLVING_LIST_ENTRY_NUM][LL_DEVICE_ADDR_LEN];
    static uint8  peerAddrType[RESOLVING_LIST_ENTRY_NUM];
#endif


// GAP - SCAN RSP data (max size = 31 bytes)
static uint8 scanRspData[] =
{
    // complete name
    0x12,   // length of this data
    GAP_ADTYPE_LOCAL_NAME_COMPLETE,
    0x46,   // 'F'
    0x46,   // 'F'
    0x46,   // 'F'
    0x46,   // 'F'
    0x46,   // 'F'
    0x46,   // 'F'
    0x46,   // 'F'
    0x46,   // 'F'
    0x46,   // 'F'
    0x46,   // 'F'
    0x46,   // 'F'
    0x46,   // 'F'
    0x46,   // 'F'
    0x46,   // 'F'
    0x46,   // 'F'
    0x46,   // 'F'
    0x46,   // 'F'


    // connection interval range
    0x05,   // length of this data
    GAP_ADTYPE_SLAVE_CONN_INTERVAL_RANGE,
    LO_UINT16( DEFAULT_DESIRED_MIN_CONN_INTERVAL ),   // 100ms
    HI_UINT16( DEFAULT_DESIRED_MIN_CONN_INTERVAL ),
    LO_UINT16( DEFAULT_DESIRED_MAX_CONN_INTERVAL ),   // 1s
    HI_UINT16( DEFAULT_DESIRED_MAX_CONN_INTERVAL ),

    // Tx power level
    0x02,   // length of this data
    GAP_ADTYPE_POWER_LEVEL,
    0       // 0dBm
};


// advert data for iBeacon
static uint8 advertData[] =
{
    0x02,   // length of this data
    GAP_ADTYPE_FLAGS,
    DEFAULT_DISCOVERABLE_MODE | GAP_ADTYPE_FLAGS_BREDR_NOT_SUPPORTED,
    0x1A, // length of this data including the data type byte
    GAP_ADTYPE_MANUFACTURER_SPECIFIC, // manufacturer specific adv data type
    0x4c, // Company ID - Fixed
    0x00, // Company ID - Fixed
    0x02, // Data Type - Fixed
    0x15, // Data Length - Fixed
    0xFD, // UUID
    0xA5, // UUID
    0x06, // UUID
    0x93, // UUID
    0xA4, // UUID
    0xE2, // UUID
    0x4F, // UUID
    0xB1, // UUID
    0xAF, // UUID
    0xCF, // UUID
    0xC6, // UUID
    0xEB, // UUID
    0x07, // UUID
    0x64, // UUID
    0x78, // UUID
    0x25, // UUID
    0x27, // Major
    0x74, // Major
    0x6b,//0x04, // Minor
    0xed,//0xb0, // Minor
    0xc5 // Power - The 2's complement of the calibrated Tx Power
};


static uint8 otaAdvIntv         = 100;      //unit is 10ms
static uint8 otaConnIntvMax     = DEFAULT_DESIRED_MIN_CONN_INTERVAL>>2;        //unit is 5ms
static uint8 otaConnIntvMin     = DEFAULT_DESIRED_MAX_CONN_INTERVAL>>2;        //uiit is 5ms
static uint8 otaConnIntvLatency = DEFAULT_DESIRED_SLAVE_LATENCY;        //
static uint8 otaConnTimeOut     = DEFAULT_DESIRED_CONN_TIMEOUT/100;        //unit is second


// GAP GATT Attributes
static uint8 attDeviceName[GAP_DEVICE_NAME_LEN] = "BUMBLE- -FFFFFF ";
/*********************************************************************
    LOCAL FUNCTIONS
*/
static void simpleBLEPeripheral_ProcessOSALMsg( osal_event_hdr_t* pMsg );
static void peripheralStateNotificationCB( gaprole_States_t newState );
static void simpleProfileChangeCB( uint8 paramID );
static void updateAdvData(void);
static void peripheralStateReadRssiCB( int8 rssi  );
static uint8_t Smart_nRF_data_process(phy_comm_evt_t* pdata);
uint8_t Smart_nRF_generate_ackpdu(phy_comm_evt_t* packbuf);

#if(APP_CFG_RPA_TEST==1)
    static void initResolvingList(void);
#endif

void check_PerStatsProcess(void);

char* bdAddr2Str( uint8* pAddr );
//static uint8_t simpleBLEPeripheral_ScanRequestFilterCBack(void);
/*********************************************************************
    PROFILE CALLBACKS
*/

// GAP Role Callbacks
static gapRolesCBs_t simpleBLEPeripheral_PeripheralCBs =
{
    peripheralStateNotificationCB,  // Profile State Change Callbacks
    peripheralStateReadRssiCB       // When a valid RSSI is read from controller (not used by application)
};
#if (DEF_GAPBOND_MGR_ENABLE==1)
//GAP Bond Manager Callbacks, add 2017-11-15
static gapBondCBs_t simpleBLEPeripheral_BondMgrCBs =
{
    NULL,                     // Passcode callback (not used by application)
    NULL                      // Pairing / Bonding state Callback (not used by application)
};
#endif
// Simple GATT Profile Callbacks
static simpleProfileCBs_t simpleBLEPeripheral_SimpleProfileCBs =
{
    simpleProfileChangeCB    // Charactersitic value change callback
};

/*********************************************************************
    PUBLIC FUNCTIONS
*/

/*********************************************************************
    @fn      SimpleBLEPeripheral_Init

    @brief   Initialization function for the Simple BLE Peripheral App Task.
            This is called during initialization and should contain
            any application specific initialization (ie. hardware
            initialization/setup, table initialization, power up
            notificaiton ... ).

    @param   task_id - the ID assigned by OSAL.  This ID should be
                      used to send messages and set timers.

    @return  none
*/
void SimpleBLEPeripheral_Init( uint8 task_id )
{
    simpleBLEPeripheral_TaskID = task_id;
    // Setup the GAP
    phy_cbfunc_regist(PHY_DATA_CB,Smart_nRF_data_process);
    #if(DEF_PPP_TRX_SUPPORT & PPP_CONFIG_RX)
    // phy_cbfunc_regist(PHY_OPCODE_CB,Smart_nRF_generate_ackpdu);
    #endif
    VOID GAP_SetParamValue( TGAP_CONN_PAUSE_PERIPHERAL, DEFAULT_CONN_PAUSE_PERIPHERAL );
    // Setup the GAP Peripheral Role Profile
    {
        // device starts advertising upon initialization
        uint8 initial_advertising_enable = FALSE;
        uint8 enable_update_request = DEFAULT_ENABLE_UPDATE_REQUEST;
        uint8 advChnMap = GAP_ADVCHAN_37 | GAP_ADVCHAN_38 | GAP_ADVCHAN_39;
        // By setting this to zero, the device will go into the waiting state after
        // being discoverable for 30.72 second, and will not being advertising again
        // until the enabler is set back to TRUE
        uint16 gapRole_AdvertOffTime = 0;
        uint16 desired_min_interval = DEFAULT_DESIRED_MIN_CONN_INTERVAL;
        uint16 desired_max_interval = DEFAULT_DESIRED_MAX_CONN_INTERVAL;
        uint16 desired_slave_latency = DEFAULT_DESIRED_SLAVE_LATENCY;
        uint16 desired_conn_timeout = DEFAULT_DESIRED_CONN_TIMEOUT;
        uint8 peerPublicAddr[] =
        {
            0x01,
            0x02,
            0x03,
            0x04,
            0x05,
            0x06
        };
        uint8 advType =g_current_advType;// LL_ADV_NONCONNECTABLE_UNDIRECTED_EVT;//LL_ADV_SCANNABLE_UNDIRECTED_EVT;//LL_ADV_CONNECTABLE_LDC_DIRECTED_EVT;//;    // it seems a  bug to set GAP_ADTYPE_ADV_NONCONN_IND = 0x03
        GAPRole_SetParameter( GAPROLE_ADV_EVENT_TYPE, sizeof( uint8 ), &advType );
        GAPRole_SetParameter(GAPROLE_ADV_DIRECT_ADDR, sizeof(peerPublicAddr), peerPublicAddr);
        // set adv channel map
        GAPRole_SetParameter(GAPROLE_ADV_CHANNEL_MAP, sizeof(uint8), &advChnMap);
        // Set the GAP Role Parameters
        GAPRole_SetParameter( GAPROLE_ADVERT_ENABLED, sizeof( uint8 ), &initial_advertising_enable );
        GAPRole_SetParameter( GAPROLE_ADVERT_OFF_TIME, sizeof( uint16 ), &gapRole_AdvertOffTime );
        osal_memcpy(&scanRspData[2],attDeviceName,0x11);
        GAPRole_SetParameter( GAPROLE_SCAN_RSP_DATA, sizeof ( scanRspData ), scanRspData );
        GAPRole_SetParameter( GAPROLE_ADVERT_DATA, sizeof( advertData ), advertData );
        GAPRole_SetParameter( GAPROLE_PARAM_UPDATE_ENABLE, sizeof( uint8 ), &enable_update_request );
        GAPRole_SetParameter( GAPROLE_MIN_CONN_INTERVAL, sizeof( uint16 ), &desired_min_interval );
        GAPRole_SetParameter( GAPROLE_MAX_CONN_INTERVAL, sizeof( uint16 ), &desired_max_interval );
        GAPRole_SetParameter( GAPROLE_SLAVE_LATENCY, sizeof( uint16 ), &desired_slave_latency );
        GAPRole_SetParameter( GAPROLE_TIMEOUT_MULTIPLIER, sizeof( uint16 ), &desired_conn_timeout );
    }
    // Set the GAP Characteristics
    GGS_SetParameter( GGS_DEVICE_NAME_ATT, GAP_DEVICE_NAME_LEN, attDeviceName );
    // Set advertising interval
    {
        uint16 advInt = 800;//2400;//1600;//1600;//800;//1600;   // actual time = advInt * 625us
        GAP_SetParamValue( TGAP_LIM_DISC_ADV_INT_MIN, advInt );
        GAP_SetParamValue( TGAP_LIM_DISC_ADV_INT_MAX, advInt );
        GAP_SetParamValue( TGAP_GEN_DISC_ADV_INT_MIN, advInt );
        GAP_SetParamValue( TGAP_GEN_DISC_ADV_INT_MAX, advInt );
    }
    #if(DEF_GAPBOND_MGR_ENABLE==1)
    // Setup the GAP Bond Manager, add 2017-11-15
    {
        uint32 passkey = DEFAULT_PASSCODE;
        uint8 pairMode = GAPBOND_PAIRING_MODE_WAIT_FOR_REQ;
        uint8 mitm = TRUE;
        uint8 ioCap = GAPBOND_IO_CAP_NO_INPUT_NO_OUTPUT;
        uint8 bonding = TRUE;
        GAPBondMgr_SetParameter( GAPBOND_DEFAULT_PASSCODE, sizeof ( uint32 ), &passkey );
        GAPBondMgr_SetParameter( GAPBOND_PAIRING_MODE, sizeof ( uint8 ), &pairMode );
        GAPBondMgr_SetParameter( GAPBOND_MITM_PROTECTION, sizeof ( uint8 ), &mitm );
        GAPBondMgr_SetParameter( GAPBOND_IO_CAPABILITIES, sizeof ( uint8 ), &ioCap );
        GAPBondMgr_SetParameter( GAPBOND_BONDING_ENABLED, sizeof ( uint8 ), &bonding );
    }
    #endif
    // Initialize GATT attributes
    GGS_AddService( GATT_ALL_SERVICES );            // GAP
    GATTServApp_AddService( GATT_ALL_SERVICES );    // GATT attributes
    //DevInfo_AddService();                           // Device Information Service
    ota_app_AddService();
    SimpleProfile_AddService( GATT_ALL_SERVICES );  // Simple GATT Profile
    // Setup the SimpleProfile Characteristic Values
    {
        // uint8  uuid_setting[IBEACON_UUID_LEN] =
        // {
        //     0xFD,
        //     0xA5,
        //     0x06,
        //     0x93,
        //     0xA4,
        //     0xE2,
        //     0x4F,
        //     0xB1,
        //     0xAF,
        //     0xCF,
        //     0xC6,
        //     0xEB,
        //     0x07,
        //     0x64,
        //     0x78,
        //     0x25
        // };
        // uint16 major = 0x2774;
        // uint16 minor = 0x6bed;
        uint8 power = 0x0f;
        uint8 reset[IBEACON_ATT_LONG_PKT];

        for(uint8 i=0; i<IBEACON_ATT_LONG_PKT; i++)
        {
            reset[i]=(i<6) ? 0 : i;
        }

        // SimpleProfile_SetParameter( SIMPLEPROFILE_CHAR1, IBEACON_UUID_LEN, uuid_setting);
        // SimpleProfile_SetParameter( SIMPLEPROFILE_CHAR2, sizeof ( uint16 ), &major );
        // SimpleProfile_SetParameter( SIMPLEPROFILE_CHAR3, sizeof ( uint16 ), &minor );
        SimpleProfile_SetParameter( SIMPLEPROFILE_CHAR4, sizeof ( uint8 ), &power );
        SimpleProfile_SetParameter( SIMPLEPROFILE_CHAR5, IBEACON_ATT_LONG_PKT, &reset );
    }

    //intial notifyBuf
    for(int i =0 ; i<255; i++)
        notifyBuf[i]=i;

    // Register callback with SimpleGATTprofile
    VOID SimpleProfile_RegisterAppCBs( &simpleBLEPeripheral_SimpleProfileCBs );
    #if (1)
    {
        uint8_t mtuSet = 247;
        llInitFeatureSet2MPHY(TRUE);
        llInitFeatureSetDLE(TRUE);
        ATT_SetMTUSizeMax(mtuSet);
        LOG("[2Mbps | DLE | MTU %d] \n",mtuSet);
    }
    #else
    ATT_SetMTUSizeMax(23);
    llInitFeatureSet2MPHY(FALSE);
    llInitFeatureSetDLE(FALSE);
    #endif
    // Setup a delayed profile startup
    osal_set_event( simpleBLEPeripheral_TaskID, SBP_START_DEVICE_EVT );
    // for receive HCI complete message
    GAP_RegisterForHCIMsgs(simpleBLEPeripheral_TaskID);
    #if(APP_CFG_RPA_TEST)
    // ========================= For Resolving Private Address testing
    uint8 addrType = ADDRTYPE_PUBLIC;
    initResolvingList();
    GAPRole_SetParameter(GAPROLE_ADV_DIRECT_TYPE, 1, &addrType);
    GAPRole_SetParameter(GAPROLE_ADV_DIRECT_ADDR, LL_DEVICE_ADDR_LEN, peerAddrList[0]);
    LOG("======== RPA Init ========\n");
    #endif
    #if(DBG_RTC_TEST==1)
    osal_start_timerEx(simpleBLEPeripheral_TaskID, SBP_RTC_TEST_EVT, 1000);
    LOG("======== RTC TEST ========\n");
    #endif
    LL_PLUS_PerStats_Init(&g_perStatsByChanTest);
    LOG("======================SimpleBLEPeripheral_Init Done====================\n");
}

/*********************************************************************
    @fn      SimpleBLEPeripheral_ProcessEvent

    @brief   Simple BLE Peripheral Application Task event processor.  This function
            is called to process all events for the task.  Events
            include timers, messages and any other user defined events.

    @param   task_id  - The OSAL assigned task ID.
    @param   events - events to process.  This is a bit map and can
                     contain more than one event.

    @return  events not processed
*/
uint16 SimpleBLEPeripheral_ProcessEvent( uint8 task_id, uint16 events )
{
    VOID task_id; // OSAL required parameter that isn't used in this function

    if ( events & SYS_EVENT_MSG )
    {
        uint8* pMsg;

        if ( (pMsg = osal_msg_receive( simpleBLEPeripheral_TaskID )) != NULL )
        {
            simpleBLEPeripheral_ProcessOSALMsg( (osal_event_hdr_t*)pMsg );
            // Release the OSAL message
            VOID osal_msg_deallocate( pMsg );
        }

        // return unprocessed events
        return (events ^ SYS_EVENT_MSG);
    }

    if ( events & SBP_START_DEVICE_EVT )
    {
        // Start the Device
        VOID GAPRole_StartDevice( &simpleBLEPeripheral_PeripheralCBs );
        #if(DEF_GAPBOND_MGR_ENABLE==1)
        // Start Bond Manager, 2017-11-15
        VOID GAPBondMgr_Register( &simpleBLEPeripheral_BondMgrCBs );
        #endif
        // Set timer for first periodic event
        //osal_start_timerEx( simpleBLEPeripheral_TaskID, SBP_PERIODIC_EVT, SBP_PERIODIC_EVT_PERIOD );
        HCI_LE_ReadResolvingListSizeCmd();
        return ( events ^ SBP_START_DEVICE_EVT );
    }

    // change to no conn adv
    if ( events & SBP_ADD_RL_EVT )
    {
        return ( events ^ SBP_ADD_RL_EVT );
    }

    #if (1==DBG_RTC_TEST)

    if (events & SBP_RTC_TEST_EVT)
    {
        osal_start_timerEx(simpleBLEPeripheral_TaskID, SBP_RTC_TEST_EVT, 5000);
        #if(DEBUG_INFO)
        extern void ll_dbg_show(void);
        ll_dbg_show();
        #endif
        return (events ^ SBP_RTC_TEST_EVT);
    }

    #endif

    // enable adv
    if ( events & SBP_RESET_ADV_EVT )
    {
        uint8 initial_advertising_enable = TRUE;
        GAPRole_SetParameter( GAPROLE_ADVERT_ENABLED, sizeof( uint8 ), &initial_advertising_enable );
        return ( events ^ SBP_RESET_ADV_EVT );
    }

    // notify
    if ( events & SBP_PERIODIC_EVT )
    {
        for(int i=0; i<notifyPktNum; i++)
        {
            notifyBuf[0]=HI_UINT16(notifyCnt);
            notifyBuf[1]=LO_UINT16(notifyCnt);

            if(i==0)
            {
                int8 rssi;
                LL_ReadRssi(0,&rssi);
                uint16 foff;
                LL_ReadFoff(0,&foff);
                uint8 carrSens;
                LL_ReadCarrSens(0, &carrSens);
                notifyBuf[17]=rssi;
                notifyBuf[18]=0xff&((foff-512)>>2);//4KHz resolution
                notifyBuf[19]=carrSens;
            }

            uint8 status= simpleProfile_Notify(SIMPLEPROFILE_CHAR6,ATT_GetCurrentMTUSize(0)-3,notifyBuf);

            if(SUCCESS==status)
            {
                LOG("[NOTF_TX] %02x %4x\n",status,notifyCnt);
                notifyCnt++;
            }
            else
            {
                LOG("[NOTF_TX ERR] %02x %4x\n",status,notifyCnt);
                break;
            }
        }

        if(notifyInterval>0 )
        {
            if(connEvtEndNotify==0)
                osal_start_timerEx( simpleBLEPeripheral_TaskID, SBP_PERIODIC_EVT, notifyInterval );
        }
        else
        {
            osal_stop_timerEx( simpleBLEPeripheral_TaskID, SBP_PERIODIC_EVT );
            notifyCnt=0;
        }

        return ( events ^ SBP_PERIODIC_EVT );
    }

    #if(LATENCY_TEST==1)

    if ( events & SBP_DISABLE_LATENCY_TEST_EVT )
    {
        if(disLatInterval>0 )
        {
            uint8 ret = LL_PLUS_DisableSlaveLatency(0);
            //enable latency after 6 connIntv
            uint16 connIntv;
            GAPRole_GetParameter(GAPROLE_CONN_INTERVAL,&connIntv);
            connIntv = ((connIntv<<2)+connIntv)>>2;//*1.25
            osal_start_timerEx( simpleBLEPeripheral_TaskID, SBP_ENABLE_LATENCY_EVT, connIntv*6 );
            //enable latency after 6 connIntv
            uint16 latency;
            GAPRole_GetParameter(GAPROLE_CONN_LATENCY,&latency);
            //re-trigger evt
            uint32 nextIntv = disLatInterval+(disLatCnt%latency)*connIntv;
            osal_start_timerEx( simpleBLEPeripheral_TaskID, SBP_DISABLE_LATENCY_TEST_EVT, nextIntv );
            LOG("[DISLAT] st 0x%02x intv %d\n",ret,nextIntv);
            //tx data
            uint8 status;

            for(uint8 i=0; i<disLatTxNum; i++)
            {
                notifyBuf[0]=HI_UINT16(0xff);
                notifyBuf[1]=LO_UINT16(0xff);
                notifyBuf[2]=HI_UINT16(disLatCnt);
                notifyBuf[3]=LO_UINT16(disLatCnt);
                status= simpleProfile_Notify(SIMPLEPROFILE_CHAR6,ATT_GetCurrentMTUSize(0)-3,notifyBuf);

                if(SUCCESS==status)
                {
                    LOG("[DISLAT_TX] %02x %4x\n",status,disLatCnt);
                    disLatCnt++;
                }
                else
                {
                    LOG("[DISLAT_TX] %02x%4x\n",status,disLatCnt);
                }
            }
        }
        else
        {
            osal_stop_timerEx( simpleBLEPeripheral_TaskID, SBP_DISABLE_LATENCY_TEST_EVT );
            disLatCnt=0;
            disLatTxNum=0;
        }

        return ( events ^ SBP_DISABLE_LATENCY_TEST_EVT );
    }

    if ( events & SBP_ENABLE_LATENCY_EVT )
    {
        uint8 ret = LL_PLUS_EnableSlaveLatency(0);
        LOG("[EN_LAT] 0x%02x\n",ret);
        return ( events ^ SBP_ENABLE_LATENCY_EVT );
    }

    #endif

    if ( events & SBP_NRF_PERIODIC_TX_EVT )
    {
        static uint16_t advCnt=1;
        // advert data for iBeacon
        static uint8 advdata[] =
        {
            0x02,   // length of this data
            0x01,//GAP_ADTYPE_FLAGS,
            0x06,//DEFAULT_DISCOVERABLE_MODE | GAP_ADTYPE_FLAGS_BREDR_NOT_SUPPORTED,
            // complete name
            0x09,   // length of this data
            0x09,//GAP_ADTYPE_LOCAL_NAME_COMPLETE,
            0x53,0x6D,0x61,0x72,0x54,0x6E,0x52,0x46,//SmarTnRF
            0x07, // length of this data including the data type byte
            0xff,//GAP_ADTYPE_MANUFACTURER_SPECIFIC, // manufacturer specific adv data type
            0x04, // Company ID - Fixed
            0x05, // Company ID - Fixed
            0x02, // Data Type - Fixed
            0x02, // Data Length - Fixed
            0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
            0x00, // cnt
            0x00, // cnt
        };
        uint8_t dlen = s_rf_dlen;
        uint8_t ret = 0;
        advdata[dlen-2]=advCnt>>8;
        advdata[dlen-1]=advCnt&0xff;
        // if(advCnt&0x01)
        {
            // phy_adv_opcode_update(advCnt % 9);
            ret=phy_rf_start_tx(advdata,dlen, 0, 0);
        }

        // else
        // {
        //     phy_rf_stop_tx();
        //     ret=PPlus_SUCCESS;
        // }
        if(ret==PPlus_SUCCESS)
            advCnt++;

        LOG_DEBUG("%d %d %d\n",ret,advCnt,phy_rf_get_current_status());
        osal_start_timerEx( simpleBLEPeripheral_TaskID, SBP_NRF_PERIODIC_TX_EVT, nrf_tx_intv*10 );
        return ( events ^ SBP_NRF_PERIODIC_TX_EVT );
    }

    if ( events & SBP_NRF_PERIODIC_RX_EVT )
    {
        if(nrf_rx_cnt)
        {
            uint8_t ret=phy_rf_start_rx(nrf_rx_intv*1000);

            if(ret==PPlus_SUCCESS)
            {
                nrf_rx_cnt--;
                LOG("[PPP Rx Evt] Ok cnt %d\n",nrf_rx_cnt);
            }
            else
            {
                LOG("[PPP Rx Evt] Err ret %x status %x\n",ret,phy_rf_get_current_status());
            }

            osal_start_timerEx( simpleBLEPeripheral_TaskID, SBP_NRF_PERIODIC_RX_EVT, 1000 );
        }
        else
            osal_stop_timerEx( simpleBLEPeripheral_TaskID, SBP_NRF_PERIODIC_RX_EVT );

        return ( events ^ SBP_NRF_PERIODIC_RX_EVT );
    }

    // Discard unknown events
    return 0;
}

/*********************************************************************
    @fn      simpleBLEPeripheral_ProcessOSALMsg

    @brief   Process an incoming task message.

    @param   pMsg - message to process

    @return  none
*/
static void simpleBLEPeripheral_ProcessOSALMsg( osal_event_hdr_t* pMsg )
{
    hciEvt_CmdComplete_t* pHciMsg;

    switch ( pMsg->event )
    {
    case HCI_GAP_EVENT_EVENT:
    {
        switch( pMsg->status )
        {
        case HCI_COMMAND_COMPLETE_EVENT_CODE:
            pHciMsg = (hciEvt_CmdComplete_t*)pMsg;
            LOG("==> HCI_COMMAND_COMPLETE_EVENT_CODE: %x\n", pHciMsg->cmdOpcode);
            //safeToDealloc = gapProcessHCICmdCompleteEvt( (hciEvt_CmdComplete_t *)pMsg );
            break;

        default:
            //safeToDealloc = FALSE;  // Send to app
            break;
        }
    }
    }
}
/*********************************************************************
    @fn      peripheralStateReadRssiCB

    @brief   Notification from the profile of a state change.

    @param   newState - new state

    @return  none
*/
static void peripheralStateReadRssiCB( int8  rssi )
{
//    notifyBuf[15]++;
//    notifyBuf[16]=rssi;
//    notifyBuf[17]=HI_UINT16(g_conn_param_foff);
//    notifyBuf[18]=LO_UINT16(g_conn_param_foff);;
//    notifyBuf[19]=g_conn_param_carrSens;
}

/*********************************************************************
    @fn      peripheralStateNotificationCB

    @brief   Notification from the profile of a state change.

    @param   newState - new state

    @return  none
*/
static void peripheralStateNotificationCB( gaprole_States_t newState )
{
    switch ( newState )
    {
    case GAPROLE_STARTED:
    {
        uint8 ownAddress[B_ADDR_LEN];
        uint8 str_addr[14]= {0};
        uint8 initial_advertising_enable = FALSE;//true
        GAPRole_GetParameter(GAPROLE_BD_ADDR, ownAddress);
        #if(0)
        uint8 systemId[DEVINFO_SYSTEM_ID_LEN];
        // use 6 bytes of device address for 8 bytes of system ID value
        systemId[0] = ownAddress[0];
        systemId[1] = ownAddress[1];
        systemId[2] = ownAddress[2];
        // set middle bytes to zero
        systemId[4] = 0x00;
        systemId[3] = 0x00;
        // shift three bytes up
        systemId[7] = ownAddress[5];
        systemId[6] = ownAddress[4];
        systemId[5] = ownAddress[3];
        DevInfo_SetParameter(DEVINFO_SYSTEM_ID, DEVINFO_SYSTEM_ID_LEN, systemId);
        #endif
        osal_memcpy(&str_addr[0],bdAddr2Str(ownAddress),14);
        osal_memcpy(&scanRspData[11],&str_addr[6],8);
        osal_memcpy(&attDeviceName[9],&str_addr[6],8);
        GAPRole_SetParameter( GAPROLE_SCAN_RSP_DATA, sizeof ( scanRspData ), scanRspData );
        // Set the GAP Characteristics
        GGS_SetParameter( GGS_DEVICE_NAME_ATT, GAP_DEVICE_NAME_LEN, attDeviceName );
        GAPRole_SetParameter( GAPROLE_ADVERT_ENABLED, sizeof( uint8 ), &initial_advertising_enable );
        #if(APP_CFG_RPA_TEST)

        // init RPA list and enable resolving address
        for (int i = 0; i < 3; i ++)
            HCI_LE_AddDevToResolvingListCmd(peerAddrType[i], peerAddrList[i], peerIrkList[i], localIrkList[i]);

        HCI_LE_SetResolvablePrivateAddressTimeoutCmd(60);
        HCI_LE_SetAddressResolutionEnableCmd(TRUE);
        #endif
        //osal_start_timerEx(simpleBLEPeripheral_TaskID, SBP_RESET_ADV_EVT, 500);
        osal_set_event(simpleBLEPeripheral_TaskID, SBP_RESET_ADV_EVT);
    }
    break;

    case GAPROLE_ADVERTISING:
    {
        osal_stop_timerEx(simpleBLEPeripheral_TaskID, SBP_PERIODIC_EVT);
        notifyCnt=0;
        notifyInterval = 0;
        #if(LATENCY_TEST==1)
        osal_stop_timerEx(simpleBLEPeripheral_TaskID, SBP_DISABLE_LATENCY_TEST_EVT);
        disLatInterval = 0;
        disLatCnt = 0;
        disLatTxNum=0;
        #endif
    }
    break;

    case GAPROLE_CONNECTED:
        HCI_PPLUS_ConnEventDoneNoticeCmd(simpleBLEPeripheral_TaskID, NULL);
        break;

    case GAPROLE_CONNECTED_ADV:
        break;

    case GAPROLE_WAITING:
        break;

    case GAPROLE_WAITING_AFTER_TIMEOUT:
        break;

    case GAPROLE_ERROR:
        break;

    default:
        break;
    }

    gapProfileState = newState;
    LOG("[GAP ROLE %d]\n",newState);
    VOID gapProfileState;
}


/*********************************************************************
    @fn      simpleProfileChangeCB

    @brief   Callback from SimpleBLEProfile indicating a value change

    @param   paramID - parameter ID of the value that was changed.

    @return  none
*/
static void simpleProfileChangeCB( uint8 paramID )
{
    uint8 newValue[IBEACON_ATT_LONG_PKT];

    switch( paramID )
    {
    case SIMPLEPROFILE_CHAR5:
        SimpleProfile_GetParameter( SIMPLEPROFILE_CHAR5, newValue );
        LOG("[WRT_ATT] %02x \n",newValue[0]);

        //===============================================================================
        // 0xff reset to connectable adv
        if (newValue[0] == 0xff)
        {
            otaAdvIntv = newValue[1];
            LOG("[AdvIntv CONNECT] %04d\n",otaAdvIntv*10);
            // option:
            // 1. reset
            // 2. reset advertisement
            g_current_advType = LL_ADV_CONNECTABLE_UNDIRECTED_EVT;
            pGlobal_config[ADV_CHANNEL_INTERVAL] = 1400;//6250;
            VOID updateAdvData();
        }
        else if(newValue[0]==0xfe)
        {
            otaAdvIntv = newValue[1];
            LOG("[AdvIntv NONCONN] %04d\n",otaAdvIntv*10);
            // option:
            // 1. reset
            // 2. reset advertisement
            g_current_advType = LL_ADV_NONCONNECTABLE_UNDIRECTED_EVT;
            pGlobal_config[ADV_CHANNEL_INTERVAL] = 600;//6250;
            VOID updateAdvData();
        }
        //===============================================================================
        // check per stats
        else if(newValue[0]==0xfd)
        {
            check_PerStatsProcess();
        }
        //===============================================================================
        // standby off mode
        // else if(newValue[0]==0xfc)
        // {
        //     pwroff_cfg_t cfg =
        //     {
        //         .pin = P15,
        //         .type = POL_FALLING,
        //         .on_time = 3000
        //     };
        //     if (newValue[1] == 0)
        //     {
        //         LOG("PWR OFF\n");
        //         hal_pwrmgr_poweroff(&cfg, 1);
        //     }
        //     else
        //     {
        //         cfg.on_time = 1000*newValue[1];
        //         LOG("STANDBY on time %d\n",cfg.on_time);
        //         hal_pwrmgr_enter_standby(&cfg,1);
        //     }
        // }
        //===============================================================================
        // [0x00 a1 a2 ] : enable notifiy , notifiy intv is a1
        else if(newValue[0]== 0x00 )
        {
            connEvtEndNotify = (newValue[1]&0x80)>>7;
            notifyInterval   = (newValue[1]&0x7f)*5;
            notifyPktNum     = newValue[2];
            uint16 connIntv;
            GAPRole_GetParameter(GAPROLE_CONN_INTERVAL,&connIntv);
            connIntv = ((connIntv<<2)+connIntv)>>2;//*1.25

            if(connEvtEndNotify>0)
                notifyInterval = connIntv;

            if(notifyInterval>0)
            {
                if(notifyInterval<connIntv)
                {
                    notifyPktNum=(notifyInterval<<3)/connIntv;
                }

                if(notifyPktNum==0)
                {
                    notifyPktNum=1;
                    notifyInterval = (connIntv+1)>>2;
                }

                if(connEvtEndNotify>0)
                {
                    HCI_PPLUS_ConnEventDoneNoticeCmd(simpleBLEPeripheral_TaskID, SBP_PERIODIC_EVT);
                }
                else
                {
                    HCI_PPLUS_ConnEventDoneNoticeCmd(simpleBLEPeripheral_TaskID, NULL);
                    osal_start_timerEx( simpleBLEPeripheral_TaskID, SBP_PERIODIC_EVT, notifyInterval );
                }
            }
            else
            {
                osal_stop_timerEx(simpleBLEPeripheral_TaskID, SBP_PERIODIC_EVT);
                notifyCnt=0;
            }

            if(connEvtEndNotify)
            {
                LOG("[Notf_Conn] p%d ni%d ci%d\n",notifyPktNum,notifyInterval,connIntv);
            }
            else
            {
                LOG("[Notify   ] p%d ni%d ci%d\n",notifyPktNum,notifyInterval,connIntv);
            }
        }
        //===============================================================================
        // [0x01 a1 a2 a3 a4 ] : cont config ,a1
        else if(newValue[0]==0x01)
        {
            otaConnIntvMin      = newValue[1];
            otaConnIntvMax      = newValue[2];
            otaConnIntvLatency  = newValue[3];
            otaConnTimeOut      = newValue[4];
            uint16 desired_min_interval = (otaConnIntvMin<<2)<6 ? 6:(otaConnIntvMin<<2);
            uint16 desired_max_interval = (otaConnIntvMax<<2)<6 ? 6:(otaConnIntvMax<<2);
            uint16 desired_slave_latency = otaConnIntvLatency;
            uint16 desired_conn_timeout = otaConnTimeOut*100;
            uint8 updateConnParams = true;
            LOG("[ConnPara] %04d %04d L%02d T%02d\n",desired_min_interval,
                desired_max_interval,
                desired_slave_latency,
                desired_conn_timeout);
            GAPRole_SetParameter( GAPROLE_MIN_CONN_INTERVAL, sizeof( uint16 ), &desired_min_interval );
            GAPRole_SetParameter( GAPROLE_MAX_CONN_INTERVAL, sizeof( uint16 ), &desired_max_interval );
            GAPRole_SetParameter( GAPROLE_SLAVE_LATENCY, sizeof( uint16 ), &desired_slave_latency );
            GAPRole_SetParameter( GAPROLE_TIMEOUT_MULTIPLIER, sizeof( uint16 ), &desired_conn_timeout );
            GAPRole_SetParameter( GAPROLE_PARAM_UPDATE_REQ, sizeof( uint8 ), &updateConnParams );
        }
        //===============================================================================
        // [0x02 a1 a2] : max mtu size
        else if(newValue[0]==0x02)
        {
            g_ATT_MTU_SIZE_MAX = newValue[1];
            LOG("[MTU SIZE MAX] %02d\n",g_ATT_MTU_SIZE_MAX);
        }
        //===============================================================================
        // [0x03 a1 a2] :set pdu length  ,a1 is the pdulength
        else if(newValue[0]==0x03)
        {
            uint8 pduLen = newValue[1];
            uint16 txTime = (pduLen+10+4)<<3;
            HCI_LE_SetDataLengthCmd(0,pduLen, txTime);
//        uint8 status=HCI_PPLUS_DateLengthChangedNoticeCmd(simpleBLEPeripheral_TaskID, SBP_DLE_CHANGE_EVT);
//        LOG_DEBUG("[DLE] %02d %02d %d\n",pduLen,txTime,status);
        }
        //===============================================================================
        // [0x05 a1 a2] :set phy mode
        else if(newValue[0]==0x05)
        {
            uint8 allPhy = newValue[1];
            uint8 txPhy  = newValue[2];
            uint8 defPhy  = newValue[3];

            if(defPhy>0)
            {
                HCI_LE_SetDefaultPhyMode(0,allPhy, defPhy, defPhy);
            }
            else
            {
                HCI_LE_SetDefaultPhyMode(0,allPhy, 0x03, 0x03);
            }

            HCI_LE_SetPhyMode(0,allPhy, txPhy,txPhy,0);//tx/rx set as same phy
//        uint8 status=HCI_PPLUS_PhyUpdateNoticeCmd(simpleBLEPeripheral_TaskID, SBP_PHY_UPDATE_EVT);
//        LOG_DEBUG("[PHY] %02d %02d %d\n",allPhy,txPhy,status);
        }

        //===============================================================================
        // [0x06 a1] :set disable latency test interval
        #if(LATENCY_TEST==1)
        else if(newValue[0]==0x06)
        {
            uint8 evtIntv = newValue[1];
            uint8 TxNum = newValue[2];
            uint16 connIntv;
            GAPRole_GetParameter(GAPROLE_CONN_INTERVAL,&connIntv);
            connIntv = ((connIntv<<2)+connIntv)>>2;//*1.25
            uint16 latency;
            GAPRole_GetParameter(GAPROLE_CONN_LATENCY,&latency);
            LOG("[DisLat] C%04d L%02d Evt%02d\n", connIntv,
                latency,
                evtIntv);

            if(evtIntv==0 || latency==0)
            {
                disLatInterval = 0;
                osal_stop_timerEx(simpleBLEPeripheral_TaskID, SBP_DISABLE_LATENCY_TEST_EVT);
            }
            else
            {
                disLatInterval = evtIntv*connIntv;
                disLatTxNum   = TxNum;
                osal_start_timerEx( simpleBLEPeripheral_TaskID, SBP_DISABLE_LATENCY_TEST_EVT, disLatInterval );
            }
        }

        #endif
        #if(DEF_PPP_TRX_SUPPORT & PPP_CONFIG_RX)
        else if(newValue[0]==0x12)
        {
            uint8_t ret;

            if(newValue[1]==0x00)
            {
                ret= phy_rf_stop_rx();
                LOG("Stop 2.4G RX ret %d\n", ret);
            }
            else
            {
                ret= phy_rf_start_rx(newValue[1]*1000);
                LOG("[PPP RX] rxTO %dms   ret %d\n",newValue[1], ret);

                if(ret == 0)
                {
                    LOG("start 2.4G RX\n");
                }
            }
        }

        #endif
        #if(DEF_PPP_TRX_SUPPORT & PPP_CONFIG_TX)
        else if(newValue[0]==0x11)
        {
            if(newValue[1] == 0)
            {
                phy_rf_stop_tx();
                osal_stop_timerEx(simpleBLEPeripheral_TaskID, SBP_NRF_PERIODIC_TX_EVT);
                LOG("Stop 2.4G TX\n");
            }
            else
            {
                nrf_tx_intv = newValue[1] * 10;
                s_rf_dlen = newValue[2];
                osal_set_event(simpleBLEPeripheral_TaskID, SBP_NRF_PERIODIC_TX_EVT);
                LOG("start 2.4G TX\n");
            }
        }

        #endif
        // else if(newValue[0]==0x89)
        // {
        //     LIGHT_ON_OFF(newValue[1],newValue[2],newValue[3]);
        // }
        // else if(newValue[0]==0x8A)
        // {
        //     light_color_t color = (light_color_t)newValue[1];
        //     light_color_quickSet(color);
        // }
        break;

    default:
        // not process other attribute change
        break;
    }
}


/*********************************************************************
    @fn      updateAdvData

    @brief   update adv data and change the adv type

    @param   none

    @return  none
*/
static void updateAdvData(void)
{
    uint8  new_uuid[IBEACON_UUID_LEN];
    uint16  major;
    uint16  minor;
    uint8   power;
    // 1. get the new setting from GATT attributes
    SimpleProfile_GetParameter( SIMPLEPROFILE_CHAR1, new_uuid );
    SimpleProfile_GetParameter( SIMPLEPROFILE_CHAR2, &major );
    SimpleProfile_GetParameter( SIMPLEPROFILE_CHAR3, &minor );
    SimpleProfile_GetParameter( SIMPLEPROFILE_CHAR4, &power );
    // 2. update adv data storage
    //set UUID
    VOID osal_memcpy(&advertData[9], new_uuid, IBEACON_UUID_LEN);
    // set major
    advertData[25] = LO_UINT16( major );
    advertData[26] = HI_UINT16( major );
    // set minor
    advertData[27] = LO_UINT16( minor );
    advertData[28] = HI_UINT16( minor );
    // set power
    advertData[29] = power;
    // 3. disconnect all connection
    GAPRole_TerminateConnection();
    // 4. close advert
    uint8 initial_advertising_enable = FALSE;
    GAPRole_SetParameter( GAPROLE_ADVERT_ENABLED, sizeof( uint8 ), &initial_advertising_enable );
    // 5. update adv data
    // 5.1 update adv type
    uint8 advType = g_current_advType;
    GAPRole_SetParameter( GAPROLE_ADV_EVENT_TYPE, sizeof( uint8 ), &advType );
    uint16 advInt = otaAdvIntv<<4;
    GAP_SetParamValue( TGAP_LIM_DISC_ADV_INT_MIN, advInt );
    GAP_SetParamValue( TGAP_LIM_DISC_ADV_INT_MAX, advInt );
    GAP_SetParamValue( TGAP_GEN_DISC_ADV_INT_MIN, advInt );
    GAP_SetParamValue( TGAP_GEN_DISC_ADV_INT_MAX, advInt );
    // 5.2 update advert broadcast
    GAPRole_SetParameter( GAPROLE_ADVERT_DATA, sizeof( advertData ), advertData );
    // 5.3 set TxPower
    g_rfPhyTxPower = power;
    rf_phy_set_txPower(power);
    // 6. set reset advertisement event, note that GAP/LL will process close adv event in advance
    osal_start_timerEx(simpleBLEPeripheral_TaskID, SBP_RESET_ADV_EVT,5000);
}

/*********************************************************************
    @fn      bdAddr2Str

    @brief   Convert Bluetooth address to string. Only needed when
           LCD display is used.

    @return  none
*/
char* bdAddr2Str( uint8* pAddr )
{
    uint8       i;
    char        hex[] = "0123456789ABCDEF";
    static char str[B_ADDR_STR_LEN];
    char*        pStr = str;
    *pStr++ = '0';
    *pStr++ = 'x';
    // Start from end of addr
    pAddr += B_ADDR_LEN;

    for ( i = B_ADDR_LEN; i > 0; i-- )
    {
        *pStr++ = hex[*--pAddr >> 4];
        *pStr++ = hex[*pAddr & 0x0F];
    }

    *pStr = 0;
    return str;
}

#if(APP_CFG_RPA_TEST==1)
static void initResolvingList(void)
{
    int i;
    uint8 temp;

    for (i = 0; i < RESOLVING_LIST_ENTRY_NUM; i++)
    {
        osal_memset(&peerIrkList[i], (i + 1), LL_ENC_IRK_LEN);
        osal_memset(&localIrkList[i], (i + 1), LL_ENC_IRK_LEN);
        temp = ((i + 1) << 4) | (i + 1);
        osal_memset(&peerAddrList[i], temp, LL_DEVICE_ADDR_LEN);
        peerAddrType[i] = LL_DEV_ADDR_TYPE_PUBLIC;      // LL_DEV_ADDR_TYPE_RANDOM
    }
}
#endif


void check_PerStatsProcess(void)
{
    perStats_t perStats;
    uint16_t perRxNumTotal=0;
    uint16_t perRxCrcErrTotal=0;
    uint16_t perTxNumTotal=0;
    uint16_t perTxAckTotal=0;
    uint16_t perRxToCntTotal=0;
    uint16_t perConnEvtTotal=0;
    LOG("[PER STATS Notify]\r");
    LOG("----- ch connN rxNum rxCrc rxToN txAck txRty \r");

    for(uint8 i=0; i<37; i++)
    {
        LL_PLUS_PerStasReadByChn(i,&perStats);
        LOG("[PER] %02d %05d %05d %05d %05d %05d %05d\n",i,perStats.connEvtCnt,
            perStats.rxNumPkts,
            perStats.rxNumCrcErr,
            perStats.rxToCnt,
            perStats.TxNumAck,
            perStats.txNumRetry);
        perConnEvtTotal+= perStats.connEvtCnt;
        perRxNumTotal+= perStats.rxNumPkts;
        perRxCrcErrTotal+= perStats.rxNumCrcErr;
        perRxToCntTotal+= perStats.rxToCnt;
        perTxAckTotal+= perStats.TxNumAck;
        perTxNumTotal+= perStats.txNumRetry;
    }

    LOG("TOTAL ch connN rxNum rxCrc rxToN txAck txRty \r");
    LOG("\n[PER] -- %05d %05d %05d %05d %05d %05d\n",perConnEvtTotal,
        perRxNumTotal,
        perRxCrcErrTotal,
        perRxToCntTotal,
        perTxAckTotal,
        perTxNumTotal);
    LL_PLUS_PerStatsReset();
}

uint8_t Smart_nRF_data_process(phy_comm_evt_t* pdata)
{
    #if(DEF_PPP_AUTOACK_SUPPORT==1)
    LOG_DEBUG("OPCODE=%x  datalen=%d\n",pdata->type,pdata->len);
    #if(DEF_PPP_NRF_SUPPORT==PPP_NRF_ENABLE)
    uint8_t status = phy_rf_get_current_status();

    if(status == PPP_RFPHY_RX_ONLY)
    {
        LOG_DEBUG("It's nrf CB ack:");
        my_dump_byte(pdata->data,pdata->len);
    }
    else
    {
        LOG_DEBUG("It's nrf CB data:");
        my_dump_byte(pdata->data,pdata->len);
    }

    #else

    if(pdata->type == PPP_STX_DONE_TYPE)
    {
        LOG_DEBUG("STX Done Reporting\n");
    }
    else if(PPP_GET_ACK_BIT(pdata->type))
    {
        LOG_DEBUG("It's rf CB ack:");
        my_dump_byte(pdata->data,pdata->len);
    }
    else if(PPP_GET_NEEDACK_BIT(pdata->type))
    {
        LOG_DEBUG("It's rf CB data:");
        my_dump_byte(pdata->data,pdata->len);
    }
    else if(pdata->len != NULL)
    {
        LOG_DEBUG("It's rf broadcast data:");
        my_dump_byte(pdata->data,pdata->len);
    }

    #endif
    #else
    #if(DEF_PPP_NRF_SUPPORT==PPP_NRF_ENABLE)
    LOG_DEBUG("It's noack nrf data:");
    my_dump_byte(pdata->data,pdata->len);
    #else
    LOG_DEBUG("It's noack rf data:");
    my_dump_byte(pdata->data,pdata->len);
    #endif
    #endif
    return PPlus_SUCCESS;
}

#if(DEF_PPP_TRX_SUPPORT & PPP_CONFIG_RX)
uint8_t Smart_nRF_generate_ackpdu(phy_comm_evt_t* packbuf)
{
    uint8_t test_prepared_ackpdu[32] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31};
//    uint8_t opcode = PPP_GET_OPCODE(packbuf->type);
//    if((opcode > SNRF_PREPARED_ACKPDU_NUM) || (s_prepared_ackpdu[opcode-1].len > PPP_ACK_DATA_MAX_NUM))
//    {
//        return PPlus_ERR_INVALID_PARAM;
//    }
//    else if(s_prepared_ackpdu[opcode-1].type == NULL)
//    {
//        return PPlus_ERR_NULL;
//    }
//    else
    {
//        packbuf->len = s_prepared_ackpdu[opcode-1].len;
        osal_memcpy(packbuf->data, test_prepared_ackpdu, 31);
    }
    return PPlus_SUCCESS;
}
#endif

/*********************************************************************
*********************************************************************/
