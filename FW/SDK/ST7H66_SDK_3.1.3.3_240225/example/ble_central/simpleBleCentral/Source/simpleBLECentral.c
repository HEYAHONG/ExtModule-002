/**************************************************************************************************
*******
**************************************************************************************************/



/*********************************************************************
    INCLUDES
*/

#include "bcomdef.h"
#include "OSAL.h"
#include "OSAL_PwrMgr.h"
#include "OSAL_bufmgr.h"
#include "gatt.h"
#include "ll.h"
#include "ll_common.h"
#include "hci.h"
#include "gapgattserver.h"
#include "gattservapp.h"
#include "central.h"
#include "gapbondmgr.h"
#include "simpleGATTprofile_ota.h"
#include "simpleBLECentral.h"
#include "timer.h"
#include "log.h"
#include "ll_def.h"
#include "global_config.h"
#include "flash.h"
#include "rflib.h"
#include "clock.h"
#include "OSAL_Clock.h"
/*********************************************************************
    MACROS
*/


#define SBC_SBP_TEST_MODE_AUTO_RESET         (1)
#define SBC_SBP_TEST_MODE_WTNSP_NOTIFY       (2)
#define SBC_SBP_TEST_MODE_AUTO_DISCONNET     (3)

#define SBC_SBP_TEST_MODE_CFG                SBC_SBP_TEST_MODE_WTNSP_NOTIFY //SBC_SBP_TEST_MODE_WTNSP_NOTIFY
#define SBC_SET_ERASE_GAPBOND                subWriteReg(&AP_AON->SLEEP_R[3],0,0,1)
#define SBC_CLR_ERASE_GAPBOND                subWriteReg(&AP_AON->SLEEP_R[3],0,0,0)
#define SBC_IS_ERASE_GAPBOND                 (AP_AON->SLEEP_R[3] & 0x01)



// Length of bd addr as a string
#define B_ADDR_STR_LEN                        15

/*********************************************************************
    CONSTANTS
*/

// Maximum number of scan responses
#define DEFAULT_MAX_SCAN_RES                  30

// Scan duration in ms
#define DEFAULT_SCAN_DURATION                 5000

// Discovey mode (limited, general, all)
#define DEFAULT_DISCOVERY_MODE                DEVDISC_MODE_ALL

// TRUE to use active scan
#define DEFAULT_DISCOVERY_ACTIVE_SCAN         TRUE

// TRUE to use white list during discovery
#define DEFAULT_DISCOVERY_WHITE_LIST          FALSE

// TRUE to use high scan duty cycle when creating link
#define DEFAULT_LINK_HIGH_DUTY_CYCLE          FALSE

// TRUE to use white list when creating link
#define DEFAULT_LINK_WHITE_LIST               FALSE

// Default RSSI polling period in ms
#define DEFAULT_RSSI_PERIOD                   1000

// Whether to enable automatic parameter update request when a connection is formed
#define DEFAULT_ENABLE_UPDATE_REQUEST         FALSE

// Minimum connection interval (units of 1.25ms) if automatic parameter update request is enabled
#define DEFAULT_UPDATE_MIN_CONN_INTERVAL      10

// Maximum connection interval (units of 1.25ms) if automatic parameter update request is enabled
#define DEFAULT_UPDATE_MAX_CONN_INTERVAL      300

// Slave latency to use if automatic parameter update request is enabled
#define DEFAULT_UPDATE_SLAVE_LATENCY          0

// Supervision timeout value (units of 10ms) if automatic parameter update request is enabled
#define DEFAULT_UPDATE_CONN_TIMEOUT           500

// Default passcode
#define DEFAULT_PASSCODE                      123456//19655

// Default GAP pairing mode
#define DEFAULT_PAIRING_MODE                  GAPBOND_PAIRING_MODE_INITIATE//GAPBOND_PAIRING_MODE_WAIT_FOR_REQ

// Default MITM mode (TRUE to require passcode or OOB when pairing)
#define DEFAULT_MITM_MODE                     FALSE

// Default bonding mode, TRUE to bond
#define DEFAULT_BONDING_MODE                  TRUE //TRUE

// Default GAP bonding I/O capabilities
#define DEFAULT_IO_CAPABILITIES               GAPBOND_IO_CAP_DISPLAY_ONLY

// Default service discovery timer delay in ms
#define DEFAULT_SVC_DISCOVERY_DELAY           1000

// TRUE to filter discovery results on desired service UUID
#define DEFAULT_DEV_DISC_BY_SVC_UUID          TRUE

// Application states
enum
{
    BLE_STATE_IDLE,
    BLE_STATE_CONNECTING,
    BLE_STATE_CONNECTED,
    BLE_STATE_DISCONNECTING
};

// Discovery states
enum
{
    BLE_DISC_STATE_IDLE,                // Idle
    BLE_DISC_STATE_SVC,                 // Service discovery
    BLE_DISC_STATE_CHAR                 // Characteristic discovery
};

// GapBond states
enum
{
    BLE_GapBond_IDLE,                   // Idle
    BLE_GapBond_Starting,
    BLE_GapBond_Paring_OK,
    BLE_GapBond_Paring_FAIL,
    BLE_GapBond_Bond_OK,
    BLE_GapBond_Bond_FAIL
};

// add by zhufei.zhang 2018.10.25
#define PRIMARY_SERVICE_RES         10//0xFFFF
#define Characteristic_LEN                  20
#define Characteristic_ValueIndex       1
#define Characteristic_NotifyIndex  2
#define Central_Test_ToDoList               6
//#define Build_TESTVECTOR 0
/*********************************************************************
    TYPEDEFS
*/
// add by zhufei.zhang 2018.10.25
// Advertising and Scan Response Data
typedef struct
{
    uint8_t     Type;
    uint8_t     Len;
    uint8_t     Value[ATT_UUID_SIZE];
} SimpleADVServiceUUIDs;
typedef struct
{
    uint8_t     Type;
    uint8_t     Length;
    uint8_t     Value[31];      // Max PDU = 31
} SimpleADVLoaclName;
typedef struct
{
    uint16_t    ConnMin;
    uint16_t    ConnMax;
} SimpleADVSlaveInterval;
typedef struct
{
    uint8_t     Type;
    uint8_t     Len;
    uint8_t     Value[ATT_UUID_SIZE];
} SimpleADVServiceSolicitation;
typedef struct
{
    uint8_t     Length;
    uint8_t     Value[31];      // Max PDU = 31
} SimpleADVServiceDATA;
typedef struct
{
    uint8_t     Length;
    uint8_t     Value[31];      // Max PDU = 31
} SimpleADVManufactureDATA;
typedef struct
{
    uint8_t                                                 AddrType;
    uint8_t                                                 addr[B_ADDR_LEN];
    bool                                                        RSP_ReadFlag;
    int8                                                        rssi;
    int8                                                        TxPower;
    uint8_t                                                 Flags;
    SimpleADVServiceUUIDs                   UUID;
    SimpleADVLoaclName                          LocalName;
    uint8_t                                                 OOB_Data;
    uint8_t                                                 SM_TK_Value;
    SimpleADVSlaveInterval                  ConnIntervalRange;
    SimpleADVServiceSolicitation        ServiceSolicitation;
    SimpleADVServiceDATA                        ServiceData;
    SimpleADVManufactureDATA                ManufactureData;
} SimpleClientADV_ScanData;

// Service and Characteristic
typedef struct
{
    uint16_t  charStartHandle;
    uint16_t  charUuid;
    uint8_t     UUID_Len;
    uint8_t     UUID[ATT_UUID_SIZE];
    uint8_t   Properties;
} SimpleCharacteristic;
typedef struct
{
    // Service Info , User Don't Care
    uint8_t     Attribute_Data_Len;
    uint16_t    Attribute_StartHandle;
    uint16_t    End_Group_Handle;
    // User Care
    // Caculate UUID Len
    uint8_t     UUID_Len;
    uint8_t     UUID[ATT_UUID_SIZE];
    // Characteristic
    uint8_t     CharacNum;
    SimpleCharacteristic Characteristic[Characteristic_LEN];
} SimpleGATTReadGroupRsp;
typedef struct
{
    // Primary Service Num
    uint8_t                                 PrimaryServiceCnt;
    // Primary Service Characteristic Index
    uint8_t                                 PrimaryCharacIndex;
    // Characteristic Find Index
    uint8_t                                 CharacFindIndex;
    SimpleGATTReadGroupRsp  ServerGroupService[PRIMARY_SERVICE_RES];
} SimpleGattScanServer;

/*********************************************************************
    GLOBAL VARIABLES
*/
perStatsByChan_t g_perStatsByChanTest;
/*********************************************************************
    EXTERNAL VARIABLES
*/
extern uint32 g_osal_mem_allo_cnt;
extern uint32 g_osal_mem_free_cnt;
extern l2capSARDbugCnt_t g_sarDbgCnt;
extern llGlobalStatistics_t g_pmCounters;
/*********************************************************************
    EXTERNAL FUNCTIONS
*/

/*********************************************************************
    LOCAL VARIABLES
*/

// Task ID for internal task/event processing
static uint8 simpleBLETaskId;

// GAP GATT Attributes
static const uint8 simpleBLEDeviceName[GAP_DEVICE_NAME_LEN] = "Simple BLE Central";
static const uint8 peerDeviceName[GAP_DEVICE_NAME_LEN]      = "Find Magic";

// Number of scan results and scan result index
static uint8 simpleBLEScanRes;
volatile static uint8 simpleBLEScanIdx;

// Scanning state
volatile static uint8 simpleBLEScanning = FALSE;

// RSSI polling state
volatile static uint8 simpleBLERssi = FALSE;

// Connection handle of current connection
static uint16 simpleBLEConnHandle = GAP_CONNHANDLE_INIT;

// Application state
static uint8 simpleBLEState = BLE_STATE_IDLE;

// Discovery state
static uint8 simpleBLEDiscState = BLE_DISC_STATE_IDLE;

//GapBondmgr state
static uint8 simpleBleGapBondState = BLE_GapBond_IDLE;//

static UTCTime s_linkActiveDuration = 0;

//// Discovered service start and end handle
//static uint16 simpleBLESvcStartHdl = 0;
//static uint16 simpleBLESvcEndHdl = 0;

