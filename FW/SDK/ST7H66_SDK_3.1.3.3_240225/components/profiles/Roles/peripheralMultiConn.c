/**************************************************************************************************
*******
**************************************************************************************************/

/**************************************************************************************************
    Filename:       peripheral.c
    Revised:
    Revision:

    Description:    GAP Peripheral Role


**************************************************************************************************/

/*********************************************************************
    INCLUDES
*/
#include "bcomdef.h"
#include "OSAL.h"
#include "hci_tl.h"
#include "l2cap.h"
#include "gap.h"
#include "linkdb.h"
#include "att.h"
#include "gatt.h"
#include "osal_snv.h"
#include "peripheralMultiConn.h"
#include "gapbondmgr.h"
#include "OSAL_Clock.h"
#ifndef DEF_GAPBOND_MGR_ENABLE
    #define DEF_GAPBOND_MGR_ENABLE 1
#endif
/*********************************************************************
    MACROS
*/

/*********************************************************************
    CONSTANTS
*/
// Profile Events
#define START_ADVERTISING_EVT         0x0001  // Start Advertising
#define RSSI_READ_EVT                 0x0002  // Read RSSI
#define START_CONN_UPDATE_EVT         0x0004  // Start Connection Update Procedure
#define CONN_PARAM_TIMEOUT_EVT        0x0008  // Connection Parameters Update Timeout


#define DEFAULT_ADVERT_OFF_TIME       30000   // 30 seconds

#define RSSI_NOT_AVAILABLE            127

#define DEFAULT_MIN_CONN_INTERVAL     0x0006  // 100 milliseconds
#define DEFAULT_MAX_CONN_INTERVAL     0x0080  // 4 seconds

#define MIN_CONN_INTERVAL             0x0006
#define MAX_CONN_INTERVAL             0x0C80

#define DEFAULT_TIMEOUT_MULTIPLIER    1000

#define CONN_INTERVAL_MULTIPLIER      6

#define MIN_SLAVE_LATENCY             0
#define MAX_SLAVE_LATENCY             500

#define MIN_TIMEOUT_MULTIPLIER        0x000a
#define MAX_TIMEOUT_MULTIPLIER        0x0c80

#define MAX_TIMEOUT_VALUE             0xFFFF

/*********************************************************************
    TYPEDEFS
*/

/*********************************************************************
    GLOBAL VARIABLES
*/

/*********************************************************************
    EXTERNAL VARIABLES
*/

/*********************************************************************
    EXTERNAL FUNCTIONS
*/

/*********************************************************************
    LOCAL VARIABLES
*/
static uint8 gapRole_TaskID;   // Task ID for internal task/event processing

static gaprole_States_t gapRole_state;

/*********************************************************************
    Profile Parameters - reference GAPROLE_PROFILE_PARAMETERS for
    descriptions
*/

static uint8  gapRole_profileRole;
static uint8  gapRole_IRK[KEYLEN];
static uint8  gapRole_SRK[KEYLEN];
static uint32 gapRole_signCounter;
static uint8  gapRole_bdAddr[B_ADDR_LEN];
uint8  gapRole_AdvEnabled = FALSE;

static uint8 gapRole_disconnect_reason;                      //!< termination reason from LL

static uint16 gapRole_AdvertOffTime = DEFAULT_ADVERT_OFF_TIME;
static uint8  gapRole_AdvertDataLen = 3;
static uint8  gapRole_AdvertData[B_MAX_ADV_LEN] =
{
    0x02,   // length of this data
    GAP_ADTYPE_FLAGS,   // AD Type = Flags
    // Limited Discoverable & BR/EDR not supported
    (GAP_ADTYPE_FLAGS_GENERAL | GAP_ADTYPE_FLAGS_BREDR_NOT_SUPPORTED),
    0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
};
static uint8  gapRole_ScanRspDataLen = 0;
static uint8  gapRole_ScanRspData[B_MAX_ADV_LEN] = {0};
uint8  gapRole_AdvEventType;
static uint8  gapRole_AdvDirectType;
static uint8  gapRole_AdvDirectAddr[B_ADDR_LEN] = {0};
static uint8  gapRole_AdvChanMap;
static uint8  gapRole_AdvFilterPolicy;

static uint16 gapRole_ConnectionHandle[GAPROLE_PERIPHERAL_MAX_CONN];


static uint16 gapRole_RSSIReadRate = 0;

static uint8  gapRole_ConnectedDevAddr[GAPROLE_PERIPHERAL_MAX_CONN][B_ADDR_LEN];

static uint8  gapRole_ParamUpdateEnable = FALSE;
static uint16 gapRole_MinConnInterval = DEFAULT_MIN_CONN_INTERVAL;
static uint16 gapRole_MaxConnInterval = DEFAULT_MAX_CONN_INTERVAL;
static uint16 gapRole_SlaveLatency = MIN_SLAVE_LATENCY;
static uint16 gapRole_TimeoutMultiplier = DEFAULT_TIMEOUT_MULTIPLIER;

static uint16 gapRole_ConnInterval[GAPROLE_PERIPHERAL_MAX_CONN];
static uint16 gapRole_ConnSlaveLatency[GAPROLE_PERIPHERAL_MAX_CONN];
static uint16 gapRole_ConnTimeout [GAPROLE_PERIPHERAL_MAX_CONN];
static UTCTime gapRole_LinkActivT [GAPROLE_PERIPHERAL_MAX_CONN];
static uint8 paramUpdateNoSuccessOption = GAPROLE_NO_ACTION;

static uint16  gapRole_ParamUpdateConnHandle = INVALID_CONNHANDLE;
// Application callbacks
static gapRolesCBs_t* pGapRoles_AppCGs = NULL;
static gapRolesParamUpdateCB_t* pGapRoles_ParamUpdateCB = NULL;

/*********************************************************************
    Profile Attributes - variables
*/

/*********************************************************************
    Profile Attributes - Table
*/

/*********************************************************************
    LOCAL FUNCTIONS
*/
static void gapRole_ProcessOSALMsg( osal_event_hdr_t* pMsg );
static void gapRole_ProcessGAPMsg( gapEventHdr_t* pMsg );
static void gapRole_SetupGAP( void );
static void gapRole_HandleParamUpdateNoSuccess( void );
static void gapRole_startConnUpdate( uint8 handleFailure );

/*********************************************************************
    NETWORK LAYER CALLBACKS
*/

/*********************************************************************
    PUBLIC FUNCTIONS
*/

