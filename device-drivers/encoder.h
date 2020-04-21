#ifndef __ENCODER_H_INCLUDED__
#define __ENCODER_H_INCLUDED__

#include "../config/config.h"
#include "../core/stm32f051x8.h"
#include "../plib/stm32f0xx_ll_tim.h"

// ====================
// ENCODER

static void (*Encoder_handler_turn_left_)(void* params)  = NULL;
static void (*Encoder_handler_turn_right_)(void* params) = NULL;
static void (*Encoder_handler_left_)(void* params)       = NULL;
static void (*Encoder_handler_right_)(void* params)      = NULL;

void Encoder_SetHandler_turn_left(void (*Encoder_handler_turn_left)(void* params)) {
  Encoder_handler_turn_left_ = Encoder_handler_turn_left;
}

void Encoder_SetHandler_turn_right(void (*Encoder_handler_turn_right)(void* params)) {
  Encoder_handler_turn_right_ = Encoder_handler_turn_right;
}

void Encoder_SetHandler_left(void (*Encoder_handler_left)(void* params)) {
  Encoder_handler_left_ = Encoder_handler_left;
}

void Encoder_SetHandler_right(void (*Encoder_handler_right)(void* params)) {
  Encoder_handler_right_ = Encoder_handler_right;
}

int SetEncoder(GPIO_TypeDef* port, TIM_TypeDef* timer, unsigned int pin_l, unsigned int pin_r) {
  PortX_EnableClock(port);

  LL_GPIO_SetPinMode(port, pin_r, LL_GPIO_MODE_ALTERNATE);
  LL_GPIO_SetPinMode(port, pin_l, LL_GPIO_MODE_ALTERNATE);
  LL_GPIO_SetAFPin_0_7(port, pin_r, LL_GPIO_AF_2);
  LL_GPIO_SetAFPin_0_7(port, pin_l, LL_GPIO_AF_2);
  LL_GPIO_SetPinPull(port, pin_r, LL_GPIO_PULL_UP);
  LL_GPIO_SetPinPull(port, pin_l, LL_GPIO_PULL_UP);

  TimerX_EnableClock(timer);

  LL_TIM_SetEncoderMode(timer, LL_TIM_ENCODERMODE_X4_TI12);
  LL_TIM_IC_SetPolarity(timer, LL_TIM_CHANNEL_CH1, LL_TIM_IC_POLARITY_FALLING);
  LL_TIM_IC_SetPolarity(timer, LL_TIM_CHANNEL_CH2, LL_TIM_IC_POLARITY_FALLING);
  // LL_TIM_IC_SetFilter(TIM2, LL_TIM_CHANNEL_CH1, LL_TIM_IC_FILTER_FDIV16_N5);
  // LL_TIM_IC_SetFilter(TIM2, LL_TIM_CHANNEL_CH2, LL_TIM_IC_FILTER_FDIV16_N5);
  LL_TIM_SetAutoReload(timer, 0xFFFF);
  LL_TIM_EnableCounter(timer);

  return 0;
}

enum EncoderStatus {
  Left,
  Right,
  Turn_left,
  Turn_right,
  Undefined,
};

typedef struct {
  uint8_t            counter_cur;
  uint8_t            counter_max;
  uint8_t            delta;
  enum EncoderStatus status;

} EncoderState;

// non-interrupt version, interrupt implementation can be found in exti-handlers.h
enum EncoderStatus Encoder_GetRotation(TIM_TypeDef* timer) {
  switch (LL_TIM_GetCounterMode(timer)) {
  case LL_TIM_COUNTERMODE_DOWN:
    return Left;
  case LL_TIM_COUNTERMODE_UP:
    return Right;
  default:
    return Undefined;
  }
}

#endif