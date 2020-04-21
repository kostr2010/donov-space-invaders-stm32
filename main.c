#include "./config/config.h"
#include "./config/exti-handlers.h"
#include "./config/inti-handlers.h"

#include "./input/input.h"
#include "./output/output.h"

#include "./game/space-invaders.h"

void HandlerOnPress(void* params) {
  Game_SpawnPlayerMissle(game.player.pos_x + 1, game.player.pos_y + 4);
  Game_SpawnPlayerMissle(game.player.pos_x + PLAYER_CORVETTE_WIDTH - 1, game.player.pos_y + 4);
}

void HandlerOnUnPress(void* params) {
}

void HandlerRight(void* params) {
  game.player.v_x = 4;
}

void HandlerLeft(void* params) {
  game.player.v_x = -4;
}

void HandlerTurnRight(void* params) {
  LL_GPIO_SetOutputPin(GPIOB, LL_GPIO_PIN_4);
  LL_GPIO_ResetOutputPin(GPIOB, LL_GPIO_PIN_3);
}

void HandlerTurnLeft(void* params) {
  LL_GPIO_SetOutputPin(GPIOB, LL_GPIO_PIN_3);
  LL_GPIO_ResetOutputPin(GPIOB, LL_GPIO_PIN_4);
}

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
  // SetDiode(GPIOC, PIN_8);
  // SetDiode(GPIOC, PIN_9);

  EXTI_config();

  Button_SetHandler_turn_on(HandlerOnPress);
  // Button_SetHandler_turn_off(HandlerOnUnPress);

  Encoder_SetHandler_right(HandlerRight);
  Encoder_SetHandler_left(HandlerLeft);

  Game_StartupInit();
  Game_DrawBattlefield();

  int i = 0;

  while (game.flag == 0) {
    Game_MoveEntities();
    Game_SpawnEntities(i);
    Game_DrawBattlefield();
    Game_ResolveCollisions();
    Game_UpdateEntities();

    i++;
  }

  if (game.flag == 1) {
    // win
    oled_clr(clWhite);
  } else {
    // fail
    oled_clr(clBlack);
  }

  oled_update();

  while (1) {
    Segm_SetNum(GPIOC, game.score);
  }

  return 0;
}