/*********************************************************************
    @brief   Set a GAP Role parameter.

    Public function defined in peripheral.h.
*/
bStatus_t GAPRole_SetParameter( uint16 param, uint8 len, void* pValue )
{
    bStatus_t ret = SUCCESS;

    switch ( param )
    {
    case GAPROLE_IRK:
        if ( len == KEYLEN )
        {
            VOID osal_memcpy( gapRole_IRK, pValue, KEYLEN ) ;
        }
        else
        {
            ret = bleInvalidRange;
        }

        break;

    case GAPROLE_SRK:
        if ( len == KEYLEN )
        {
            VOID osal_memcpy( gapRole_SRK, pValue, KEYLEN ) ;
        }
        else
        {
            ret = bleInvalidRange;
        }

        break;

    case GAPROLE_SIGNCOUNTER:
        if ( len == sizeof ( uint32 ) )
        {
            gapRole_signCounter = *((uint32*)pValue);
        }
        else
        {
            ret = bleInvalidRange;
        }

        break;

    case GAPROLE_ADVERT_ENABLED:
        if ( len == sizeof( uint8 ) )
        {
            uint8 oldAdvEnabled = gapRole_AdvEnabled;
            gapRole_AdvEnabled = *((uint8*)pValue);

            if ( (oldAdvEnabled) && (gapRole_AdvEnabled == FALSE) )
            {
                // Turn off Advertising
                if ( ( gapRole_state == GAPROLE_ADVERTISING )
                        || ( gapRole_state == GAPROLE_CONNECTED_ADV )
                        || ( gapRole_state == GAPROLE_WAITING_AFTER_TIMEOUT ) )
                {
                    VOID GAP_EndDiscoverable( gapRole_TaskID );
                }
            }
            else if ( (oldAdvEnabled == FALSE) && (gapRole_AdvEnabled) )
            {
                // Turn on Advertising
                if ( (gapRole_state == GAPROLE_STARTED)
                        || (gapRole_state == GAPROLE_WAITING)
                        || (gapRole_state == GAPROLE_CONNECTED)
                        || (gapRole_state == GAPROLE_CONNECTED_TO_TERMINA)
                        || (gapRole_state == GAPROLE_WAITING_AFTER_TIMEOUT) )
                {
                    VOID osal_set_event( gapRole_TaskID, START_ADVERTISING_EVT );
                }
            }
        }
        else
        {
            ret = bleInvalidRange;
        }

        break;

    case GAPROLE_ADVERT_OFF_TIME:
        if ( len == sizeof ( uint16 ) )
        {
            gapRole_AdvertOffTime = *((uint16*)pValue);
        }
        else
        {
            ret = bleInvalidRange;
        }

        break;

    case GAPROLE_ADVERT_DATA:
        if ( len <= B_MAX_ADV_LEN )
        {
            VOID osal_memset( gapRole_AdvertData, 0, B_MAX_ADV_LEN );
            VOID osal_memcpy( gapRole_AdvertData, pValue, len );
            gapRole_AdvertDataLen = len;
            // Update the advertising data
            ret = GAP_UpdateAdvertisingData( gapRole_TaskID,
                                             TRUE, len, gapRole_AdvertData );
        }
        else
        {
            ret = bleInvalidRange;
        }

        break;

    case GAPROLE_SCAN_RSP_DATA:
        if ( len <= B_MAX_ADV_LEN )
        {
            VOID osal_memset( gapRole_ScanRspData, 0, B_MAX_ADV_LEN );
            VOID osal_memcpy( gapRole_ScanRspData, pValue, len );
            gapRole_ScanRspDataLen = len;
            // Update the Response Data
            ret = GAP_UpdateAdvertisingData( gapRole_TaskID,
                                             FALSE, gapRole_ScanRspDataLen, gapRole_ScanRspData );
        }
        else
        {
            ret = bleInvalidRange;
        }

        break;

    case GAPROLE_ADV_EVENT_TYPE:
        if ( (len == sizeof ( uint8 )) && (*((uint8*)pValue) <= GAP_ADTYPE_ADV_LDC_DIRECT_IND) )
        {
            gapRole_AdvEventType = *((uint8*)pValue);
        }
        else
        {
            ret = bleInvalidRange;
        }

        break;

    case GAPROLE_ADV_DIRECT_TYPE:
        if ( (len == sizeof ( uint8 )) && (*((uint8*)pValue) <= ADDRTYPE_PRIVATE_RESOLVE) )
        {
            gapRole_AdvDirectType = *((uint8*)pValue);
        }
        else
        {
            ret = bleInvalidRange;
        }

        break;

    case GAPROLE_ADV_DIRECT_ADDR:
        if ( len == B_ADDR_LEN )
        {
            VOID osal_memcpy( gapRole_AdvDirectAddr, pValue, B_ADDR_LEN ) ;
        }
        else
        {
            ret = bleInvalidRange;
        }

        break;

    case GAPROLE_ADV_CHANNEL_MAP:
        if ( (len == sizeof ( uint8 )) && (*((uint8*)pValue) <= 0x07) )
        {
            gapRole_AdvChanMap = *((uint8*)pValue);
        }
        else
        {
            ret = bleInvalidRange;
        }

        break;

    case GAPROLE_ADV_FILTER_POLICY:
        if ( (len == sizeof ( uint8 )) && (*((uint8*)pValue) <= GAP_FILTER_POLICY_WHITE) )
        {
            gapRole_AdvFilterPolicy = *((uint8*)pValue);
        }
        else
        {
            ret = bleInvalidRange;
        }

        break;

    case GAPROLE_RSSI_READ_RATE:
        if ( len == sizeof ( uint16 ) )
        {
            gapRole_RSSIReadRate = *((uint16*)pValue);

            if ( (gapRole_RSSIReadRate) && \
                    (gapRole_state == GAPROLE_CONNECTED||gapRole_state == GAPROLE_CONNECTED_ADV||gapRole_state == GAPROLE_CONNECTED_TO_TERMINA) )
            {
                // Start the RSSI Reads
                VOID osal_start_timerEx( gapRole_TaskID, RSSI_READ_EVT, gapRole_RSSIReadRate );
            }
        }
        else
        {
            ret = bleInvalidRange;
        }

        break;

    case GAPROLE_PARAM_UPDATE_ENABLE:
        if ( (len == sizeof ( uint8 )) && (*((uint8*)pValue) <= TRUE) )
        {
            gapRole_ParamUpdateEnable = *((uint8*)pValue);
        }
        else
        {
            ret = bleInvalidRange;
        }

        break;

    case GAPROLE_PARAM_UPDATE_CONN_HANDLE:
        if ( (len == sizeof ( uint16 )) && (*((uint16*)pValue) != INVALID_CONNHANDLE) )
        {
            gapRole_ParamUpdateConnHandle = *((uint16*)pValue);
        }
        else
        {
            ret = bleInvalidRange;
        }

        break;

    case GAPROLE_MIN_CONN_INTERVAL:
    {
        uint16 newInterval = *((uint16*)pValue);

        if (   len == sizeof ( uint16 )           &&
                ( newInterval >= MIN_CONN_INTERVAL ) &&
                ( newInterval <= MAX_CONN_INTERVAL ) )
        {
            gapRole_MinConnInterval = newInterval;
        }
        else
        {
            ret = bleInvalidRange;
        }
    }
    break;

    case GAPROLE_MAX_CONN_INTERVAL:
    {
        uint16 newInterval = *((uint16*)pValue);

        if (   len == sizeof ( uint16 )          &&
                ( newInterval >= MIN_CONN_INTERVAL) &&
                ( newInterval <= MAX_CONN_INTERVAL) )
        {
            gapRole_MaxConnInterval = newInterval;
        }
        else
        {
            ret = bleInvalidRange;
        }
    }
    break;

    case GAPROLE_SLAVE_LATENCY:
    {
        uint16 latency = *((uint16*)pValue);

        if ( len == sizeof ( uint16 ) && (latency < MAX_SLAVE_LATENCY) )
        {
            gapRole_SlaveLatency = latency;
        }
        else
        {
            ret = bleInvalidRange;
        }
    }
    break;

    case GAPROLE_TIMEOUT_MULTIPLIER:
    {
        uint16 newTimeout = *((uint16*)pValue);

        if ( len == sizeof ( uint16 )
                && (newTimeout >= MIN_TIMEOUT_MULTIPLIER) && (newTimeout <= MAX_TIMEOUT_MULTIPLIER) )
        {
            gapRole_TimeoutMultiplier = newTimeout;
        }
        else
        {
            ret = bleInvalidRange;
        }
    }
    break;

    case GAPROLE_PARAM_UPDATE_REQ:
    {
        uint8 req = *((uint8*)pValue);

        if ( len == sizeof ( uint8 ) && (req == TRUE) )
        {
            // Make sure we don't send an L2CAP Connection Parameter Update Request
            // command within TGAP(conn_param_timeout) of an L2CAP Connection Parameter
            // Update Response being received.
            if ( osal_get_timeoutEx( gapRole_TaskID, CONN_PARAM_TIMEOUT_EVT ) == 0 )
            {
                // Start connection update procedure
                gapRole_startConnUpdate( GAPROLE_NO_ACTION );
                // Connection update requested by app, cancel such pending procedure (if active)
                VOID osal_stop_timerEx( gapRole_TaskID, START_CONN_UPDATE_EVT );
            }
            else
            {
                ret = blePending;
            }
        }
        else
        {
            ret = bleInvalidRange;
        }
    }
    break;

    case GAPROLE_DISCONNECT_REASON:
        if ( len == sizeof( uint8 ) )
        {
            gapRole_disconnect_reason = *((uint8*)pValue);
        }
        else
        {
            ret = bleInvalidRange;
        }

        break;

    default:

        // The param value isn't part of this profile, try the GAP.
        if ( (param < TGAP_PARAMID_MAX) && (len == sizeof ( uint16 )) )
        {
            ret = GAP_SetParamValue( param, *((uint16*)pValue) );
        }
        else
        {
            ret = INVALIDPARAMETER;
        }

        break;
    }

    return ( ret );
}

