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

  SetButton(GPIOA, PIN_2);
  SetEncoder(GPIOA, TIM2, PIN_0, PIN_1);
  SetSegm(GPIOC);
  // SetDiode(GPIOB, PIN_15);
  // SetDiode(GPIOB, PIN_3);
  // SetDiode(GPIOB, PIN_4);
  // SetDiode(GPIOB, PIN_5);
  SetDiode(GPIOC, PIN_8);
  // SetDiode(GPIOC, PIN_9);

  EXTI_config();

  Game_StartupInit();
  Game_DrawStartScreen();
  oled_update();

  while (game.status == Menu)
    ;

  Button_SetHandler_turn_on(HandlerOnPress_Battle);

  Encoder_SetHandler_right(HandlerRight_Battle);
  Encoder_SetHandler_left(HandlerLeft_Battle);

  Game_DrawBattlefield();

  int i = 0;

  while (game.status == Running) {
    Game_MoveEntities();
    Game_SpawnEntities(i);
    Game_DrawBattlefield();
    Game_ResolveCollisions();
    Game_UpdateEntities();

    // delay
    for (int j = 0; j < 1000; j++)
      ;

    i++;
  }

  oled_clr(clBlack);
  oled_set_cursor(0, 0);
  if (game.status == Win)
    Game_DrawWin();
  else
    Game_DrawDefeat();

  oled_update();

  while (1)
    Segm_SetNum(GPIOC, game.score);

  return 0;
}
