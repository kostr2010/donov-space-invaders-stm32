#include "stm32f0xx_ll_rcc.h"
#include "stm32f0xx_ll_system.h"
#include "stm32f0xx_ll_bus.h"
#include "stm32f0xx_ll_gpio.h"
#include "stm32f0xx_ll_cortex.h"
#include "stm32f0xx_ll_tim.h"
#include "stm32f0xx_ll_exti.h"

#include "xprintf.h"
#include "oled_driver.h"

// ====================
// PINS

#define DIOD_A LL_GPIO_PIN_11
#define DIOD_B LL_GPIO_PIN_7
#define DIOD_C LL_GPIO_PIN_4
#define DIOD_D LL_GPIO_PIN_2
#define DIOD_E LL_GPIO_PIN_1
#define DIOD_F LL_GPIO_PIN_10
#define DIOD_G LL_GPIO_PIN_5
#define DIOD_DP LL_GPIO_PIN_3
#define DIGIT1 LL_GPIO_PIN_12
#define DIGIT2 LL_GPIO_PIN_9
#define DIGIT3 LL_GPIO_PIN_8
#define DIGIT4 LL_GPIO_PIN_6
#define BUTTON LL_GPIO_PIN_0

/*
========================================
STRUCTURES:
========================================
*/

struct _entity
{                     // structure for all the missles and ships on the battlefield
    uint8_t damage;   // amount of points substracted from ship's health
    int pos_y;        // y axis center coordinates
    int pos_x;        // x axis center coordinates
    int length;       // y axis stretch
    int width;        // x axis stretch
    int health;       // hull integrity
    char iff_flag;    // identification frend or foe. 'f' - player's, 'e' - enemy's
    char entity_flag; // identification ship or missle. 's' - ship, 'p' - projectile
    int mov_y;        // indicates the behaviour of the ship / missle
    int mov_x;        // indicates the behaviour of the ship / missle
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

#define PLAYER_PROJECTILE_DMG 5
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

uint8_t start_flag = 0;

int highscore = 0;

uint8_t victory_flag = 0;

uint8_t defeat_flag = 0;

entity battlefield[100];

uint8_t entities_on_field = 0;

entity player_ship = {PLAYER_SHIP_DMG, 10, 64, PLAYER_SHIP_LENGTH, PLAYER_SHIP_WIDTH, 9, PLAYER_SHIP_IFF, PLAYER_SHIP_ENTITY, 6, 6};

entity player_projectile = {PLAYER_PROJECTILE_DMG, 0, 0, PLAYER_PROJECTILE_LENGTH, PLAYER_PROJECTILE_WIDTH, 1, PLAYER_PROJECTILE_IFF, PLAYER_PROJECTILE_ENTITY, 12, 0};

entity corvette = {CORVETTE_DMG, 58, 10, CORVETTE_LENGTH, CORVETTE_WIDTH, 5, CORVETTE_IFF, CORVETTE_ENTITY, -1, -2};

entity corvette_projectile = {CORVETTE_PROJECTILE_DMG, 0, 0, CORVETTE_PROJECTILE_LENGTH, CORVETTE_PROJECTILE_WIDTH, 1, CORVETTE_PROJECTILE_IFF, CORVETTE_PROJECTILE_ENTITY, 0, 0};

uint32_t pins_used = DIOD_E | DIOD_D | DIOD_DP | DIOD_C | DIOD_G | DIGIT4 | DIOD_B | DIGIT3 | DIGIT2 | DIOD_F | DIOD_A | DIGIT1; // putting all pins togrther with | - byte "or"

uint32_t letters[] = {
    DIOD_A | DIOD_B | DIOD_C | DIOD_E | DIOD_F | DIOD_G,          // A
    DIOD_A | DIOD_B | DIOD_C | DIOD_D | DIOD_E | DIOD_F | DIOD_G, // B
    DIOD_A | DIOD_D | DIOD_E | DIOD_F,                            // C
    DIOD_A | DIOD_B | DIOD_C | DIOD_D | DIOD_E | DIOD_F,          // D
    DIOD_A | DIOD_D | DIOD_E | DIOD_F | DIOD_G,                   // E
    DIOD_A | DIOD_E | DIOD_F | DIOD_G,                            // F
    DIOD_A | DIOD_C | DIOD_D | DIOD_E | DIOD_F,                   // G
    DIOD_B | DIOD_C | DIOD_E | DIOD_F | DIOD_G,                   // H
    DIOD_B | DIOD_C,                                              // I
    DIOD_B | DIOD_C | DIOD_D,                                     // J
    DIOD_A | DIOD_C | DIOD_E | DIOD_F | DIOD_G,                   // K
    DIOD_D | DIOD_E | DIOD_F,                                     // L
    DIOD_B | DIOD_C | DIOD_E | DIOD_F | DIOD_G,                   // M
    DIOD_A | DIOD_B | DIOD_C | DIOD_E | DIOD_F,                   // N
    DIOD_A | DIOD_B | DIOD_C | DIOD_D | DIOD_E | DIOD_F,          // O
    DIOD_A | DIOD_B | DIOD_E | DIOD_F | DIOD_G,                   // P
    DIOD_A | DIOD_B | DIOD_C | DIOD_F | DIOD_G,                   // Q
    DIOD_A | DIOD_B | DIOD_C | DIOD_E | DIOD_F | DIOD_G,          // R
    DIOD_A | DIOD_C | DIOD_D | DIOD_F | DIOD_G,                   // S
    DIOD_A | DIOD_B | DIOD_C,                                     // T
    DIOD_B | DIOD_C | DIOD_D | DIOD_E | DIOD_F,                   // U
    DIOD_A | DIOD_C | DIOD_D | DIOD_E | DIOD_F,                   // V
    DIOD_A | DIOD_C | DIOD_D | DIOD_E | DIOD_F,                   // W
    DIOD_B | DIOD_C | DIOD_E | DIOD_F | DIOD_G,                   // X
    DIOD_B | DIOD_C | DIOD_D | DIOD_F | DIOD_G,                   // Y
    DIOD_A | DIOD_B | DIOD_D | DIOD_E | DIOD_G                    // Z
};

uint32_t symbols[] = {
    DIOD_G,                            // -
    DIOD_DP,                           // .
    DIOD_D,                            // _
    DIOD_A | DIOD_D | DIOD_E | DIOD_F, // [
    DIOD_A | DIOD_B | DIOD_C | DIOD_D, // ]
                                       // " "
};

uint32_t numbers[] = {
    DIOD_A | DIOD_B | DIOD_C | DIOD_D | DIOD_E | DIOD_F,          // 0
    DIOD_B | DIOD_C,                                              // 1
    DIOD_A | DIOD_B | DIOD_G | DIOD_E | DIOD_D,                   // 2
    DIOD_A | DIOD_B | DIOD_G | DIOD_C | DIOD_D,                   // 3
    DIOD_F | DIOD_G | DIOD_B | DIOD_C,                            // 4
    DIOD_A | DIOD_F | DIOD_G | DIOD_C | DIOD_D,                   // 5
    DIOD_A | DIOD_F | DIOD_G | DIOD_C | DIOD_D | DIOD_E,          // 6
    DIOD_A | DIOD_B | DIOD_C,                                     // 7
    DIOD_A | DIOD_B | DIOD_F | DIOD_C | DIOD_D | DIOD_E | DIOD_G, // 8
    DIOD_A | DIOD_G | DIOD_B | DIOD_C | DIOD_D | DIOD_F           // 9
};

uint32_t quarters[] = {
    DIGIT3 | DIGIT2 | DIGIT1, // only 4th digit (unitary)
    DIGIT4 | DIGIT2 | DIGIT1, // only 3d digit (decimals)
    DIGIT3 | DIGIT1 | DIGIT4, // only 2nd digit (centenials)
    DIGIT3 | DIGIT2 | DIGIT4  // only 1st digit (millenials)
};

/*
========================================
CONFIGS:
========================================
*/

void rcc_config(void)
{
    LL_FLASH_SetLatency(LL_FLASH_LATENCY_1); // sets latency of the Flash

    LL_RCC_HSI_Enable(); // enables internal RC oscillator in order to set frequency == 48 MHz (which is operational frequency of the periferials)
    LL_RCC_PLL_Enable(); // enables phase locked loop in order to set frequency == 48 MHz (which is operational frequency of the periferials)
    while (LL_RCC_HSI_IsReady() != 1 && LL_RCC_PLL_IsReady() != 1)
        ; // waits until flags are updated

    LL_RCC_PLL_ConfigDomain_SYS(LL_RCC_PLLSOURCE_HSI_DIV_2, LL_RCC_PLL_MUL_12); // Configure PLL used for SYSCLK(systemclock) Domain.

    LL_RCC_SetAHBPrescaler(LL_RCC_SYSCLK_DIV_1);      // do not change AHB bus's(DMA, RCC, all of the GPIO's, etc) frequency
    LL_RCC_SetSysClkSource(LL_RCC_SYS_CLKSOURCE_PLL); // setting configured PLL as the core clock's source
    while (LL_RCC_GetSysClkSource() != LL_RCC_SYS_CLKSOURCE_STATUS_PLL)
        ; // waits until PLL becomes the source for system clock

    LL_RCC_SetAPB1Prescaler(LL_RCC_APB1_DIV_1); // do not change APB (USART, TIM, etc) Frequency

    SystemCoreClock = 48000000; // the SystemCoreClock CMSIS variable is used to store System Clock Frequency

    return;
}

void gpio_config(void)
{
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA); // for encoder

    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);     // enable AHB1 peripherals clock for B pins (setting port's frequency, it's vital!)
    LL_GPIO_SetPinMode(GPIOC, DIGIT1, LL_GPIO_MODE_OUTPUT);  // reserving pin for output
    LL_GPIO_SetPinMode(GPIOC, DIGIT2, LL_GPIO_MODE_OUTPUT);  // reserving pin for output
    LL_GPIO_SetPinMode(GPIOC, DIGIT3, LL_GPIO_MODE_OUTPUT);  // reserving pin for output
    LL_GPIO_SetPinMode(GPIOC, DIGIT4, LL_GPIO_MODE_OUTPUT);  // reserving pin for output
    LL_GPIO_SetPinMode(GPIOC, DIOD_A, LL_GPIO_MODE_OUTPUT);  // reserving pin for output
    LL_GPIO_SetPinMode(GPIOC, DIOD_B, LL_GPIO_MODE_OUTPUT);  // reserving pin for output
    LL_GPIO_SetPinMode(GPIOC, DIOD_C, LL_GPIO_MODE_OUTPUT);  // reserving pin for output
    LL_GPIO_SetPinMode(GPIOC, DIOD_D, LL_GPIO_MODE_OUTPUT);  // reserving pin for output
    LL_GPIO_SetPinMode(GPIOC, DIOD_E, LL_GPIO_MODE_OUTPUT);  // reserving pin for output
    LL_GPIO_SetPinMode(GPIOC, DIOD_F, LL_GPIO_MODE_OUTPUT);  // reserving pin for output
    LL_GPIO_SetPinMode(GPIOC, DIOD_G, LL_GPIO_MODE_OUTPUT);  // reserving pin for output
    LL_GPIO_SetPinMode(GPIOC, DIOD_DP, LL_GPIO_MODE_OUTPUT); // reserving pin for output

    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_0, LL_GPIO_MODE_INPUT); // setting button as input button
    LL_GPIO_SetPinPull(GPIOC, LL_GPIO_PIN_0, LL_GPIO_PULL_DOWN);

    return;
}