/*********************************************************************
    @brief   Get a GAP Role parameter.

    Public function defined in peripheral.h.
*/
bStatus_t GAPRole_GetParameter( uint16 param, void* pValue )
{
    bStatus_t ret = SUCCESS;

    switch ( param )
    {
    case GAPROLE_PROFILEROLE:
        *((uint8*)pValue) = gapRole_profileRole;
        break;

    case GAPROLE_IRK:
        VOID osal_memcpy( pValue, gapRole_IRK, KEYLEN ) ;
        break;

    case GAPROLE_SRK:
        VOID osal_memcpy( pValue, gapRole_SRK, KEYLEN ) ;
        break;

    case GAPROLE_SIGNCOUNTER:
        *((uint32*)pValue) = gapRole_signCounter;
        break;

    case GAPROLE_BD_ADDR:
        VOID osal_memcpy( pValue, gapRole_bdAddr, B_ADDR_LEN ) ;
        break;

    case GAPROLE_ADVERT_ENABLED:
        *((uint8*)pValue) = gapRole_AdvEnabled;
        break;

    case GAPROLE_ADVERT_OFF_TIME:
        *((uint16*)pValue) = gapRole_AdvertOffTime;
        break;

    case GAPROLE_ADVERT_DATA:
        VOID osal_memcpy( pValue, gapRole_AdvertData, gapRole_AdvertDataLen );
        break;

    case GAPROLE_SCAN_RSP_DATA:
        VOID osal_memcpy( pValue, gapRole_ScanRspData, gapRole_ScanRspDataLen ) ;
        break;

    case GAPROLE_ADV_EVENT_TYPE:
        *((uint8*)pValue) = gapRole_AdvEventType;
        break;

    case GAPROLE_ADV_DIRECT_TYPE:
        *((uint8*)pValue) = gapRole_AdvDirectType;
        break;

    case GAPROLE_ADV_DIRECT_ADDR:
        VOID osal_memcpy( pValue, gapRole_AdvDirectAddr, B_ADDR_LEN ) ;
        break;

    case GAPROLE_ADV_CHANNEL_MAP:
        *((uint8*)pValue) = gapRole_AdvChanMap;
        break;

    case GAPROLE_ADV_FILTER_POLICY:
        *((uint8*)pValue) = gapRole_AdvFilterPolicy;
        break;

    case GAPROLE_RSSI_READ_RATE:
        *((uint16*)pValue) = gapRole_RSSIReadRate;
        break;

    case GAPROLE_PARAM_UPDATE_ENABLE:
        *((uint16*)pValue) = gapRole_ParamUpdateEnable;
        break;

    case GAPROLE_MIN_CONN_INTERVAL:
        *((uint16*)pValue) = gapRole_MinConnInterval;
        break;

    case GAPROLE_MAX_CONN_INTERVAL:
        *((uint16*)pValue) = gapRole_MaxConnInterval;
        break;

    case GAPROLE_SLAVE_LATENCY:
        *((uint16*)pValue) = gapRole_SlaveLatency;
        break;

    case GAPROLE_TIMEOUT_MULTIPLIER:
        *((uint16*)pValue) = gapRole_TimeoutMultiplier;
        break;

    case GAPROLE_STATE:
        *((uint8*)pValue) = gapRole_state;
        break;

    case GAPROLE_CONNHANDLE:
    {
        uint16* p=(uint16*)pValue;

        for (uint8 i=0; i<GAPROLE_PERIPHERAL_MAX_CONN; i++)
        {
            if(gapRole_ConnectionHandle[i]!=INVALID_CONNHANDLE)
                *p++ = gapRole_ConnectionHandle[i];
        }
    }
    break;

    case GAPROLE_CONNECTION_ACTIVE_NUM:
        *((uint8*)pValue) = GAPRole_Connect_Active_Num();
        break;

    case GAPROLE_DISCONNECT_REASON:
        *((uint8*)pValue) = gapRole_disconnect_reason;
        break;

    default:

        // The param value isn't part of this profile, try the GAP.
        if ( param < TGAP_PARAMID_MAX )
        {
            *((uint16*)pValue) = GAP_GetParamValue( param );
        }
        else
        {
            ret = INVALIDPARAMETER;
        }

        break;
    }

    return ( ret );
}
bStatus_t GAPRole_GetParameter_MultiConn(uint16 connId, uint16 param, void* pValue )
{
    bStatus_t ret = SUCCESS;

    if(connId>GAPROLE_PERIPHERAL_MAX_CONN)
        return bleInvalidRange;

    if(gapRole_ConnectionHandle[connId]==INVALID_CONNHANDLE)
        return bleNotConnected;

    switch ( param )
    {
    case GAPROLE_CONN_BD_ADDR:
        VOID osal_memcpy( pValue, gapRole_ConnectedDevAddr[connId], B_ADDR_LEN ) ;
        break;

    case GAPROLE_CONN_INTERVAL:
        *((uint16*)pValue) = gapRole_ConnInterval[connId];
        break;

    case GAPROLE_CONN_LATENCY:
        *((uint16*)pValue) = gapRole_ConnSlaveLatency[connId];
        break;

    case GAPROLE_CONN_TIMEOUT:
        *((uint16*)pValue) = gapRole_ConnTimeout[connId];
        break;

    default:
        ret = INVALIDPARAMETER;
        break;
    }

    return ( ret );
}


