#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

/*
========================================
STRUCTURES:
========================================
*/

struct _entity {    // structure for all the missles and ships on the battlefield
  int  damage;      // amount of points substracted from ship's health
  int  pos_y;       // y axis center coordinates
  int  pos_x;       // x axis center coordinates
  int  length;      // y axis stretch
  int  width;       // x axis stretch
  int  health;      // hull integrity
  char iff_flag;    // identification frend or foe. 'f' - player's, 'e' - enemy's
  char entity_flag; // identification ship or missle. 's' - ship, 'p' - projectile
  int  mov_y;       // indicates the behaviour of the ship / missle
  int  mov_x;       // indicates the behaviour of the ship / missle
};
typedef struct _entity entity;

/*
========================================
GLOBAL CONSTANTS:
========================================
*/

#define PLAYER_SHIP_DMG 0
#define PLAYER_SHIP_LENGTH 8
#define PLAYER_SHIP_WIDTH 16
#define PLAYER_SHIP_IFF 'f'
#define PLAYER_SHIP_ENTITY 's'

#define PLAYER_PROJECTILE_DMG 100
#define PLAYER_PROJECTILE_LENGTH 4
#define PLAYER_PROJECTILE_WIDTH 1
#define PLAYER_PROJECTILE_IFF 'f'
#define PLAYER_PROJECTILE_ENTITY 'p'

#define CORVETTE_DMG 9
#define CORVETTE_LENGTH 8
#define CORVETTE_WIDTH 12
#define CORVETTE_IFF 'e'
#define CORVETTE_ENTITY 's'

#define CORVETTE_PROJECTILE_DMG 1
#define CORVETTE_PROJECTILE_LENGTH 2
#define CORVETTE_PROJECTILE_WIDTH 2
#define CORVETTE_PROJECTILE_IFF 'e'
#define CORVETTE_PROJECTILE_ENTITY 'p'

/*
========================================
GLOBAL VARIABLES:
========================================
*/

int    victory_flag = 0;
entity battlefield[100];
int    entities_on_field   = 0;
entity player_ship         = {PLAYER_SHIP_DMG,
                      10,
                      10,
                      PLAYER_SHIP_LENGTH,
                      PLAYER_SHIP_WIDTH,
                      9,
                      PLAYER_SHIP_IFF,
                      PLAYER_SHIP_ENTITY,
                      0,
                      0};
entity player_projectile   = {PLAYER_PROJECTILE_DMG,
                            0,
                            0,
                            PLAYER_PROJECTILE_LENGTH,
                            PLAYER_PROJECTILE_WIDTH,
                            1,
                            PLAYER_PROJECTILE_IFF,
                            PLAYER_PROJECTILE_ENTITY,
                            4,
                            0};
entity corvette            = {CORVETTE_DMG,
                   58,
                   10,
                   CORVETTE_LENGTH,
                   CORVETTE_WIDTH,
                   5,
                   CORVETTE_IFF,
                   CORVETTE_ENTITY,
                   -1,
                   -2};
entity corvette_projectile = {CORVETTE_PROJECTILE_DMG,
                              0,
                              0,
                              CORVETTE_PROJECTILE_LENGTH,
                              CORVETTE_PROJECTILE_WIDTH,
                              1,
                              CORVETTE_PROJECTILE_IFF,
                              CORVETTE_PROJECTILE_ENTITY,
                              -4,
                              0};

/*
========================================
FUNCTION DECLARATION:
========================================
*/

int  mypow(int x, int y);
int  get_encoder_rotation();                 // simulates the real one
void print_battlefield(entity* battlefield); // prints the battlefield in terminal
// entity* add_ship(entity* battlefield,entity ship, int x, int y);      // adds new ship to the
// battlefield, rezises the battlefield itself entity* remove_ship(entity* battlefield, entity
// ship);
// // removes ship from the battlefield, changes the batllefield's size, clozes the gaps in the
// array
entity* initialize_battlefield(); // spawns initial amount of enemy ships and player's ship
entity* move_entities(
    entity* battlefield,
    int     tick); // moves all of the entities on the battlefield. returns updated battlefield
