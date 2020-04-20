#ifndef __BUTTON_H_INCLUDED__
#define __BUTTON_H_INCLUDED__

#include <stddef.h>

#include "../config/config.h"
#include "../core/stm32f051x8.h"
// #include "../plib/stm32f0xx_ll_tim.h"

// ====================
// BUTTON

// static in order to be able to change from the outside context
static void (*Button_handler_on_)(void* params)       = NULL;
static void (*Button_handler_off_)(void* params)      = NULL;
static void (*Button_handler_turn_on_)(void* params)  = NULL;
static void (*Button_handler_turn_off_)(void* params) = NULL;

int SetButton(GPIO_TypeDef* port, unsigned int pin) {
  PortX_EnableClock(port);

  LL_GPIO_SetPinMode(port, pin, LL_GPIO_MODE_INPUT);
  LL_GPIO_SetPinPull(port, pin, LL_GPIO_PULL_DOWN);

  return 0;
}

void Button_SetHandler_on(void (*Button_handler_on)(void* params)) {
  Button_handler_on_ = Button_handler_on;
}

void Button_SetHandler_off(void (*Button_handler_off)(void* params)) {
  Button_handler_off_ = Button_handler_off;
}

void Button_SetHandler_turn_on(void (*Button_handler_turn_on)(void* params)) {
  Button_handler_turn_on_ = Button_handler_turn_on;
}

void Button_SetHandler_turn_off(void (*Button_handler_turn_off)(void* params)) {
  Button_handler_turn_off_ = Button_handler_turn_off;
}

void Button_CallHandler_on(void* params) {
  (*Button_handler_on_)(params);
}

void Button_CallHandler_off(void* params) {
  (*Button_handler_on_)(params);
}

void Button_CallHandler_turn_on(void* params) {
  (*Button_handler_on_)(params);
}

void Button_CallHandler_turn_off(void* params) {
  (*Button_handler_on_)(params);
}

enum ButtonStatus {
  On,
  Off,
  Turn_on,
  Turn_off,
};

typedef struct {
  uint8_t           counter_cur;
  uint8_t           counter_max;
  uint8_t           delta;
  enum ButtonStatus status;
} ButtonState;

// no interrupt version. interrupt version can be found in exti-handlers.h

// void Button_UpdateState(GPIO_TypeDef* port, unsigned int pin, ButtonState* state_current) {
//   if (state_current == NULL)
//     return;

//   uint8_t           cur    = state_current->counter_cur;
//   uint8_t           max    = state_current->counter_max;
//   uint8_t           delta  = state_current->delta;
//   enum ButtonStatus status = state_current->status;

//   if (LL_GPIO_IsInputPinSet(port, pin) && cur < max)
//     state_current->counter_cur++;
//   else if (cur > 0)
//     state_current->counter_cur--;

//   if (status == On && cur < delta) {
//     state_current->status = Turn_off;
//   } else if (status == Off && cur > max - delta) {
//     state_current->status = Turn_on;
//   } else if (status == Turn_on) {
//     state_current->status = On;
//   } else if (status == Turn_off) {
//     state_current->status = Off;
//   }
// }

#endif