/*********************************************************************
    @brief   Does the device initialization.

    Public function defined in peripheral.h.
*/
bStatus_t GAPRole_StartDevice( gapRolesCBs_t* pAppCallbacks )
{
    if ( gapRole_state == GAPROLE_INIT )
    {
        // Clear all of the Application callbacks
        if ( pAppCallbacks )
        {
            pGapRoles_AppCGs = pAppCallbacks;
        }

        // Start the GAP
        gapRole_SetupGAP();
        return ( SUCCESS );
    }
    else
    {
        return ( bleAlreadyInRequestedMode );
    }
}

/*********************************************************************
    @brief   Register application's callbacks.

    Public function defined in peripheral.h.
*/
void GAPRole_RegisterAppCBs( gapRolesParamUpdateCB_t* pParamUpdateCB )
{
    if ( pParamUpdateCB != NULL )
    {
        pGapRoles_ParamUpdateCB = pParamUpdateCB;
    }
}

/*********************************************************************
    @brief   Terminates the existing connection.

    Public function defined in peripheral.h.
*/
bStatus_t GAPRole_TerminateConnection( uint16 connId )
{
    if(connId>GAPROLE_PERIPHERAL_MAX_CONN)
        return bleInvalidRange;

    if(gapRole_ConnectionHandle[connId]==INVALID_CONNHANDLE)
        return bleNotConnected;

    if ( gapRole_state == GAPROLE_CONNECTED||gapRole_state == GAPROLE_CONNECTED_ADV )
    {
        return ( GAP_TerminateLinkReq( gapRole_TaskID, gapRole_ConnectionHandle[connId],
                                       HCI_DISCONNECT_REMOTE_USER_TERM ) );
    }
    else
    {
        return ( bleIncorrectMode );
    }
}

/*********************************************************************
    LOCAL FUNCTION PROTOTYPES
*/

/*********************************************************************
    @brief   Task Initialization function.

    Internal function defined in peripheral.h.
*/
void GAPRole_Init( uint8 task_id )
{
    gapRole_TaskID = task_id;
    gapRole_state = GAPROLE_INIT;
    GAP_RegisterForHCIMsgs( gapRole_TaskID );
    // Initialize the Profile Advertising and Connection Parameters
    gapRole_profileRole = GAP_PROFILE_PERIPHERAL;
    VOID osal_memset( gapRole_IRK, 0, KEYLEN );
    VOID osal_memset( gapRole_SRK, 0, KEYLEN );
    gapRole_signCounter = 0;
    gapRole_AdvEventType = GAP_ADTYPE_ADV_IND;
    gapRole_AdvDirectType = ADDRTYPE_PUBLIC;
    gapRole_AdvChanMap =  GAP_ADVCHAN_ALL;
    gapRole_AdvFilterPolicy = GAP_FILTER_POLICY_ALL;

    for(int i=0; i<GAPROLE_PERIPHERAL_MAX_CONN; i++)
    {
        gapRole_ConnectionHandle[i]=INVALID_CONNHANDLE;
        osal_memset(gapRole_ConnectedDevAddr[i], 0,B_ADDR_LEN ) ;
        gapRole_ConnInterval[i]=0;
        gapRole_ConnSlaveLatency[i]=0;
        gapRole_ConnTimeout[i]=0;
    }

    // Restore Items from NV
//  VOID osal_snv_read( BLE_NVID_IRK, KEYLEN, gapRole_IRK );
// VOID osal_snv_read( BLE_NVID_CSRK, KEYLEN, gapRole_SRK );
// VOID osal_snv_read( BLE_NVID_SIGNCOUNTER, sizeof( uint32 ), &gapRole_signCounter );
}

