#ifndef __FACTORIES_H_INCLUDED__
#define __FACTORIES_H_INCLUDED__

#include "./game-instances.h"

void Game_SpawnEnemyCorvette(short int pos_x, short int pos_y) {
  if (game.enemy_corvettes_next[game.enemy_corvettes_free] != -1) {
    short int free_old             = game.enemy_corvettes_free;
    game.enemy_corvettes[free_old] = (Entity){.pos_x = pos_x,
                                              .pos_y = pos_y,
                                              .v_x   = ENEMY_CORVETTE_V_X,
                                              .v_y   = ENEMY_CORVETTE_V_Y,
                                              .hp    = PLAYER_MISSLE_HP};
    game.enemy_corvettes_free      = game.enemy_corvettes_next[free_old];

    game.enemy_corvettes_prev[game.enemy_corvettes_free] = free_old;
  }
}

void Game_DespawnEnemyCorvette(short int index) {
  if (index >= MAX_ENEMY_CORVETTES || index == game.enemy_corvettes_free ||
      game.enemy_corvettes_free == game.enemy_corvettes_first ||
      game.enemy_corvettes_prev[index] == -1) {
    return;
  } else if (index == game.enemy_corvettes_first) {
    short int free_old   = game.enemy_corvettes_free;
    short int last_old   = game.enemy_corvettes_prev[free_old];
    short int second_old = game.enemy_corvettes_next[index];

    if (index == last_old) {
      game.enemy_corvettes_prev[index]    = index;
      game.enemy_corvettes_prev[free_old] = -1;
      game.enemy_corvettes_free           = index;

      return;
    }

    game.enemy_corvettes_prev[second_old] = second_old;
    game.enemy_corvettes_first            = second_old;
    game.enemy_corvettes_next[last_old]   = index;
    game.enemy_corvettes_prev[index]      = last_old;
    game.enemy_corvettes_prev[free_old]   = -1;
    game.enemy_corvettes_next[index]      = free_old;

    game.enemy_corvettes_free = index;
  } else {
    short int prev     = game.enemy_corvettes_prev[index];
    short int next     = game.enemy_corvettes_next[index];
    short int free_old = game.enemy_corvettes_free;
    short int last_old = game.enemy_corvettes_prev[free_old];

    if (index == last_old) {
      game.enemy_corvettes_prev[free_old] = -1;
      game.enemy_corvettes_free           = index;

      return;
    }

    game.enemy_corvettes_next[prev]     = next;
    game.enemy_corvettes_prev[next]     = prev;
    game.enemy_corvettes_next[index]    = free_old;
    game.enemy_corvettes_next[last_old] = index;
    game.enemy_corvettes_prev[index]    = last_old;
    game.enemy_corvettes_free           = index;

    game.enemy_corvettes_prev[free_old] = -1;
  }
}

void Game_SpawnEnemyMissle(short int pos_x, short int pos_y, short int v_x, short int v_y) {
  if (game.enemy_missles_next[game.enemy_missles_free] != -1) {
    short int free_old = game.enemy_missles_free;
    game.enemy_missles[free_old] =
        (Entity){.pos_x = pos_x, .pos_y = pos_y, .v_x = v_x, .v_y = v_y, .hp = PLAYER_MISSLE_HP};
    game.enemy_missles_free = game.enemy_missles_next[free_old];

    game.enemy_missles_prev[game.enemy_missles_free] = free_old;
  }
}

