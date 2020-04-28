#ifndef __GAME_H_INCLUDED__
#define __GAME_H_INCLUDED__

#include <stdint.h>

#define OLED_WIDTH 128
#define OLED_HEIGHT 64
#define MAX_ENEMY_CORVETTES 20
#define MAX_ENEMY_MISSLES 40
#define MAX_PLAYER_MISSLES 20

const short int ENEMY_CORVETTE_V_X    = 2;
const short int ENEMY_CORVETTE_V_Y    = 1;
const short int ENEMY_CORVETTE_LENGTH = 8;
const short int ENEMY_CORVETTE_WIDTH  = 12;
const short int ENEMY_CORVETTE_HP     = 1;

const short int PLAYER_CORVETTE_LENGTH  = 8;
const short int PLAYER_CORVETTE_WIDTH   = 16;
const short int PLAYER_CORVETTE_HP      = 5;
const short int PLAYER_CORVETTE_START_X = 64 - 8; // OLED_WIDTH / 2 - PLAYER_CORVETTE_WIDTH / 2;
const short int PLAYER_CORVETTE_START_Y = OLED_HEIGHT - 4 * 3;

const short int ENEMY_MISSLE_V_X    = 0;
const short int ENEMY_MISSLE_V_Y    = 2;
const short int ENEMY_MISSLE_LENGTH = 1;
const short int ENEMY_MISSLE_WIDTH  = 1;
const short int ENEMY_MISSLE_HP     = 1;

const short int PLAYER_MISSLE_V_X    = 0;
const short int PLAYER_MISSLE_V_Y    = -8;
const short int PLAYER_MISSLE_LENGTH = 2;
const short int PLAYER_MISSLE_WIDTH  = 1;
const short int PLAYER_MISSLE_HP     = 1;

typedef struct {
  short int pos_x, pos_y;
  short int v_x, v_y;
  short int hp;
} Entity;

enum GameStatus {
  Running,
  Menu,
  Win,
  Defeat,
};

typedef struct {
  Entity    enemy_corvettes[MAX_ENEMY_CORVETTES];
  short int enemy_corvettes_next[MAX_ENEMY_CORVETTES];
  short int enemy_corvettes_prev[MAX_ENEMY_CORVETTES];
  short int enemy_corvettes_first, enemy_corvettes_free;
  Entity    enemy_missles[MAX_ENEMY_MISSLES];
  short int enemy_missles_next[MAX_ENEMY_MISSLES];
  short int enemy_missles_prev[MAX_ENEMY_MISSLES];
  short int enemy_missles_first, enemy_missles_free;
  Entity    player_missles[MAX_PLAYER_MISSLES];
  short int player_missles_next[MAX_PLAYER_MISSLES];
  short int player_missles_prev[MAX_PLAYER_MISSLES];
  short int player_missles_first, player_missles_free;
  Entity    player;

  enum GameStatus status;
  int             score;
} Game;

// being global, this variable is initialized
Game game;

// void pont() {
//   for (int i = 0; i < MAX_ENEMY_CORVETTES; i++) {
//     printf(" [%2d] ", i);
//   }
//   printf("\n");
//   for (int i = 0; i < MAX_ENEMY_CORVETTES; i++) {
//     printf(" %4d ", game.enemy_corvettes[i].pos_x);
//   }
//   printf("\n");
//   for (int i = 0; i < MAX_ENEMY_CORVETTES; i++) {
//     printf(" %4d ", game.enemy_corvettes_next[i]);
//   }
//   printf("\n");
//   for (int i = 0; i < MAX_ENEMY_CORVETTES; i++) {
//     printf(" %4d ", game.enemy_corvettes_prev[i]);
//   }
//   printf("\n");

//   printf("first = %d, free = %d\n\n", game.enemy_corvettes_first, game.enemy_corvettes_free);
// }

#endif
