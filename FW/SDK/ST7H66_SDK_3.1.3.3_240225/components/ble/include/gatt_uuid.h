/**************************************************************************************************
*******
**************************************************************************************************/

/**************************************************************************************************
    Filename:       gatt_uuid.h
    Revised:
    Revision:

    Description:    This file contains Generic Attribute Profile (GATT)
                  UUID types.


**************************************************************************************************/

#ifndef GATT_UUID_H
#define GATT_UUID_H

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

/*
    WARNING: The 16-bit UUIDs are assigned by the Bluetooth SIG and published
            in the Bluetooth Assigned Numbers page. Do not change these values.
            Changing them will cause Bluetooth interoperability issues.
*/

/**
    GATT Services
*/
#define GAP_SERVICE_UUID                           0x1800 // Generic Access Profile
#define GATT_SERVICE_UUID                          0x1801 // Generic Attribute Profile

/**
    GATT Declarations
*/
#define GATT_PRIMARY_SERVICE_UUID                  0x2800 // Primary Service
#define GATT_SECONDARY_SERVICE_UUID                0x2801 // Secondary Service
#define GATT_INCLUDE_UUID                          0x2802 // Include
#define GATT_CHARACTER_UUID                        0x2803 // Characteristic

/**
    GATT Descriptors
*/
#define GATT_CHAR_EXT_PROPS_UUID                   0x2900 // Characteristic Extended Properties
#define GATT_CHAR_USER_DESC_UUID                   0x2901 // Characteristic User Description
#define GATT_CLIENT_CHAR_CFG_UUID                  0x2902 // Client Characteristic Configuration
#define GATT_SERV_CHAR_CFG_UUID                    0x2903 // Server Characteristic Configuration
#define GATT_CHAR_FORMAT_UUID                      0x2904 // Characteristic Presentation Format
#define GATT_CHAR_AGG_FORMAT_UUID                  0x2905 // Characteristic Aggregate Format
#define GATT_VALID_RANGE_UUID                      0x2906 // Valid Range
#define GATT_EXT_REPORT_REF_UUID                   0x2907 // External Report Reference Descriptor
#define GATT_REPORT_REF_UUID                       0x2908 // Report Reference Descriptor

/**
    GATT Characteristics
*/
#define DEVICE_NAME_UUID                           0x2A00 // Device Name
#define APPEARANCE_UUID                            0x2A01 // Appearance
#define PERI_PRIVACY_FLAG_UUID                     0x2A02 // Peripheral Privacy Flag
#define RECONNECT_ADDR_UUID                        0x2A03 // Reconnection Address
#define PERI_CONN_PARAM_UUID                       0x2A04 // Peripheral Preferred Connection Parameters
#define SERVICE_CHANGED_UUID                       0x2A05 // Service Changed

/*********************************************************************
    MACROS
*/

/*********************************************************************
    TYPEDEFS
*/

/*********************************************************************
    VARIABLES
*/

/**
    GATT Services
*/
extern CONST uint8 gapServiceUUID[];
extern CONST uint8 gattServiceUUID[];

/**
    GATT Attribute Types
*/
extern CONST uint8 primaryServiceUUID[];
extern CONST uint8 secondaryServiceUUID[];
extern CONST uint8 includeUUID[];
extern CONST uint8 characterUUID[];

/**
    GATT Characteristic Descriptors
*/
extern CONST uint8 charExtPropsUUID[];
extern CONST uint8 charUserDescUUID[];
extern CONST uint8 clientCharCfgUUID[];
extern CONST uint8 servCharCfgUUID[];
extern CONST uint8 charFormatUUID[];
extern CONST uint8 charAggFormatUUID[];
extern CONST uint8 validRangeUUID[];
extern CONST uint8 extReportRefUUID[];
extern CONST uint8 reportRefUUID[];

/**
    GATT Characteristic Types
*/
extern CONST uint8 deviceNameUUID[];
extern CONST uint8 appearanceUUID[];
extern CONST uint8 periPrivacyFlagUUID[];
extern CONST uint8 reconnectAddrUUID[];
extern CONST uint8 periConnParamUUID[];
extern CONST uint8 serviceChangedUUID[];
extern CONST uint8 manuNameUUID[];
extern CONST uint8 serialNumUUID[];
extern CONST uint8 manuAddrUUID[];

/*********************************************************************
    FUNCTIONS
*/
extern const uint8* GATT_FindUUIDRec( const uint8* pUUID, uint8 len );

/*********************************************************************
*********************************************************************/

#ifdef __cplusplus
}
#endif

#endif /* GATT_UUID_H */