static void timers_config(void)
{
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
    LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_0, LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetPinMode(GPIOA, LL_GPIO_PIN_1, LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetAFPin_0_7(GPIOA, LL_GPIO_PIN_0, LL_GPIO_AF_2);
    LL_GPIO_SetAFPin_0_7(GPIOA, LL_GPIO_PIN_1, LL_GPIO_AF_2);
    LL_GPIO_SetPinPull(GPIOA, LL_GPIO_PIN_0, LL_GPIO_PULL_UP);
    LL_GPIO_SetPinPull(GPIOA, LL_GPIO_PIN_1, LL_GPIO_PULL_UP);

    LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_TIM2);
    LL_TIM_SetEncoderMode(TIM2, LL_TIM_ENCODERMODE_X4_TI12);
    LL_TIM_IC_SetPolarity(TIM2, LL_TIM_CHANNEL_CH1, LL_TIM_IC_POLARITY_FALLING);
    LL_TIM_IC_SetPolarity(TIM2, LL_TIM_CHANNEL_CH2, LL_TIM_IC_POLARITY_FALLING);
    LL_TIM_SetAutoReload(TIM2, 0xFFFF);
    LL_TIM_EnableCounter(TIM2);

    return;
}

/*
========================================
FUNCTIONS DECLARATION:
========================================
*/

void set_indicator_4digits(uint32_t num, int tick); // sets indicator to display 4 digit number
void set_indicator_hp(int hp, int tick);            // sets indicator for hp in format 'HP-x', where x stands for amount of hp left. only supports 1 digit numbers
int get_encoder_rotation();                         // gets the encoder rotation. returns -1 if rotating left and 1 if rotating right
void printf_config(void);                           // configuration for oled display printf
__attribute__((naked)) void delay_10ms(void);       // just set of commands to waste CPU power for 10ms (basically it is a simple cycle with a predefined number of loops)                             // function that handles the button press. spawns one player's missle
int mypow(int x, int y);                            // elevates x to power y                                             // simulates the real one
//void print_battlefield(entity* battlefield);                          // prints the battlefield in terminal
//entity* add_ship(entity* battlefield,entity ship, int x, int y);      // adds new ship to the battlefield, rezises the battlefield itself
//entity* remove_ship(entity* battlefield, entity ship);                // removes ship from the battlefield, changes the batllefield's size, clozes the gaps in the array
entity *initialize_battlefield();                     // spawns initial amount of enemy ships and player's ship
entity *move_entities(entity *battlefield, int tick); // moves all of the entities on the battlefield. returns updated battlefield
entity *update_entities(entity *battlefield);         // updates all of the entities on the battlefield. sustracts health, clears the dead ones. returns updated battlefield
entity *spawn_enemies(entity *battlefield, int tick); // spawns new enemies if possible and spawns enemy projectiles
//entity* spawn_player(entity* battlefield);                            // function that handles the button press. spawns one player's missle
void draw_corvette(uint8_t x, uint8_t y);           // draws corvette with center in x, y
void draw_enemy_projectile(uint8_t x, uint8_t y);   // draws enemy projectile with center in x, y
void draw_player_ship(uint8_t x, uint8_t y);        // draws player ship with center in x, y
void draw_player_projectile(uint8_t x, uint8_t y);  // draws player projectile with center in x, y
void clear_corvette(uint8_t x, uint8_t y);          // clears corvette with center in x, y
void clear_enemy_projectile(uint8_t x, uint8_t y);  // clears enemy projectile with center in x, y
void clear_player_ship(uint8_t x, uint8_t y);       // clears player ship with center in x, y
void clear_player_projectile(uint8_t x, uint8_t y); // clears player projectile with center in x, y
void draw_battlefield(entity *battlefield);         // draws the entire battlefield

