#ifndef __DIODE_H_INCLUDED__
#define __DIODE_H_INCLUDED__

#include "../config/config.h"

int SetDiode(GPIO_TypeDef* port, unsigned int pin) {
  PortX_EnableClock(port);

  LL_GPIO_SetPinMode(port, pin, LL_GPIO_MODE_OUTPUT);

  return 0;
}

#endif
