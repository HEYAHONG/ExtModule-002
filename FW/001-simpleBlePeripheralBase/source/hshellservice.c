#include "bcomdef.h"
#include "OSAL.h"
#include "linkdb.h"
#include "att.h"
#include "gatt.h"
#include "gatt_uuid.h"
#include "gatt_profile_uuid.h"
#include "gattservapp.h"
#include "gapbondmgr.h"
#include "peripheral.h"
#include "hbox.h"


/*
 * HShell UUID(UUID V3,命名空间为OID,名称为HShell,a3be563b-b374-3e72-98e7-ba70753dcad8(下定义与普通uuid顺序相反))
 */
HUUID_DEFINE_LOCAL(hshellservice_service_uuid,0xd8,0xca,0x3d,0x75,0x70,0xba,0xe7,0x98,0x72,0x3e,0x74,0xb3,0x3b,0x56,0xbe,0xa3);
/*
 * HShell 特征UUID(UUID V3,命名空间为OID,名称为HShell.IO,7580782a-4ae0-3851-90a9-9857803461e1(下定义与普通uuid顺序相反))
 */

HUUID_DEFINE_LOCAL(hshellservice_characteristic_uuid,0xe1,0x61,0x34,0x80,0x57,0x98,0xa9,0x90,0x51,0x38,0xe0,0x4a,0x2a,0x78,0x80,0x75);

static const gattAttrType_t HShellService = { ATT_UUID_SIZE, hshellservice_service_uuid };
static uint8_t HShellIOProps = GATT_PROP_NOTIFY | GATT_PROP_WRITE;
static gattCharCfg_t HShellIOConfig[GATT_MAX_NUM_CONN];
static uint8_t tx_buffer[ATT_MTU_SIZE-3]= {0};
static gattAttribute_t HShellAttrTbl[] =
{
    {
        { ATT_BT_UUID_SIZE, primaryServiceUUID }, /* type */
        GATT_PERMIT_READ,                         /* permissions */
        0,                                        /* handle */
        (uint8*)& HShellService                	/* pValue */
    },
    {
        { ATT_BT_UUID_SIZE, characterUUID },
        GATT_PERMIT_READ,
        0,
        &HShellIOProps
    },
    {
        { ATT_UUID_SIZE, hshellservice_characteristic_uuid },
        GATT_PERMIT_READ | GATT_PERMIT_WRITE,
        0,
        (uint8*)tx_buffer
    },
    {
        {ATT_BT_UUID_SIZE, clientCharCfgUUID},
        GATT_PERMIT_READ | GATT_PERMIT_WRITE,
        0,
        (uint8*)HShellIOConfig
    }
};


static bStatus_t GATTWriteAttrCB( uint16 connHandle, gattAttribute_t* pAttr,uint8* pValue, uint16 len, uint16 offset );
static const gattServiceCBs_t HShellCBs =
{
    NULL,               // Read callback function pointer
    GATTWriteAttrCB,    // Write callback function pointer
    NULL                // Authorization callback function pointer
};


static uint64_t hshell_rx_buffer[384/sizeof(uint64_t)]= {0};
static void hshell_rx_buffer_init(void)
{
    hringbuf_t * buffer=hringbuf_get((uint8_t *)hshell_rx_buffer,sizeof(hshell_rx_buffer));
    //在中断中使用无需加锁(加锁会死机)
    hringbuf_set_lock(buffer,NULL,NULL,NULL);
}

static bStatus_t GATTWriteAttrCB( uint16 connHandle, gattAttribute_t* pAttr,uint8* pValue, uint16 len, uint16 offset )
{
    bStatus_t status = SUCCESS;
    if (pAttr->type.len == ATT_BT_UUID_SIZE)
    {
        uint16 uuid = BUILD_UINT16(pAttr->type.uuid[0], pAttr->type.uuid[1]);
        if (uuid == GATT_CLIENT_CHAR_CFG_UUID)
        {
            status = GATTServApp_ProcessCCCWriteReq(connHandle, pAttr, pValue, len,offset, GATT_CLIENT_CFG_NOTIFY);
        }
    }
    else
    {
        if(huuid_compare((uint8_t *)pAttr->type.uuid,hshellservice_characteristic_uuid)==0)
        {
            //对特征的写入
            hringbuf_t * buffer=hringbuf_get((uint8_t *)hshell_rx_buffer,sizeof(hshell_rx_buffer));
            if(pValue!=NULL && len > 0)
            {
                hringbuf_input(buffer,(const uint8_t *)pValue,len);
            }
        }
    }

    return status;
}


