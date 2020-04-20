#ifndef __EXTI_HANDLERS_H_INCLUDED__
#define __EXTI_HANDLERS_H_INCLUDED__

#include <stdint.h>

#include "../device-drivers/button.h"
#include "../device-drivers/encoder.h"
#include "./config.h"

// ====================
// ENCODER HANDLER

void EXTI0_1_IRQHandler(void) {
  static EncoderState state_encoder = {5, 10, 2, Undefined};

  unsigned int rot = LL_TIM_GetCounterMode(TIM2);

  if (rot == LL_TIM_COUNTERMODE_DOWN && state_encoder.counter_cur > 0)
    state_encoder.counter_cur--;
  else if (rot == LL_TIM_COUNTERMODE_UP && state_encoder.counter_cur < state_encoder.counter_max)
    state_encoder.counter_cur++;

  if (state_encoder.status == Left && state_encoder.counter_cur > state_encoder.delta)
    state_encoder.status = Turn_right;
  else if (state_encoder.status == Right &&
           state_encoder.counter_cur < state_encoder.counter_max - state_encoder.delta)
    state_encoder.status = Turn_left;
  else if ((state_encoder.status == Turn_left || state_encoder.status == Undefined) &&
           state_encoder.counter_cur < state_encoder.delta)
    state_encoder.status = Left;
  else if ((state_encoder.status == Turn_right || state_encoder.status == Undefined) &&
           state_encoder.counter_cur > state_encoder.counter_max - state_encoder.delta)
    state_encoder.status = Right;

  if (state_encoder.status == Right) {
    LL_GPIO_SetOutputPin(GPIOB, LL_GPIO_PIN_4);
    LL_GPIO_ResetOutputPin(GPIOB, LL_GPIO_PIN_3);
  } else if (state_encoder.status == Left) {
    LL_GPIO_SetOutputPin(GPIOB, LL_GPIO_PIN_3);
    LL_GPIO_ResetOutputPin(GPIOB, LL_GPIO_PIN_4);
  }

  LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_1);
  LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_0);
}

// ====================
// BUTTON HANDLER

void EXTI2_3_IRQHandler(void) {
  if (LL_EXTI_IsActiveFlag_0_31(LL_EXTI_LINE_2) == 0)
    return;

  static ButtonState state_button = {0, 10, 3, Off};

  //   if (LL_EXTI_IsEnabledRisingTrig_0_31(LL_EXTI_LINE_2)) {
  //     LL_GPIO_SetOutputPin(GPIOB, PIN_15);
  //     state_button.counter_cur++;
  //   } else {
  //     LL_GPIO_ResetOutputPin(GPIOB, PIN_15);
  //     state_button.counter_cur--;
  //   }
  //   LL_GPIO_ResetOutputPin(GPIOB, PIN_15);
  if (LL_GPIO_IsInputPinSet(GPIOA, PIN_2) && state_button.counter_cur < state_button.counter_max)
    state_button.counter_cur++;

  if (state_button.status == On && state_button.counter_cur < state_button.delta)
    state_button.status = Off;
  else if (state_button.status == Off &&
           state_button.counter_cur > state_button.counter_max - state_button.delta) {
    state_button.status      = On;
    state_button.counter_cur = 0;
  }
  if (state_button.status == On) {
    LL_GPIO_SetOutputPin(GPIOB, PIN_15);
  } else if (state_button.status == Off) {
    LL_GPIO_ResetOutputPin(GPIOB, PIN_15);
  }

  LL_EXTI_ClearFlag_0_31(LL_EXTI_LINE_2);
}

#endif