/*
========================================
MAIN:
========================================
*/

int main()
{
    uint8_t hp = 5;
    //uint32_t num = 0;
    uint8_t debouncer_clk = 0;
    uint8_t button_pressed = 0;

    rcc_config();
    gpio_config();
    timers_config();

    initialize_battlefield();

    oled_config(); // initializing display
    printf_config();
    oled_clr(clBlack); // clears graphic display

    oled_set_cursor(48, 57);
    xprintf("WELOCOME TO \n    SPACE INVADERS \n  press fire to start");
    draw_player_ship(64, 45);
    oled_update();
    /*
    int d = 0;
    while (1)
    {
        d++;

        set_indicator_4digits(5678, d % 4); // fix frequency
        // set_indicator_hp(6, d % 4); // fix frequency
  `  }
*/
    while (!start_flag)
    {
        if ((LL_GPIO_IsInputPinSet(GPIOC, LL_GPIO_PIN_0) && !button_pressed))
        {
            button_pressed = 1;
            debouncer_clk = 0;
        }

        if (button_pressed)
        {
            debouncer_clk++;
        }

        if (debouncer_clk >= 10)
        {
            start_flag = 1;
            button_pressed = 0;
            debouncer_clk = 0;
        }
    }

    for (uint8_t i = 0;; i++)
    {

        if (defeat_flag)
        {
            oled_clr(clBlack);
            oled_set_cursor(43, 57);
            xprintf("the earth has fallen \n it's your fault \n filthy casual");
            draw_defeat(10, 70);
            oled_update();
            break;
        }
        else if (victory_flag)
        {
            oled_clr(clBlack);
            oled_set_cursor(43, 57);
            xprintf("you've successfully \n repelled the attack \n on earth \n congratulations");
            oled_update();
            break;
        }

        set_indicator_4digits(highscore, i % 4); // fix frequency
        set_indicator_hp(hp, i % 4);             // fix frequency

        if ((LL_GPIO_IsInputPinSet(GPIOC, LL_GPIO_PIN_0) && !button_pressed))
        {
            button_pressed = 1;
            debouncer_clk = 0;
        }

        if (button_pressed)
        {
            debouncer_clk++;
        }

        if (debouncer_clk >= 10)
        {
            //hp--;
            entities_on_field += 2;
            battlefield[entities_on_field - 1] = player_projectile;
            battlefield[entities_on_field - 1].pos_x = battlefield[0].pos_x + 7;
            battlefield[entities_on_field - 1].pos_y = battlefield[0].pos_y + (battlefield[0].length + player_projectile.length) / 2;
            battlefield[entities_on_field - 2] = player_projectile;
            battlefield[entities_on_field - 2].pos_x = battlefield[0].pos_x - 7;
            battlefield[entities_on_field - 2].pos_y = battlefield[0].pos_y + (battlefield[0].length + player_projectile.length) / 2;
            button_pressed = 0;
            debouncer_clk = 0;
        }

        if (i >= 231)
        {
            i = 0;
        }

        if (i % 3 == 0)
        {
            get_encoder_rotation();
            oled_clr(clBlack);
            oled_set_cursor(43, 57);
            xprintf("HP LEFT: %d", battlefield[0].health);
            move_entities(battlefield, i);
            spawn_enemies(battlefield, i);
            update_entities(battlefield);
            draw_battlefield(battlefield);
            oled_update();
        }
    }

    for (int i = 0;; i++)
    {
        set_indicator_4digits(highscore, i % 4);
    }

    return 0;
}

/*
========================================
FUNCTIONS:
========================================
*/

void set_indicator_4digits(uint32_t num, int tick)
{

    uint32_t port_state = 0;

    port_state = LL_GPIO_ReadOutputPort(GPIOC);

    int div[4] = {1, 10, 100, 1000};

    port_state = ((port_state & ~pins_used) | numbers[(num / div[tick]) % 10]) | quarters[tick];
    LL_GPIO_WriteOutputPort(GPIOC, port_state);

    /*
     * Example:
     * 01100101 <= Input
     * mask = 111 (pins allowed to be changed)
     * ~mask = 11111000 (inverted mask sets remaing bits to one)
     * result = result & ~mask (zero only first three bits)
     * result = result | 001 (modify first three bits)
     * result -> 01100001
*/
    return;
}

void set_indicator_hp(int hp, int tick)
{

    uint32_t port_state = 0;

    port_state = LL_GPIO_ReadOutputPort(GPIOC);

    uint32_t hp_bar[] = {letters[7], letters[15], symbols[0], numbers[abs(hp) % 10]};

    port_state = ((port_state & ~pins_used) | hp_bar[3 - tick]) | quarters[tick];
    LL_GPIO_WriteOutputPort(GPIOC, port_state);
    return;
}

int get_encoder_rotation()
{
    // rotation right
    if (LL_TIM_GetCounterMode(TIM2) == LL_TIM_COUNTERMODE_UP)
    {
        //LL_GPIO_SetOutputPin(GPIOA, LL_GPIO_PIN_2);                   // debug
        //LL_GPIO_ResetOutputPin(GPIOA, LL_GPIO_PIN_3);                 // debug
        return 1;
    }

    //rotation left
    if (LL_TIM_GetCounterMode(TIM2) == LL_TIM_COUNTERMODE_DOWN)
    {
        //LL_GPIO_SetOutputPin(GPIOA, LL_GPIO_PIN_3);                   // debug
        //LL_GPIO_ResetOutputPin(GPIOA, LL_GPIO_PIN_2);                 // debug
        return -1;
    }
    return 0;
}

void printf_config(void)
{

    xdev_out(oled_putc);
    return;
}

/*
__attribute__((naked)) void delay_10ms(void)
{
    asm ("push {r7, lr}");
    asm ("ldr r6, [pc, #8]");
    asm ("sub r6, #1");
    asm ("cmp r6, #0");
    asm ("bne delay_10ms+0x4");
    asm ("pop {r7, pc}");
    asm (".word 0xea60"); //60000
}
*/

int mypow(int x, int y)
{
    int counter = 1;
    if (y)
    {
        for (int i = 0; i < y; i++)
        {
            counter *= x;
        }
        return counter;
    }
    else
    {
        return counter;
    }
}

entity *initialize_battlefield()
{
    for (int i = 1; i < 7; i++)
    {
        battlefield[i] = corvette;
        battlefield[i].pos_x = corvette.pos_x + (i - 1) * (corvette.width + 8);
    }
    battlefield[0] = player_ship;
    entities_on_field = 7;
    return battlefield;
}

entity *move_entities(entity *battlefield, int tick)
{
    for (int i = 0; i < entities_on_field; i++)
    {
        if (battlefield[i].iff_flag == 'e' && battlefield[i].entity_flag == 's')
        {
            battlefield[i].pos_x += battlefield[i].mov_x * mypow(-1, tick % 2);
            battlefield[i].pos_y += (tick % 2) * battlefield[i].mov_y;
        }
        if (battlefield[i].iff_flag == 'e' && battlefield[i].entity_flag == 'p')
        {
            battlefield[i].pos_x += battlefield[i].mov_x;
            battlefield[i].pos_y += battlefield[i].mov_y;
        }
        if (battlefield[i].iff_flag == 'f' && battlefield[i].entity_flag == 's')
        {
            battlefield[i].pos_x += battlefield[i].mov_x * get_encoder_rotation();
        }
        if (battlefield[i].iff_flag == 'f' && battlefield[i].entity_flag == 'p')
        {
            battlefield[i].pos_y += battlefield[i].mov_y;
        }
    }
    return battlefield;
}