//// Discovered characteristic handle
//static uint16 simpleBLECharHdl = 0;

// Value to write
volatile static uint8 simpleBLECharVal = 0;

//// Value read/write toggle
//static bool simpleBLEDoWrite = FALSE;

//// GATT read/write procedure state
//static bool simpleBLEProcedureInProgress = FALSE;
static bool findDevByName=FALSE;
static gapDevRec_t simpleBlePeerTarget;
//static bool simBlePeerConnFlg=FALSE;
volatile static uint8_t advDataFilterCnt;
static uint16 connIntv = 30;
static uint16 connLatency = 4;
static uint16 connTimeOut = 200;
volatile static uint32 connEventCnt = 0;

static uint16 dleTxOctets=251;
static uint16 dleTxTime=2120;

static uint8 phyModeCtrl=0x01;

static uint16 dleTxOctetsSlave=251;
volatile static uint16 dleTxTimeSlave=2120;

static uint8 phyModeCtrlSlave=0x01;

// add by zhufei.zhang 2018.10.25
static SimpleGattScanServer             SimpleClientInfo;
static SimpleClientADV_ScanData     simpleBLEDevList[DEFAULT_MAX_SCAN_RES];

#define RWN_TEST_VAL_LEN            200
static uint8 rwnTestVal[RWN_TEST_VAL_LEN];
static uint8_t rwnTestCnt=0;
static uint8 slaCtrlCmd=0;

static uint8 mtu = 247;

//===================================================================
//mtu:      ATT MTU Size [23 - 247]
//DLE:      date length extion, pdu length in octect [27-255]
//phy:      PHY MODE 1-> BLE_1M, 2->BLE_2M
//connIntv: ble connection interval, unit 5ms
//notfIntv: slave notify interval, 0x80 -> notfiy at connection event end,
//          other value, notify interval uint is notfIntv[6:0]*5ms
//notfPkt:  notifty packet number for each notify interval
//testTime: test vector mode contrl counter, whenc testTime=mstWtCnt,
//          shift to next test vector in the table

enum
{
    NULL_TO_DO = 0x00,
    CHAN_MAP   = 0x01,
    SLA_1M,
    SLA_2M,
    SLA_ANY,
    MST_1M,
    MST_2M,
    MST_ANY,
    SLA_HCLK48_32KRC,
    SLA_HCLK48_32KXTAL,
    SLA_HCLK16_32KRC,
    SLA_HCLK16_32KXTAL,
    SLA_HCLK64_32KRC,
    SLA_HCLK64_32KXTAL,
    SLA_CHECK_PER
};

/*********************************************************************
    LOCAL FUNCTIONS
*/
static void simpleBLECentralProcessGATTMsg( gattMsgEvent_t* pMsg );
static void simpleBLECentralRssiCB( uint16 connHandle, int8  rssi );
static void simpleBLECentralEventCB( gapCentralRoleEvent_t* pEvent );
static void simpleBLECentralPasscodeCB( uint8* deviceAddr, uint16 connectionHandle,
                                        uint8 uiInputs, uint8 uiOutputs );
static void simpleBLECentralPairStateCB( uint16 connHandle, uint8 state, uint8 status );
//static void simpleBLECentral_HandleKeys( uint8 shift, uint8 keys );
static void simpleBLECentral_ProcessOSALMsg( osal_event_hdr_t* pMsg );
static void simpleBLEGATTDiscoveryEvent( gattMsgEvent_t* pMsg );
static void simpleBLECentralStartDiscoveryService( void );
//static bool simpleBLEFindSvcUuid( uint16 uuid, uint8 *pData, uint8 dataLen );
static void simpleBLEAddDeviceInfo( gapCentralRoleEvent_t* pEvent );
char* bdAddr2Str ( uint8* pAddr );
//static uint8_t simpleBLECentral_AdvDataFilterCBack(void);

// add by zhufei.zhang
static void simpleBLEAnalysisADVDATA(uint8 Index,gapDeviceInfoEvent_t* pData);
//static void simpleBLECentral_CharacteristicTest(void);
static void simpleBLECentral_ReadWriteNotifyTest(void);
static void simpleBLECentral_DiscoverDevice(void);
static void simpleBLECentral_LinkDevice(void);
extern uint32 osal_memory_statics(void);
extern uint8 llPermit_ctrl_procedure(uint16 connId);

static void simpleBLECentral_LinkDevice_Direct(uint8_t p_Type,uint8_t p_addr[]);

/*********************************************************************
    PROFILE CALLBACKS
*/

// GAP Role Callbacks
static const gapCentralRoleCB_t simpleBLERoleCB =
{
    simpleBLECentralRssiCB,       // RSSI callback
    simpleBLECentralEventCB       // Event callback
};

// Bond Manager Callbacks
static const gapBondCBs_t simpleBLEBondCB =
{
    simpleBLECentralPasscodeCB,
    simpleBLECentralPairStateCB
};

/*********************************************************************
    PUBLIC FUNCTIONS
*/
void check_PerStatsProcess(void);

/*********************************************************************
    @fn      SimpleBLECentral_Init

    @brief   Initialization function for the Simple BLE Central App Task.
            This is called during initialization and should contain
            any application specific initialization (ie. hardware
            initialization/setup, table initialization, power up
            notification).

    @param   task_id - the ID assigned by OSAL.  This ID should be
                      used to send messages and set timers.

    @return  none
*/
void SimpleBLECentral_Init( uint8 task_id )
{
    simpleBLETaskId = task_id;
    // Setup Central Profile
    {
        uint8 scanRes = DEFAULT_MAX_SCAN_RES;
        GAPCentralRole_SetParameter(GAPCENTRALROLE_MAX_SCAN_RES, sizeof(uint8), &scanRes);
    }
    // Setup GAP
    GAP_SetParamValue(TGAP_GEN_DISC_SCAN, DEFAULT_SCAN_DURATION);
    GAP_SetParamValue(TGAP_LIM_DISC_SCAN, DEFAULT_SCAN_DURATION);
    GAP_SetParamValue(TGAP_CONN_EST_INT_MIN, 20); //  * 1.25ms      // 30
    GAP_SetParamValue(TGAP_CONN_EST_INT_MAX, 20);
    GAP_SetParamValue(TGAP_CONN_EST_SUPERV_TIMEOUT, DEFAULT_UPDATE_CONN_TIMEOUT);
    GGS_SetParameter(GGS_DEVICE_NAME_ATT, GAP_DEVICE_NAME_LEN, (uint8*)simpleBLEDeviceName);
    // Setup the GAP Bond Manager
    {
        uint32 passkey = DEFAULT_PASSCODE;
        uint8 pairMode = GAPBOND_PAIRING_MODE_INITIATE; //GAPBOND_PAIRING_MODE_INITIATE;//DEFAULT_PAIRING_MODE;    // GAPBOND_PAIRING_MODE_NO_PAIRING
        uint8 mitm = DEFAULT_MITM_MODE;
        uint8 ioCap = DEFAULT_IO_CAPABILITIES;
        uint8 bonding = DEFAULT_BONDING_MODE;
        GAPBondMgr_SetParameter(GAPBOND_DEFAULT_PASSCODE, sizeof(uint32), &passkey);
        GAPBondMgr_SetParameter(GAPBOND_PAIRING_MODE, sizeof(uint8), &pairMode);
        GAPBondMgr_SetParameter(GAPBOND_MITM_PROTECTION, sizeof(uint8), &mitm);
        GAPBondMgr_SetParameter(GAPBOND_IO_CAPABILITIES, sizeof(uint8), &ioCap);
        GAPBondMgr_SetParameter(GAPBOND_BONDING_ENABLED, sizeof(uint8), &bonding);
    }

    for (uint8 i = 0; i < RWN_TEST_VAL_LEN - 1; i++)
        rwnTestVal[i] = i;

    // Initialize GATT Client
    VOID GATT_InitClient();
    // Register to receive incoming ATT Indications/Notifications
    GATT_RegisterForInd(simpleBLETaskId);
    // Initialize GATT attributes
    GGS_AddService(GATT_ALL_SERVICES);         // GAP
    GATTServApp_AddService(GATT_ALL_SERVICES); // GATT attributes
    LL_PLUS_PerStats_Init(&g_perStatsByChanTest);

    if(SBC_IS_ERASE_GAPBOND)
    {
        AT_LOG("ERASE GAPBOND Flag is Set, Erase all gapbond record\n");
        GAPBondMgr_SetParameter(GAPBOND_ERASE_ALLBONDS,0,NULL);
        SBC_CLR_ERASE_GAPBOND;
    }

    // Setup a delayed profile startup
    osal_set_event(simpleBLETaskId, START_DEVICE_EVT);
    AT_LOG("[PEER ADDR]");

    for (int i = 0; i < 6; i++)
    {
        simpleBlePeerTarget.addr[i] = *(volatile uint8_t*)(0x11004008 + i);
        AT_LOG("%02x", simpleBlePeerTarget.addr[i]);
    }

    AT_LOG("\n");

    if(simpleBlePeerTarget.addr[0]==0xff)
    {
        AT_LOG("[PEER NAME] L=%d ",osal_strlen((char*)peerDeviceName));
        AT_LOG("%s",peerDeviceName);
        AT_LOG("\n");
        findDevByName=TRUE;
    }
    else
    {
        HCI_LE_AddWhiteListCmd(LL_DEV_ADDR_TYPE_PUBLIC, simpleBlePeerTarget.addr);
        /* code */
    }
}

