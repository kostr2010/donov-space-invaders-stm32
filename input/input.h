#ifndef __INPUT_H_INCLUDED__
#define __INPUT_H_INCLUDED__

// interrupts won't do here because they can't change context of the main (due to stacking /
// unstacking). thus, all interactions will be controlled by handlers, provided by user

// ====================
// BUTTON

#include "../device-drivers/button.h"

// ====================
// ENCODER

#include "../device-drivers/encoder.h"

#endif