entity*
update_entities(entity* battlefield); // updates all of the entities on the battlefield. sustracts
                                      // health, clears the dead ones. returns updated battlefield
entity* spawn_enemies(entity* battlefield,
                      int     tick); // spawns new enemies if possible and spawns enemy projectiles
entity* spawn_player(
    entity* battlefield); // function that handles the button press. spawns one player's missle

/*
========================================
MAIN:
========================================
*/

static void f(int port) {
  static int a = 0;

  if (port == 1 && a == 0) {
    printf("port 1\n");
    a++;
  } else if (port == 2) {
#ifndef PORT_B_ENABLED_CLOCK
    printf("port 2\n");
#define PORT_B_ENABLED_CLOCK
#endif
  } else if (port == 3) {
#ifndef PORT_C_ENABLED_CLOCK
    printf("port 3\n");
#define PORT_C_ENABLED_CLOCK
#endif
  } else if (port == 4) {
#ifndef PORT_D_ENABLED_CLOCK
    printf("port 4\n");
#define PORT_D_ENABLED_CLOCK
#endif
  } else if (port == 5) {
#ifndef PORT_F_ENABLED_CLOCK
    printf("port 5\n");
#define PORT_F_ENABLED_CLOCK
#endif
  }
}

int main() {
  entity* battlefield = initialize_battlefield();
  print_battlefield(battlefield);

  for (uint8_t i = 0; i < 16; i++) {
    printf("%d / 8 = %d\n", i, i / 8);
  }

  f(1);

  f(1);
  f(2);
  f(3);
  f(2);
  f(1);
  f(1);
  f(1);
  f(1);

  // for (int i = 0; i < 16; i++)
  // {
  //     if (victory_flag)
  //     {
  //         printf("YOU WON \n");
  //         break;
  //     }
  //     printf("======================================== \n TURN %d \n", i + 1);
  //     move_entities(battlefield, i);
  //     printf("moved, entites_on_field = %d \n", entities_on_field);
  //     spawn_enemies(battlefield, i);
  //     printf("spawned, entites_on_field = %d \n", entities_on_field);
  //     update_entities(battlefield);
  //     printf("updated, entites_on_field = %d \n", entities_on_field);
  //     print_battlefield(battlefield);
  //     printf("printed, entites_on_field = %d \n", entities_on_field);
  // }

  return 0;
}

/*
========================================
FUNCTIONS:
========================================
*/

int mypow(int x, int y) {
  int counter = 1;
  if (y) {
    for (int i = 0; i < y; i++) {
      counter *= x;
    }
    return counter;
  } else {
    return counter;
  }
}

int get_encoder_rotation() {
  return 1;
}

void print_battlefield(entity* battlefield) {
  for (int i = 0; i < entities_on_field; i++) {
    printf("ship number: %d\n damage: %d; coordinates y: %d; coordinates x: %d; health: %d; friend "
           "or enemy: %c; ship or projectile: %c \n \n",
           i,
           battlefield[i].damage,
           battlefield[i].pos_y,
           battlefield[i].pos_x,
           battlefield[i].health,
           battlefield[i].iff_flag,
           battlefield[i].entity_flag);
  }
}

// entity* add_ship(entity* battlefield,entity ship, int x, int y) {}

// entity* remove_ship(entity* battlefield, entity ship) {}

entity* initialize_battlefield() {
  for (int i = 1; i < 4; i++) {
    battlefield[i]       = corvette;
    battlefield[i].pos_x = corvette.pos_x + (i - 1) * (corvette.width + 8);
  }
  battlefield[0]    = player_ship;
  entities_on_field = 4;
  return battlefield;
}