/*********************************************************************
    @fn      SimpleBLECentral_ProcessEvent

    @brief   Simple BLE Central Application Task event processor.  This function
            is called to process all events for the task.  Events
            include timers, messages and any other user defined events.

    @param   task_id  - The OSAL assigned task ID.
    @param   events - events to process.  This is a bit map and can
                     contain more than one event.

    @return  events not processed
*/
uint16 SimpleBLECentral_ProcessEvent(uint8 task_id, uint16 events)
{
    VOID task_id; // OSAL required parameter that isn't used in this function

    if (events & SYS_EVENT_MSG)
    {
        uint8* pMsg;

        if ((pMsg = osal_msg_receive(simpleBLETaskId)) != NULL)
        {
            simpleBLECentral_ProcessOSALMsg((osal_event_hdr_t*)pMsg);
            // Release the OSAL message
            VOID osal_msg_deallocate(pMsg);
        }

        // return unprocessed events
        return (events ^ SYS_EVENT_MSG);
    }

    if (events & START_DEVICE_EVT)
    {
        // Start the Device
        VOID GAPCentralRole_StartDevice((gapCentralRoleCB_t*)&simpleBLERoleCB);
        // Register with bond manager after starting device
        GAPBondMgr_Register((gapBondCBs_t*)&simpleBLEBondCB);
        return (events ^ START_DEVICE_EVT);
    }

    if (events & CENTRAL_INIT_DONE_EVT)
    {
        LOG("BLE as central Init Done \r\n");

        if(findDevByName==TRUE)
        {
            LOG("find by name,so discover now....");
            simpleBLECentral_DiscoverDevice();
        }
        else
        {
            LOG("find by mac,so connect now....");
            simpleBLECentral_LinkDevice_Direct(ADDRTYPE_PUBLIC,simpleBlePeerTarget.addr);
        }

        return (events ^ CENTRAL_INIT_DONE_EVT);
    }

    if (events & CENTRAL_DISCOVER_DEVDONE_EVT)
    {
        LOG("CENTRAL_DISCOVER_DEVDONE_EVT \n");
        simpleBLECentral_LinkDevice();
        return (events ^ CENTRAL_DISCOVER_DEVDONE_EVT);
    }

    if (events & START_DISCOVERY_SERVICE_EVT)
    {
        if(simpleBleGapBondState==BLE_GapBond_Starting)
        {
            LOG("SMP State[%d]  Pending SDP\n",simpleBleGapBondState);
            osal_start_timerEx(simpleBLETaskId,START_DISCOVERY_SERVICE_EVT,1000);
        }
        else
        {
            simpleBLECentralStartDiscoveryService();
        }

        return (events ^ START_DISCOVERY_SERVICE_EVT);
    }

    // add by zhufei.zhang
    if (events & START_CHAR_DATA_TEST)
    {
        //simpleBLECentral_CharacteristicTest();
//        simpleBLECentral_ReadWriteNotifyTest();
        return (events ^ START_CHAR_DATA_TEST);
    }

    if (events & SBC_CANCEL_CONN)
    {
        if (simpleBLEState != BLE_STATE_CONNECTED) // not connected
        {
            GAPCentralRole_TerminateLink(simpleBLEConnHandle);
            LOG("Establish Link Time Out.\r\n");
        }

        return (events ^ SBC_CANCEL_CONN);
    }

    if (events & SBC_TERMINATED_CONN)
    {
        if (simpleBLEState == BLE_STATE_CONNECTED) // not connected
        {
            GAPCentralRole_TerminateLink(simpleBLEConnHandle);
        }

        LOG("Terminated Link .s%d d%d\r\n", simpleBLEState, simpleBLEConnHandle);
        return (events ^ SBC_TERMINATED_CONN);
    }

    if (events & UPD_CHAN_MAP_EVENT)
    {
        uint8 chanMap[5] = {0xFF, 0xFF, 0xFF, 0xFF, 0x1F};

        if (simpleBLEConnHandle != GAP_CONNHANDLE_INIT )
        {
            if(llPermit_ctrl_procedure(simpleBLEConnHandle))
            {
                HCI_LE_SetHostChanClassificationCmd(chanMap);
                AT_LOG("CHAN MAP\r\n");
            }
            else
                osal_start_timerEx(simpleBLETaskId,UPD_CHAN_MAP_EVENT,500);
        }

        return (events ^ UPD_CHAN_MAP_EVENT);
    }

    if (events & UPD_CONN_PARAM)
    {
        if (simpleBLEConnHandle != GAP_CONNHANDLE_INIT)
        {
            if(llPermit_ctrl_procedure(simpleBLEConnHandle))
            {
                connIntv = ((connIntv + DEFAULT_UPDATE_MIN_CONN_INTERVAL) % DEFAULT_UPDATE_MAX_CONN_INTERVAL);
                connLatency = (connTimeOut / (connIntv << 2));
                AT_LOG("UPD[ %2d %2d %2d %2d]\r\n", connIntv, connIntv, connLatency, connTimeOut);
                GAPCentralRole_UpdateLink(simpleBLEConnHandle, connIntv, connIntv, connLatency, connTimeOut);
            }
            else
                osal_start_timerEx(simpleBLETaskId,UPD_CONN_PARAM,500);
        }

        return (events ^ UPD_CONN_PARAM);
    }

    if (events & UPD_DATA_LENGTH_EVT)
    {
        if (simpleBLEConnHandle != GAP_CONNHANDLE_INIT)
        {
            if(llPermit_ctrl_procedure(simpleBLEConnHandle))
            {
                HCI_LE_SetDataLengthCmd(simpleBLEConnHandle, dleTxOctets, dleTxTime);
                AT_LOG("DLE[ %2d %2d ]\r\n", dleTxOctets, dleTxTime);
            }
            else
                osal_start_timerEx(simpleBLETaskId,UPD_DATA_LENGTH_EVT,500);
        }

        return (events ^ UPD_DATA_LENGTH_EVT);
    }

    if (events & UPD_PHY_MODE_EVT)
    {
        if (simpleBLEConnHandle != GAP_CONNHANDLE_INIT)
        {
            if(llPermit_ctrl_procedure(simpleBLEConnHandle))
            {
                uint8 allPhy = 0x00;
                uint8 txPhy = phyModeCtrl;
                uint8 rxPhy = phyModeCtrl;
                uint16 phyOption = 0x00;
                HCI_LE_SetPhyMode(simpleBLEConnHandle, allPhy, txPhy, rxPhy, phyOption);
                AT_LOG("PHY[ %2d %2d %2d]\r\n", allPhy, txPhy, rxPhy);
            }
            else
                osal_start_timerEx(simpleBLETaskId,UPD_PHY_MODE_EVT,500);
        }

        return (events ^ UPD_PHY_MODE_EVT);
    }

    if (events & SLA_DATA_LENGTH_EVT)
    {
        if (simpleBLEConnHandle != GAP_CONNHANDLE_INIT)
        {
            if(llPermit_ctrl_procedure(simpleBLEConnHandle))
            {
                attWriteReq_t* pReq;
                pReq = osal_mem_alloc(sizeof(attWriteReq_t));
                pReq->sig = FALSE;
                pReq->cmd = TRUE;
                pReq->handle = 0x20;
                pReq->len = 3;
                rwnTestVal[0] = 0x03;
                rwnTestVal[1] = dleTxOctetsSlave;
                rwnTestVal[2] = 0;
                osal_memcpy(pReq->value, rwnTestVal, pReq->len);
                bStatus_t status = GATT_WriteNoRsp(simpleBLEConnHandle, pReq);
                osal_mem_free(pReq);

                if (status != SUCCESS)
                {
                    osal_start_timerEx(simpleBLETaskId, SLA_DATA_LENGTH_EVT, 20);
                    //                AT_LOG("SLA DLE[ %2x ]\r\n",status);
                }
                else
                {
                    AT_LOG("SLA DLE[ %2x %2d ]\r\n", status, dleTxOctetsSlave);
                }
            }
            else
                osal_start_timerEx(simpleBLETaskId,SLA_DATA_LENGTH_EVT,500);
        }

        return (events ^ SLA_DATA_LENGTH_EVT);
    }

    if (events & SLA_PHY_MODE_EVT)
    {
        if (simpleBLEConnHandle != GAP_CONNHANDLE_INIT)
        {
            if(llPermit_ctrl_procedure(simpleBLEConnHandle))
            {
                if (slaCtrlCmd == SLA_1M || slaCtrlCmd == SLA_2M || slaCtrlCmd == SLA_ANY)
                {
                    uint8 allPhy = 0x00;
                    uint8 txPhy = phyModeCtrlSlave;
                    uint8 rxPhy = phyModeCtrlSlave;
                    //                uint16 phyOption = 0x00;
                    attWriteReq_t* pReq;
                    pReq = osal_mem_alloc(sizeof(attWriteReq_t));
                    pReq->sig = FALSE;
                    pReq->cmd = TRUE;
                    pReq->handle = 0x20;
                    pReq->len = 4;
                    rwnTestVal[0] = 0x05;
                    rwnTestVal[1] = allPhy;
                    rwnTestVal[2] = txPhy;
                    rwnTestVal[3] = 0;
                    osal_memcpy(pReq->value, rwnTestVal, pReq->len);
                    bStatus_t status = GATT_WriteNoRsp(simpleBLEConnHandle, pReq);
                    osal_mem_free(pReq);

                    if (status != SUCCESS)
                    {
                        osal_start_timerEx(simpleBLETaskId, SLA_PHY_MODE_EVT, 20);
                        //                AT_LOG("SLA PHY[ %02x ]\r\n",status);
                    }
                    else
                    {
                        AT_LOG("SLA PHY[ %02x %2d %2d %2d]\r\n", status, allPhy, txPhy, rxPhy);
                    }
                }
                else if (slaCtrlCmd == SLA_HCLK16_32KRC ||
                         slaCtrlCmd == SLA_HCLK16_32KXTAL ||
                         slaCtrlCmd == SLA_HCLK48_32KRC ||
                         slaCtrlCmd == SLA_HCLK48_32KXTAL ||
                         slaCtrlCmd == SLA_HCLK64_32KRC ||
                         slaCtrlCmd == SLA_HCLK64_32KXTAL)
                {
                    uint8 slaHclk, sla32k;
                    //slaHclk = (slaCtrlCmd == SLA_HCLK16_32KRC || slaCtrlCmd == SLA_HCLK16_32KXTAL ) ? 0x02:0x03;//16M or 48M
                    //sla32k  = (slaCtrlCmd == SLA_HCLK16_32KRC || slaCtrlCmd == SLA_HCLK48_32KRC ) ? 0x01:0x00;//RC or xtal
                    slaHclk = ( slaCtrlCmd == SLA_HCLK16_32KRC || slaCtrlCmd == SLA_HCLK16_32KXTAL) ? SYS_CLK_XTAL_16M :
                              ((slaCtrlCmd == SLA_HCLK48_32KRC || slaCtrlCmd == SLA_HCLK48_32KXTAL) ? SYS_CLK_DLL_48M : SYS_CLK_DLL_64M); //16M or 48M or 64M
                    sla32k = (slaCtrlCmd == SLA_HCLK16_32KRC ||
                              slaCtrlCmd == SLA_HCLK48_32KRC ||
                              slaCtrlCmd == SLA_HCLK64_32KRC)
                             ? 0x01
                             : 0x00; //RC or xtal
                    attWriteReq_t* pReq;
                    pReq = osal_mem_alloc(sizeof(attWriteReq_t));
                    pReq->sig = FALSE;
                    pReq->cmd = TRUE;
                    pReq->handle = 0x20;
                    pReq->len = 3;
                    rwnTestVal[0] = 0xfc;
                    rwnTestVal[1] = slaHclk;
                    rwnTestVal[2] = sla32k;
                    osal_memcpy(pReq->value, rwnTestVal, pReq->len);
                    bStatus_t status = GATT_WriteNoRsp(simpleBLEConnHandle, pReq);
                    osal_mem_free(pReq);

                    if (status != SUCCESS)
                    {
                        osal_start_timerEx(simpleBLETaskId, SLA_PHY_MODE_EVT, 20);
                        //                AT_LOG("SLA PHY[ %02x ]\r\n",status);
                    }
                    else
                    {
                        AT_LOG("SLA CLK[ %02x %2d %2d]\r\n", status, sla32k, slaHclk);
                    }
                }
                else if (slaCtrlCmd == SLA_CHECK_PER)
                {
                    attWriteReq_t* pReq;
                    pReq = osal_mem_alloc(sizeof(attWriteReq_t));
                    pReq->sig = FALSE;
                    pReq->cmd = TRUE;
                    pReq->handle = 0x20;
                    pReq->len = 1;
                    rwnTestVal[0] = 0xfd;
                    osal_memcpy(pReq->value, rwnTestVal, pReq->len);
                    bStatus_t status = GATT_WriteNoRsp(simpleBLEConnHandle, pReq);
                    osal_mem_free(pReq);

                    if (status != SUCCESS)
                    {
                        osal_start_timerEx(simpleBLETaskId, SLA_PHY_MODE_EVT, 20);
                        //                AT_LOG("SLA PHY[ %02x ]\r\n",status);
                    }
                    else
                    {
                        AT_LOG("SLA PER CHECK[ %02x]\r\n", status);
                    }
                }
            }
            else
                osal_start_timerEx(simpleBLETaskId,SLA_PHY_MODE_EVT,500);
        }

        return (events ^ SLA_PHY_MODE_EVT);
    }

    if(events & SBC_DISCOVERY_SERVICE_TO_EVT)
    {
        LOG("Sys reset by discovery timeout\n");
        hal_system_soft_reset();
        return (events ^ SBC_DISCOVERY_SERVICE_TO_EVT);
    }

    // Discard unknown events
    return 0;
}

