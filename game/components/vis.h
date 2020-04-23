#ifndef __VIS_H_INCLUDED__
#define __VIS_H_INCLUDED__

#include "../../lib/oled_driver.h"
#include "../../lib/xprintf.h"
#include "./game-instances.h"

void Game_DrawEnemyCorvette(uint8_t x, uint8_t y) {
  x += ENEMY_CORVETTE_WIDTH / 2;
  y += ENEMY_CORVETTE_LENGTH / 2;

  oled_set_pix(x, y, clWhite);
  oled_set_pix(x, y - 1, clWhite);
  oled_set_pix(x, y - 2, clWhite);
  oled_set_pix(x, y - 3, clWhite);
  oled_set_pix(x, y - 4, clWhite);
  oled_set_pix(x, y + 1, clWhite);
  oled_set_pix(x, y + 2, clWhite);
  oled_set_pix(x, y + 3, clWhite);
  oled_set_pix(x + 1, y, clWhite);
  oled_set_pix(x + 1, y + 2, clWhite);
  oled_set_pix(x + 1, y + 3, clWhite);
  oled_set_pix(x + 1, y + 4, clWhite);
  oled_set_pix(x + 1, y - 1, clWhite);
  oled_set_pix(x + 1, y - 2, clWhite);
  oled_set_pix(x - 1, y, clWhite);
  oled_set_pix(x - 1, y + 2, clWhite);
  oled_set_pix(x - 1, y + 3, clWhite);
  oled_set_pix(x - 1, y + 4, clWhite);
  oled_set_pix(x - 1, y - 1, clWhite);
  oled_set_pix(x - 1, y - 2, clWhite);
  oled_set_pix(x + 2, y, clWhite);
  oled_set_pix(x + 2, y + 1, clWhite);
  oled_set_pix(x + 2, y + 2, clWhite);
  oled_set_pix(x + 2, y - 1, clWhite);
  oled_set_pix(x + 2, y - 2, clWhite);
  oled_set_pix(x + 2, y - 3, clWhite);
  oled_set_pix(x - 2, y, clWhite);
  oled_set_pix(x - 2, y + 1, clWhite);
  oled_set_pix(x - 2, y + 2, clWhite);
  oled_set_pix(x - 2, y - 1, clWhite);
  oled_set_pix(x - 2, y - 2, clWhite);
  oled_set_pix(x - 2, y - 3, clWhite);
  oled_set_pix(x + 3, y, clWhite);
  oled_set_pix(x + 3, y + 1, clWhite);
  oled_set_pix(x + 3, y + 4, clWhite);
  oled_set_pix(x + 3, y - 1, clWhite);
  oled_set_pix(x + 3, y - 3, clWhite);
  oled_set_pix(x - 3, y, clWhite);
  oled_set_pix(x - 3, y + 1, clWhite);
  oled_set_pix(x - 3, y + 4, clWhite);
  oled_set_pix(x - 3, y - 1, clWhite);
  oled_set_pix(x - 3, y - 3, clWhite);
  oled_set_pix(x + 4, y, clWhite);
  oled_set_pix(x + 4, y - 4, clWhite);
  oled_set_pix(x + 4, y + 2, clWhite);
  oled_set_pix(x + 4, y + 3, clWhite);
  oled_set_pix(x - 4, y, clWhite);
  oled_set_pix(x - 4, y - 4, clWhite);
  oled_set_pix(x - 4, y + 2, clWhite);
  oled_set_pix(x - 4, y + 3, clWhite);
  oled_set_pix(x + 5, y - 1, clWhite);
  oled_set_pix(x + 5, y - 2, clWhite);
  oled_set_pix(x + 5, y + 4, clWhite);
  oled_set_pix(x - 5, y - 1, clWhite);
  oled_set_pix(x - 5, y - 2, clWhite);
  oled_set_pix(x - 5, y + 4, clWhite);
  oled_set_pix(x + 6, y - 3, clWhite);
  oled_set_pix(x - 6, y - 3, clWhite);
}