entity* move_entities(entity* battlefield, int tick) {
  for (int i = 0; i < entities_on_field; i++) {
    if (battlefield[i].iff_flag == 'e' && battlefield[i].entity_flag == 's') {
      battlefield[i].pos_x += battlefield[i].mov_x * mypow(-1, tick);
      battlefield[i].pos_y += battlefield[i].mov_y;
    }
    if (battlefield[i].iff_flag == 'e' && battlefield[i].entity_flag == 'p') {
      battlefield[i].pos_x += battlefield[i].mov_x;
      battlefield[i].pos_y += battlefield[i].mov_y;
    }
    if (battlefield[i].iff_flag == 'f' && battlefield[i].entity_flag == 's') {
      battlefield[i].pos_x += battlefield[i].mov_x * get_encoder_rotation();
    }
    if (battlefield[i].iff_flag == 'f' && battlefield[i].entity_flag == 'p') {
      battlefield[i].pos_y += battlefield[i].mov_y;
    }
  }
  return battlefield;
}

entity* update_entities(entity* battlefield) {
  int cpy = entities_on_field;
  for (int i = 0; i < cpy; i++) {
    for (int j = i + 1; j < cpy; j++) {
      if ((abs(battlefield[i].pos_x - battlefield[j].pos_x) <=
           (battlefield[j].width + battlefield[i].width) / 2) &&
          (abs(battlefield[i].pos_y - battlefield[j].pos_y) <=
           (battlefield[j].length + battlefield[i].length) / 2) &&
          (battlefield[i].iff_flag != battlefield[j].iff_flag)) {
        battlefield[i].health -= battlefield[j].damage;
        battlefield[j].health -= battlefield[i].damage;
      }
    }
  }

  for (int i = 1; i < cpy; i++) {
    // printf("i = %d; ", i);
    if (battlefield[i].health <= 0 || battlefield[i].pos_x <= 0 || battlefield[i].pos_x >= 64 ||
        battlefield[i].pos_y <= 0 || battlefield[i].pos_x >= 128) {
      // printf("%d this ship's hp <= 0 ", entities_on_field);
      for (int j = i; j < cpy - 1; j++) {
        battlefield[j] = battlefield[j + 1];
      }
      entities_on_field -= 1;
      // i--;
      if (!entities_on_field) {
        victory_flag = 1;
        break;
      }
      // printf("entities_on_field updated, it's now %d ", entities_on_field);
    }
  }
  return battlefield;
}

entity* spawn_enemies(entity* battlefield, int tick) {
  // printf("tick % 8 == 0\n");
  if (tick % 50 == 0) {
    for (int i = 0; i < entities_on_field; i++) {
      if (battlefield[i].iff_flag == 'e' && battlefield[i].entity_flag == 's') {
        entities_on_field += 1;
        battlefield[entities_on_field - 1]       = corvette_projectile;
        battlefield[entities_on_field - 1].pos_x = battlefield[i].pos_x;
        battlefield[entities_on_field - 1].pos_y =
            battlefield[i].pos_y - (battlefield[i].length + corvette_projectile.length) / 2;
        battlefield[entities_on_field - 1].mov_x =
            (battlefield[0].pos_x - battlefield[entities_on_field - 1].pos_x) / 10;
        battlefield[entities_on_field - 1].mov_y =
            (battlefield[0].pos_y - battlefield[entities_on_field - 1].pos_y) / 10;
      }
    }
  }

  int first_row_free = 1;

  for (int i = 0; i < entities_on_field; i++) {
    if (battlefield[i].pos_y >= 38) {
      first_row_free = 0;
    }
  }

  // printf("first row is free %d \n", first_row_free);

  if (first_row_free) {
    // printf("first row free");
    entities_on_field += 3;
    for (int i = entities_on_field - 3; i < entities_on_field; i++) {
      battlefield[i] = corvette;
      battlefield[i].pos_x =
          corvette.pos_x + (-entities_on_field + 3 + i + 1) * (corvette.width + 8);
    }
  }

  return battlefield;
}

entity* spawn_player(entity* battlefield) {
  //
}