/*********************************************************************
    @fn      simpleBLECentral_ProcessOSALMsg

    @brief   Process an incoming task message.

    @param   pMsg - message to process

    @return  none
*/
static void simpleBLECentral_ProcessOSALMsg( osal_event_hdr_t* pMsg )
{
    switch ( pMsg->event )
    {
    case GATT_MSG_EVENT:
        simpleBLECentralProcessGATTMsg( (gattMsgEvent_t*) pMsg );
        break;
    }
}

/*********************************************************************
    @fn      simpleBLECentralProcessGATTMsg

    @brief   Process GATT messages

    @return  none
*/

static void simpleBLECentralProcessGATTMsg( gattMsgEvent_t* pMsg )
{
    if ( simpleBLEState != BLE_STATE_CONNECTED )
    {
        // In case a GATT message came after a connection has dropped,
        // ignore the message
        AT_LOG("[GATT ERR] simpleBLEState= %d msg= %x\n",simpleBLEState,pMsg->method);
        return;
    }

    if(pMsg->hdr.status==bleTimeout)
    {
        AT_LOG("[GATT TO] %x\n",pMsg->method);
        return;
    }

    //AT_LOG("[GATTMsg] [%d] method 0x%02X,reqOpcode 0x%02X\n",pMsg->connHandle,pMsg->method,pMsg->msg.errorRsp.reqOpcode);
    if ( ( pMsg->method == ATT_READ_RSP ) ||
            ( ( pMsg->method == ATT_ERROR_RSP ) &&
              ( pMsg->msg.errorRsp.reqOpcode == ATT_READ_REQ ) ) )
    {
        if ( pMsg->method == ATT_ERROR_RSP )
        {
            //uint8 status = pMsg->msg.errorRsp.errCode;
            LOG( "Read Error %d\r\n", pMsg->msg.errorRsp.errCode );
        }
        else
        {
            // After a successful read, display the read value
            //uint8 valueRead = pMsg->msg.readRsp.value[0];
            LOG( "Read rsp Len : %d\r\n", pMsg->msg.readRsp.len);

            if(pMsg->msg.readRsp.len>20)
            {
                for(unsigned char i = 0; i < 10; i++)
                {
                    LOG( "0x%02X,", pMsg->msg.readRsp.value[i]);
                }

                LOG("<--->");

                for(unsigned char i = pMsg->msg.readRsp.len-10; i < pMsg->msg.readRsp.len; i++)
                {
                    LOG( "0x%02X,", pMsg->msg.readRsp.value[i]);
                }

                LOG("\r\n");
            }
            else
            {
                for(unsigned char i = 0; i < pMsg->msg.readRsp.len; i++)
                {
                    LOG( "0x%02X,", pMsg->msg.readRsp.value[i]);
                }

                LOG("\r\n");
            }
        }

        // osal_start_timerEx( simpleBLETaskId, START_CHAR_DATA_TEST,100 );
        //    simpleBLEProcedureInProgress = FALSE;
    }
    else if ( ( pMsg->method == ATT_WRITE_RSP ) ||
              ( ( pMsg->method == ATT_ERROR_RSP ) &&
                ( pMsg->msg.errorRsp.reqOpcode == ATT_WRITE_REQ ) ) )
    {
        if ( pMsg->method == ATT_ERROR_RSP )
        {
            //uint8 status = pMsg->msg.errorRsp.errCode;
            LOG( "Write Error: %d\r\n", pMsg->msg.errorRsp.errCode );
        }
        else
        {
            // After a succesful write, display the value that was written and increment value
            LOG( "Write sent: %d\r\n", simpleBLECharVal++);
        }

        //osal_start_timerEx( simpleBLETaskId, START_CHAR_DATA_TEST,100 );
        //    simpleBLEProcedureInProgress = FALSE;
    }
    else if( pMsg->method == ATT_HANDLE_VALUE_NOTI  ||
             ( ( pMsg->method == ATT_ERROR_RSP ) &&
               ( pMsg->msg.errorRsp.reqOpcode == ATT_HANDLE_VALUE_NOTI ) ) )
    {
        if ( pMsg->method == ATT_ERROR_RSP ||
                pMsg->msg.handleValueNoti.len > ATT_GetCurrentMTUSize(0)-3 )
        {
            //uint8 status = pMsg->msg.errorRsp.errCode;
            LOG( "Ntf Error: %d\r\n", pMsg->msg.errorRsp.errCode );
        }
        else
        {
            LOG( "Read Ntf Len : %d\r\n", pMsg->msg.handleValueNoti.len);

            if(pMsg->msg.handleValueNoti.len>20)
            {
                for(unsigned char i = 0; i < 10; i++)
                {
                    LOG( "0x%02X,", pMsg->msg.handleValueNoti.value[i]);
                }

                LOG("<--->");

                for(unsigned char i =  pMsg->msg.handleValueNoti.len-10; i < pMsg->msg.handleValueNoti.len; i++)
                {
                    LOG( "0x%02X,", pMsg->msg.handleValueNoti.value[i]);
                }
            }
            else
            {
                for(unsigned char i = 0; i < pMsg->msg.handleValueNoti.len; i++)
                {
                    LOG( "0x%02X,", pMsg->msg.handleValueNoti.value[i]);
                }
            }

            LOG("\r\n");
        }
    }
    else //if ( simpleBLEDiscState != BLE_DISC_STATE_IDLE )
    {
        simpleBLEGATTDiscoveryEvent( pMsg );
    }
}

/*********************************************************************
    @fn      simpleBLECentralRssiCB

    @brief   RSSI callback.

    @param   connHandle - connection handle
    @param   rssi - RSSI

    @return  none
*/
static void simpleBLECentralRssiCB( uint16 connHandle, int8 rssi )
{
    LOG( "RSSI -[%02d]dB\r\n", (255-(uint8) (-rssi)) );
}

