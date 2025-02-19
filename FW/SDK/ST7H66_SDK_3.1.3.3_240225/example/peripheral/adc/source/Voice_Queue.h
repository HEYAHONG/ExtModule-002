/**************************************************************************************************
*******
**************************************************************************************************/

#ifndef VOICE_QUEUE_H
#define VOICE_QUEUE_H

#include "types.h"



// ! Queue DEPTH

#define VOICE_QUEUE_MAX_LENGTH              5

// ! A complter frame audio data size and no packet
#define VOICE_REPORT_FRAME_SIZE             100




typedef struct queue
{
    uint8 VoiceFlg;
    uint8 VoiceSendFlg; //voice buffered to send
    uint8 ReleaseSendFlg; //release key buffered to send
    uint8 ReleaseTimerFlg;//timer to process abnormal flg.

    uint32 VoicePackageSN;
    uint32 queuesize;
    uint32 SendIdx;    //head
    uint32 StoreIdx;   //tail
    uint8* VoiceQueue;
} Queue;

extern Queue VoiceQueueUnit;

extern uint8 VoiceSend_SubIndex;

extern void  InitQueue(void);
extern void InQueue(uint8* buffer);
extern uint8 OutQueue(uint8* send_buf);
extern uint8 IsQueueFull(void);
extern uint8 IsQueueEmpty(void);




#endif