entity *update_entities(entity *battlefield)
{
    victory_flag = 1;
    uint8_t cpy = entities_on_field;
    for (uint8_t i = 0; i < cpy; i++)
    {
        for (uint8_t j = i + 1; j < cpy; j++)
        {
            if ((abs(battlefield[i].pos_x - battlefield[j].pos_x) <= (battlefield[j].width + battlefield[i].width) / 2) && (abs(battlefield[i].pos_y - battlefield[j].pos_y) <= (battlefield[j].length + battlefield[i].length) / 2) && (battlefield[i].iff_flag != battlefield[j].iff_flag))
            {
                battlefield[i].health -= battlefield[j].damage;
                battlefield[j].health -= battlefield[i].damage;
            }
        }
    }

    if (battlefield[0].health <= 0 || battlefield[0].pos_y <= 0 || battlefield[0].pos_y >= 64 || battlefield[0].pos_x <= 0 || battlefield[0].pos_x >= 128)
    {
        defeat_flag = 1;
    }

    for (uint8_t i = 1; i < cpy; i++)
    {
        if (battlefield[i].health <= 0 || battlefield[i].pos_y <= 0 || battlefield[i].pos_y >= 64 || battlefield[i].pos_x <= 0 || battlefield[i].pos_x >= 128)
        {
            for (uint8_t j = i; j < cpy - 1; j++)
            {
                battlefield[j] = battlefield[j + 1];
            }
            entities_on_field -= 1;
            if (battlefield[i].entity_flag == 's')
            {
                highscore += 10;
            }
            else
            {
                highscore += 2;
            }

            if (!(entities_on_field - 1))
            {
                victory_flag = 1;
                break;
            }
        }
        if (battlefield[i].iff_flag == 'e' && battlefield[i].entity_flag == 's')
        {
            victory_flag = 0;
        }
    }
    return battlefield;
}

entity *spawn_enemies(entity *battlefield, int tick)
{
    if (tick % 10 == 0)
    {
        for (uint8_t i = 0; i < entities_on_field; i++)
        {
            if (battlefield[i].iff_flag == 'e' && battlefield[i].entity_flag == 's')
            {
                entities_on_field += 1;
                battlefield[entities_on_field - 1] = corvette_projectile;
                battlefield[entities_on_field - 1].pos_x = battlefield[i].pos_x;
                battlefield[entities_on_field - 1].pos_y = battlefield[i].pos_y - (battlefield[i].length + corvette_projectile.length) / 2;
                battlefield[entities_on_field - 1].mov_x = (battlefield[0].pos_x - battlefield[entities_on_field - 1].pos_x) / 15;
                battlefield[entities_on_field - 1].mov_y = (battlefield[0].pos_y - battlefield[entities_on_field - 1].pos_y) / 15;
            }
        }
    }

    uint8_t first_row_free = 1;

    for (uint8_t i = 0; i < entities_on_field; i++)
    {
        if (battlefield[i].pos_y >= 46)
        {
            first_row_free = 0;
        }
    }
    if (first_row_free)
    {
        entities_on_field += 6;
        for (uint8_t i = entities_on_field - 6; i < entities_on_field; i++)
        {
            battlefield[i] = corvette;
            battlefield[i].pos_x = corvette.pos_x + (-entities_on_field + 6 + i + 1) * (corvette.width + 8);
        }
    }

    return battlefield;
}

void draw_corvette(uint8_t x, uint8_t y)
{
    oled_set_pix(x, y, clWhite);
    oled_set_pix(x, y + 1, clWhite);
    oled_set_pix(x, y + 2, clWhite);
    oled_set_pix(x, y + 3, clWhite);
    oled_set_pix(x, y + 4, clWhite);
    oled_set_pix(x, y - 1, clWhite);
    oled_set_pix(x, y - 2, clWhite);
    oled_set_pix(x, y - 3, clWhite);
    oled_set_pix(x + 1, y, clWhite);
    oled_set_pix(x + 1, y - 2, clWhite);
    oled_set_pix(x + 1, y - 3, clWhite);
    oled_set_pix(x + 1, y - 4, clWhite);
    oled_set_pix(x + 1, y + 1, clWhite);
    oled_set_pix(x + 1, y + 2, clWhite);
    oled_set_pix(x - 1, y, clWhite);
    oled_set_pix(x - 1, y - 2, clWhite);
    oled_set_pix(x - 1, y - 3, clWhite);
    oled_set_pix(x - 1, y - 4, clWhite);
    oled_set_pix(x - 1, y + 1, clWhite);
    oled_set_pix(x - 1, y + 2, clWhite);
    oled_set_pix(x + 2, y, clWhite);
    oled_set_pix(x + 2, y - 1, clWhite);
    oled_set_pix(x + 2, y - 2, clWhite);
    oled_set_pix(x + 2, y + 1, clWhite);
    oled_set_pix(x + 2, y + 2, clWhite);
    oled_set_pix(x + 2, y + 3, clWhite);
    oled_set_pix(x - 2, y, clWhite);
    oled_set_pix(x - 2, y - 1, clWhite);
    oled_set_pix(x - 2, y - 2, clWhite);
    oled_set_pix(x - 2, y + 1, clWhite);
    oled_set_pix(x - 2, y + 2, clWhite);
    oled_set_pix(x - 2, y + 3, clWhite);
    oled_set_pix(x + 3, y, clWhite);
    oled_set_pix(x + 3, y - 1, clWhite);
    oled_set_pix(x + 3, y - 4, clWhite);
    oled_set_pix(x + 3, y + 1, clWhite);
    oled_set_pix(x + 3, y + 3, clWhite);
    oled_set_pix(x - 3, y, clWhite);
    oled_set_pix(x - 3, y - 1, clWhite);
    oled_set_pix(x - 3, y - 4, clWhite);
    oled_set_pix(x - 3, y + 1, clWhite);
    oled_set_pix(x - 3, y + 3, clWhite);
    oled_set_pix(x + 4, y, clWhite);
    oled_set_pix(x + 4, y + 4, clWhite);
    oled_set_pix(x + 4, y - 2, clWhite);
    oled_set_pix(x + 4, y - 3, clWhite);
    oled_set_pix(x - 4, y, clWhite);
    oled_set_pix(x - 4, y + 4, clWhite);
    oled_set_pix(x - 4, y - 2, clWhite);
    oled_set_pix(x - 4, y - 3, clWhite);
    oled_set_pix(x + 5, y + 1, clWhite);
    oled_set_pix(x + 5, y + 2, clWhite);
    oled_set_pix(x + 5, y - 4, clWhite);
    oled_set_pix(x - 5, y + 1, clWhite);
    oled_set_pix(x - 5, y + 2, clWhite);
    oled_set_pix(x - 5, y - 4, clWhite);
    oled_set_pix(x + 6, y + 3, clWhite);
    oled_set_pix(x - 6, y - 3, clWhite);
}

