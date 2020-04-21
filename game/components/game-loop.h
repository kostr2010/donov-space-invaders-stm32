#ifndef __GAME_LOOP_H_INCLUDED__
#define __GAME_LOOP_H_INCLUDED__

#include "./factories.h"
#include "./game-instances.h"
#include "./vis.h"

// typedef struct {
//   int player_fire;
//   int player_movement;
// } GameState;

void Game_StartupInit() {
  for (int i = 0; i < MAX_ENEMY_CORVETTES; i++) {
    game.enemy_corvettes_next[i] = i + 1;
    game.enemy_corvettes_prev[i] = -1;
  }
  game.enemy_corvettes_next[MAX_ENEMY_CORVETTES - 1] = -1;

  game.enemy_corvettes_prev[0] = 0;
  game.enemy_corvettes_first   = 0;
  game.enemy_corvettes_free    = 0;

  for (int i = 0; i < MAX_ENEMY_MISSLES; i++) {
    game.enemy_missles_next[i] = i + 1;
    game.enemy_missles_prev[i] = -1;
  }
  game.enemy_missles_next[MAX_ENEMY_MISSLES - 1] = -1;

  game.enemy_missles_prev[0] = 0;
  game.enemy_missles_first   = 0;
  game.enemy_missles_free    = 0;

  for (int i = 0; i < MAX_PLAYER_MISSLES; i++) {
    game.player_missles_next[i] = i + 1;
    game.player_missles_prev[i] = -1;
  }
  game.player_missles_next[MAX_PLAYER_MISSLES - 1] = -1;

  game.player_missles_prev[0] = 0;
  game.player_missles_first   = 0;
  game.player_missles_free    = 0;

  game.score = 0;
  game.flag  = 0;

  for (int i = 4 * 3; i < OLED_WIDTH; i += 4 * 8) {
    Game_SpawnEnemyCorvette(i, 4 * 1);
  }

  Game_SpawnPlayerCorvette(4 * 14, OLED_HEIGHT - 4 * 3);

  oled_config(); // initializing display
  // printf_config();
  oled_clr(clBlack); // clears graphic display
}

void Game_UpdateEntities() {
  for (short int i = 0; i < MAX_ENEMY_CORVETTES; i++) {
    if (i == game.enemy_corvettes_free || game.enemy_corvettes_prev[i] == -1)
      continue;

    int enemy_corvette_dead = game.enemy_corvettes[i].hp <= 0;
    int enemy_corvette_out_of_bounds_x =
        game.enemy_corvettes[i].pos_x <= 0 || game.enemy_corvettes[i].pos_x >= OLED_WIDTH;
    int enemy_corvette_out_of_bounds_y =
        game.enemy_corvettes[i].pos_y <= 0 || game.enemy_corvettes[i].pos_y >= OLED_HEIGHT;

    if (enemy_corvette_dead || enemy_corvette_out_of_bounds_x || enemy_corvette_out_of_bounds_y) {
      Game_DespawnEnemyCorvette(i);
    }
  }

  for (short int i = 0; i < MAX_ENEMY_MISSLES; i++) {
    if (i == game.enemy_missles_free || game.enemy_missles_prev[i] == -1)
      continue;

    int enemy_missle_dead = game.enemy_missles[i].hp <= 0;
    int enemy_missle_out_of_bounds_x =
        game.enemy_missles[i].pos_x <= 0 || game.enemy_missles[i].pos_x >= OLED_WIDTH;
    int enemy_missle_out_of_bounds_y =
        game.enemy_missles[i].pos_y <= 0 || game.enemy_missles[i].pos_y >= OLED_HEIGHT;

    if (enemy_missle_dead || enemy_missle_out_of_bounds_x || enemy_missle_out_of_bounds_y) {
      Game_DespawnEnemyMissle(i);
    }
  }

  for (short int i = 0; i < MAX_PLAYER_MISSLES; i++) {
    if (i == game.player_missles_free || game.player_missles_prev[i] == -1)
      continue;

    int player_missle_dead = game.player_missles[i].hp <= 0;
    int player_missle_out_of_bounds_x =
        game.player_missles[i].pos_x <= 0 || game.player_missles[i].pos_x >= OLED_WIDTH;
    int player_missle_out_of_bounds_y =
        game.player_missles[i].pos_y <= 0 || game.player_missles[i].pos_y >= OLED_HEIGHT;

    if (player_missle_dead || player_missle_out_of_bounds_x || player_missle_out_of_bounds_y) {
      Game_DespawnPlayerMissle(i);
    }
  }

  int player_dead            = game.player.hp <= 0;
  int player_out_of_bounds_x = game.player.pos_x <= 0 || game.player.pos_x >= OLED_WIDTH;

  if (player_dead || player_out_of_bounds_x) {
    game.flag = -1;
  }

  if (game.enemy_corvettes_first == game.enemy_corvettes_free) {
    game.flag = 1;
  }
}

