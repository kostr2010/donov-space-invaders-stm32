#ifndef __INTI_HANDLERS_H_INCLUDED__
#define __INTI_HANDLERS_H_INCLUDED__

#include <stdint.h>

#include "../device-drivers/button.h"
#include "./config.h"

// ====================
// SYS TICK HANDLER

static uint8_t tick = 0;

void TIM1_BRK_UP_TRG_COM_IRQHandler(void) {
  Button_UpdateState(GPIOA, PIN_2);

  LL_TIM_ClearFlag_UPDATE(TIM1);

  tick = (tick + 1) % 1000;
}

#endif