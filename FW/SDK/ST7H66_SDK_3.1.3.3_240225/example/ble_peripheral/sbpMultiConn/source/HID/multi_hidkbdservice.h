/**************************************************************************************************
*******
**************************************************************************************************/



#ifndef MULTI_HIDKBDSERVICE_H
#define MULTI_HIDKBDSERVICE_H

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




// HID Report IDs for the service


#define HID_RPT_ID_MOUSE_IN      1  // Mouse input report ID
#define HID_RPT_ID_KEY_IN        2  // Keyboard input report ID
#define HID_RPT_ID_CC_IN         3



#define HID_RPT_ID_LED_OUT       0  // LED output report ID
#define HID_RPT_ID_FEATURE       0  // Feature report ID



#define EN_CONSUMER_MODE  1

#define EN_MOUSE_REPORT 0


// Number of HID reports defined in the service
#define HID_NUM_REPORTS          9//7




// HID Device Parameters
#define HIDDEV_ERASE_ALLBONDS       0  // Erase all of the bonded devices. Write Only. No Size.

// HID read/write operation
#define HID_DEV_OPER_WRITE          0  // Write operation
#define HID_DEV_OPER_READ           1  // Read operation
#define HID_DEV_OPER_ENABLE         2  // Notification enabled for report ID
#define HID_DEV_OPER_DISABLE        3  // Notifications disabled for report ID

// HID callback events
#define HID_DEV_SUSPEND_EVT         0  // HID suspend
#define HID_DEV_EXIT_SUSPEND_EVT    1  // HID exit suspend
#define HID_DEV_SET_BOOT_EVT        2  // HID set boot mode
#define HID_DEV_SET_REPORT_EVT      3  // HID set report mode

/* HID Report type */
#define HID_REPORT_TYPE_INPUT       1
#define HID_REPORT_TYPE_OUTPUT      2
#define HID_REPORT_TYPE_FEATURE     3

/* HID information flags */
#define HID_FLAGS_REMOTE_WAKE           0x01 // RemoteWake
#define HID_FLAGS_NORMALLY_CONNECTABLE  0x02 // NormallyConnectable

/* Control point commands */
#define HID_CMD_SUSPEND             0x00 // Suspend
#define HID_CMD_EXIT_SUSPEND        0x01 // Exit Suspend

/* HID protocol mode values */
#define HID_PROTOCOL_MODE_BOOT      0x00 // Boot Protocol Mode
#define HID_PROTOCOL_MODE_REPORT    0x01 // Report Protocol Mode

/* Attribute value lengths */
#define HID_PROTOCOL_MODE_LEN       1    // HID Protocol Mode
#define HID_INFORMATION_LEN         4    // HID Information
#define HID_REPORT_REF_LEN          2    // HID Report Reference Descriptor
#define HID_EXT_REPORT_REF_LEN      2    // External Report Reference Descriptor


// HID report mapping table
typedef struct
{
    uint16    handle;           // Handle of report characteristic
    uint16    cccdHandle;       // Handle of CCCD for report characteristic
    uint8     id;               // Report ID
    uint8     type;             // Report type
    uint8     mode;             // Protocol mode (report or boot)
} hidRptMap_t;

// HID dev configuration structure
typedef struct
{
    uint32    idleTimeout;      // Idle timeout in milliseconds
    uint8     hidFlags;         // HID feature flags

} hidDevCfg_t;


// HID Report callback
typedef uint8 (*hidDevReportCB_t)( uint8 id, uint8 type, uint16 uuid,
                                   uint8 oper, uint16* pLen, uint8* pData );

// HID event callback
typedef void (*hidDevEvtCB_t)( uint8 evt );

typedef void (*hidDevPasscodeCB_t)( uint8*  deviceAddr, uint16 connectionHandle,
                                    uint8 uiInputs, uint8 uiOutputs );

typedef struct
{
    hidDevReportCB_t    reportCB;
    hidDevEvtCB_t       evtCB;
    hidDevPasscodeCB_t  passcodeCB;
} hidDevCB_t;


// Attribute index enumeration-- these indexes match array elements above
enum
{

    HID_SERVICE_IDX,                // HID Service
    //HID_INCLUDED_SERVICE_IDX,       // Included Service
    #if 1
    HID_INFO_DECL_IDX,              // HID Information characteristic declaration
    HID_INFO_IDX,                   // HID Information characteristic
    #endif
    HID_CONTROL_POINT_DECL_IDX,     // HID Control Point characteristic declaration
    HID_CONTROL_POINT_IDX,          // HID Control Point characteristic
    HID_PROTOCOL_MODE_DECL_IDX,     // HID Protocol Mode characteristic declaration
    HID_PROTOCOL_MODE_IDX,          // HID Protocol Mode characteristic
    HID_REPORT_MAP_DECL_IDX,        // HID Report Map characteristic declaration
    HID_REPORT_MAP_IDX,             // HID Report Map characteristic
    //HID_EXT_REPORT_REF_DESC_IDX,    // HID External Report Reference Descriptor

