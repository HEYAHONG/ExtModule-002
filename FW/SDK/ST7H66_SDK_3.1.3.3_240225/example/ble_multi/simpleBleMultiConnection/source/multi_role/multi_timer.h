/*
    All rights reserved
*/

#ifndef _MULTI_TIMER_H_
#define _MULTI_TIMER_H_

typedef struct multiTimer
{
    uint32 valid;
    uint32 id;
    uint32 timeout;
    uint32 repeat;
    void (*timeout_cb)(uint16 idx);
    struct multiTimer* next;
} multiTimer;

#ifdef __cplusplus
extern "C" {
#endif

void multitimer_init(struct multiTimer* handle, void(*timeout_cb)(uint16 idx), uint32 timeout, uint32 repeat,uint32 id);
int  multitimer_start(struct multiTimer* handle);
void multitimer_stop(struct multiTimer* handle);
void multitimer_ticks(uint32 tick);
void multitimer_loop(void);
#if ( MAX_CONNECTION_SLAVE_NUM > 0 )
///2022 08 04 add for slave timer list
int  multitimer_start_slave(struct multiTimer* handle);
void multitimer_stop_slave(struct multiTimer* handle);
void multitimer_loop_slave(void);
#endif
// void timer_again(struct Timer* handle);
// void timer_set_repeat(struct Timer* handle, uint32_t repeat);

#ifdef __cplusplus
}
#endif

#endif