/*********************************************************************
    @fn      simpleBLECentralEventCB

    @brief   Central event callback function.

    @param   pEvent - pointer to event structure

    @return  none
*/
static void simpleBLECentralEventCB( gapCentralRoleEvent_t* pEvent )
{
//    static int try_num = 0;
    switch ( pEvent->gap.opcode )
    {
    case GAP_DEVICE_INIT_DONE_EVENT:
    {
        // osal_set_event(simpleBLETaskId,CENTRAL_INIT_DONE_EVT);
        osal_start_timerEx(simpleBLETaskId,CENTRAL_INIT_DONE_EVT,1000);
    }
    break;

    case GAP_DEVICE_INFO_EVENT:
    {
        // only save connectable adv
        if (pEvent->deviceInfo.eventType != GAP_ADRPT_ADV_IND
                && pEvent->deviceInfo.eventType != GAP_ADRPT_ADV_DIRECT_IND
                && pEvent->deviceInfo.eventType != GAP_ADRPT_SCAN_RSP)
            break;

        simpleBLEAddDeviceInfo( pEvent );
    }
    break;

    case GAP_DEVICE_DISCOVERY_EVENT:
    {
        // discovery complete
        // initialize scan index to last device
        simpleBLEScanIdx = simpleBLEScanRes;

        for(unsigned i = 0; i < simpleBLEScanRes ; i++)
        {
            AT_LOG( "[Dev %02d/%02d] ", i+1,simpleBLEScanRes );
            AT_LOG("AdvA [T%02X] :%02X:%02X:%02X:%02X:%02X:%02X ",
                   simpleBLEDevList[i].AddrType,\
                   simpleBLEDevList[i].addr[0],\
                   simpleBLEDevList[i].addr[1],\
                   simpleBLEDevList[i].addr[2],\
                   simpleBLEDevList[i].addr[3],\
                   simpleBLEDevList[i].addr[4],\
                   simpleBLEDevList[i].addr[5]);
            AT_LOG("[AD_Flag %02X] ",simpleBLEDevList[i].Flags);

            if( simpleBLEDevList[i].LocalName.Type )
            {
                AT_LOG("[Name 0x%02X]:",simpleBLEDevList[i].LocalName.Type);
                char name[31];
                osal_memcpy(name,simpleBLEDevList[i].LocalName.Value,simpleBLEDevList[i].LocalName.Length);
                AT_LOG(name);
            }

            AT_LOG("\n");
            LOG("rssi %d\n",simpleBLEDevList[i].rssi);
            LOG("txPower %d\n",simpleBLEDevList[i].TxPower);

            if( simpleBLEDevList[i].UUID.Type )
            {
                LOG("simpleBLEDevList.UUID.Type %d\n",simpleBLEDevList[i].UUID.Type);

                for(unsigned char j=0; j<simpleBLEDevList[i].UUID.Len; j++)
                    LOG("0x%02X,",simpleBLEDevList[i].UUID.Value[j]);

                LOG("\n");
            }

            if( simpleBLEDevList[i].ConnIntervalRange.ConnMin != 0)
            {
                LOG("simpleBLEDevList.ConnIntervalRange.ConnMin 0x%04X,Max 0x%04X\n",\
                    simpleBLEDevList[i].ConnIntervalRange.ConnMin,simpleBLEDevList[i].ConnIntervalRange.ConnMax);
            }

            if( simpleBLEDevList[i].ManufactureData.Length )
            {
                LOG("simpleBLEDevList.ManufactureData Data :");

                for(unsigned char k = 0; k< simpleBLEDevList[i].ManufactureData.Length; k++)
                    LOG("0x%02X,",simpleBLEDevList[i].ManufactureData.Value[k]);

                LOG("\n");
            }

            LOG("\r\n\r\n");
        }

        osal_set_event(simpleBLETaskId,CENTRAL_DISCOVER_DEVDONE_EVT);
    }
    break;

    case GAP_LINK_ESTABLISHED_EVENT:
    {
        AT_LOG("\n== GAP_LINK_ESTABLISHED_EVENT ==\r\n");

        if ( pEvent->gap.hdr.status == SUCCESS )
        {
            simpleBLEState = BLE_STATE_CONNECTED;
            simpleBLEConnHandle = pEvent->linkCmpl.connectionHandle;
            HCI_PPLUS_ConnEventDoneNoticeCmd(simpleBLETaskId, NULL);
            s_linkActiveDuration=osal_getClock();

            //--------------------------------------------------------------------------------------
            //MTU Size Exchange
            if(mtu>23)
            {
                ATT_SetMTUSizeMax(mtu);
                attExchangeMTUReq_t pReq;
                pReq.clientRxMTU = mtu;
                uint8 status =GATT_ExchangeMTU(simpleBLEConnHandle,&pReq, simpleBLETaskId);
                LOG( "[MTU Req]%d %d\n",status,pReq.clientRxMTU);
            }
            else
            {
                ATT_SetMTUSizeMax(23);
            }

            //-------------------------------------------------------------------------------------
            // DLE
            llInitFeatureSetDLE(FALSE);

            if(dleTxOctets>27)
            {
                llInitFeatureSetDLE(TRUE);
                osal_start_timerEx( simpleBLETaskId, UPD_DATA_LENGTH_EVT, 100 );
            }

            //-------------------------------------------------------------------------------------
            //phy update
            HCI_LE_SetDefaultPhyMode(0,0x03,0x01,0x01);
            llInitFeatureSet2MPHY(FALSE);

            if(phyModeCtrl !=0x01)
            {
                llInitFeatureSet2MPHY(TRUE);
                HCI_LE_SetDefaultPhyMode(0,0x00,0x03,0x03);
                osal_start_timerEx( simpleBLETaskId, UPD_PHY_MODE_EVT, 300 );
            }

            HCI_LE_ReadRemoteUsedFeaturesCmd(simpleBLEConnHandle);
            HCI_ReadRemoteVersionInfoCmd(simpleBLEConnHandle);
            osal_start_timerEx( simpleBLETaskId, START_DISCOVERY_SERVICE_EVT, \
                                DEFAULT_SVC_DISCOVERY_DELAY );
            //GAPCentralRole_StartRssi( 0, DEFAULT_RSSI_PERIOD );
        }
        else if(pEvent->gap.hdr.status==LL_STATUS_WARNING_WAITING_LLIRQ)
        {
            AT_LOG( "[WAITING LL_IRQ]. " );
            AT_LOG( "Reason: 0x%02x\r\n", pEvent->gap.hdr.status);
            GAPCentralRole_EstablishLink(   DEFAULT_LINK_HIGH_DUTY_CYCLE,\
                                            DEFAULT_LINK_WHITE_LIST,\
                                            simpleBlePeerTarget.addrType, \
                                            simpleBlePeerTarget.addr );
        }
        else
        {
            simpleBLEState = BLE_STATE_IDLE;
            simpleBLEConnHandle = GAP_CONNHANDLE_INIT;
            simpleBLEDiscState = BLE_DISC_STATE_IDLE;
            osal_start_timerEx( simpleBLETaskId, CENTRAL_INIT_DONE_EVT, \
                                1000 );
        }

        #if(DEBUG_INFO)
        extern void ll_dbg_show(void);
        ll_dbg_show();
        #endif
    }
    break;

    case GAP_LINK_TERMINATED_EVENT:
    {
        simpleBLEState = BLE_STATE_IDLE;
        simpleBLEConnHandle = GAP_CONNHANDLE_INIT;
        simpleBLEDiscState = BLE_DISC_STATE_IDLE;
        simpleBleGapBondState = BLE_GapBond_IDLE;
        s_linkActiveDuration = osal_getClock()-s_linkActiveDuration;
        AT_LOG("[TVEC] LinkActiveDura %08d sec DISC.R[0x%2x]\n",s_linkActiveDuration,pEvent->linkTerminate.reason);
        check_PerStatsProcess();
        AT_LOG("[PMCNT] rdErr %d rstErr %d trgErr %d\n",g_pmCounters.ll_rfifo_read_err,g_pmCounters.ll_rfifo_rst_err,g_pmCounters.ll_trigger_err);
        // Terminate Link , memset SimpleGattScanServer structure
        osal_memset(&SimpleClientInfo,0,sizeof(SimpleGattScanServer));
        osal_memset(simpleBLEDevList,0,sizeof(SimpleClientADV_ScanData)*DEFAULT_MAX_SCAN_RES);
        osal_start_timerEx( simpleBLETaskId, CENTRAL_INIT_DONE_EVT, \
                            1*1000 );
        osal_stop_timerEx( simpleBLETaskId, START_CHAR_DATA_TEST);
        osal_stop_timerEx( simpleBLETaskId, SBC_DISCOVERY_SERVICE_TO_EVT);
        GAPCentralRole_CancelRssi( 0 );
        rwnTestCnt=0;
        #if(DEBUG_INFO)
        extern void ll_dbg_show(void);
        ll_dbg_show();
        #endif
    }
    break;

    case GAP_LINK_PARAM_UPDATE_EVENT:
    {
        LOG( "Server Request for Param Update\r\n");
    }
    break;

    default:
        LOG(" simpleBLECentralEventCB --> pEvent->gap.opcode: 0x%02X\r\n", pEvent->gap.opcode);
        break;
    }
}

/*********************************************************************
    @fn      pairStateCB

    @brief   Pairing state callback.

    @return  none
*/
static void simpleBLECentralPairStateCB( uint16 connHandle, uint8 state, uint8 status )
{
    LOG("simpleBLECentralPairStateCB in param state 0x%02X,status 0x%02X\r\n",state,status);

    if ( state == GAPBOND_PAIRING_STATE_STARTED )
    {
        simpleBleGapBondState = BLE_GapBond_Starting;
        LOG( "Pairing started\n" );
    }
    else if ( state == GAPBOND_PAIRING_STATE_COMPLETE )
    {
        if ( status == SUCCESS )
        {
            simpleBleGapBondState = BLE_GapBond_Paring_OK;
            LOG( "Pairing success\n" );
        }
        else
        {
            simpleBleGapBondState = BLE_GapBond_Paring_FAIL;
            LOG( "Pairing fail\n" );
        }
    }
    else if ( state == GAPBOND_PAIRING_STATE_BONDED )
    {
        if ( status == SUCCESS )
        {
            simpleBleGapBondState = BLE_GapBond_Bond_OK;
            LOG( "Bonding success\n" );
        }
        else
        {
            simpleBleGapBondState = BLE_GapBond_Bond_FAIL;
            LOG( "Bonding fail\n" );
        }
    }
}

/*********************************************************************
    @fn      simpleBLECentralPasscodeCB

    @brief   Passcode callback.

    @return  none
*/
static void simpleBLECentralPasscodeCB( uint8* deviceAddr, uint16 connectionHandle,
                                        uint8 uiInputs, uint8 uiOutputs )
{
    LOG("simpleBLECentralPasscodeCB\r\n");
    uint32  passcode;
    passcode=DEFAULT_PASSCODE;
    GAPBondMgr_PasscodeRsp( connectionHandle, SUCCESS, passcode );
}