// void Game_DrawDefeat(/* 10, 70*/) {
//   uint8_t x = 10, y = 70;

//   oled_set_pix(x + 6, y - 3, clWhite);
//   oled_set_pix(x + 6, y - 4, clWhite);
//   oled_set_pix(x + 6, y - 5, clWhite);
//   oled_set_pix(x + 6, y - 6, clWhite);
//   oled_set_pix(x + 6, y - 7, clWhite);
//   oled_set_pix(x + 6, y - 8, clWhite);
//   oled_set_pix(x + 7, y - 7, clWhite);
//   oled_set_pix(x + 7, y - 8, clWhite);
//   oled_set_pix(x + 7, y - 9, clWhite);
//   oled_set_pix(x + 7, y - 10, clWhite);
//   oled_set_pix(x + 7, y - 11, clWhite);
//   oled_set_pix(x + 8, y - 11, clWhite);
//   oled_set_pix(x + 8, y - 12, clWhite);
//   oled_set_pix(x + 9, y - 11, clWhite);
//   oled_set_pix(x + 9, y - 12, clWhite);
//   oled_set_pix(x + 10, y - 10, clWhite);
//   oled_set_pix(x + 10, y - 11, clWhite);
//   oled_set_pix(x + 11, y - 10, clWhite);
//   oled_set_pix(x + 11, y - 11, clWhite);
//   oled_set_pix(x + 12, y - 3, clWhite);
//   oled_set_pix(x + 12, y - 4, clWhite);
//   oled_set_pix(x + 12, y - 5, clWhite);
//   oled_set_pix(x + 12, y - 9, clWhite);
//   oled_set_pix(x + 12, y - 10, clWhite);
//   oled_set_pix(x + 13, y - 5, clWhite);
//   oled_set_pix(x + 13, y - 6, clWhite);
//   oled_set_pix(x + 13, y - 9, clWhite);
//   oled_set_pix(x + 13, y - 17, clWhite);
//   oled_set_pix(x + 13, y - 18, clWhite);
//   oled_set_pix(x + 13, y - 19, clWhite);
//   oled_set_pix(x + 13, y - 9, clWhite);
//   oled_set_pix(x + 14, y - 6, clWhite);
//   oled_set_pix(x + 14, y - 8, clWhite);
//   oled_set_pix(x + 14, y - 9, clWhite);
//   oled_set_pix(x + 14, y - 15, clWhite);
//   oled_set_pix(x + 14, y - 16, clWhite);
//   oled_set_pix(x + 14, y - 17, clWhite);
//   oled_set_pix(x + 14, y - 18, clWhite);
//   oled_set_pix(x + 14, y - 19, clWhite);
//   oled_set_pix(x + 14, y - 20, clWhite);
//   oled_set_pix(x + 15, y - 6, clWhite);
//   oled_set_pix(x + 15, y - 7, clWhite);
//   oled_set_pix(x + 15, y - 8, clWhite);
//   oled_set_pix(x + 15, y - 9, clWhite);
//   oled_set_pix(x + 15, y - 12, clWhite);
//   oled_set_pix(x + 15, y - 14, clWhite);
//   oled_set_pix(x + 15, y - 15, clWhite);
//   oled_set_pix(x + 15, y - 16, clWhite);
//   oled_set_pix(x + 15, y - 17, clWhite);
//   oled_set_pix(x + 15, y - 18, clWhite);
//   oled_set_pix(x + 15, y - 19, clWhite);
//   oled_set_pix(x + 15, y - 20, clWhite);
//   oled_set_pix(x + 15, y - 21, clWhite);
//   oled_set_pix(x + 16, y - 3, clWhite);
//   oled_set_pix(x + 16, y - 4, clWhite);
//   oled_set_pix(x + 16, y - 8, clWhite);
//   oled_set_pix(x + 16, y - 9, clWhite);
//   oled_set_pix(x + 16, y - 12, clWhite);
//   oled_set_pix(x + 16, y - 14, clWhite);
//   oled_set_pix(x + 16, y - 15, clWhite);
//   oled_set_pix(x + 16, y - 19, clWhite);
//   oled_set_pix(x + 16, y - 20, clWhite);
//   oled_set_pix(x + 16, y - 21, clWhite);
//   oled_set_pix(x + 17, y - 4, clWhite);
//   oled_set_pix(x + 17, y - 5, clWhite);
//   oled_set_pix(x + 17, y - 6, clWhite);
//   oled_set_pix(x + 17, y - 7, clWhite);
//   oled_set_pix(x + 17, y - 8, clWhite);
//   oled_set_pix(x + 17, y - 9, clWhite);
//   oled_set_pix(x + 17, y - 10, clWhite);
//   oled_set_pix(x + 17, y - 11, clWhite);
//   oled_set_pix(x + 17, y - 12, clWhite);
//   oled_set_pix(x + 17, y - 14, clWhite);
//   oled_set_pix(x + 17, y - 15, clWhite);
//   oled_set_pix(x + 17, y - 19, clWhite);
//   oled_set_pix(x + 17, y - 20, clWhite);
//   oled_set_pix(x + 17, y - 21, clWhite);
//   oled_set_pix(x + 17, y - 22, clWhite);
//   oled_set_pix(x + 18, y - 8, clWhite);
//   oled_set_pix(x + 18, y - 9, clWhite);
//   oled_set_pix(x + 18, y - 10, clWhite);
//   oled_set_pix(x + 18, y - 11, clWhite);
//   oled_set_pix(x + 18, y - 12, clWhite);
//   oled_set_pix(x + 18, y - 14, clWhite);
//   oled_set_pix(x + 18, y - 15, clWhite);
//   oled_set_pix(x + 18, y - 19, clWhite);
//   oled_set_pix(x + 18, y - 20, clWhite);
//   oled_set_pix(x + 18, y - 21, clWhite);
//   oled_set_pix(x + 18, y - 22, clWhite);
//   oled_set_pix(x + 18, y - 23, clWhite);
//   oled_set_pix(x + 19, y - 4, clWhite);
//   oled_set_pix(x + 19, y - 5, clWhite);
//   oled_set_pix(x + 19, y - 6, clWhite);
//   oled_set_pix(x + 19, y - 7, clWhite);
//   oled_set_pix(x + 19, y - 8, clWhite);
//   oled_set_pix(x + 19, y - 9, clWhite);
//   oled_set_pix(x + 19, y - 10, clWhite);
//   oled_set_pix(x + 19, y - 11, clWhite);
//   oled_set_pix(x + 19, y - 12, clWhite);
//   oled_set_pix(x + 19, y - 14, clWhite);
//   oled_set_pix(x + 19, y - 15, clWhite);
//   oled_set_pix(x + 19, y - 16, clWhite);
//   oled_set_pix(x + 19, y - 20, clWhite);
//   oled_set_pix(x + 19, y - 21, clWhite);
//   oled_set_pix(x + 19, y - 22, clWhite);
//   oled_set_pix(x + 19, y - 23, clWhite);
//   oled_set_pix(x + 19, y - 24, clWhite);
//   oled_set_pix(x + 20, y - 3, clWhite);
//   oled_set_pix(x + 20, y - 4, clWhite);
//   oled_set_pix(x + 20, y - 8, clWhite);
//   oled_set_pix(x + 20, y - 9, clWhite);
//   oled_set_pix(x + 20, y - 12, clWhite);
//   oled_set_pix(x + 20, y - 13, clWhite);
//   oled_set_pix(x + 20, y - 15, clWhite);
//   oled_set_pix(x + 20, y - 16, clWhite);
//   oled_set_pix(x + 20, y - 19, clWhite);
//   oled_set_pix(x + 20, y - 20, clWhite);
//   oled_set_pix(x + 20, y - 21, clWhite);
//   oled_set_pix(x + 20, y - 22, clWhite);
//   oled_set_pix(x + 20, y - 23, clWhite);
//   oled_set_pix(x + 20, y - 24, clWhite);
//   oled_set_pix(x + 21, y - 6, clWhite);
//   oled_set_pix(x + 21, y - 7, clWhite);
//   oled_set_pix(x + 21, y - 8, clWhite);
//   oled_set_pix(x + 21, y - 12, clWhite);
//   oled_set_pix(x + 21, y - 13, clWhite);
//   oled_set_pix(x + 21, y - 14, clWhite);
//   oled_set_pix(x + 21, y - 19, clWhite);
//   oled_set_pix(x + 21, y - 20, clWhite);
//   oled_set_pix(x + 21, y - 21, clWhite);
//   oled_set_pix(x + 21, y - 23, clWhite);
//   oled_set_pix(x + 21, y - 24, clWhite);
//   oled_set_pix(x + 21, y - 25, clWhite);
//   oled_set_pix(x + 21, y - 28, clWhite);
//   oled_set_pix(x + 22, y - 6, clWhite);
//   oled_set_pix(x + 22, y - 8, clWhite);
//   oled_set_pix(x + 22, y - 9, clWhite);
//   oled_set_pix(x + 22, y - 14, clWhite);
//   oled_set_pix(x + 22, y - 15, clWhite);
//   oled_set_pix(x + 22, y - 16, clWhite);
//   oled_set_pix(x + 22, y - 17, clWhite);
//   oled_set_pix(x + 22, y - 19, clWhite);
//   oled_set_pix(x + 22, y - 20, clWhite);
//   oled_set_pix(x + 22, y - 21, clWhite);
//   oled_set_pix(x + 22, y - 24, clWhite);
//   oled_set_pix(x + 22, y - 25, clWhite);
//   oled_set_pix(x + 22, y - 27, clWhite);
//   oled_set_pix(x + 22, y - 28, clWhite);
//   oled_set_pix(x + 22, y - 29, clWhite);
//   oled_set_pix(x + 23, y - 5, clWhite);
//   oled_set_pix(x + 23, y - 6, clWhite);
//   oled_set_pix(x + 23, y - 9, clWhite);
//   oled_set_pix(x + 23, y - 10, clWhite);
//   oled_set_pix(x + 23, y - 16, clWhite);
//   oled_set_pix(x + 23, y - 17, clWhite);
//   oled_set_pix(x + 23, y - 19, clWhite);
//   oled_set_pix(x + 23, y - 20, clWhite);
//   oled_set_pix(x + 23, y - 23, clWhite);
//   oled_set_pix(x + 23, y - 24, clWhite);
//   oled_set_pix(x + 23, y - 25, clWhite);
//   oled_set_pix(x + 23, y - 26, clWhite);
//   oled_set_pix(x + 23, y - 27, clWhite);
//   oled_set_pix(x + 23, y - 29, clWhite);
//   oled_set_pix(x + 23, y - 30, clWhite);
//   oled_set_pix(x + 24, y - 3, clWhite);
//   oled_set_pix(x + 24, y - 4, clWhite);
//   oled_set_pix(x + 24, y - 5, clWhite);
//   oled_set_pix(x + 24, y - 10, clWhite);
//   oled_set_pix(x + 24, y - 11, clWhite);
//   oled_set_pix(x + 24, y - 12, clWhite);
//   oled_set_pix(x + 24, y - 16, clWhite);
//   oled_set_pix(x + 24, y - 17, clWhite);
//   oled_set_pix(x + 24, y - 19, clWhite);
//   oled_set_pix(x + 24, y - 20, clWhite);
//   oled_set_pix(x + 24, y - 22, clWhite);
//   oled_set_pix(x + 24, y - 25, clWhite);
//   oled_set_pix(x + 24, y - 26, clWhite);
//   oled_set_pix(x + 24, y - 28, clWhite);
//   oled_set_pix(x + 24, y - 29, clWhite);
//   oled_set_pix(x + 25, y - 12, clWhite);
//   oled_set_pix(x + 25, y - 13, clWhite);
//   oled_set_pix(x + 25, y - 15, clWhite);
//   oled_set_pix(x + 25, y - 16, clWhite);
//   oled_set_pix(x + 25, y - 17, clWhite);
//   oled_set_pix(x + 25, y - 19, clWhite);
//   oled_set_pix(x + 25, y - 23, clWhite);
//   oled_set_pix(x + 25, y - 24, clWhite);
//   oled_set_pix(x + 25, y - 25, clWhite);
//   oled_set_pix(x + 25, y - 26, clWhite);
//   oled_set_pix(x + 25, y - 27, clWhite);
//   oled_set_pix(x + 25, y - 28, clWhite);
//   oled_set_pix(x + 26, y - 4, clWhite);
//   oled_set_pix(x + 26, y - 5, clWhite);
//   oled_set_pix(x + 26, y - 6, clWhite);
//   oled_set_pix(x + 26, y - 12, clWhite);
//   oled_set_pix(x + 26, y - 13, clWhite);
//   oled_set_pix(x + 26, y - 16, clWhite);
//   oled_set_pix(x + 26, y - 17, clWhite);
//   oled_set_pix(x + 26, y - 22, clWhite);
//   oled_set_pix(x + 26, y - 25, clWhite);
//   oled_set_pix(x + 26, y - 26, clWhite);
//   oled_set_pix(x + 26, y - 28, clWhite);
//   oled_set_pix(x + 26, y - 29, clWhite);
//   oled_set_pix(x + 27, y - 2, clWhite);
//   oled_set_pix(x + 27, y - 3, clWhite);
//   oled_set_pix(x + 27, y - 4, clWhite);
//   oled_set_pix(x + 27, y - 6, clWhite);
//   oled_set_pix(x + 27, y - 9, clWhite);
//   oled_set_pix(x + 27, y - 10, clWhite);
//   oled_set_pix(x + 27, y - 11, clWhite);
//   oled_set_pix(x + 27, y - 12, clWhite);
//   oled_set_pix(x + 27, y - 17, clWhite);
//   oled_set_pix(x + 27, y - 18, clWhite);
//   oled_set_pix(x + 27, y - 23, clWhite);
//   oled_set_pix(x + 27, y - 24, clWhite);
//   oled_set_pix(x + 27, y - 25, clWhite);
//   oled_set_pix(x + 27, y - 26, clWhite);
//   oled_set_pix(x + 27, y - 27, clWhite);
//   oled_set_pix(x + 27, y - 29, clWhite);
//   oled_set_pix(x + 27, y - 30, clWhite);
//   oled_set_pix(x + 28, y - 2, clWhite);
//   oled_set_pix(x + 28, y - 3, clWhite);
//   oled_set_pix(x + 28, y - 4, clWhite);
//   oled_set_pix(x + 28, y - 5, clWhite);
//   oled_set_pix(x + 28, y - 6, clWhite);
//   oled_set_pix(x + 28, y - 7, clWhite);
//   oled_set_pix(x + 28, y - 8, clWhite);
//   oled_set_pix(x + 28, y - 9, clWhite);
//   oled_set_pix(x + 28, y - 18, clWhite);
//   oled_set_pix(x + 28, y - 27, clWhite);
//   oled_set_pix(x + 28, y - 28, clWhite);
//   oled_set_pix(x + 28, y - 29, clWhite);
//   oled_set_pix(x + 29, y - 2, clWhite);
//   oled_set_pix(x + 29, y - 3, clWhite);
//   oled_set_pix(x + 29, y - 4, clWhite);
//   oled_set_pix(x + 29, y - 6, clWhite);
//   oled_set_pix(x + 29, y - 28, clWhite);
//   oled_set_pix(x + 30, y - 4, clWhite);
//   oled_set_pix(x + 30, y - 5, clWhite);
//   oled_set_pix(x + 30, y - 6, clWhite);
// }