void clear_corvette(uint8_t x, uint8_t y)
{
    oled_set_pix(x, y, clBlack);
    oled_set_pix(x, y + 1, clBlack);
    oled_set_pix(x, y + 2, clBlack);
    oled_set_pix(x, y + 3, clBlack);
    oled_set_pix(x, y + 4, clBlack);
    oled_set_pix(x, y - 1, clBlack);
    oled_set_pix(x, y - 2, clBlack);
    oled_set_pix(x, y - 3, clBlack);
    oled_set_pix(x + 1, y, clBlack);
    oled_set_pix(x + 1, y - 2, clBlack);
    oled_set_pix(x + 1, y - 3, clBlack);
    oled_set_pix(x + 1, y - 4, clBlack);
    oled_set_pix(x + 1, y + 1, clBlack);
    oled_set_pix(x + 1, y + 2, clBlack);
    oled_set_pix(x - 1, y, clBlack);
    oled_set_pix(x - 1, y - 2, clBlack);
    oled_set_pix(x - 1, y - 3, clBlack);
    oled_set_pix(x - 1, y - 4, clBlack);
    oled_set_pix(x - 1, y + 1, clBlack);
    oled_set_pix(x - 1, y + 2, clBlack);
    oled_set_pix(x + 2, y, clBlack);
    oled_set_pix(x + 2, y - 1, clBlack);
    oled_set_pix(x + 2, y - 2, clBlack);
    oled_set_pix(x + 2, y + 1, clBlack);
    oled_set_pix(x + 2, y + 2, clBlack);
    oled_set_pix(x + 2, y + 3, clBlack);
    oled_set_pix(x - 2, y, clBlack);
    oled_set_pix(x - 2, y - 1, clBlack);
    oled_set_pix(x - 2, y - 2, clBlack);
    oled_set_pix(x - 2, y + 1, clBlack);
    oled_set_pix(x - 2, y + 2, clBlack);
    oled_set_pix(x - 2, y + 3, clBlack);
    oled_set_pix(x + 3, y, clBlack);
    oled_set_pix(x + 3, y - 1, clBlack);
    oled_set_pix(x + 3, y - 4, clBlack);
    oled_set_pix(x + 3, y + 1, clBlack);
    oled_set_pix(x + 3, y + 3, clBlack);
    oled_set_pix(x - 3, y, clBlack);
    oled_set_pix(x - 3, y - 1, clBlack);
    oled_set_pix(x - 3, y - 4, clBlack);
    oled_set_pix(x - 3, y + 1, clBlack);
    oled_set_pix(x - 3, y + 3, clBlack);
    oled_set_pix(x + 4, y, clBlack);
    oled_set_pix(x + 4, y + 4, clBlack);
    oled_set_pix(x + 4, y - 2, clBlack);
    oled_set_pix(x + 4, y - 3, clBlack);
    oled_set_pix(x - 4, y, clBlack);
    oled_set_pix(x - 4, y + 4, clBlack);
    oled_set_pix(x - 4, y - 2, clBlack);
    oled_set_pix(x - 4, y - 3, clBlack);
    oled_set_pix(x + 5, y + 1, clBlack);
    oled_set_pix(x + 5, y + 2, clBlack);
    oled_set_pix(x + 5, y - 4, clBlack);
    oled_set_pix(x - 5, y + 1, clBlack);
    oled_set_pix(x - 5, y + 2, clBlack);
    oled_set_pix(x - 5, y - 4, clBlack);
    oled_set_pix(x + 6, y + 3, clBlack);
    oled_set_pix(x - 6, y - 3, clBlack);
}