void Game_MoveEntities() {
  for (short int i = game.enemy_corvettes_first; i != game.enemy_corvettes_free;
       i           = game.enemy_corvettes_next[i]) {
    game.enemy_corvettes[i].v_x *= -1;

    game.enemy_corvettes[i].pos_x += game.enemy_corvettes[i].v_x;
    game.enemy_corvettes[i].pos_y += game.enemy_corvettes[i].v_y;
  }

  for (short int i = game.enemy_missles_first; i != game.enemy_missles_free;
       i           = game.enemy_missles_next[i]) {
    game.enemy_missles[i].pos_x += game.enemy_missles[i].v_x;
    game.enemy_missles[i].pos_y += game.enemy_missles[i].v_y;
  }

  for (short int i = game.player_missles_first; i != game.player_missles_free;
       i           = game.player_missles_next[i]) {
    game.player_missles[i].pos_x += game.player_missles[i].v_x;
    game.player_missles[i].pos_y += game.player_missles[i].v_y;
  }

  game.player.pos_x += game.player.v_x;
}

void Game_ResolveCollisions() {
  for (short int i = game.enemy_corvettes_first; i != game.enemy_corvettes_free;
       i           = game.enemy_corvettes_next[i]) {
    Entity enemy_corvette = game.enemy_corvettes[i];

    for (short int j = game.player_missles_first; j != game.player_missles_free;
         j           = game.player_missles_next[j]) {
      int collides_x =
          (enemy_corvette.pos_x + ENEMY_CORVETTE_WIDTH + 2 >= game.player_missles[j].pos_x) &&
          (enemy_corvette.pos_x <= game.player_missles[j].pos_x + PLAYER_MISSLE_WIDTH);
      int collides_y =
          (enemy_corvette.pos_y + ENEMY_CORVETTE_LENGTH >= game.player_missles[j].pos_y) &&
          (enemy_corvette.pos_y <= game.player_missles[j].pos_y - PLAYER_MISSLE_LENGTH);

      if (collides_x && collides_y) {
        game.enemy_corvettes[i].hp -= PLAYER_MISSLE_HP;
        game.player_missles[j].hp -= ENEMY_CORVETTE_HP;

        game.score += 25;

        break;
      }
    }
  }

  for (short int i = game.enemy_missles_first; i != game.enemy_missles_free;
       i           = game.enemy_missles_next[i]) {
    Entity enemy_missle = game.enemy_missles[i];

    int collides_x = (enemy_missle.pos_x >= game.player.pos_x) &&
                     (enemy_missle.pos_x <= game.player.pos_x + PLAYER_CORVETTE_WIDTH);
    int collides_y = (enemy_missle.pos_y >= game.player.pos_y) &&
                     (enemy_missle.pos_y <= game.player.pos_y + PLAYER_CORVETTE_LENGTH);

    if (collides_x && collides_y) {
      game.enemy_missles[i].hp -= PLAYER_CORVETTE_HP;
      game.player.hp -= ENEMY_MISSLE_HP;
    }

    for (short int j = game.player_missles_first; j != game.player_missles_free;
         j           = game.player_missles_next[j]) {
      int collides_x = (enemy_missle.pos_x + 4 >= game.player_missles[j].pos_x) &&
                       (enemy_missle.pos_x - 4 <= game.player_missles[j].pos_x);
      int collides_y =
          (enemy_missle.pos_y + ENEMY_MISSLE_LENGTH + 1 >= game.player_missles[j].pos_y) &&
          (enemy_missle.pos_y <= game.player_missles[j].pos_y + PLAYER_MISSLE_LENGTH);

      if (collides_x && collides_y) {
        game.enemy_missles[i].hp -= PLAYER_MISSLE_HP;
        game.player_missles[j].hp -= ENEMY_MISSLE_HP;

        game.score += 5;

        break;
      }
    }
  }
}

void Game_SpawnEntities(uint8_t loop) {
  short int      flag_first_row_busy = 0;
  static uint8_t spawn_var           = 0;

  // shoot every 16 loops
  if (loop % 16 == 0) {
    for (short int i = game.enemy_corvettes_first; i != game.enemy_corvettes_free;
         i           = game.enemy_corvettes_next[i]) {
      if (game.enemy_corvettes[i].pos_y < ENEMY_CORVETTE_LENGTH + 4 * 4)
        flag_first_row_busy = 1;
      if (game.enemy_corvettes[i].pos_y < OLED_HEIGHT - 4 * 4) {
        Game_SpawnEnemyMissle(game.enemy_corvettes[i].pos_x + ENEMY_CORVETTE_WIDTH / 2,
                              game.enemy_corvettes[i].pos_y + ENEMY_CORVETTE_LENGTH,
                              ENEMY_MISSLE_V_X,
                              ENEMY_MISSLE_V_Y);
      }
    }
  } else {
    for (int i = game.enemy_corvettes_first; i != game.enemy_corvettes_free;
         i     = game.enemy_corvettes_next[i])
      if (game.enemy_corvettes[i].pos_y < ENEMY_CORVETTE_LENGTH + 4 * 4)
        flag_first_row_busy = 1;
  }

  if (flag_first_row_busy == 0) {
    spawn_var = (spawn_var + 1) % 2;

    if (spawn_var == 0) {
      for (int i = 4 * 3; i < OLED_WIDTH; i += 4 * 8) {
        Game_SpawnEnemyCorvette(i, 4 * 1);
      }
    } else {
      for (int j = 4 * 7; j < OLED_WIDTH - 4 * 1; j += 4 * 8) {
        Game_SpawnEnemyCorvette(j, 4 * 1);
      }
    }
  }
}

#endif