uint8 GAPRole_Connect_Active_Num(void)
{
    uint8 num=0;

    for(uint8_t i=0; i<GAPROLE_PERIPHERAL_MAX_CONN; i++)
    {
        num+=(gapRole_ConnectionHandle[i]!=INVALID_CONNHANDLE);
    }

    return num;
}
/*********************************************************************
    @brief   Task Event Processor function.

    Internal function defined in peripheral.h.
*/
uint16 GAPRole_ProcessEvent( uint8 task_id, uint16 events )
{
    VOID task_id; // OSAL required parameter that isn't used in this function
    uint16 conn_handle;

    if ( events & SYS_EVENT_MSG )
    {
        uint8* pMsg;

        if ( (pMsg = osal_msg_receive( gapRole_TaskID )) != NULL )
        {
            gapRole_ProcessOSALMsg( (osal_event_hdr_t*)pMsg );
            // Release the OSAL message
            VOID osal_msg_deallocate( pMsg );
        }

        // return unprocessed events
        return (events ^ SYS_EVENT_MSG);
    }

    if ( events & GAP_EVENT_SIGN_COUNTER_CHANGED )
    {
        // Sign counter changed, save it to NV
        //  VOID osal_snv_write( BLE_NVID_SIGNCOUNTER, sizeof( uint32 ), &gapRole_signCounter );
        return ( events ^ GAP_EVENT_SIGN_COUNTER_CHANGED );
    }

    if ( events & START_ADVERTISING_EVT )
    {
        if ( gapRole_AdvEnabled )
        {
            gapAdvertisingParams_t params;

            // Setup advertisement parameters
            if ((  gapRole_state == GAPROLE_CONNECTED
                    || gapRole_state == GAPROLE_CONNECTED_ADV
                    || gapRole_state == GAPROLE_CONNECTED_TO_TERMINA )
                    && GAPROLE_PERIPHERAL_MAX_CONN==GAPRole_Connect_Active_Num())
            {
                // connection num meet the limit, we can only advertise non-connectable undirected.
                params.eventType = GAP_ADTYPE_ADV_NONCONN_IND;
                LOG_DEBUG("swith to NO-Conn adv state %d conn_num %d\n",gapRole_state,GAPRole_Connect_Active_Num());
            }
            else
            {
                params.eventType = gapRole_AdvEventType;
                params.initiatorAddrType = gapRole_AdvDirectType;
                VOID osal_memcpy( params.initiatorAddr, gapRole_AdvDirectAddr, B_ADDR_LEN );
            }

            params.channelMap = gapRole_AdvChanMap;
            params.filterPolicy = gapRole_AdvFilterPolicy;
            uint8 ret = GAP_MakeDiscoverable( gapRole_TaskID, &params );

            if (  ret != SUCCESS )
            {
                LOG_DEBUG("start adv fail %x\n",ret);
                gapRole_state = GAPROLE_ERROR;
                conn_handle=INVALID_CONNHANDLE;

                // Notify the application with the new state change
                if ( pGapRoles_AppCGs && pGapRoles_AppCGs->pfnStateChange )
                {
                    pGapRoles_AppCGs->pfnStateChange(conn_handle, gapRole_state );
                }
            }
        }

        return ( events ^ START_ADVERTISING_EVT );
    }

    if ( events & RSSI_READ_EVT )
    {
        // Only get RSSI when in a connection
        if ( gapRole_state == GAPROLE_CONNECTED||gapRole_state == GAPROLE_CONNECTED_ADV||gapRole_state == GAPROLE_CONNECTED_TO_TERMINA)
        {
            for(int i=0; i<GAPROLE_PERIPHERAL_MAX_CONN; i++)
            {
                // Ask for RSSI
                if(gapRole_ConnectionHandle[i]!=INVALID_CONNHANDLE)
                    VOID HCI_ReadRssiCmd( gapRole_ConnectionHandle[i] );
            }

            // Setup next event
            if ( gapRole_RSSIReadRate )
            {
                VOID osal_start_timerEx( gapRole_TaskID, RSSI_READ_EVT, gapRole_RSSIReadRate );
            }
        }

        return ( events ^ RSSI_READ_EVT );
    }

    if ( events & START_CONN_UPDATE_EVT )
    {
        // Start connection update procedure
        gapRole_startConnUpdate( GAPROLE_NO_ACTION );
        return ( events ^ START_CONN_UPDATE_EVT );
    }

    if ( events & CONN_PARAM_TIMEOUT_EVT )
    {
        // Unsuccessful in updating connection parameters
        gapRole_HandleParamUpdateNoSuccess();
        return ( events ^ CONN_PARAM_TIMEOUT_EVT );
    }

    // Discard unknown events
    return 0;
}

/*********************************************************************
    @fn      gapRole_ProcessOSALMsg

    @brief   Process an incoming task message.

    @param   pMsg - message to process

    @return  none
*/
static void gapRole_ProcessOSALMsg( osal_event_hdr_t* pMsg )
{
    switch ( pMsg->event )
    {
    case HCI_GAP_EVENT_EVENT:

        //LOG("GAP EVT[%d]\n", pMsg->status);
        if ( pMsg->status == HCI_COMMAND_COMPLETE_EVENT_CODE )
        {
            hciEvt_CmdComplete_t* pPkt = (hciEvt_CmdComplete_t*)pMsg;

            if ( pPkt->cmdOpcode == HCI_READ_RSSI )
            {
                int8 rssi = (int8)pPkt->pReturnParam[3];
                uint16 conn_handle = BUILD_UINT16(pPkt->pReturnParam[1], pPkt->pReturnParam[2]);

                if ( (gapRole_state == GAPROLE_CONNECTED
                        || gapRole_state == GAPROLE_CONNECTED_ADV
                        || gapRole_state == GAPROLE_CONNECTED_TO_TERMINA)
                        && (rssi != RSSI_NOT_AVAILABLE) )
                {
                    // Report RSSI to app
                    if ( pGapRoles_AppCGs && pGapRoles_AppCGs->pfnRssiRead )
                    {
                        pGapRoles_AppCGs->pfnRssiRead(conn_handle, rssi );
                    }
                }
            }
            else if(pPkt->cmdOpcode == HCI_LE_SET_DATA_LENGTH)
            {
                LOG_DEBUG("[HCI DLE] %d %d %d\n",pPkt->pReturnParam[0],pPkt->pReturnParam[1],pPkt->pReturnParam[2]);
            }
        }
        else if(pMsg->status==HCI_COMMAND_STATUS_EVENT_CODE)
        {
            hciEvt_CommandStatus_t* pPkt = (hciEvt_CommandStatus_t*)pMsg;

            if ( pPkt->cmdOpcode == HCI_LE_SET_PHY )
            {
                LOG_DEBUG("[HCI PHY] %2x \n",pPkt->cmdStatus);
            }
        }
        else if(pMsg->status==HCI_LE_EVENT_CODE)
        {
            hciEvt_BLEEvent_Hdr_t* pPkt = (hciEvt_BLEEvent_Hdr_t*)pMsg;

            if ( pPkt->BLEEventCode == HCI_BLE_DATA_LENGTH_CHANGE_EVENT )
            {
//               hciEvt_BLEDataLenChange_t * pkt = (hciEvt_BLEDataLenChange_t *)pMsg;
//               LOG_DEBUG("[HCI DLE EVT]%d %d %d %d\n",pkt->MaxRxOctets,pkt->MaxRxTime,
//                                                pkt->MaxTxOctets,pkt->MaxTxTime);
            }
            else if(pPkt->BLEEventCode == HCI_BLE_PHY_UPDATE_COMPLETE_EVENT )
            {
//                          hciEvt_BLEPhyUpdateComplete_t * pkt = (hciEvt_BLEPhyUpdateComplete_t *)pMsg;
//                          LOG_DEBUG("[HCI PHY EVT]s%d r%d t%d\n",pkt->status, pkt->rxPhy,pkt->txPhy);
            }
        }

        break;

    case GAP_MSG_EVENT:
        gapRole_ProcessGAPMsg( (gapEventHdr_t*)pMsg );
        break;

    case L2CAP_SIGNAL_EVENT:
    {
        l2capSignalEvent_t* pPkt = (l2capSignalEvent_t*)pMsg;

        // Process the Parameter Update Response
        if ( pPkt->opcode == L2CAP_PARAM_UPDATE_RSP )
        {
            l2capParamUpdateRsp_t* pRsp = (l2capParamUpdateRsp_t*)&(pPkt->cmd.updateRsp);

            if ( ( pRsp->result == L2CAP_CONN_PARAMS_REJECTED ) &&
                    ( paramUpdateNoSuccessOption == GAPROLE_TERMINATE_LINK ) )
            {
                // Cancel connection param update timeout timer
                VOID osal_stop_timerEx( gapRole_TaskID, CONN_PARAM_TIMEOUT_EVT );
                // Terminate connection immediately
                GAPRole_TerminateConnection(pPkt->connHandle);
            }
            else
            {
                uint16 timeout = GAP_GetParamValue( TGAP_CONN_PARAM_TIMEOUT );
                // Let's wait for Controller to update connection parameters if they're
                // accepted. Otherwise, decide what to do based on no success option.
                VOID osal_start_timerEx( gapRole_TaskID, CONN_PARAM_TIMEOUT_EVT, timeout );
            }
        }
    }
    break;

    default:
        break;
    }
}