/*********************************************************************
    @fn      simpleBLECentralStartDiscoveryService

    @brief   Start service discovery.

    @return  none
*/
static void simpleBLECentralStartDiscoveryService( void )
{
    // add by zhufei.zhang 2018.10.25
    // before start discovery , memset the variable
    osal_memset(&SimpleClientInfo,0,sizeof(SimpleGattScanServer));
    volatile uint8 uuid[ATT_BT_UUID_SIZE] = { LO_UINT16(SIMPLEPROFILE_SERV_UUID),
                                              HI_UINT16(SIMPLEPROFILE_SERV_UUID)
                                            };
    simpleBLEDiscState = BLE_DISC_STATE_SVC;
    // Discovery simple BLE service
    uint8_t ret = GATT_DiscAllPrimaryServices(simpleBLEConnHandle,simpleBLETaskId);
    LOG("==>simpleBLECentralStartDiscoveryService  st %d\n",ret);

    if(ret!=SUCCESS)
    {
        uint32 retry_dly = 1000;//ms
        osal_start_timerEx( simpleBLETaskId, START_DISCOVERY_SERVICE_EVT, retry_dly);
        LOG("Retry sdp after %d ms\n",retry_dly);
    }

    //osal_start_timerEx( simpleBLETaskId, SBC_DISCOVERY_SERVICE_TO_EVT,6000 );
}

/*********************************************************************
    @fn      simpleBLEGATTDiscoveryEvent

    @brief   Process GATT discovery event

    @return  none
*/
static void simpleBLEGATTDiscoveryEvent( gattMsgEvent_t* pMsg )
{
    volatile attReadByTypeReq_t req;

    if ( simpleBLEDiscState == BLE_DISC_STATE_SVC )
    {
        // add by zhufei.zhang 2018/10/24
        if( ( pMsg->method ==  ATT_READ_BY_GRP_TYPE_RSP) &&
                ( pMsg->msg.readByGrpTypeRsp.numGrps > 0 ) )
        {
            for(unsigned char i = 0 ; i < pMsg->msg.readByGrpTypeRsp.numGrps; i++)
            {
                // Current Attribute LEN
                SimpleClientInfo.ServerGroupService[SimpleClientInfo.PrimaryServiceCnt].Attribute_Data_Len = \
                        pMsg->msg.readByGrpTypeRsp.len;
                // Current Attribute Handle
                SimpleClientInfo.ServerGroupService[SimpleClientInfo.PrimaryServiceCnt].Attribute_StartHandle = \
                        BUILD_UINT16(   pMsg->msg.readByGrpTypeRsp.dataList[pMsg->msg.readByGrpTypeRsp.len * i], \
                                        pMsg->msg.readByGrpTypeRsp.dataList[pMsg->msg.readByGrpTypeRsp.len * i + 1]);
                // Current Attribute End Group Handle
                SimpleClientInfo.ServerGroupService[SimpleClientInfo.PrimaryServiceCnt].End_Group_Handle = \
                        BUILD_UINT16(   pMsg->msg.readByGrpTypeRsp.dataList[pMsg->msg.readByGrpTypeRsp.len * i+2], \
                                        pMsg->msg.readByGrpTypeRsp.dataList[pMsg->msg.readByGrpTypeRsp.len * i + 3]);
                // Caculate Primary Service UUID Length
                SimpleClientInfo.ServerGroupService[SimpleClientInfo.PrimaryServiceCnt].UUID_Len = \
                        pMsg->msg.readByGrpTypeRsp.len - 4;
                // Copy UUID
                osal_memcpy(SimpleClientInfo.ServerGroupService[SimpleClientInfo.PrimaryServiceCnt].UUID,\
                            &(pMsg->msg.readByGrpTypeRsp.dataList[pMsg->msg.readByGrpTypeRsp.len * i + 4]),\
                            SimpleClientInfo.ServerGroupService[SimpleClientInfo.PrimaryServiceCnt].UUID_Len);
                // Primary Service Count Index ++
                SimpleClientInfo.PrimaryServiceCnt++;
            }
        }
        else if ( ( pMsg->method == ATT_READ_BY_GRP_TYPE_RSP  &&
                    pMsg->hdr.status == bleProcedureComplete ) ||
                  ( pMsg->method == ATT_ERROR_RSP ) )
        {
            // Primary Service Discover OK , Prepare Discover Characteristic
            simpleBLEDiscState = BLE_DISC_STATE_CHAR;

            if( SimpleClientInfo.PrimaryServiceCnt > 0 )
            {
                // Characteristic Find Index Init
                SimpleClientInfo.PrimaryCharacIndex = 0;
                SimpleClientInfo.CharacFindIndex = 0;
                GATT_DiscAllChars(  simpleBLEConnHandle,
                                    SimpleClientInfo.ServerGroupService[SimpleClientInfo.PrimaryCharacIndex].Attribute_StartHandle,\
                                    SimpleClientInfo.ServerGroupService[SimpleClientInfo.PrimaryCharacIndex].End_Group_Handle,
                                    simpleBLETaskId );
            }
        }
    }
    else if ( simpleBLEDiscState == BLE_DISC_STATE_CHAR )
    {
        // Characteristic found, store handle
        if ( pMsg->method == ATT_READ_BY_TYPE_RSP &&
                pMsg->msg.readByTypeRsp.numPairs > 0 )
        {
            // Iterate through all three pairs found.
            for(unsigned char i = 0; i < pMsg->msg.readByTypeRsp.numPairs ; i++)
            {
                // Extract the starting handle, ending handle, and UUID of the current characteristic.
                // characteristic Handle
                SimpleClientInfo.ServerGroupService[SimpleClientInfo.PrimaryCharacIndex].Characteristic[SimpleClientInfo.CharacFindIndex].charStartHandle = \
                        BUILD_UINT16(   pMsg->msg.readByTypeRsp.dataList[pMsg->msg.readByTypeRsp.len * i], \
                                        pMsg->msg.readByTypeRsp.dataList[pMsg->msg.readByTypeRsp.len * i + 1]);
                // Characteristic Properties
                SimpleClientInfo.ServerGroupService[SimpleClientInfo.PrimaryCharacIndex].Characteristic[SimpleClientInfo.CharacFindIndex].Properties = \
                        pMsg->msg.readByTypeRsp.dataList[pMsg->msg.readByTypeRsp.len * i + 2];
                // Characteristic UUID
                SimpleClientInfo.ServerGroupService[SimpleClientInfo.PrimaryCharacIndex].Characteristic[SimpleClientInfo.CharacFindIndex].charUuid = \
                        BUILD_UINT16(   pMsg->msg.readByTypeRsp.dataList[pMsg->msg.readByTypeRsp.len * i + 5], \
                                        pMsg->msg.readByTypeRsp.dataList[pMsg->msg.readByTypeRsp.len * i + 6]);
                SimpleClientInfo.CharacFindIndex++;
            }
        }
        else if(( pMsg->method == ATT_READ_BY_TYPE_RSP  &&
                  pMsg->hdr.status == bleProcedureComplete ) ||
                ( pMsg->method == ATT_ERROR_RSP ))
        {
            SimpleClientInfo.ServerGroupService[SimpleClientInfo.PrimaryCharacIndex].CharacNum = \
                    SimpleClientInfo.CharacFindIndex;
            SimpleClientInfo.CharacFindIndex = 0;
            AT_LOG(" Service 0x%02X%02X Characteristic Find Success \r\n",\
                   SimpleClientInfo.ServerGroupService[SimpleClientInfo.PrimaryCharacIndex].UUID[1],\
                   SimpleClientInfo.ServerGroupService[SimpleClientInfo.PrimaryCharacIndex].UUID[0]);

            for(unsigned char i = 0; i< SimpleClientInfo.ServerGroupService[SimpleClientInfo.PrimaryCharacIndex].CharacNum; i++)
            {
                AT_LOG("Chars found handle is is:0x%04X,Properties is: 0x%02X,uuid is:0x%04X\r\n", \
                       SimpleClientInfo.ServerGroupService[SimpleClientInfo.PrimaryCharacIndex].Characteristic[i].charStartHandle,\
                       SimpleClientInfo.ServerGroupService[SimpleClientInfo.PrimaryCharacIndex].Characteristic[i].Properties,\
                       SimpleClientInfo.ServerGroupService[SimpleClientInfo.PrimaryCharacIndex].Characteristic[i].charUuid);
            }

            if(++SimpleClientInfo.PrimaryCharacIndex < SimpleClientInfo.PrimaryServiceCnt)
            {
                GATT_DiscAllChars(  simpleBLEConnHandle,
                                    SimpleClientInfo.ServerGroupService[SimpleClientInfo.PrimaryCharacIndex].Attribute_StartHandle,\
                                    SimpleClientInfo.ServerGroupService[SimpleClientInfo.PrimaryCharacIndex].End_Group_Handle,
                                    simpleBLETaskId );
            }
            else
            {
                AT_LOG("All Characteristic Discover Success Total PrimaryServ %d\r\n",SimpleClientInfo.PrimaryServiceCnt);
                simpleBLEDiscState = BLE_DISC_STATE_IDLE;
                #if (SBC_SBP_TEST_MODE_CFG == SBC_SBP_TEST_MODE_AUTO_RESET)

                if(simpleBleGapBondState== BLE_GapBond_Bond_OK)
                {
                    SBC_SET_ERASE_GAPBOND;
                    AT_LOG("Bonding  Success Set Erase Bonds Flag\n");
                }

                AT_LOG("system softreset....\n");
                hal_system_soft_reset();
#elif(SBC_SBP_TEST_MODE_CFG == SBC_SBP_TEST_MODE_AUTO_DISCONNET)
                AT_LOG("Set SBC_TERMINATED_CONN Evt\n");
                osal_set_event(simpleBLETaskId,SBC_TERMINATED_CONN);
                #else

                //after sdp and before  char_data_test ,trigger sla to update dle and phymode
                if(dleTxOctetsSlave>27)
                {
                    llInitFeatureSetDLE(TRUE);
                    osal_start_timerEx( simpleBLETaskId, SLA_DATA_LENGTH_EVT, 100 );
                }

                if(phyModeCtrlSlave>0)
                {
                    llInitFeatureSet2MPHY(TRUE);
                    HCI_LE_SetDefaultPhyMode(0,0x00,0x03,0x03);
                    osal_start_timerEx( simpleBLETaskId, SLA_PHY_MODE_EVT, 300 );
                }

                osal_start_timerEx( simpleBLETaskId, START_CHAR_DATA_TEST,500 );
                #endif
            }
        }
    }
    else
    {
        LOG("simpleBLEDiscState = BLE_DISC_STATE_IDLE \r\n");
    }
}

