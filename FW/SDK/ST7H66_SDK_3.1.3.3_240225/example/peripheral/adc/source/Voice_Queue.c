/**************************************************************************************************
*******
**************************************************************************************************/

#include "Voice_Queue.h"
#include "osal.h"
#include "log.h"

Queue VoiceQueue;

uint8 Voicebuf[VOICE_QUEUE_MAX_LENGTH*VOICE_REPORT_FRAME_SIZE]= {0X00};

uint8 VoiceSend_SubIndex=0;





/**
    @brief init voice queue
    @param uint8 * voice_buf--Buf For queue
    @return none
*/
void InitQueue(void)
{
    VoiceQueue.queuesize = VOICE_QUEUE_MAX_LENGTH;
    VoiceQueue.SendIdx   = 0;
    VoiceQueue.StoreIdx  = 0;
    VoiceQueue.VoicePackageSN = 0;
    //VoiceQueue.StoreCnt  = 0;
    VoiceQueue.VoiceFlg  = TRUE;
    VoiceQueue.VoiceSendFlg = FALSE;
    VoiceQueue.ReleaseSendFlg = FALSE;
    VoiceQueue.ReleaseTimerFlg = FALSE;
    VoiceQueue.VoiceQueue = (uint8*)Voicebuf;
}



/**
    @brief in voice queue
    @param buffer - buffer data to be stored
    @return none
*/
void InQueue(uint8* buffer)
{
    uint32 Tail;
    Tail = (VoiceQueue.StoreIdx + 1) % VoiceQueue.queuesize;

    if (Tail == VoiceQueue.SendIdx)
    {
        LOG("InQueue full\n\r");
    }
    else
    {
        osal_memcpy(&VoiceQueue.VoiceQueue[VoiceQueue.StoreIdx * VOICE_REPORT_FRAME_SIZE], buffer, VOICE_REPORT_FRAME_SIZE);
        VoiceQueue.StoreIdx = Tail;
        VoiceQueue.VoicePackageSN++;
    }
}

/**
    @brief out voice queue
    @param uint8 * send_buf
    @return none
*/
uint8 OutQueue(uint8* send_buf)
{
    if (VoiceQueue.StoreIdx == VoiceQueue.SendIdx)
    {
        //LOG("OutQueue is empty\n\r");
        return 1;
    }
    else
    {
        //SendData
        osal_memcpy(send_buf, VoiceQueue.VoiceQueue+VoiceQueue.SendIdx * VOICE_REPORT_FRAME_SIZE, VOICE_REPORT_FRAME_SIZE);
        VoiceQueue.SendIdx = (VoiceQueue.SendIdx + 1) % VoiceQueue.queuesize;
        return 0;
    }
}

/**
    @brief check if voice queue is full
    @param none
    @return true or false
*/
uint8 IsQueueFull(void)
{
    if ((VoiceQueue.StoreIdx + 1) % VoiceQueue.queuesize == VoiceQueue.SendIdx)
    {
        return 1;
    }
    else
    {
        return 0;
    }
}
/**
    @brief check if voice queue is empty
    @param none
    @return true or false
*/
uint8 IsQueueEmpty(void)
{
    if (VoiceQueue.StoreIdx == VoiceQueue.SendIdx)
    {
        return 1;
    }
    else
    {
        return 0;
    }
}
