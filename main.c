#include "./config/config.h"
#include "./config/exti-handlers.h"
#include "./config/inti-handlers.h"

#include "./input/input.h"
#include "./output/output.h"

#include "./game/space-invaders.h"

int main() {
  clocking_config(LL_FLASH_LATENCY_1,
                  LL_RCC_PLLSOURCE_HSI_DIV_2,
                  LL_RCC_PLL_MUL_12,
                  LL_RCC_SYSCLK_DIV_1,
                  LL_RCC_APB1_DIV_1);
  SysTickConfig();
 
  // Comrad Aleinik's device drivers:
  SEG7_Config();
  USART_Config();

  // uint32_t baudrate = LL_USART_GetBaudRate(USART1, SystemCoreClock, LL_USART_OVERSAMPLING_8);
  // for (int i = 0; i < 800000; i = (i + 1) % 800000)
  // {
  //   if (i == 0)
  //     SEG7_SetNumber(baudrate / 10000);

  //   if (i == 400000)
  //     SEG7_SetNumber(baudrate % 10000);
  // }
  // Comrad Nazarov's device drivers:
  SetButton(GPIOA, PIN_2);
  SetEncoder(GPIOA, TIM2, PIN_0, PIN_1);
  
  EXTI_config();

  // Start Game:
  VGA_RenderClear();
  Game_StartupInit();
  Game_DrawStartScreen();

  USART_PushData();
  oled_update(); 

  while (game.status == Menu);

  Button_SetHandler_turn_on(HandlerOnPress_Battle);

  Encoder_SetHandler_right(HandlerRight_Battle);
  Encoder_SetHandler_left(HandlerLeft_Battle);

  Game_DrawBattlefield();

  for (int i = 0; game.status == Running; ++i) {
    Game_MoveEntities();
    Game_SpawnEntities(i);

    VGA_RenderClear();
    Game_DrawBattlefield();
    Game_ResolveCollisions();
    Game_UpdateEntities();

    // delay
    for (int j = 0; j < 1000; j++);
  }

  if (game.status == Win)
    Game_DrawWin();
  else
    Game_DrawDefeat();

  USART_PushData();
  oled_update();

  return 0;
}