/*********************************************************************
    @fn      gapRole_ProcessGAPMsg

    @brief   Process an incoming task message.

    @param   pMsg - message to process

    @return  none
*/
static void gapRole_ProcessGAPMsg( gapEventHdr_t* pMsg )
{
    uint8 notify = FALSE;   // State changed notify the app? (default no)
    uint16 conn_handle;
    LOG_DEBUG("[GAPMSG] %04x \n",pMsg->opcode);

    switch ( pMsg->opcode )
    {
    case GAP_DEVICE_INIT_DONE_EVENT:
    {
        gapDeviceInitDoneEvent_t* pPkt = (gapDeviceInitDoneEvent_t*)pMsg;
        bStatus_t stat = pPkt->hdr.status;

        if ( stat == SUCCESS )
        {
            // Save off the generated keys
            //   VOID osal_snv_write( BLE_NVID_IRK, KEYLEN, gapRole_IRK );
            //   VOID osal_snv_write( BLE_NVID_CSRK, KEYLEN, gapRole_SRK );
            // Save off the information
            VOID osal_memcpy( gapRole_bdAddr, pPkt->devAddr, B_ADDR_LEN );
            gapRole_state = GAPROLE_STARTED;
            // Update the advertising data
            stat = GAP_UpdateAdvertisingData( gapRole_TaskID,
                                              TRUE, gapRole_AdvertDataLen, gapRole_AdvertData );
        }

        if ( stat != SUCCESS )
        {
            gapRole_state = GAPROLE_ERROR;
        }

        conn_handle=INVALID_CONNHANDLE;
        notify = TRUE;
    }
    break;

    case GAP_ADV_DATA_UPDATE_DONE_EVENT:
    {
        gapAdvDataUpdateEvent_t* pPkt = (gapAdvDataUpdateEvent_t*)pMsg;

        if ( pPkt->hdr.status == SUCCESS )
        {
            if ( pPkt->adType )
            {
                // Setup the Response Data
                pPkt->hdr.status = GAP_UpdateAdvertisingData( gapRole_TaskID,
                                                              FALSE, gapRole_ScanRspDataLen, gapRole_ScanRspData );
            }
            else if ( ( gapRole_state != GAPROLE_ADVERTISING ) &&
                      ( osal_get_timeoutEx( gapRole_TaskID, START_ADVERTISING_EVT ) == 0 ) )
            {
                // Start advertising
                VOID osal_set_event( gapRole_TaskID, START_ADVERTISING_EVT );
            }
        }

        if ( pPkt->hdr.status != SUCCESS )
        {
            // Set into Error state
            gapRole_state = GAPROLE_ERROR;
            conn_handle=INVALID_CONNHANDLE;
            notify = TRUE;
        }
    }
    break;

    case GAP_MAKE_DISCOVERABLE_DONE_EVENT:
    case GAP_END_DISCOVERABLE_DONE_EVENT:
    {
        gapMakeDiscoverableRspEvent_t* pPkt = (gapMakeDiscoverableRspEvent_t*)pMsg;

        if ( pPkt->hdr.status == SUCCESS )
        {
            if ( pMsg->opcode == GAP_MAKE_DISCOVERABLE_DONE_EVENT )
            {
                if (gapRole_state == GAPROLE_CONNECTED||gapRole_state == GAPROLE_CONNECTED_TO_TERMINA)
                {
                    gapRole_state = GAPROLE_CONNECTED_ADV;
                }
                else
                {
                    gapRole_state = GAPROLE_ADVERTISING;
                }
            }
            else // GAP_END_DISCOVERABLE_DONE_EVENT
            {
                if ( gapRole_AdvertOffTime != 0 )
                {
                    if ( ( gapRole_AdvEnabled ) )
                    {
                        VOID osal_start_timerEx( gapRole_TaskID, START_ADVERTISING_EVT, gapRole_AdvertOffTime );
                    }
                }
                else
                {
                    // Since gapRole_AdvertOffTime is set to 0, the device should not
                    // automatically become discoverable again after a period of time.
                    // Set enabler to FALSE; device will become discoverable again when
                    // this value gets set to TRUE
                    gapRole_AdvEnabled = FALSE;
                }

                if (gapRole_state == GAPROLE_CONNECTED_ADV)
                {
                    // In the Advertising Off period
                    gapRole_state = GAPROLE_CONNECTED;
                }
                else if (gapRole_state == GAPROLE_WAITING_AFTER_TIMEOUT
                         || gapRole_state == GAPROLE_WAITING
                         || gapRole_state == GAPROLE_CONNECTED
                         ||gapRole_state == GAPROLE_CONNECTED_TO_TERMINA)
                {
                    // Advertising was just turned off after the link disconnected so begin
                    // advertising again.
                    gapRole_AdvEnabled = TRUE;
                    // Turn advertising back on.
                    VOID osal_set_event( gapRole_TaskID, START_ADVERTISING_EVT );
                }
                else
                {
                    // In the Advertising Off period
                    gapRole_state = GAPROLE_WAITING;
                }
            }
        }
        else
        {
            gapRole_state = GAPROLE_ERROR;
        }

        conn_handle=INVALID_CONNHANDLE;
        notify = TRUE;
    }
    break;

    case GAP_LINK_ESTABLISHED_EVENT:
    {
        gapEstLinkReqEvent_t* pPkt = (gapEstLinkReqEvent_t*)pMsg;

        if ( pPkt->hdr.status == SUCCESS )
        {
            uint16_t connId = pPkt->connectionHandle;
            VOID osal_memcpy( gapRole_ConnectedDevAddr[connId], pPkt->devAddr, B_ADDR_LEN );
            gapRole_ConnectionHandle[connId] = connId;
            conn_handle=connId;
//                gapRole_ConnectionInterval = pPkt->connInterval;
//                gapRole_ConnectionLatency = pPkt->connLatency;
            gapRole_state = GAPROLE_CONNECTED;

            //LOG("connect by[%02x%02x%02x%02x%02x%02x] handle[%d] interval[%d] latency[%d] timeout[%d]\n",
            //  gapRole_ConnectedDevAddr[0], gapRole_ConnectedDevAddr[1], gapRole_ConnectedDevAddr[2],
            //  gapRole_ConnectedDevAddr[3],gapRole_ConnectedDevAddr[4], gapRole_ConnectedDevAddr[5],
            //  pPkt->connectionHandle, pPkt->connInterval,pPkt->connLatency, pPkt->connTimeout);
            if ( gapRole_RSSIReadRate )
            {
                // Start the RSSI Reads
                VOID osal_start_timerEx( gapRole_TaskID, RSSI_READ_EVT, gapRole_RSSIReadRate );
            }

            // Store connection information
            gapRole_ConnInterval[connId ] = pPkt->connInterval;
            gapRole_ConnSlaveLatency[connId ] = pPkt->connLatency;
            gapRole_ConnTimeout[connId ] = pPkt->connTimeout;
            gapRole_LinkActivT[connId]=osal_getClock();
            LOG_DEBUG("[Conn] connId %d :I%04d L%04d T%04d MAC:",connId,gapRole_ConnInterval[connId ],gapRole_ConnSlaveLatency[connId ],gapRole_ConnTimeout[connId ] );
            LOG_DUMP_BYTE(gapRole_ConnectedDevAddr[connId],B_ADDR_LEN);

            // Check whether update parameter request is enabled
            if ( gapRole_ParamUpdateEnable == TRUE )
            {
                // Get the minimum time upon connection establishment before the
                // peripheral can start a connection update procedure.
                uint16 timeout = GAP_GetParamValue( TGAP_CONN_PAUSE_PERIPHERAL );
                gapRole_ParamUpdateConnHandle=connId;
                osal_start_timerEx( gapRole_TaskID, START_CONN_UPDATE_EVT, timeout*1000 );
            }

            // Notify the Bond Manager to the connection
            #if(DEF_GAPBOND_MGR_ENABLE == TRUE)
            VOID GAPBondMgr_LinkEst( pPkt->devAddrType, pPkt->devAddr, pPkt->connectionHandle, GAP_PROFILE_PERIPHERAL );
            #endif

            // Set enabler to FALSE; device will become discoverable again when
            // this value gets set to TRUE
            if(GAPROLE_PERIPHERAL_MAX_CONN==GAPRole_Connect_Active_Num())
                gapRole_AdvEnabled = FALSE;
            else
            {
                gapRole_AdvEnabled = TRUE;
                VOID osal_set_event( gapRole_TaskID, START_ADVERTISING_EVT);
            }
        }
        else if ( pPkt->hdr.status == bleGAPConnNotAcceptable )
        {
            // Set enabler to FALSE; device will become discoverable again when
            // this value gets set to TRUE
            gapRole_AdvEnabled = FALSE;
            // Go to WAITING state, and then start advertising
            gapRole_state = GAPROLE_WAITING;
        }
        else
        {
            gapRole_state = GAPROLE_ERROR;
        }

        notify = TRUE;
    }
    break;

    case GAP_LINK_TERMINATED_EVENT:
    {
        gapTerminateLinkEvent_t* pPkt = (gapTerminateLinkEvent_t*)pMsg;
        //  VOID GAPBondMgr_ProcessGAPMsg( (gapEventHdr_t *)pMsg );
        uint16 connId = pPkt->connectionHandle;
        osal_memset( gapRole_ConnectedDevAddr[connId], 0, B_ADDR_LEN );
        // Erase connection information
        gapRole_ConnInterval[connId] = 0;
        gapRole_ConnSlaveLatency[connId] = 0;
        gapRole_ConnTimeout[connId] = 0;
        gapRole_ConnectionHandle[connId] = INVALID_CONNHANDLE;
        gapRole_ParamUpdateConnHandle = INVALID_CONNHANDLE;
        conn_handle=connId;
        // Cancel all connection parameter update timers (if any active)
        VOID osal_stop_timerEx( gapRole_TaskID, START_CONN_UPDATE_EVT );
        VOID osal_stop_timerEx( gapRole_TaskID, CONN_PARAM_TIMEOUT_EVT );

        // Go to WAITING state, and then start advertising
        if( pPkt->reason == LL_SUPERVISION_TIMEOUT_TERM )
        {
            gapRole_state = GAPROLE_WAITING_AFTER_TIMEOUT;
        }
        else
        {
            gapRole_state = GAPROLE_WAITING;
        }

        if(GAPRole_Connect_Active_Num())
        {
            // gapRole_state=GAPROLE_CONNECTED;
            gapRole_state=GAPROLE_CONNECTED_TO_TERMINA;
        }

        gapRole_LinkActivT[connId]=osal_getClock()-gapRole_LinkActivT[connId];
        extern llConns_t           g_ll_conn_ctx;
        LOG_DEBUG("[DISC] connId %d .reason %02x ActDur %d CN[Gap%d ldb%d ll%d]\n",connId,pPkt->reason,gapRole_LinkActivT[connId],
                  GAPRole_Connect_Active_Num(),linkDB_NumActive(),g_ll_conn_ctx.numLLConns);
        gapRole_disconnect_reason=pPkt->reason;
        notify = TRUE;

        //LOG("disconnected reason[%d]!\n", pPkt->reason);
        // Check if still advertising from within last connection.
        if ( gapRole_AdvEnabled)
        {
            /*
                For multi-conn , do not turn off adv
            */
            //VOID GAP_EndDiscoverable( gapRole_TaskID );
        }
        else  // Turn advertising back on.
        {
            gapRole_AdvEnabled = TRUE;
            VOID osal_set_event( gapRole_TaskID, START_ADVERTISING_EVT);
        }
    }
    break;

    case GAP_LINK_PARAM_UPDATE_EVENT:
    {
        gapLinkUpdateEvent_t* pPkt = (gapLinkUpdateEvent_t*)pMsg;
        uint16 connId = pPkt->connectionHandle;
        // Cancel connection param update timeout timer (if active)
        VOID osal_stop_timerEx( gapRole_TaskID, CONN_PARAM_TIMEOUT_EVT );

        if ( pPkt->hdr.status == SUCCESS )
        {
            // Store new connection parameters
            gapRole_ConnInterval[connId] = pPkt->connInterval;
            gapRole_ConnSlaveLatency[connId] = pPkt->connLatency;
            gapRole_ConnTimeout[connId] = pPkt->connTimeout;
            LOG_DEBUG("[ConnUpdate] connId %d :I%d L%d T%d\n",connId,gapRole_ConnInterval[connId ],gapRole_ConnSlaveLatency[connId ],gapRole_ConnTimeout[connId ] );

            // Make sure there's no pending connection update procedure
            if ( osal_get_timeoutEx( gapRole_TaskID, START_CONN_UPDATE_EVT ) == 0 )
            {
                // Notify the application with the new connection parameters
                if ( pGapRoles_ParamUpdateCB != NULL )
                {
                    (*pGapRoles_ParamUpdateCB)( gapRole_ConnInterval[connId],
                                                gapRole_ConnSlaveLatency[connId],
                                                gapRole_ConnTimeout[connId] );
                }
            }
        }
    }
    break;

    default:
        break;
    }

    if ( notify == TRUE )
    {
        // Notify the application with the new state change
        if ( pGapRoles_AppCGs && pGapRoles_AppCGs->pfnStateChange )
        {
            pGapRoles_AppCGs->pfnStateChange( conn_handle,gapRole_state );
        }
    }
}