void draw_defeat(uint8_t x, uint8_t y)
{
    oled_set_pix(x + 6, y - 3, clWhite);
    oled_set_pix(x + 6, y - 4, clWhite);
    oled_set_pix(x + 6, y - 5, clWhite);
    oled_set_pix(x + 6, y - 6, clWhite);
    oled_set_pix(x + 6, y - 7, clWhite);
    oled_set_pix(x + 6, y - 8, clWhite);
    oled_set_pix(x + 7, y - 7, clWhite);
    oled_set_pix(x + 7, y - 8, clWhite);
    oled_set_pix(x + 7, y - 9, clWhite);
    oled_set_pix(x + 7, y - 10, clWhite);
    oled_set_pix(x + 7, y - 11, clWhite);
    oled_set_pix(x + 8, y - 11, clWhite);
    oled_set_pix(x + 8, y - 12, clWhite);
    oled_set_pix(x + 9, y - 11, clWhite);
    oled_set_pix(x + 9, y - 12, clWhite);
    oled_set_pix(x + 10, y - 10, clWhite);
    oled_set_pix(x + 10, y - 11, clWhite);
    oled_set_pix(x + 11, y - 10, clWhite);
    oled_set_pix(x + 11, y - 11, clWhite);
    oled_set_pix(x + 12, y - 3, clWhite);
    oled_set_pix(x + 12, y - 4, clWhite);
    oled_set_pix(x + 12, y - 5, clWhite);
    oled_set_pix(x + 12, y - 9, clWhite);
    oled_set_pix(x + 12, y - 10, clWhite);
    oled_set_pix(x + 13, y - 5, clWhite);
    oled_set_pix(x + 13, y - 6, clWhite);
    oled_set_pix(x + 13, y - 9, clWhite);
    oled_set_pix(x + 13, y - 17, clWhite);
    oled_set_pix(x + 13, y - 18, clWhite);
    oled_set_pix(x + 13, y - 19, clWhite);
    oled_set_pix(x + 13, y - 9, clWhite);
    oled_set_pix(x + 14, y - 6, clWhite);
    oled_set_pix(x + 14, y - 8, clWhite);
    oled_set_pix(x + 14, y - 9, clWhite);
    oled_set_pix(x + 14, y - 15, clWhite);
    oled_set_pix(x + 14, y - 16, clWhite);
    oled_set_pix(x + 14, y - 17, clWhite);
    oled_set_pix(x + 14, y - 18, clWhite);
    oled_set_pix(x + 14, y - 19, clWhite);
    oled_set_pix(x + 14, y - 20, clWhite);
    oled_set_pix(x + 15, y - 6, clWhite);
    oled_set_pix(x + 15, y - 7, clWhite);
    oled_set_pix(x + 15, y - 8, clWhite);
    oled_set_pix(x + 15, y - 9, clWhite);
    oled_set_pix(x + 15, y - 12, clWhite);
    oled_set_pix(x + 15, y - 14, clWhite);
    oled_set_pix(x + 15, y - 15, clWhite);
    oled_set_pix(x + 15, y - 16, clWhite);
    oled_set_pix(x + 15, y - 17, clWhite);
    oled_set_pix(x + 15, y - 18, clWhite);
    oled_set_pix(x + 15, y - 19, clWhite);
    oled_set_pix(x + 15, y - 20, clWhite);
    oled_set_pix(x + 15, y - 21, clWhite);
    oled_set_pix(x + 16, y - 3, clWhite);
    oled_set_pix(x + 16, y - 4, clWhite);
    oled_set_pix(x + 16, y - 8, clWhite);
    oled_set_pix(x + 16, y - 9, clWhite);
    oled_set_pix(x + 16, y - 12, clWhite);
    oled_set_pix(x + 16, y - 14, clWhite);
    oled_set_pix(x + 16, y - 15, clWhite);
    oled_set_pix(x + 16, y - 19, clWhite);
    oled_set_pix(x + 16, y - 20, clWhite);
    oled_set_pix(x + 16, y - 21, clWhite);
    oled_set_pix(x + 17, y - 4, clWhite);
    oled_set_pix(x + 17, y - 5, clWhite);
    oled_set_pix(x + 17, y - 6, clWhite);
    oled_set_pix(x + 17, y - 7, clWhite);
    oled_set_pix(x + 17, y - 8, clWhite);
    oled_set_pix(x + 17, y - 9, clWhite);
    oled_set_pix(x + 17, y - 10, clWhite);
    oled_set_pix(x + 17, y - 11, clWhite);
    oled_set_pix(x + 17, y - 12, clWhite);
    oled_set_pix(x + 17, y - 14, clWhite);
    oled_set_pix(x + 17, y - 15, clWhite);
    oled_set_pix(x + 17, y - 19, clWhite);
    oled_set_pix(x + 17, y - 20, clWhite);
    oled_set_pix(x + 17, y - 21, clWhite);
    oled_set_pix(x + 17, y - 22, clWhite);
    oled_set_pix(x + 18, y - 8, clWhite);
    oled_set_pix(x + 18, y - 9, clWhite);
    oled_set_pix(x + 18, y - 10, clWhite);
    oled_set_pix(x + 18, y - 11, clWhite);
    oled_set_pix(x + 18, y - 12, clWhite);
    oled_set_pix(x + 18, y - 14, clWhite);
    oled_set_pix(x + 18, y - 15, clWhite);
    oled_set_pix(x + 18, y - 19, clWhite);
    oled_set_pix(x + 18, y - 20, clWhite);
    oled_set_pix(x + 18, y - 21, clWhite);
    oled_set_pix(x + 18, y - 22, clWhite);
    oled_set_pix(x + 18, y - 23, clWhite);
    oled_set_pix(x + 19, y - 4, clWhite);
    oled_set_pix(x + 19, y - 5, clWhite);
    oled_set_pix(x + 19, y - 6, clWhite);
    oled_set_pix(x + 19, y - 7, clWhite);
    oled_set_pix(x + 19, y - 8, clWhite);
    oled_set_pix(x + 19, y - 9, clWhite);
    oled_set_pix(x + 19, y - 10, clWhite);
    oled_set_pix(x + 19, y - 11, clWhite);
    oled_set_pix(x + 19, y - 12, clWhite);
    oled_set_pix(x + 19, y - 14, clWhite);
    oled_set_pix(x + 19, y - 15, clWhite);
    oled_set_pix(x + 19, y - 16, clWhite);
    oled_set_pix(x + 19, y - 20, clWhite);
    oled_set_pix(x + 19, y - 21, clWhite);
    oled_set_pix(x + 19, y - 22, clWhite);
    oled_set_pix(x + 19, y - 23, clWhite);
    oled_set_pix(x + 19, y - 24, clWhite);
    oled_set_pix(x + 20, y - 3, clWhite);
    oled_set_pix(x + 20, y - 4, clWhite);
    oled_set_pix(x + 20, y - 8, clWhite);
    oled_set_pix(x + 20, y - 9, clWhite);
    oled_set_pix(x + 20, y - 12, clWhite);
    oled_set_pix(x + 20, y - 13, clWhite);
    oled_set_pix(x + 20, y - 15, clWhite);
    oled_set_pix(x + 20, y - 16, clWhite);
    oled_set_pix(x + 20, y - 19, clWhite);
    oled_set_pix(x + 20, y - 20, clWhite);
    oled_set_pix(x + 20, y - 21, clWhite);
    oled_set_pix(x + 20, y - 22, clWhite);
    oled_set_pix(x + 20, y - 23, clWhite);
    oled_set_pix(x + 20, y - 24, clWhite);
    oled_set_pix(x + 21, y - 6, clWhite);
    oled_set_pix(x + 21, y - 7, clWhite);
    oled_set_pix(x + 21, y - 8, clWhite);
    oled_set_pix(x + 21, y - 12, clWhite);
    oled_set_pix(x + 21, y - 13, clWhite);
    oled_set_pix(x + 21, y - 14, clWhite);
    oled_set_pix(x + 21, y - 19, clWhite);
    oled_set_pix(x + 21, y - 20, clWhite);
    oled_set_pix(x + 21, y - 21, clWhite);
    oled_set_pix(x + 21, y - 23, clWhite);
    oled_set_pix(x + 21, y - 24, clWhite);
    oled_set_pix(x + 21, y - 25, clWhite);
    oled_set_pix(x + 21, y - 28, clWhite);
    oled_set_pix(x + 22, y - 6, clWhite);
    oled_set_pix(x + 22, y - 8, clWhite);
    oled_set_pix(x + 22, y - 9, clWhite);
    oled_set_pix(x + 22, y - 14, clWhite);
    oled_set_pix(x + 22, y - 15, clWhite);
    oled_set_pix(x + 22, y - 16, clWhite);
    oled_set_pix(x + 22, y - 17, clWhite);
    oled_set_pix(x + 22, y - 19, clWhite);
    oled_set_pix(x + 22, y - 20, clWhite);
    oled_set_pix(x + 22, y - 21, clWhite);
    oled_set_pix(x + 22, y - 24, clWhite);
    oled_set_pix(x + 22, y - 25, clWhite);
    oled_set_pix(x + 22, y - 27, clWhite);
    oled_set_pix(x + 22, y - 28, clWhite);
    oled_set_pix(x + 22, y - 29, clWhite);
    oled_set_pix(x + 23, y - 5, clWhite);
    oled_set_pix(x + 23, y - 6, clWhite);
    oled_set_pix(x + 23, y - 9, clWhite);
    oled_set_pix(x + 23, y - 10, clWhite);
    oled_set_pix(x + 23, y - 16, clWhite);
    oled_set_pix(x + 23, y - 17, clWhite);
    oled_set_pix(x + 23, y - 19, clWhite);
    oled_set_pix(x + 23, y - 20, clWhite);
    oled_set_pix(x + 23, y - 23, clWhite);
    oled_set_pix(x + 23, y - 24, clWhite);
    oled_set_pix(x + 23, y - 25, clWhite);
    oled_set_pix(x + 23, y - 26, clWhite);
    oled_set_pix(x + 23, y - 27, clWhite);
    oled_set_pix(x + 23, y - 29, clWhite);
    oled_set_pix(x + 23, y - 30, clWhite);
    oled_set_pix(x + 24, y - 3, clWhite);
    oled_set_pix(x + 24, y - 4, clWhite);
    oled_set_pix(x + 24, y - 5, clWhite);
    oled_set_pix(x + 24, y - 10, clWhite);
    oled_set_pix(x + 24, y - 11, clWhite);
    oled_set_pix(x + 24, y - 12, clWhite);
    oled_set_pix(x + 24, y - 16, clWhite);
    oled_set_pix(x + 24, y - 17, clWhite);
    oled_set_pix(x + 24, y - 19, clWhite);
    oled_set_pix(x + 24, y - 20, clWhite);
    oled_set_pix(x + 24, y - 22, clWhite);
    oled_set_pix(x + 24, y - 25, clWhite);
    oled_set_pix(x + 24, y - 26, clWhite);
    oled_set_pix(x + 24, y - 28, clWhite);
    oled_set_pix(x + 24, y - 29, clWhite);
    oled_set_pix(x + 25, y - 12, clWhite);
    oled_set_pix(x + 25, y - 13, clWhite);
    oled_set_pix(x + 25, y - 15, clWhite);
    oled_set_pix(x + 25, y - 16, clWhite);
    oled_set_pix(x + 25, y - 17, clWhite);
    oled_set_pix(x + 25, y - 19, clWhite);
    oled_set_pix(x + 25, y - 23, clWhite);
    oled_set_pix(x + 25, y - 24, clWhite);
    oled_set_pix(x + 25, y - 25, clWhite);
    oled_set_pix(x + 25, y - 26, clWhite);
    oled_set_pix(x + 25, y - 27, clWhite);
    oled_set_pix(x + 25, y - 28, clWhite);
    oled_set_pix(x + 26, y - 4, clWhite);
    oled_set_pix(x + 26, y - 5, clWhite);
    oled_set_pix(x + 26, y - 6, clWhite);
    oled_set_pix(x + 26, y - 12, clWhite);
    oled_set_pix(x + 26, y - 13, clWhite);
    oled_set_pix(x + 26, y - 16, clWhite);
    oled_set_pix(x + 26, y - 17, clWhite);
    oled_set_pix(x + 26, y - 22, clWhite);
    oled_set_pix(x + 26, y - 25, clWhite);
    oled_set_pix(x + 26, y - 26, clWhite);
    oled_set_pix(x + 26, y - 28, clWhite);
    oled_set_pix(x + 26, y - 29, clWhite);
    oled_set_pix(x + 27, y - 2, clWhite);
    oled_set_pix(x + 27, y - 3, clWhite);
    oled_set_pix(x + 27, y - 4, clWhite);
    oled_set_pix(x + 27, y - 6, clWhite);
    oled_set_pix(x + 27, y - 9, clWhite);
    oled_set_pix(x + 27, y - 10, clWhite);
    oled_set_pix(x + 27, y - 11, clWhite);
    oled_set_pix(x + 27, y - 12, clWhite);
    oled_set_pix(x + 27, y - 17, clWhite);
    oled_set_pix(x + 27, y - 18, clWhite);
    oled_set_pix(x + 27, y - 23, clWhite);
    oled_set_pix(x + 27, y - 24, clWhite);
    oled_set_pix(x + 27, y - 25, clWhite);
    oled_set_pix(x + 27, y - 26, clWhite);
    oled_set_pix(x + 27, y - 27, clWhite);
    oled_set_pix(x + 27, y - 29, clWhite);
    oled_set_pix(x + 27, y - 30, clWhite);
    oled_set_pix(x + 28, y - 2, clWhite);
    oled_set_pix(x + 28, y - 3, clWhite);
    oled_set_pix(x + 28, y - 4, clWhite);
    oled_set_pix(x + 28, y - 5, clWhite);
    oled_set_pix(x + 28, y - 6, clWhite);
    oled_set_pix(x + 28, y - 7, clWhite);
    oled_set_pix(x + 28, y - 8, clWhite);
    oled_set_pix(x + 28, y - 9, clWhite);
    oled_set_pix(x + 28, y - 18, clWhite);
    oled_set_pix(x + 28, y - 27, clWhite);
    oled_set_pix(x + 28, y - 28, clWhite);
    oled_set_pix(x + 28, y - 29, clWhite);
    oled_set_pix(x + 29, y - 2, clWhite);
    oled_set_pix(x + 29, y - 3, clWhite);
    oled_set_pix(x + 29, y - 4, clWhite);
    oled_set_pix(x + 29, y - 6, clWhite);
    oled_set_pix(x + 29, y - 28, clWhite);
    oled_set_pix(x + 30, y - 4, clWhite);
    oled_set_pix(x + 30, y - 5, clWhite);
    oled_set_pix(x + 30, y - 6, clWhite);
}

