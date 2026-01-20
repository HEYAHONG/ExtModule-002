#ifndef __HBOX_CONFIG_H__
#define __HBOX_CONFIG_H__

/*
 * 简易内存堆设置
 */
//#define USING_HMEMORYHEAP 1
#ifndef HMEMORYHEAP_DEFAULT_POOL_SIZE
#define HMEMORYHEAP_DEFAULT_POOL_SIZE 1024
#endif

/*
 * 定义默认函数
 */
#define HDEFAULTS_TICK_GET      hbox_tick_get
#define HDEFAULTS_MUTEX_LOCK    hbox_enter_critical
#define HDEFAULTS_MUTEX_UNLOCK  hbox_exit_critical

#ifndef USING_HMEMORYHEAP
#define HDEFAULTS_MALLOC        hbox_malloc
#define HDEFAULTS_FREE          hbox_free
#endif

void hbox_init(void);
void hbox_tick(void);

/*
 * 启用初始化段
 */
#define HRUNTIME_USING_INIT_SECTION 1

/*
 * 启用循环段
 */
#define HRUNTIME_USING_LOOP_SECTION 1

/*
 * 启用符号段
 */
#define HRUNTIME_USING_SYMBOL_SECTION 1

/*
 * 使用自定义的putchar
 */
#define HPUTCHAR hbox_shell_putchar

/*
 * 使用自定义的getchar
 */
#define HGETCHAR hbox_shell_getchar

/*
 * 使用自定义的abort
 */
#define HABORT hbox_abort

/*
 * 使用自定义的exit
 */
#define HEXIT hbox_exit

/*
 * 使用自定义的fputs
 */
#define HFPUTS hbox_fputs

/*
 * 使用自定义的vfprintf
 */
#define HVFPRINTF hbox_vfprintf

/*
 * 使用自定义的puts
 */
#define HPUTS hbox_puts


/*
 * 不实现系统调用
 */
#define HDEFAULTS_SYSCALL_NO_IMPLEMENTATION 1

/*
 * 不实现hlibc
 */
#define HLIBC_NO_IMPLEMENTATION 1

/*
 * 关闭uriparser的uniconde支持
 */
#define URI_NO_UNICODE 1

#endif // __HBOX_CONFIG_H__
