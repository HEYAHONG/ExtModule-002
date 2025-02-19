/**************************************************************************************************
*******
**************************************************************************************************/

/**************************************************************************************************
    Filename:       adc_config.h
    Revised:        $Date $
    Revision:       $Revision $


**************************************************************************************************/

#ifndef __ADC_CONFIG_H__
#define __ADC_CONFIG_H__

#ifdef __cplusplus
extern "C"
{
#endif

#include "voice.h"
#include "adc.h"

/*********************************************************************
    INCLUDES
*/

/*********************************************************************
    CONSTANTS
*/


/*********************************************************************
    MACROS
*/


#define ADC_RUNMODE_INTERRUPT               0

#define ADC_RUNMODE_POLLING                 1

#define ADC_RUNMODE_COMPARE                 2

#define VOICE_RUNMODE                       3

#define APP_RUN_MODE                        VOICE_RUNMODE

// ![amic]micphone bias gpio
#define VOICE_MIC_BIAS_GPIO                 GPIO_P15

// ![dmic]clk_gpio
#define VOICE_CLK_GPIO                      GPIO_P15

// ![dmic]data_gpio
#define VOICE_DATA_GPIO                     GPIO_P14

#define VOICE_COLLECT_RATE                  VOICE_RATE_8K

// ! rece origin audio data size
#define VOICE_FIFO_BUFF_SIZE                768  /* (((100-4)*4)*2) */

// ! adpcm encode target data size
#define VOICE_ENCODE_TARGER_SIZE            192  /* (((100-4)*4)/2  */

// ! request data size before adpcm encode
#define VOICE_REQUEST_CACHE_BUFF_SIZE       384  /* ((100-4)*2)     */


/*********************************************************************
    FUNCTIONS
*/



/*********************************************************************
*********************************************************************/

#ifdef __cplusplus
}
#endif

#endif

