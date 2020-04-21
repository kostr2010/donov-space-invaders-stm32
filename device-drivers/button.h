#ifndef __BUTTON_H_INCLUDED__
#define __BUTTON_H_INCLUDED__

#include <stddef.h>

#include "../config/config.h"
#include "../core/stm32f051x8.h"
// #include "../plib/stm32f0xx_ll_tim.h"

// ====================
// BUTTON

static void (*Button_handler_on_)(void* params)       = NULL;
static void (*Button_handler_off_)(void* params)      = NULL;
static void (*Button_handler_turn_on_)(void* params)  = NULL;
static void (*Button_handler_turn_off_)(void* params) = NULL;

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

int SetButton(GPIO_TypeDef* port, unsigned int pin) {
  PortX_EnableClock(port);

  LL_GPIO_SetPinMode(port, pin, LL_GPIO_MODE_INPUT);
  LL_GPIO_SetPinPull(port, pin, LL_GPIO_PULL_DOWN);

  return 0;
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

// no interrupt version. interrupt version can be found in exti-handlers.h (not implemented yet)
static ButtonState button_state = {0, 10, 5, Off};

void Button_UpdateState(GPIO_TypeDef* port, unsigned int pin) {
  if (LL_GPIO_IsInputPinSet(port, pin) && button_state.counter_cur < button_state.counter_max)
    button_state.counter_cur++;
  else if (button_state.counter_cur > 0)
    button_state.counter_cur--;

  if (button_state.status == Off &&
      button_state.counter_cur >= button_state.counter_max - button_state.delta) {
    button_state.status = Turn_on;

    if (Button_handler_turn_on_ != NULL)
      Button_handler_turn_on_(NULL);
  } else if (button_state.counter_cur > button_state.counter_max - button_state.delta) {
    button_state.status = On;

    if (Button_handler_on_ != NULL)
      Button_handler_on_(NULL);
  } else if (button_state.status == On && button_state.counter_cur <= button_state.delta) {
    button_state.status = Turn_off;

    if (Button_handler_turn_off_ != NULL)
      Button_handler_turn_off_(NULL);
  } else if (button_state.counter_cur < button_state.delta) {
    button_state.status = Off;

    if (Button_handler_off_ != NULL)
      Button_handler_turn_off_(NULL);
  }
}

enum ButtonStatus Button_GetStatus() {
  return button_state.status;
}

#endif