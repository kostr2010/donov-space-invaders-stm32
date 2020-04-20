#include "./config/config.h"
#include "./config/exti-handlers.h"
#include "./config/inti-handlers.h"

#include "./input/input.h"
#include "./output/output.h"

//// HandlerOnPress();

int main() {
  clocking_config(LL_FLASH_LATENCY_1,
                  LL_RCC_PLLSOURCE_HSI_DIV_2,
                  LL_RCC_PLL_MUL_12,
                  LL_RCC_SYSCLK_DIV_1,
                  LL_RCC_APB1_DIV_1);
  SysTickConfig();

  SetButton(GPIOA, PIN_2);
  SetEncoder(GPIOA, TIM2, PIN_0, PIN_1);
  // SetSegm(GPIOC);
  SetDiode(GPIOB, PIN_15);
  SetDiode(GPIOB, PIN_3);
  SetDiode(GPIOB, PIN_4);
  SetDiode(GPIOB, PIN_5);
  SetDiode(GPIOC, PIN_8);
  SetDiode(GPIOC, PIN_9);

  EXTI_config();

  while (1) {
    if (Button_GetStatus() == On)
      LL_GPIO_SetOutputPin(GPIOB, PIN_15);
    else if (Button_GetStatus() == Off)
      LL_GPIO_ResetOutputPin(GPIOB, PIN_15);
  }

  return 0;
}