void draw_enemy_projectile(uint8_t x, uint8_t y)
{
    oled_set_pix(x, y, clWhite);
    oled_set_pix(x, y + 1, clWhite);
    oled_set_pix(x, y - 1, clWhite);
    oled_set_pix(x + 1, y + 1, clWhite);
    oled_set_pix(x + 1, y - 1, clWhite);
    oled_set_pix(x - 1, y + 1, clWhite);
    oled_set_pix(x - 1, y - 1, clWhite);
    oled_set_pix(x + 1, y, clWhite);
    oled_set_pix(x - 1, y, clWhite);
}

void clear_enemy_projectile(uint8_t x, uint8_t y)
{
    oled_set_pix(x, y, clBlack);
    oled_set_pix(x, y + 1, clBlack);
    oled_set_pix(x, y - 1, clBlack);
    oled_set_pix(x + 1, y + 1, clBlack);
    oled_set_pix(x + 1, y - 1, clBlack);
    oled_set_pix(x - 1, y + 1, clBlack);
    oled_set_pix(x - 1, y - 1, clBlack);
    oled_set_pix(x + 1, y, clBlack);
    oled_set_pix(x - 1, y, clBlack);
}

void draw_player_ship(uint8_t x, uint8_t y)
{
    oled_set_pix(x, y, clWhite);
    oled_set_pix(x, y + 1, clWhite);
    oled_set_pix(x, y + 2, clWhite);
    oled_set_pix(x, y + 4, clWhite);
    oled_set_pix(x, y - 1, clWhite);
    oled_set_pix(x, y - 2, clWhite);
    oled_set_pix(x, y - 3, clWhite);
    oled_set_pix(x + 2, y, clWhite);
    oled_set_pix(x - 2, y, clWhite);
    oled_set_pix(x - 1, y - 1, clWhite);
    oled_set_pix(x - 2, y - 1, clWhite);
    oled_set_pix(x + 1, y - 1, clWhite);
    oled_set_pix(x + 2, y - 1, clWhite);
    oled_set_pix(x - 1, y - 2, clWhite);
    oled_set_pix(x - 2, y - 2, clWhite);
    oled_set_pix(x + 1, y - 2, clWhite);
    oled_set_pix(x + 2, y - 2, clWhite);
    oled_set_pix(x - 1, y - 3, clWhite);
    oled_set_pix(x + 1, y - 3, clWhite);
    oled_set_pix(x + 1, y + 4, clWhite);
    oled_set_pix(x - 1, y + 4, clWhite);
    oled_set_pix(x + 2, y + 4, clWhite);
    oled_set_pix(x + 2, y + 3, clWhite);
    oled_set_pix(x + 2, y + 2, clWhite);
    oled_set_pix(x - 2, y + 4, clWhite);
    oled_set_pix(x - 2, y + 3, clWhite);
    oled_set_pix(x - 2, y + 2, clWhite);
    oled_set_pix(x + 3, y - 4, clWhite);
    oled_set_pix(x + 3, y + 2, clWhite);
    oled_set_pix(x + 3, y + 3, clWhite);
    oled_set_pix(x - 3, y - 4, clWhite);
    oled_set_pix(x - 3, y + 2, clWhite);
    oled_set_pix(x - 3, y + 3, clWhite);
    oled_set_pix(x + 4, y + 1, clWhite);
    oled_set_pix(x + 4, y, clWhite);
    oled_set_pix(x + 4, y - 1, clWhite);
    oled_set_pix(x + 4, y - 2, clWhite);
    oled_set_pix(x + 4, y - 3, clWhite);
    oled_set_pix(x + 4, y - 4, clWhite);
    oled_set_pix(x - 4, y + 1, clWhite);
    oled_set_pix(x - 4, y, clWhite);
    oled_set_pix(x - 4, y - 1, clWhite);
    oled_set_pix(x - 4, y - 2, clWhite);
    oled_set_pix(x - 4, y - 3, clWhite);
    oled_set_pix(x - 4, y - 4, clWhite);
    oled_set_pix(x + 5, y - 3, clWhite);
    oled_set_pix(x - 5, y - 3, clWhite);
    oled_set_pix(x + 6, y + 1, clWhite);
    oled_set_pix(x + 6, y, clWhite);
    oled_set_pix(x + 6, y - 1, clWhite);
    oled_set_pix(x + 6, y - 2, clWhite);
    oled_set_pix(x + 6, y - 3, clWhite);
    oled_set_pix(x - 6, y + 1, clWhite);
    oled_set_pix(x - 6, y, clWhite);
    oled_set_pix(x - 6, y - 1, clWhite);
    oled_set_pix(x - 6, y - 2, clWhite);
    oled_set_pix(x - 6, y - 3, clWhite);
    oled_set_pix(x + 7, y, clWhite);
    oled_set_pix(x + 7, y - 1, clWhite);
    oled_set_pix(x + 7, y - 2, clWhite);
    oled_set_pix(x + 7, y - 3, clWhite);
    oled_set_pix(x + 7, y - 4, clWhite);
    oled_set_pix(x - 7, y, clWhite);
    oled_set_pix(x - 7, y - 1, clWhite);
    oled_set_pix(x - 7, y - 2, clWhite);
    oled_set_pix(x - 7, y - 3, clWhite);
    oled_set_pix(x - 7, y - 4, clWhite);
    oled_set_pix(x + 8, y + 1, clWhite);
    oled_set_pix(x + 8, y, clWhite);
    oled_set_pix(x + 8, y - 1, clWhite);
    oled_set_pix(x + 8, y - 2, clWhite);
    oled_set_pix(x + 8, y - 3, clWhite);
    oled_set_pix(x - 8, y + 1, clWhite);
    oled_set_pix(x - 8, y, clWhite);
    oled_set_pix(x - 8, y - 1, clWhite);
    oled_set_pix(x - 8, y - 2, clWhite);
    oled_set_pix(x - 8, y - 3, clWhite);
}

