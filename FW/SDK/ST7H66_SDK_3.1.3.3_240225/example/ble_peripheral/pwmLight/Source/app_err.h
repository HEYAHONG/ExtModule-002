/**************************************************************************************************
*******
**************************************************************************************************/


/**************************************************************
    COPYRIGHT(c)2017, iRAID Finance Info & Tech （Shanghai）Co. Ltd.
    All rights reserved.


    Module Name: error type definition
    File name:   iraid_err.h
    Brief description:
      iraid error type definition for globle use
    Author:  Eagle.Lao
    Email:   yufeng.lao@xwf-id.com
    Data:    2017-06-12
    Revision:V0.01
****************************************************************/


#ifndef __IRAID_ERR_DEFINE_HEAD
#define __IRAID_ERR_DEFINE_HEAD
enum
{
    APP_SUCCESS,
    APP_ERR_Q_FULL = 1,
    APP_ERR_Q_ERR,
    APP_ERR_BUSY,
    APP_ERR_INVALID_PAGE,
    APP_ERR_CRC,
    APP_ERR_UNKNOW_CMD,
    APP_ERR_FDS,
    APP_ERR_FDS_BUSY,
    APP_ERR_FDS_TIMEOUT,
    APP_ERR_PARAM,
    APP_ERR_OUTOF_RANGE,
    APP_ERR_DATA_ALIGN,
    APP_ERR_BLE_SEND_FAIL,
    APP_ERR_BLE_DISCONNECT,
    APP_ERR_NOT_IMPLEMENTED,
    APP_ERR_SPI_ERR,
    APP_ERR_TIME_OVER,
    APP_ERR_NOT_VALID_RECORD,
    APP_ERR_IO,
    APP_ERR_TIMER,
    APP_ERR_INVALID_STATE,
    APP_ERR_HEARTRATE,
    APP_ERR_ISO7816,
    APP_ERR_UNICODE,
    APP_ERR_FONT,
    APP_ERR_BINDING_FAILED,
    APP_ERR_BINDING_TIMEOUT,


};

#endif

