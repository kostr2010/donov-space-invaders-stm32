// No copyright. Vladislav Aleinik, 2019
#ifndef DONOV_SPACE_INVADERS_STM32_SEG7
#define DONOV_SPACE_INVADERS_STM32_SEG7

//=============================================================================================
// CONFIGURING
//=============================================================================================

void SEG7_Config()
{
    // Clocking GPIOC
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);

    // Changing GPIO modes
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_1 , LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_2 , LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_3 , LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_4 , LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_5 , LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_6 , LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_7 , LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_8 , LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_9 , LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_10, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_11, LL_GPIO_MODE_OUTPUT);
    LL_GPIO_SetPinMode(GPIOC, LL_GPIO_PIN_12, LL_GPIO_MODE_OUTPUT);
}

//=============================================================================================
// ABSTRACTING OUT OF 7-SEGMENT DISPLAY PINS
//=============================================================================================

// Pin Mapping:
#define A  LL_GPIO_PIN_11
#define B  LL_GPIO_PIN_7
#define C  LL_GPIO_PIN_4
#define D  LL_GPIO_PIN_2
#define E  LL_GPIO_PIN_1
#define F  LL_GPIO_PIN_10
#define G  LL_GPIO_PIN_5
#define DP LL_GPIO_PIN_3

#define POS0 LL_GPIO_PIN_6
#define POS1 LL_GPIO_PIN_8
#define POS2 LL_GPIO_PIN_9
#define POS3 LL_GPIO_PIN_12

const uint32_t PINS_USED = A|B|C|D|E|F|G|DP|POS0|POS1|POS2|POS3;

const uint32_t DIGITS[10] = 
{
	A|B|C|D|E|F,   // 0
    B|C,           // 1
    A|B|D|E|G,     // 2
    A|B|C|D|G,     // 3
    B|C|F|G,       // 4
    A|C|D|F|G,     // 5
    A|C|D|E|F|G,   // 6
    A|B|C,         // 7
    A|B|C|D|E|F|G, // 8
    A|B|C|D|F|G    // 9
};

const uint32_t POSITIONS[4] =
{
	POS1|POS2|POS3, // 0
	POS0|POS2|POS3, // 1
	POS0|POS1|POS3, // 2
	POS0|POS1|POS2	// 3
};

//=============================================================================================
// DISPLAY STATE
//=============================================================================================

static uint32_t SEG7_display = 0;
static unsigned SEG7_number = 1234;

//=============================================================================================
// ALTERING DISPLAY STATE
//=============================================================================================

void SEG7_SetNumberQuarter(unsigned tick)
{
	uint32_t divisors[4] = {1, 10, 100, 1000};

	unsigned quarter = tick % 4;
	unsigned divisor = divisors[quarter];

	SEG7_display = DIGITS[(SEG7_number / divisor) % 10] | POSITIONS[quarter];
}

void SEG7_SetNumber(unsigned toDisplay)
{
	SEG7_number = toDisplay;
}

unsigned SEG7_GetNumber()
{
    return SEG7_number;
}

//=============================================================================================
// WRITING TO MICROCONTROLLER
//=============================================================================================

void SEG7_PushDisplayStateToMC()
{
	uint32_t surroundingState = ~PINS_USED & LL_GPIO_ReadOutputPort(GPIOC);
	uint32_t toWrite = PINS_USED & SEG7_display;

	LL_GPIO_WriteOutputPort(GPIOC, surroundingState | toWrite);
}

#endif // DONOV_SPACE_INVADERS_STM32_SEG7