void clear_player_ship(uint8_t x, uint8_t y)
{
    oled_set_pix(x, y, clBlack);
    oled_set_pix(x, y + 1, clBlack);
    oled_set_pix(x, y + 2, clBlack);
    oled_set_pix(x, y + 4, clBlack);
    oled_set_pix(x, y - 1, clBlack);
    oled_set_pix(x, y - 2, clBlack);
    oled_set_pix(x, y - 3, clBlack);
    oled_set_pix(x + 2, y, clBlack);
    oled_set_pix(x - 2, y, clBlack);
    oled_set_pix(x - 1, y - 1, clBlack);
    oled_set_pix(x - 2, y - 1, clBlack);
    oled_set_pix(x + 1, y - 1, clBlack);
    oled_set_pix(x + 2, y - 1, clBlack);
    oled_set_pix(x - 1, y - 2, clBlack);
    oled_set_pix(x - 2, y - 2, clBlack);
    oled_set_pix(x + 1, y - 2, clBlack);
    oled_set_pix(x + 2, y - 2, clBlack);
    oled_set_pix(x - 1, y - 3, clBlack);
    oled_set_pix(x + 1, y - 3, clBlack);
    oled_set_pix(x + 1, y + 4, clBlack);
    oled_set_pix(x - 1, y + 4, clBlack);
    oled_set_pix(x + 2, y + 4, clBlack);
    oled_set_pix(x + 2, y + 3, clBlack);
    oled_set_pix(x + 2, y + 2, clBlack);
    oled_set_pix(x - 2, y + 4, clBlack);
    oled_set_pix(x - 2, y + 3, clBlack);
    oled_set_pix(x - 2, y + 2, clBlack);
    oled_set_pix(x + 3, y - 4, clBlack);
    oled_set_pix(x + 3, y + 2, clBlack);
    oled_set_pix(x + 3, y + 3, clBlack);
    oled_set_pix(x - 3, y - 4, clBlack);
    oled_set_pix(x - 3, y + 2, clBlack);
    oled_set_pix(x - 3, y + 3, clBlack);
    oled_set_pix(x + 4, y + 1, clBlack);
    oled_set_pix(x + 4, y, clBlack);
    oled_set_pix(x + 4, y - 1, clBlack);
    oled_set_pix(x + 4, y - 2, clBlack);
    oled_set_pix(x + 4, y - 3, clBlack);
    oled_set_pix(x + 4, y - 4, clBlack);
    oled_set_pix(x - 4, y - 1, clBlack);
    oled_set_pix(x - 4, y - 2, clBlack);
    oled_set_pix(x - 4, y - 3, clBlack);
    oled_set_pix(x - 4, y - 4, clBlack);
    oled_set_pix(x + 5, y - 3, clBlack);
    oled_set_pix(x - 5, y - 3, clBlack);
    oled_set_pix(x + 6, y + 1, clBlack);
    oled_set_pix(x + 6, y, clBlack);
    oled_set_pix(x + 6, y - 1, clBlack);
    oled_set_pix(x + 6, y - 2, clBlack);
    oled_set_pix(x + 6, y - 3, clBlack);
    oled_set_pix(x - 6, y + 1, clBlack);
    oled_set_pix(x - 6, y, clBlack);
    oled_set_pix(x - 6, y - 1, clBlack);
    oled_set_pix(x - 6, y - 2, clBlack);
    oled_set_pix(x - 6, y - 3, clBlack);
    oled_set_pix(x + 7, y, clBlack);
    oled_set_pix(x + 7, y - 1, clBlack);
    oled_set_pix(x + 7, y - 2, clBlack);
    oled_set_pix(x + 7, y - 3, clBlack);
    oled_set_pix(x + 7, y - 4, clBlack);
    oled_set_pix(x - 7, y, clBlack);
    oled_set_pix(x - 7, y - 1, clBlack);
    oled_set_pix(x - 7, y - 2, clBlack);
    oled_set_pix(x - 7, y - 3, clBlack);
    oled_set_pix(x - 7, y - 4, clBlack);
    oled_set_pix(x + 8, y + 1, clBlack);
    oled_set_pix(x + 8, y, clBlack);
    oled_set_pix(x + 8, y - 1, clBlack);
    oled_set_pix(x + 8, y - 2, clBlack);
    oled_set_pix(x + 8, y - 3, clBlack);
    oled_set_pix(x - 8, y + 1, clBlack);
    oled_set_pix(x - 8, y, clBlack);
    oled_set_pix(x - 8, y - 1, clBlack);
    oled_set_pix(x - 8, y - 2, clBlack);
    oled_set_pix(x - 8, y - 3, clBlack);
}

void draw_player_projectile(uint8_t x, uint8_t y)
{
    oled_set_pix(x, y + 2, clWhite);
    oled_set_pix(x, y + 1, clWhite);
    oled_set_pix(x, y, clWhite);
    oled_set_pix(x, y - 1, clWhite);
    oled_set_pix(x, y - 2, clWhite);
}

void clear_player_projectile(uint8_t x, uint8_t y)
{
    oled_set_pix(x, y + 2, clBlack);
    oled_set_pix(x, y + 1, clBlack);
    oled_set_pix(x, y, clBlack);
    oled_set_pix(x, y - 1, clBlack);
    oled_set_pix(x, y - 2, clBlack);
}

void draw_battlefield(entity *battlefield)
{
    for (uint8_t i = 0; i < entities_on_field; i++)
    {
        if (battlefield[i].iff_flag == 'e' && battlefield[i].entity_flag == 'p')
        {
            draw_enemy_projectile(battlefield[i].pos_x, battlefield[i].pos_y);
        }
        if (battlefield[i].iff_flag == 'e' && battlefield[i].entity_flag == 's')
        {
            draw_corvette(battlefield[i].pos_x, battlefield[i].pos_y);
        }
        if (battlefield[i].iff_flag == 'f' && battlefield[i].entity_flag == 'p')
        {
            draw_player_projectile(battlefield[i].pos_x, battlefield[i].pos_y);
        }
        if (battlefield[i].iff_flag == 'f' && battlefield[i].entity_flag == 's')
        {
            draw_player_ship(battlefield[i].pos_x, battlefield[i].pos_y);
        }
    }
}