void Game_DrawEnemyMissle(uint8_t x, uint8_t y) {
  x += ENEMY_MISSLE_WIDTH / 2;
  y += ENEMY_MISSLE_LENGTH / 2;

  oled_set_pix(x, y, clWhite);
}

void Game_DrawPlayer(uint8_t x, uint8_t y) {
  x += PLAYER_CORVETTE_WIDTH / 2;
  y += PLAYER_CORVETTE_LENGTH / 2;

  oled_set_pix(x, y, clWhite);
  oled_set_pix(x, y + 1, clWhite);
  oled_set_pix(x, y + 2, clWhite);
  oled_set_pix(x, y + 4, clWhite);
  oled_set_pix(x, y - 1, clWhite);
  oled_set_pix(x, y - 2, clWhite);
  oled_set_pix(x, y - 3, clWhite);
  oled_set_pix(x + 2, y, clWhite);
  oled_set_pix(x - 2, y, clWhite);
  oled_set_pix(x - 1, y + 1, clWhite);
  oled_set_pix(x - 2, y + 1, clWhite);
  oled_set_pix(x + 1, y + 1, clWhite);
  oled_set_pix(x + 2, y + 1, clWhite);
  oled_set_pix(x - 1, y + 2, clWhite);
  oled_set_pix(x - 2, y + 2, clWhite);
  oled_set_pix(x + 1, y + 2, clWhite);
  oled_set_pix(x + 2, y + 2, clWhite);
  oled_set_pix(x - 1, y + 3, clWhite);
  oled_set_pix(x + 1, y + 3, clWhite);
  oled_set_pix(x + 1, y - 4, clWhite);
  oled_set_pix(x - 1, y - 4, clWhite);
  oled_set_pix(x + 2, y - 4, clWhite);
  oled_set_pix(x + 2, y - 3, clWhite);
  oled_set_pix(x + 2, y - 2, clWhite);
  oled_set_pix(x - 2, y - 4, clWhite);
  oled_set_pix(x - 2, y - 3, clWhite);
  oled_set_pix(x - 2, y - 2, clWhite);
  oled_set_pix(x + 3, y + 4, clWhite);
  oled_set_pix(x + 3, y - 2, clWhite);
  oled_set_pix(x + 3, y - 3, clWhite);
  oled_set_pix(x - 3, y + 4, clWhite);
  oled_set_pix(x - 3, y - 2, clWhite);
  oled_set_pix(x - 3, y - 3, clWhite);
  oled_set_pix(x + 4, y - 1, clWhite);
  oled_set_pix(x + 4, y, clWhite);
  oled_set_pix(x + 4, y + 1, clWhite);
  oled_set_pix(x + 4, y + 2, clWhite);
  oled_set_pix(x + 4, y + 3, clWhite);
  oled_set_pix(x + 4, y + 4, clWhite);
  oled_set_pix(x - 4, y - 1, clWhite);
  oled_set_pix(x - 4, y, clWhite);
  oled_set_pix(x - 4, y + 1, clWhite);
  oled_set_pix(x - 4, y + 2, clWhite);
  oled_set_pix(x - 4, y + 3, clWhite);
  oled_set_pix(x - 4, y + 4, clWhite);
  oled_set_pix(x + 5, y + 3, clWhite);
  oled_set_pix(x - 5, y + 3, clWhite);
  oled_set_pix(x + 6, y - 1, clWhite);
  oled_set_pix(x + 6, y, clWhite);
  oled_set_pix(x + 6, y + 1, clWhite);
  oled_set_pix(x + 6, y + 2, clWhite);
  oled_set_pix(x + 6, y + 3, clWhite);
  oled_set_pix(x - 6, y - 1, clWhite);
  oled_set_pix(x - 6, y, clWhite);
  oled_set_pix(x - 6, y + 1, clWhite);
  oled_set_pix(x - 6, y + 2, clWhite);
  oled_set_pix(x - 6, y + 3, clWhite);
  oled_set_pix(x + 7, y, clWhite);
  oled_set_pix(x + 7, y + 1, clWhite);
  oled_set_pix(x + 7, y + 2, clWhite);
  oled_set_pix(x + 7, y + 3, clWhite);
  oled_set_pix(x + 7, y + 4, clWhite);
  oled_set_pix(x - 7, y, clWhite);
  oled_set_pix(x - 7, y + 1, clWhite);
  oled_set_pix(x - 7, y + 2, clWhite);
  oled_set_pix(x - 7, y + 3, clWhite);
  oled_set_pix(x - 7, y + 4, clWhite);
  oled_set_pix(x + 8, y - 1, clWhite);
  oled_set_pix(x + 8, y, clWhite);
  oled_set_pix(x + 8, y + 1, clWhite);
  oled_set_pix(x + 8, y + 2, clWhite);
  oled_set_pix(x + 8, y + 3, clWhite);
  oled_set_pix(x - 8, y - 1, clWhite);
  oled_set_pix(x - 8, y, clWhite);
  oled_set_pix(x - 8, y + 1, clWhite);
  oled_set_pix(x - 8, y + 2, clWhite);
  oled_set_pix(x - 8, y + 3, clWhite);
}