    #if EN_MOUSE_REPORT
    HID_REPORT_MOUSE_IN_DECL_IDX,   // HID Report characteristic, mouse input declaration
    HID_REPORT_MOUSE_IN_IDX,         // HID Report characteristic, mouse input
    HID_REPORT_MOUSE_IN_CCCD_IDX,    // HID Report characteristic client characteristic configuration
    HID_REPORT_REF_MOUSE_IN_IDX,     // HID Report Reference characteristic descriptor, mouse input

    #endif

    HID_REPORT_KEY_IN_DECL_IDX,     // HID Report characteristic, key input declaration
    HID_REPORT_KEY_IN_IDX,          // HID Report characteristic, key input
    HID_REPORT_KEY_IN_CCCD_IDX,     // HID Report characteristic client characteristic configuration
    HID_REPORT_REF_KEY_IN_IDX,      // HID Report Reference characteristic descriptor, key input
    #if 0
    HID_REPORT_LED_OUT_DECL_IDX,    // HID Report characteristic, LED output declaration
    HID_REPORT_LED_OUT_IDX,         // HID Report characteristic, LED output
    HID_REPORT_REF_LED_OUT_IDX,     // HID Report Reference characteristic descriptor, LED output
    #endif
    #if 0
    HID_BOOT_KEY_IN_DECL_IDX,       // HID Boot Keyboard Input Report declaration
    HID_BOOT_KEY_IN_IDX,            // HID Boot Keyboard Input Report
    HID_BOOT_KEY_IN_CCCD_IDX,       // HID Boot Keyboard Input Report characteristic client characteristic configuration
    HID_BOOT_KEY_OUT_DECL_IDX,      // HID Boot Keyboard Output Report declaration
    HID_BOOT_KEY_OUT_IDX,           // HID Boot Keyboard Output Report
    #endif
    #if EN_CONSUMER_MODE
    HID_REPORT_CC_IN_DECL_IDX,      // HID Report characteristic declaration, consumer control
    HID_REPORT_CC_IN_IDX,           // HID Report characteristic, consumer control
    HID_REPORT_CC_IN_CCCD_IDX,      // HID Report characteristic client characteristic configuration, consumer control
    HID_REPORT_REF_CC_IN_IDX,       // HID Report Reference characteristic descriptor, consumer control
    #endif
    #if 0
    HID_BOOT_MOUSE_IN_DECL_IDX,     // HID Boot Mouse Input Report declaration
    HID_BOOT_MOUSE_IN_IDX,          // HID Boot Mouse Input Report
    HID_BOOT_MOUSE_IN_CCCD_IDX,     // HID Boot Mouse Input Report characteristic client characteristic configuration
    #endif
    #if 0
    HID_FEATURE_DECL_IDX,           // Feature Report declaration
    HID_FEATURE_IDX,                // Feature Report
    HID_REPORT_REF_FEATURE_IDX      // HID Report Reference characteristic descriptor, feature
    #endif
};





// HID feature flags
#define HID_KBD_FLAGS             HID_FLAGS_REMOTE_WAKE|HID_FLAGS_NORMALLY_CONNECTABLE

/*********************************************************************
    TYPEDEFS
*/

/*********************************************************************
    MACROS
*/

/*********************************************************************
    Profile Callbacks
*/


/*********************************************************************
    API FUNCTIONS
*/

/*********************************************************************
    @fn      HidKbd_AddService

    @brief   Initializes the HID service for keyboard by registering
            GATT attributes with the GATT server.

    @param   none

    @return  Success or Failure
*/
extern bStatus_t HidKbd_AddService(void);

/*********************************************************************
    @fn      HidKbd_SetParameter

    @brief   Set a HID Kbd parameter.

    @param   id     - HID report ID.
    @param   type   - HID report type.
    @param   uuid   - attribute uuid.
    @param   len    - length of data to right.
    @param   pValue - pointer to data to write.  This is dependent on
            the input parameters and WILL be cast to the appropriate
            data type (example: data type of uint16 will be cast to
            uint16 pointer).

    @return  GATT status code.
*/
extern uint8 HidKbd_SetParameter( uint8 id, uint8 type, uint16 uuid, uint16 len, void* pValue );

/*********************************************************************
    @fn      HidKbd_GetParameter

    @brief   Get a HID Kbd parameter.

    @param   id     - HID report ID.
    @param   type   - HID report type.
    @param   uuid   - attribute uuid.
    @param   pLen   - length of data to be read.
    @param   pValue - pointer to data to get.  This is dependent on
            the input parameters and WILL be cast to the appropriate
            data type (example: data type of uint16 will be cast to
            uint16 pointer).

    @return  GATT status code.
*/
extern uint8 HidKbd_GetParameter( uint8 id, uint8 type, uint16 uuid, uint16* pLen, void* pValue );

extern void HidKbd_Serive_reset_ccd(void);


void multi_hidService_init( uint8 task_id );
uint16  multi_hidService_ProcessEvent( uint8 task_id, uint16 events );

/*********************************************************************
*********************************************************************/

#ifdef __cplusplus
}
#endif

#endif /* HIDKBDSERVICE_H */