/*********************************************************************
    @fn      gapRole_SetupGAP

    @brief   Call the GAP Device Initialization function using the
            Profile Parameters.

    @param   none

    @return  none
*/
static void gapRole_SetupGAP( void )
{
    VOID GAP_DeviceInit( gapRole_TaskID,
                         gapRole_profileRole, 0,
                         gapRole_IRK, gapRole_SRK,
                         &gapRole_signCounter );
}

/*********************************************************************
    @fn      gapRole_HandleParamUpdateNoSuccess

    @brief   Handle unsuccessful connection parameters update.

    @param   none

    @return  none
*/
static void gapRole_HandleParamUpdateNoSuccess( void )
{
    // See which option was choosen for unsuccessful updates
    switch ( paramUpdateNoSuccessOption )
    {
    case GAPROLE_RESEND_PARAM_UPDATE:
        GAPRole_SendUpdateParam( gapRole_MinConnInterval, gapRole_MaxConnInterval,
                                 gapRole_SlaveLatency, gapRole_TimeoutMultiplier,
                                 GAPROLE_RESEND_PARAM_UPDATE );
        break;

    case GAPROLE_TERMINATE_LINK:
        GAPRole_TerminateConnection(gapRole_ParamUpdateConnHandle);
        break;

    case GAPROLE_NO_ACTION:

    // fall through
    default:
        //do nothing
        break;
    }

    gapRole_ParamUpdateConnHandle = INVALID_CONNHANDLE;
}