void Game_DrawPlayerMissle(uint8_t x, uint8_t y) {
  x += PLAYER_MISSLE_WIDTH / 2;
  y += PLAYER_MISSLE_LENGTH / 2;

  // oled_set_pix(x, y + 2, clWhite);
  oled_set_pix(x, y + 1, clWhite);
  oled_set_pix(x, y, clWhite);
  oled_set_pix(x, y - 1, clWhite);
  // oled_set_pix(x, y - 2, clWhite);
}

void Game_DrawBattlefield() {
  oled_clr(clBlack);
  oled_set_cursor(0, 0);

  xprintf("HP\n%d", game.player.hp);

  for (short int i = game.enemy_corvettes_first; i != game.enemy_corvettes_free;
       i           = game.enemy_corvettes_next[i]) {
    Game_DrawEnemyCorvette(game.enemy_corvettes[i].pos_x, game.enemy_corvettes[i].pos_y);
  }

  for (short int i = game.enemy_missles_first; i != game.enemy_missles_free;
       i           = game.enemy_missles_next[i]) {
    Game_DrawEnemyMissle(game.enemy_missles[i].pos_x, game.enemy_missles[i].pos_y);
  }

  for (short int i = game.player_missles_first; i != game.player_missles_free;
       i           = game.player_missles_next[i]) {
    Game_DrawPlayerMissle(game.player_missles[i].pos_x, game.player_missles[i].pos_y);
  }

  Game_DrawPlayer(game.player.pos_x, game.player.pos_y);

  oled_update();
}

void Game_DrawStartScreen() {
  oled_clr(clBlack);
  oled_set_cursor(0, 0);

  xprintf("        WELCOM\n"
          "          TO\n"
          "   'SPACE INVADERS'\n\n");
  xprintf("press button to start\n");

  Game_DrawPlayer(PLAYER_CORVETTE_START_X, PLAYER_CORVETTE_START_Y);
}

void Game_DrawDefeat() {
  oled_clr(clBlack);
  oled_set_cursor(0, 0);

  xprintf("          U\n"
          "         DED\n"
          "   and scored %4d"
          "      try again?",
          game.score);
}

void Game_DrawWin() {
  oled_clr(clBlack);
  oled_set_cursor(0, 0);

  xprintf("          U\n"
          "         WON\n"
          "      try again?");
}

#endif