static size_t  tx_buffer_index=0;
static void GATTNotifyAttr()
{
    if(tx_buffer_index > 0)
    {
        tx_buffer[tx_buffer_index]='\0';
        uint16_t connHandle=0;
        GAPRole_GetParameter(GAPROLE_CONNHANDLE, &connHandle);
        if ( GATTServApp_ReadCharCfg( connHandle, HShellIOConfig ) & GATT_CLIENT_CFG_NOTIFY )
        {
            //已使能通知
            gattAttribute_t *pAttr = GATTServApp_FindAttr( HShellAttrTbl,GATT_NUM_ATTRS( HShellAttrTbl ), tx_buffer );
            if(pAttr!=NULL)
            {
                attHandleValueNoti_t Noti= {0};
                memcpy(Noti.value,tx_buffer,tx_buffer_index);
                Noti.handle=pAttr->handle;
                Noti.len=tx_buffer_index;
                //发送通知
                GATT_Notification(connHandle,&Noti,FALSE);
            }
        }

    }
    tx_buffer_index=0;
}

/*
 * shell相关变量
 */
static int hshell_putchar(int ch)
{
    if(ch>0)
    {
        if(tx_buffer_index < (sizeof(tx_buffer)-1))
        {
            tx_buffer[tx_buffer_index++]=(uint8_t)ch;
        }
        else
        {
            GATTNotifyAttr();
            tx_buffer[tx_buffer_index++]=(uint8_t)ch;
        }
    }
    return ch;

}
static int hshell_getchar(void)
{
    int ch=EOF;
    {
        hringbuf_t * buffer=hringbuf_get((uint8_t *)hshell_rx_buffer,sizeof(hshell_rx_buffer));
        if(hringbuf_get_length(buffer))
        {
            uint8_t ch_val=0;
            hringbuf_output(buffer,&ch_val,sizeof(ch_val));
            ch=ch_val;
        }
    }
    return ch;
}

static hshell_context_t ctx;
static void hshell_init(void)
{
    memset(&ctx,0,sizeof(ctx));
    hshell_context_external_api_t api=hshell_context_default_external_api();
    api.getchar=hshell_getchar;
    api.putchar=hshell_putchar;
    hshell_external_api_set(&ctx,api);
    hshell_command_name_shortcut_set(&ctx,true);
    HSHELL_COMMANDS_REGISTER(&ctx);	//注册命令
}


static void handleConnStatusCB(uint16 connHandle, uint8 changeType)
{

    if (connHandle != LOOPBACK_CONNHANDLE)
    {
        if ((changeType == LINKDB_STATUS_UPDATE_REMOVED) || ((changeType == LINKDB_STATUS_UPDATE_STATEFLAGS) && (!linkDB_Up(connHandle))))
        {
            GATTServApp_InitCharCfg(connHandle,HShellIOConfig);
        }
    }

}

void hshellservice_init(void)
{
    //初始化缓冲区
    hshell_rx_buffer_init();
    //初始化hshell
    hshell_init();
    //注册linkDB
    linkDB_Register(handleConnStatusCB);
    //注册GATT服务
    GATTServApp_RegisterService( HShellAttrTbl,GATT_NUM_ATTRS( HShellAttrTbl ),&HShellCBs );
}

void hshellservice_loop(void)
{
    //运行HShell
    while(0==hshell_loop(&ctx));
    //检查通知数据发送
    GATTNotifyAttr();
}

#ifdef HRUNTIME_USING_INIT_SECTION
static void  __hshellservice_init(const hruntime_function_t *func)
{
    hshellservice_init();
    hprintf("HShellService init ok!\r\n");
}
HRUNTIME_INIT_EXPORT(hshellservice,0,__hshellservice_init,NULL);
#endif
#ifdef HRUNTIME_USING_LOOP_SECTION
static void  __hshellservice__loop(const hruntime_function_t *func)
{
    hshellservice_loop();
}
HRUNTIME_LOOP_EXPORT(hshellservice,0,__hshellservice__loop,NULL);
#endif