/********************************************************************
    @fn          gapRole_startConnUpdate

    @brief       Start the connection update procedure

    @param       handleFailure - what to do if the update does not occur.
                Method may choose to terminate connection, try again, or take no action

    @return      none
*/
static void gapRole_startConnUpdate( uint8 handleFailure )
{
    // First check the current connection parameters versus the configured parameters
    if ( (gapRole_ConnInterval[gapRole_ParamUpdateConnHandle] < gapRole_MinConnInterval)   ||
            (gapRole_ConnInterval[gapRole_ParamUpdateConnHandle] > gapRole_MaxConnInterval)   ||
            (gapRole_ConnSlaveLatency[gapRole_ParamUpdateConnHandle] != gapRole_SlaveLatency) ||
            (gapRole_ConnTimeout[gapRole_ParamUpdateConnHandle]  != gapRole_TimeoutMultiplier) )
    {
        l2capParamUpdateReq_t updateReq;
        uint16 timeout = GAP_GetParamValue( TGAP_CONN_PARAM_TIMEOUT );
        updateReq.intervalMin = gapRole_MinConnInterval;
        updateReq.intervalMax = gapRole_MaxConnInterval;
        updateReq.slaveLatency = gapRole_SlaveLatency;
        updateReq.timeoutMultiplier = gapRole_TimeoutMultiplier;
        L2CAP_ConnParamUpdateReq( gapRole_ParamUpdateConnHandle, &updateReq, gapRole_TaskID );
        paramUpdateNoSuccessOption = handleFailure;
        // Let's wait for L2CAP Connection Parameters Update Response
        VOID osal_start_timerEx( gapRole_TaskID, CONN_PARAM_TIMEOUT_EVT, timeout );
    }
}

/********************************************************************
    @fn          GAPRole_SendUpdateParam

    @brief       Update the parameters of an existing connection

    @param       minConnInterval - the new min connection interval
    @param       maxConnInterval - the new max connection interval
    @param       latency - the new slave latency
    @param       connTimeout - the new timeout value
    @param       handleFailure - what to do if the update does not occur.
                Method may choose to terminate connection, try again, or take no action

    @return      SUCCESS, bleNotConnected, or bleInvalidRange
*/
bStatus_t GAPRole_SendUpdateParam( uint16 minConnInterval, uint16 maxConnInterval,
                                   uint16 latency, uint16 connTimeout, uint8 handleFailure )
{
    // If there is no existing connection no update need be sent
    if ( gapRole_state != GAPROLE_CONNECTED && gapRole_state != GAPROLE_CONNECTED_ADV &&gapRole_state != GAPROLE_CONNECTED_TO_TERMINA)
    {
        return ( bleNotConnected );
    }

    // Check that all parameters are in range before sending request
    if ( ( minConnInterval >= DEFAULT_MIN_CONN_INTERVAL ) &&
            ( minConnInterval < DEFAULT_MAX_CONN_INTERVAL  ) &&
            ( maxConnInterval >= DEFAULT_MIN_CONN_INTERVAL ) &&
            ( maxConnInterval < DEFAULT_MAX_CONN_INTERVAL  ) &&
            ( latency         < MAX_SLAVE_LATENCY          ) &&
            ( connTimeout     >= MIN_TIMEOUT_MULTIPLIER    ) &&
            ( connTimeout     < MAX_TIMEOUT_MULTIPLIER     ) )
    {
        gapRole_MinConnInterval = minConnInterval;
        gapRole_MaxConnInterval = maxConnInterval;
        gapRole_SlaveLatency = latency;
        gapRole_TimeoutMultiplier = connTimeout;
        // Start connection update procedure
        gapRole_startConnUpdate( handleFailure );
        // Connection update requested by app, cancel such pending procedure (if active)
        VOID osal_stop_timerEx( gapRole_TaskID, START_CONN_UPDATE_EVT );
        return ( SUCCESS );
    }

    return ( bleInvalidRange );
}

/*********************************************************************
*********************************************************************/
