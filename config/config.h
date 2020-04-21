#ifndef __CONFIG_H_INCLUDED__
#define __CONFIG_H_INCLUDED__

#include <stddef.h>

#include "../core/stm32f051x8.h"
#include "../plib/stm32f0xx_ll_bus.h"
#include "../plib/stm32f0xx_ll_exti.h"
#include "../plib/stm32f0xx_ll_gpio.h"
#include "../plib/stm32f0xx_ll_rcc.h"
#include "../plib/stm32f0xx_ll_system.h"
#include "../plib/stm32f0xx_ll_tim.h"

// ====================
// RCC (tacting)

void clocking_config(unsigned int flash_lat, unsigned int pll_div, unsigned int pll_mul,
                     unsigned int sysclk_div, unsigned int apb1_div) {
  // setting amount of waiting cycles for FLASH
  LL_FLASH_SetLatency(flash_lat);

  // enabling internal high-speed oscillator, thus setting it as the clocking source
  LL_RCC_HSI_Enable();
  while (LL_RCC_HSI_IsReady() != 1)
    ;

  // enabling phase-locked-loop in order to scale internal frequency
  LL_RCC_PLL_Enable();
  while (LL_RCC_PLL_IsReady() != 1)
    ;

  // the quatrz's frequency is 8 MHz, we need to set in to 48MHz in order for our periphery to work
  // correctly. so we set selector's prescale to / 2 and PLL's multiplier to 12, resulting in needed
  // 48 MHz
  LL_RCC_PLL_ConfigDomain_SYS(pll_div, pll_mul);

  // now, we need to set system clock to the PLL's frequency
  LL_RCC_SetSysClkSource(LL_RCC_SYS_CLKSOURCE_PLL);
  while (LL_RCC_GetSysClkSource() != LL_RCC_SYS_CLKSOURCE_STATUS_PLL)
    ;

  // as we need main bus (DMA, RCC, GPIO, USART, TIM, etc) to operate on the same 48MHz, we set
  // their prescalers to / 1
  LL_RCC_SetAHBPrescaler(sysclk_div);
  LL_RCC_SetAPB1Prescaler(apb1_div);
}

// ====================
// SYSTICK

void SysTickConfig() {
  // setting it up so it updates every .1s
  LL_APB1_GRP2_EnableClock(LL_APB1_GRP2_PERIPH_TIM1);
  LL_TIM_SetPrescaler(TIM1, 48 - 1);
  LL_TIM_SetCounterMode(TIM1, LL_TIM_COUNTERMODE_UP);
  LL_TIM_SetAutoReload(TIM1, 1000 - 1);

  // Enable interrupts
  LL_TIM_EnableIT_UPDATE(TIM1);

  LL_TIM_EnableCounter(TIM1);

  NVIC_EnableIRQ(TIM1_BRK_UP_TRG_COM_IRQn);
  NVIC_SetPriority(TIM1_BRK_UP_TRG_COM_IRQn, 1);
}

// ====================
// GPIO

#define PIN_0 LL_GPIO_PIN_0
#define PIN_1 LL_GPIO_PIN_1
#define PIN_2 LL_GPIO_PIN_2
#define PIN_3 LL_GPIO_PIN_3
#define PIN_4 LL_GPIO_PIN_4
#define PIN_5 LL_GPIO_PIN_5
#define PIN_6 LL_GPIO_PIN_6
#define PIN_7 LL_GPIO_PIN_7
#define PIN_8 LL_GPIO_PIN_8
#define PIN_9 LL_GPIO_PIN_9
#define PIN_10 LL_GPIO_PIN_10
#define PIN_11 LL_GPIO_PIN_11
#define PIN_12 LL_GPIO_PIN_12
#define PIN_13 LL_GPIO_PIN_13
#define PIN_14 LL_GPIO_PIN_14
#define PIN_15 LL_GPIO_PIN_15

int PortX_EnableClock(GPIO_TypeDef* port) {
  static char PORT_A_ENABLED_CLOCK = 0;
  static char PORT_B_ENABLED_CLOCK = 0;
  static char PORT_C_ENABLED_CLOCK = 0;
  static char PORT_D_ENABLED_CLOCK = 0;
  static char PORT_F_ENABLED_CLOCK = 0;

  if (PORT_A_ENABLED_CLOCK == 0 && port == GPIOA) {
    PORT_A_ENABLED_CLOCK++;
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);

  } else if (PORT_B_ENABLED_CLOCK == 0 && port == GPIOB) {
    PORT_B_ENABLED_CLOCK++;
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOB);

  } else if (PORT_C_ENABLED_CLOCK == 0 && port == GPIOC) {
    PORT_C_ENABLED_CLOCK++;
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);

  } else if (PORT_D_ENABLED_CLOCK == 0 && port == GPIOD) {
    PORT_D_ENABLED_CLOCK++;
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOD);

  } else if (PORT_F_ENABLED_CLOCK == 0 && port == GPIOF) {
    PORT_F_ENABLED_CLOCK++;
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOF);
  } else {
    return -1;
  }

  return 0;
}

// ====================
// TIMER

int TimerX_EnableClock(TIM_TypeDef* timer) {
  static char TIM2_ENABLED_CLOCK = 0;
  static char TIM3_ENABLED_CLOCK = 0;

  if (TIM2_ENABLED_CLOCK == 0 && timer == TIM2) {
    TIM2_ENABLED_CLOCK++;
    LL_APB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_TIM2);
  } else if (TIM3_ENABLED_CLOCK == 0 && timer == TIM3) {
    TIM3_ENABLED_CLOCK++;
    LL_AHB1_GRP1_EnableClock(LL_APB1_GRP1_PERIPH_TIM3);
  } else {
    return -1;
  }

  return 0;
}

// ====================
// INTERRUPT

// i couldn't find a way to enable all interrupts parametrically in a beautiful way, so this
// function is kind of fixed, needs to be updated every time interrupt is added / needed
void EXTI_config() {
  // TODO : find out about GRP1 && GRP2
  LL_APB1_GRP2_EnableClock(LL_APB1_GRP2_PERIPH_SYSCFG);

  // encoder
  LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTA, LL_SYSCFG_EXTI_LINE1);
  LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTA, LL_SYSCFG_EXTI_LINE0);
  LL_EXTI_EnableIT_0_31(LL_EXTI_LINE_1);
  LL_EXTI_EnableIT_0_31(LL_EXTI_LINE_0);

  LL_EXTI_EnableFallingTrig_0_31(LL_EXTI_LINE_1);
  LL_EXTI_EnableRisingTrig_0_31(LL_EXTI_LINE_1);

  LL_EXTI_EnableFallingTrig_0_31(LL_EXTI_LINE_0);
  LL_EXTI_EnableRisingTrig_0_31(LL_EXTI_LINE_0);

  NVIC_EnableIRQ(EXTI0_1_IRQn);
  NVIC_SetPriority(EXTI0_1_IRQn, 1);

  // // button
  // LL_SYSCFG_SetEXTISource(LL_SYSCFG_EXTI_PORTA, LL_SYSCFG_EXTI_LINE2);
  // LL_EXTI_EnableIT_0_31(LL_EXTI_LINE_2);

  // // LL_EXTI_EnableFallingTrig_0_31(LL_EXTI_LINE_2);
  // LL_EXTI_EnableRisingTrig_0_31(LL_EXTI_LINE_2);

  // NVIC_EnableIRQ(EXTI2_3_IRQn);
  // NVIC_SetPriority(EXTI2_3_IRQn, 0);
}

#endif