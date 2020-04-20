#include "./config/config.h"
#include "./config/exti-handlers.h"

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

  // int rot = 0;
  // ButtonState state = {0, 60, 15, Off};

  while (1) {
    // rot = Encoder_GetRotation(TIM2);
    // Button_UpdateState(GPIOA, PIN_2);

    if (button_state.status == On)
      LL_GPIO_SetOutputPin(GPIOB, PIN_15);
    else if (button_state.status == Off)
      LL_GPIO_ResetOutputPin(GPIOB, PIN_15);

    // if (rot == 0) {
    //   LL_GPIO_SetOutputPin(GPIOB, PIN_3);
    //   LL_GPIO_ResetOutputPin(GPIOB, PIN_4);
    //   LL_GPIO_ResetOutputPin(GPIOB, PIN_5);
    // } else if (rot == 1) {
    //   LL_GPIO_SetOutputPin(GPIOB, PIN_4);
    //   LL_GPIO_ResetOutputPin(GPIOB, PIN_3);
    //   LL_GPIO_ResetOutputPin(GPIOB, PIN_5);
    // } else if (rot == 2) {
    //   LL_GPIO_SetOutputPin(GPIOB, PIN_5);
    //   LL_GPIO_ResetOutputPin(GPIOB, PIN_3);
    //   LL_GPIO_ResetOutputPin(GPIOB, PIN_4);
    // }
    ///
    // for (int i = 0; i < 100000; i++)
    //   ;
  }

  return 0;
}
