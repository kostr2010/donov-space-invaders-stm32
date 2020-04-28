#ifndef __INTI_HANDLERS_H_INCLUDED__
#define __INTI_HANDLERS_H_INCLUDED__

#include <stdint.h>

#include "../device-drivers/button.h"
#include "../device-drivers/SEG7.h"
#include "../game/components/game-instances.h"
#include "./config.h"

// ====================
// SYSTICK HANDLER

static uint32_t tick = 0;

void TIM1_BRK_UP_TRG_COM_IRQHandler(void) {
  LL_TIM_ClearFlag_UPDATE(TIM1);

  Button_UpdateState(GPIOA, PIN_2);

  SEG7_SetNumber(game.score);
  SEG7_SetNumberQuarter(tick);
  SEG7_PushDisplayStateToMC();

  tick = (tick + 1) % 1000;
}

uint8_t SysTick_GetTick() {
  return tick;
}

#endif