void Game_DespawnEnemyMissle(short int index) {
  if (index >= MAX_ENEMY_MISSLES || index == game.enemy_missles_free ||
      game.enemy_missles_free == game.enemy_missles_first || game.enemy_missles_prev[index] == -1) {
    return;
  } else if (index == game.enemy_missles_first) {
    short int free_old   = game.enemy_missles_free;
    short int last_old   = game.enemy_missles_prev[free_old];
    short int second_old = game.enemy_missles_next[index];

    if (index == last_old) {
      game.enemy_missles_prev[index]    = index;
      game.enemy_missles_prev[free_old] = -1;
      game.enemy_missles_free           = index;

      return;
    }

    game.enemy_missles_prev[second_old] = second_old;
    game.enemy_missles_first            = game.enemy_missles_next[index];
    game.enemy_missles_next[last_old]   = index;
    game.enemy_missles_prev[index]      = last_old;
    game.enemy_missles_prev[free_old]   = -1;
    game.enemy_missles_next[index]      = free_old;

    game.enemy_missles_free = index;
  } else {
    short int prev     = game.enemy_missles_prev[index];
    short int next     = game.enemy_missles_next[index];
    short int free_old = game.enemy_missles_free;
    short int last_old = game.enemy_missles_prev[free_old];

    if (index == last_old) {
      game.enemy_missles_prev[free_old] = -1;
      game.enemy_missles_free           = index;

      return;
    }

    game.enemy_missles_next[prev]     = next;
    game.enemy_missles_prev[next]     = prev;
    game.enemy_missles_next[index]    = free_old;
    game.enemy_missles_next[last_old] = index;
    game.enemy_missles_prev[index]    = last_old;
    game.enemy_missles_free           = index;

    game.enemy_missles_prev[free_old] = -1;
  }
}

void Game_SpawnPlayerCorvette(short int pos_x, short int pos_y) {
  game.player =
      (Entity){.pos_x = pos_x, .pos_y = pos_y, .v_x = 0, .v_y = 0, .hp = PLAYER_CORVETTE_HP};
}

void Game_SpawnPlayerMissle(short int pos_x, short int pos_y) {
  if (game.player_missles_next[game.player_missles_free] != -1) {
    short int free_old            = game.player_missles_free;
    game.player_missles[free_old] = (Entity){.pos_x = pos_x,
                                             .pos_y = pos_y,
                                             .v_x   = PLAYER_MISSLE_V_X,
                                             .v_y   = PLAYER_MISSLE_V_Y,
                                             .hp    = PLAYER_MISSLE_HP};
    game.player_missles_free      = game.player_missles_next[free_old];

    game.player_missles_prev[game.player_missles_free] = free_old;
  }
}

void Game_DespawnPlayerMissle(short int index) {
  if (index >= MAX_PLAYER_MISSLES || index == game.player_missles_free ||
      game.player_missles_free == game.player_missles_first ||
      game.player_missles_prev[index] == -1) {
    return;
  } else if (index == game.player_missles_first) {
    short int free_old   = game.player_missles_free;
    short int last_old   = game.player_missles_prev[free_old];
    short int second_old = game.player_missles_next[index];

    if (index == last_old) {
      game.player_missles_prev[index]    = index;
      game.player_missles_prev[free_old] = -1;
      game.player_missles_free           = index;

      return;
    }

    game.player_missles_prev[second_old] = second_old;
    game.player_missles_first            = game.player_missles_next[index];
    game.player_missles_next[last_old]   = index;
    game.player_missles_prev[index]      = last_old;
    game.player_missles_prev[free_old]   = -1;
    game.player_missles_next[index]      = free_old;

    game.player_missles_free = index;

  } else {
    short int prev     = game.player_missles_prev[index];
    short int next     = game.player_missles_next[index];
    short int free_old = game.player_missles_free;
    short int last_old = game.player_missles_prev[free_old];

    if (index == last_old) {
      game.player_missles_prev[free_old] = -1;
      game.player_missles_free           = index;

      return;
    }

    game.player_missles_next[prev]     = next;
    game.player_missles_prev[next]     = prev;
    game.player_missles_next[index]    = free_old;
    game.player_missles_next[last_old] = index;
    game.player_missles_prev[index]    = last_old;
    game.player_missles_free           = index;

    game.player_missles_prev[free_old] = -1;
  }
}

#endif