/*********************************************************************
    @fn      simpleBLECentral_CharacteristicTest

    @brief   Send Data To BLE Server

    @return  none
*/
#if 0
static void simpleBLECentral_CharacteristicTest(void)
{
    attWriteReq_t* pReq;
    attReadReq_t* pReqread;
    uint8 Val[20] = {0x00,0xC8,0x14};
    static uint8_t PrimaryServiceCnt = 0;
    static uint8_t PrimaryCharacIndex = 0;
    static uint8_t Properties = 0;
    static uint8_t SameCharacBusy = FALSE;

    if( PrimaryServiceCnt >= SimpleClientInfo.PrimaryServiceCnt )
        return;

    if( !SameCharacBusy )
    {
        if( PrimaryServiceCnt < SimpleClientInfo.PrimaryServiceCnt )
        {
            if( PrimaryCharacIndex < SimpleClientInfo.ServerGroupService[PrimaryServiceCnt].CharacNum )
            {
                Properties = SimpleClientInfo.ServerGroupService[PrimaryServiceCnt].Characteristic[PrimaryCharacIndex].Properties;
//              LOG("Should Update Properties Value \r\n");
                SameCharacBusy = TRUE;
            }
            else
            {
                PrimaryServiceCnt++;
                PrimaryCharacIndex = 0;
                LOG("Check Next Char Idx %d\n",PrimaryServiceCnt);
                osal_start_timerEx( simpleBLETaskId, START_CHAR_DATA_TEST,100 );
                return;
            }
        }
    }

    LOG("Service UUID : 0x%02X%02X, Characteristic UUID:0x%04X ,PrimaryServiceCnt %d,PrimaryCharacIndex %d,Properties 0x%02X\r\n",\
        SimpleClientInfo.ServerGroupService[PrimaryServiceCnt].UUID[1],\
        SimpleClientInfo.ServerGroupService[PrimaryServiceCnt].UUID[0],\
        SimpleClientInfo.ServerGroupService[PrimaryServiceCnt].Characteristic[PrimaryCharacIndex].charUuid,PrimaryServiceCnt,PrimaryCharacIndex,Properties);

    if( ( Properties & GATT_PROP_BCAST ) || \
            ( Properties & GATT_PROP_WRITE_NO_RSP ) || \
            ( Properties & GATT_PROP_INDICATE ) || \
            ( Properties & GATT_PROP_AUTHEN ) || \
            ( Properties & GATT_PROP_EXTENDED ))
    {
        LOG("Come Here \r\n");
        Properties &= ~(    GATT_PROP_BCAST | GATT_PROP_WRITE_NO_RSP | GATT_PROP_INDICATE | GATT_PROP_AUTHEN | \
                            GATT_PROP_EXTENDED);
        osal_start_timerEx( simpleBLETaskId, START_CHAR_DATA_TEST,100 );
    }
    else if( Properties & GATT_PROP_READ )
    {
        Properties &= ~GATT_PROP_READ;
        pReqread = osal_mem_alloc(sizeof(attReadReq_t));
        pReqread->handle = SimpleClientInfo.ServerGroupService[PrimaryServiceCnt].\
                           Characteristic[PrimaryCharacIndex].charStartHandle + Characteristic_ValueIndex;
        bStatus_t status = GATT_ReadCharValue( simpleBLEConnHandle, pReqread, simpleBLETaskId );

        if(status == SUCCESS)
        {
            LOG("GATT_ReadCharDesc success \r\n");
        }
        else
        {
            LOG("GATT_ReadCharDesc ERROR %d\r\n",status);
        }

        osal_mem_free(pReqread);
    }
    else if( Properties & GATT_PROP_WRITE )
    {
        Properties &= ~GATT_PROP_WRITE;
        pReq = osal_mem_alloc(sizeof(attWriteReq_t));
        osal_memcpy(pReq->value, Val, 3);
        pReq->sig = 0;
        pReq->cmd = 0;
        pReq->handle = SimpleClientInfo.ServerGroupService[PrimaryServiceCnt].\
                       Characteristic[PrimaryCharacIndex].charStartHandle + Characteristic_ValueIndex;

        if( PrimaryServiceCnt == 3 && PrimaryCharacIndex == 0 )
            pReq->len = 16;
        else if( PrimaryServiceCnt == 3 && (PrimaryCharacIndex > 0 && PrimaryCharacIndex < 3) )
            pReq->len = 2;
        else if( PrimaryServiceCnt == 3 && PrimaryCharacIndex == 3 )
            pReq->len = 1;
        else
            pReq->len = 3;

        bStatus_t status = GATT_WriteCharValue(simpleBLEConnHandle, pReq, simpleBLETaskId);

        if(status == SUCCESS)
        {
            LOG("GATT_WriteCharValue success \r\n");
        }
        else
        {
            LOG("GATT_WriteCharValue ERROR %d\r\n",status);
        }

        osal_mem_free(pReq);
    }
    else if( Properties & GATT_PROP_NOTIFY )
    {
        Properties &= ~GATT_PROP_NOTIFY;
        pReq = osal_mem_alloc(sizeof(attWriteReq_t));
        pReq->sig = 0;
        pReq->cmd = 0;
        pReq->handle = SimpleClientInfo.ServerGroupService[PrimaryServiceCnt].\
                       Characteristic[PrimaryCharacIndex].charStartHandle + Characteristic_NotifyIndex;
        pReq->len = 2;
        pReq->value[0] = (unsigned char)(GATT_CLIENT_CFG_NOTIFY);
        pReq->value[1] = (unsigned char)(GATT_CLIENT_CFG_NOTIFY >> 8);
        bStatus_t status = GATT_WriteCharValue(simpleBLEConnHandle, pReq, simpleBLETaskId);

        if(status == SUCCESS)
        {
            LOG("GATT_WriteCharValue Notify success \r\n");
        }
        else
        {
            LOG("GATT_WriteCharValue Notify ERROR %d\r\n",status);
        }

        osal_mem_free(pReq);
    }
    else
    {
        PrimaryCharacIndex++;
        SameCharacBusy = FALSE;
        osal_start_timerEx( simpleBLETaskId, START_CHAR_DATA_TEST,100 );
    }
}
#endif
static void simpleBLECentral_ReadWriteNotifyTest(void)
{
    attWriteReq_t* pReq;
    //attReadReq_t *pReqread;

    if(rwnTestCnt==0)
    {
        pReq = osal_mem_alloc(sizeof(attWriteReq_t));
        pReq->sig = 0;
        pReq->cmd = TRUE;
        pReq->handle = 0x2c;
        pReq->len = 2;
        pReq->value[0] = (unsigned char)(GATT_CLIENT_CFG_NOTIFY);
        pReq->value[1] = (unsigned char)(GATT_CLIENT_CFG_NOTIFY >> 8);
        bStatus_t status = GATT_WriteNoRsp(simpleBLEConnHandle, pReq);
        osal_mem_free(pReq);
    }
    else if(rwnTestCnt==1)
    {
        for(int i=0; i<3; i++)
        {
            pReq = osal_mem_alloc(sizeof(attWriteReq_t));
            pReq->sig = 0;
            pReq->cmd = TRUE;
            pReq->handle = 0x2f;
            pReq->len = 180;
            rwnTestVal[0]=0x01;
            rwnTestVal[1]+=1;
            rwnTestVal[2]=0;
            rwnTestVal[3]=0;
            rwnTestVal[4]=0x05;
            osal_memcpy(pReq->value, rwnTestVal, pReq->len );
            bStatus_t status = GATT_WriteNoRsp(simpleBLEConnHandle, pReq);
            osal_mem_free(pReq);
        }
    }

    if(rwnTestCnt==0)
    {
        rwnTestCnt=1;
    }

    osal_start_timerEx( simpleBLETaskId, START_CHAR_DATA_TEST, 500 );
}
/*********************************************************************
    @fn      simpleBLEAddDeviceInfo

    @brief   Add a device to the device discovery result list

    @return  none
*/
static void simpleBLEAddDeviceInfo( gapCentralRoleEvent_t* pEvent )
{
    const uint8_t ZeroBuf[B_ADDR_LEN]= {0,0,0,0,0,0};
    uint8_t Addr_Index=0;

    if( ( pEvent->deviceInfo.opcode != GAP_DEVICE_INFO_EVENT ) || \
            ( simpleBLEScanRes >= DEFAULT_MAX_SCAN_RES))
        return;

    // retrieve the ADDR Index
    for(uint8_t i=0; i < DEFAULT_MAX_SCAN_RES; i++)
    {
        if( ( osal_memcmp( simpleBLEDevList[i].addr, ZeroBuf, B_ADDR_LEN ) ) || \
                ( osal_memcmp( pEvent->deviceInfo.addr, simpleBLEDevList[i].addr, B_ADDR_LEN )))
        {
            Addr_Index = i;
            break;
        }
    }

    if( Addr_Index < simpleBLEScanRes)
    {
        // update simpleBLEDevList[Addr_Index]
        simpleBLEDevList[Addr_Index].rssi = pEvent->deviceInfo.rssi;

        if( !simpleBLEDevList[Addr_Index].RSP_ReadFlag )
        {
            if( pEvent->deviceInfo.eventType == GAP_ADRPT_SCAN_RSP )
            {
                // Analysis Scan RSP data
                simpleBLEAnalysisADVDATA(Addr_Index, &(pEvent->deviceInfo));
                simpleBLEDevList[Addr_Index].RSP_ReadFlag = TRUE;
            }
        }
    }
    else
    {
        // first commit simpleBLEDevList[Addr_Index]
        simpleBLEDevList[Addr_Index].rssi = pEvent->deviceInfo.rssi;
        // Mac Address Type
        simpleBLEDevList[Addr_Index].AddrType = pEvent->deviceInfo.addrType;
        // Mac Address
        osal_memcpy( simpleBLEDevList[Addr_Index].addr, pEvent->deviceInfo.addr, B_ADDR_LEN );

        if( pEvent->deviceInfo.eventType == GAP_ADRPT_ADV_IND )
        {
            // Analysis Adv data
            simpleBLEAnalysisADVDATA(Addr_Index, &(pEvent->deviceInfo));
        }

        // Increment scan result count
        simpleBLEScanRes++;
    }
}

