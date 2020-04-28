// No copyright. Vladislav Aleinik, 2019
#ifndef DONOV_SPACE_INVADERS_STM32_USART
#define DONOV_SPACE_INVADERS_STM32_USART

#include "stm32f0xx_ll_usart.h"
#include "stm32f0xx_ll_rcc.h"

//=============================================================================================
// CONFIGURING
//=============================================================================================

void USART_Config(void)
{
    /*
     * Setting UART pins
     */
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
    // USART1_TX
    LL_GPIO_SetPinMode   (GPIOA, LL_GPIO_PIN_9, LL_GPIO_MODE_ALTERNATE);
    LL_GPIO_SetAFPin_8_15(GPIOA, LL_GPIO_PIN_9, LL_GPIO_AF_1);
    LL_GPIO_SetPinSpeed  (GPIOA, LL_GPIO_PIN_9, LL_GPIO_SPEED_FREQ_HIGH);
    // USART1_RX
    // LL_GPIO_SetPinMode   (GPIOA, LL_GPIO_PIN_10, LL_GPIO_MODE_ALTERNATE);
    // LL_GPIO_SetAFPin_8_15(GPIOA, LL_GPIO_PIN_10, LL_GPIO_AF_1);
    // LL_GPIO_SetPinSpeed  (GPIOA, LL_GPIO_PIN_10, LL_GPIO_SPEED_FREQ_HIGH);
    /*
     * USART Set clock source
     */
    LL_APB1_GRP2_EnableClock(LL_APB1_GRP2_PERIPH_USART1);
    LL_RCC_SetUSARTClockSource(LL_RCC_USART1_CLKSOURCE_PCLK1);
    /*
     * USART Setting
     */
    LL_USART_SetTransferDirection(USART1, LL_USART_DIRECTION_TX);
    LL_USART_SetParity           (USART1, LL_USART_PARITY_EVEN);
    LL_USART_SetDataWidth        (USART1, LL_USART_DATAWIDTH_9B);
    LL_USART_SetStopBitsLength   (USART1, LL_USART_STOPBITS_1);
    LL_USART_SetTransferBitOrder (USART1, LL_USART_BITORDER_LSBFIRST);
    LL_USART_SetBaudRate         (USART1, SystemCoreClock,
                                  LL_USART_OVERSAMPLING_8, 480000);
    LL_USART_EnableIT_TXE(USART1);
    /*
     * USART turn on
     */
    LL_USART_Enable(USART1);
    while (!LL_USART_IsActiveFlag_TEACK(USART1));
    /*
     * Turn on NVIC interrupt line
     */
    NVIC_SetPriority(USART1_IRQn, 1);
    NVIC_EnableIRQ(USART1_IRQn);
    return;
}

//=============================================================================================
// USART TRANSMISSION
//=============================================================================================

// Circular buffer here:
static const uint8_t BUFFER_SIZE = 128;
static uint8_t USART_data[128];
static uint8_t USART_beg = 0;
static uint8_t USART_end = 0;

void USART1_IRQHandler()
{
    static int tick = 0;

    tick += 1;

    if (LL_USART_IsActiveFlag_TXE(USART1) && USART_end != USART_beg)
    {
        uint8_t byte = USART_data[USART_beg % BUFFER_SIZE];
        USART_beg++;

        LL_USART_TransmitData8(USART1, byte);
    }

    if (USART_end == USART_beg)
    {
      LL_USART_DisableIT_TXE(USART1);
    }

    return;
}

void USART_TransmitData(uint8_t byte)
{	
    // Yes, a spin-lock:
    volatile uint8_t cur_size;
    do
    {
      cur_size = USART_beg - USART_end;
    }
    while (cur_size == BUFFER_SIZE); 

    USART_data[USART_end % BUFFER_SIZE] = byte;
    USART_end++;

    LL_USART_EnableIT_TXE(USART1);
}

void USART_PushData()
{
  LL_USART_EnableIT_TXE(USART1);
}

#endif // DONOV_SPACE_INVADERS_STM32_USART