/*********************************************************************
    @fn      simpleBLEAnalysisADVDATA

    @brief   Analysis received Advertising data and SCAN RSP Data

    @return  none
*/
static void simpleBLEAnalysisADVDATA(uint8 Index,gapDeviceInfoEvent_t* pData)
{
    int8 DataLength;
    int8 New_ADStructIndex = 0;
    int8 AD_Length = 0;
    uint8_t AD_Type;
    DataLength = pData->dataLen;

    while(DataLength)
    {
        New_ADStructIndex += AD_Length;
        // DATA FORMAT : Length + AD Type + AD Data
        //AD_Length = pData->pEvtData[pData->dataLen - DataLength];
        AD_Length = pData->pEvtData[New_ADStructIndex];
        AD_Type = pData->pEvtData[New_ADStructIndex+1];

        if(AD_Length<2 || AD_Length>0x1f)
        {
            AT_LOG("[AD_TYPE] ERR LEN %02x %02x\n",AD_Type,AD_Length);
            break;
        }

        switch(AD_Type)
        {
        case GAP_ADTYPE_FLAGS:
            simpleBLEDevList[Index].Flags = pData->pEvtData[New_ADStructIndex+2];
            break;

        case GAP_ADTYPE_16BIT_MORE:
        case GAP_ADTYPE_16BIT_COMPLETE:
        case GAP_ADTYPE_32BIT_MORE:
        case GAP_ADTYPE_32BIT_COMPLETE:
        case GAP_ADTYPE_128BIT_MORE:
        case GAP_ADTYPE_128BIT_COMPLETE:
            simpleBLEDevList[Index].UUID.Type = AD_Type;

            while( AD_Length - 1 - simpleBLEDevList[Index].UUID.Len)
            {
                if( ( AD_Type == GAP_ADTYPE_16BIT_MORE) || ( AD_Type == GAP_ADTYPE_16BIT_COMPLETE))
                {
                    simpleBLEDevList[Index].UUID.Len += ATT_BT_UUID_SIZE;
                }
                else if( ( AD_Type == GAP_ADTYPE_32BIT_MORE) || ( AD_Type == GAP_ADTYPE_32BIT_COMPLETE))
                {
                    simpleBLEDevList[Index].UUID.Len += ATT_BT_UUID_SIZE<<1;
                }
                else
                {
                    simpleBLEDevList[Index].UUID.Len += ATT_UUID_SIZE;
                }

                if(AD_Length< 1 + simpleBLEDevList[Index].UUID.Len)
                {
                    AT_LOG("[AD_TYPE] ERR UUID %02x %02x\n",AD_Type,AD_Length);
                    simpleBLEDevList[Index].UUID.Len = AD_Length-1;
                    break;
                }
            }

            osal_memcpy(    simpleBLEDevList[Index].UUID.Value,\
                            &(pData->pEvtData[New_ADStructIndex+2]),\
                            simpleBLEDevList[Index].UUID.Len);
            break;

        case GAP_ADTYPE_LOCAL_NAME_SHORT:
        case GAP_ADTYPE_LOCAL_NAME_COMPLETE:
            simpleBLEDevList[Index].LocalName.Type = AD_Type;
            simpleBLEDevList[Index].LocalName.Length = AD_Length - 1;
            osal_memcpy(    simpleBLEDevList[Index].LocalName.Value,&(pData->pEvtData[New_ADStructIndex+2]),\
                            simpleBLEDevList[Index].LocalName.Length);
            break;

        case GAP_ADTYPE_POWER_LEVEL:
            simpleBLEDevList[Index].TxPower = pData->pEvtData[New_ADStructIndex+2];
            break;

        case GAP_ADTYPE_OOB_CLASS_OF_DEVICE:
        case GAP_ADTYPE_OOB_SIMPLE_PAIRING_HASHC:
        case GAP_ADTYPE_OOB_SIMPLE_PAIRING_RANDR:
            break;

        case GAP_ADTYPE_SM_TK:
            break;

        case GAP_ADTYPE_SM_OOB_FLAG:
            break;

        case GAP_ADTYPE_SLAVE_CONN_INTERVAL_RANGE:
            simpleBLEDevList[Index].ConnIntervalRange.ConnMin = BUILD_UINT16(pData->pEvtData[New_ADStructIndex+2],\
                                                                             pData->pEvtData[New_ADStructIndex+3]);
            simpleBLEDevList[Index].ConnIntervalRange.ConnMax = BUILD_UINT16(pData->pEvtData[New_ADStructIndex+4],\
                                                                             pData->pEvtData[New_ADStructIndex+5]);
            break;

        case GAP_ADTYPE_SIGNED_DATA:
            break;

        case GAP_ADTYPE_SERVICES_LIST_16BIT:
        case GAP_ADTYPE_SERVICES_LIST_128BIT:
            simpleBLEDevList[Index].ServiceSolicitation.Type = AD_Type;

            if( AD_Type ==  GAP_ADTYPE_SERVICES_LIST_16BIT)
                simpleBLEDevList[Index].ServiceSolicitation.Len = ATT_BT_UUID_SIZE;
            else
                simpleBLEDevList[Index].ServiceSolicitation.Len = ATT_UUID_SIZE;

            osal_memcpy(    simpleBLEDevList[Index].ServiceSolicitation.Value,\
                            &(pData->pEvtData[New_ADStructIndex+2]),\
                            simpleBLEDevList[Index].ServiceSolicitation.Len);
            break;

        case GAP_ADTYPE_SERVICE_DATA:
            break;

        case GAP_ADTYPE_APPEARANCE:
            break;

        case GAP_ADTYPE_MANUFACTURER_SPECIFIC:
            simpleBLEDevList[Index].ManufactureData.Length = AD_Length - 1;
            osal_memcpy(simpleBLEDevList[Index].ManufactureData.Value,&(pData->pEvtData[New_ADStructIndex+2]),\
                        simpleBLEDevList[Index].ManufactureData.Length);
            break;

        default:
            break;
        }

        AD_Length++;
        DataLength -= AD_Length;
    }
}

/*********************************************************************
    @fn      bdAddr2Str

    @brief   Convert Bluetooth address to string

    @return  none
*/
char* bdAddr2Str( uint8* pAddr )
{
    uint8       i;
    char        hex[] = "0123456789ABCDEF";
    static char str[B_ADDR_STR_LEN];
    char*        pStr = str;
//  *pStr++ = '0';
//  *pStr++ = 'x';
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

static void simpleBLECentral_DiscoverDevice(void)
{
    simpleBLEScanRes = simpleBLEScanIdx = 0;
    osal_memset(simpleBLEDevList,0,sizeof(SimpleClientADV_ScanData)*DEFAULT_MAX_SCAN_RES);
    bStatus_t stu = GAPCentralRole_StartDiscovery( DEFAULT_DISCOVERY_MODE,
                                                   TRUE/*DEFAULT_DISCOVERY_ACTIVE_SCAN*/,      // passive scan
                                                   FALSE/*DEFAULT_DISCOVERY_WHITE_LIST*/ );
    AT_LOG("simpleBLECentral_DiscoverDevice Return Value :%d\n",stu);
}

static void simpleBLECentral_LinkDevice_Direct(uint8_t p_Type,uint8_t p_addr[])
{
    uint8_t    peer_AddrType;
    uint8_t    peer_addr[B_ADDR_LEN];
    peer_AddrType=p_Type;
    osal_memcpy(peer_addr,p_addr,B_ADDR_LEN);
    AT_LOG("Start EstablishLink Direct!!! \r\n");
    simpleBLEState = BLE_STATE_CONNECTING;
    // Note: if the peer addrType is not PUBLIC, the MSB of peerAddr will be adjusted by function gapAddAddrAdj()
    GAPCentralRole_EstablishLink(   DEFAULT_LINK_HIGH_DUTY_CYCLE,\
                                    DEFAULT_LINK_WHITE_LIST,\
                                    peer_AddrType, \
                                    peer_addr);
}

static void simpleBLECentral_LinkDevice(void)
{
    int8 Index=-1;
    LOG("simpleBLECentral_LinkDevice simpleBLEScanRes: %d\n",simpleBLEScanRes);

    if ( simpleBLEScanRes > 0 )
    {
        for(uint8_t i = 0; i< simpleBLEScanRes; i++)
        {
            if(findDevByName)
            {
                if(simpleBLEDevList[i].LocalName.Length==osal_strlen((char*)peerDeviceName))
                {
                    if(osal_memcmp(simpleBLEDevList[i].LocalName.Value,peerDeviceName, simpleBLEDevList[i].LocalName.Length))
                    {
                        Index = i;
                        break;
                    }
                }
            }
            else
            {
                if(osal_memcmp(simpleBLEDevList[i].addr,simpleBlePeerTarget.addr, B_ADDR_LEN))
                {
                    Index = i;
                    break;
                }
            }
        }
    }

//  Index=-1;
    AT_LOG("simpleBLEScanRes %d,Index %d\r\n",simpleBLEScanRes,Index);

    if( Index >= 0)
    {
        AT_LOG("Start EstablishLink \r\n");
        simpleBLEState = BLE_STATE_CONNECTING;
        // Note: if the peer addrType is not PUBLIC, the MSB of peerAddr will be adjusted by function gapAddAddrAdj()
        GAPCentralRole_EstablishLink(   DEFAULT_LINK_HIGH_DUTY_CYCLE,\
                                        DEFAULT_LINK_WHITE_LIST,\
                                        simpleBLEDevList[Index].AddrType, \
                                        simpleBLEDevList[Index].addr );
    }
    else
    {
        AT_LOG("simpleBlePeerTarget Device Not found \r\n");
        osal_start_timerEx( simpleBLETaskId, CENTRAL_INIT_DONE_EVT, \
                            2*1000 );
    }
}

void check_PerStatsProcess(void)
{
    perStats_t perStats;
    uint16 perRxNumTotal=0;
    uint16 perRxCrcErrTotal=0;
    uint16 perTxNumTotal=0;
    uint16 perTxAckTotal=0;
    uint16 perRxToCntTotal=0;
    uint16 perConnEvtTotal=0;
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



/*********************************************************************
*********************************************************************/

