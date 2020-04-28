// No Copyright. Vladislav Aleinik, 2020
#ifndef DONOV_SPACE_INVADERS_STM32_VGA_SCREEN_CONTROL
#define DONOV_SPACE_INVADERS_STM32_VGA_SCREEN_CONTROL

// Your UART output code:
static void put_to_uart_buffer(char* buf, unsigned size)
{
	for (unsigned i = 0; i < size; ++i)
	{
		USART_TransmitData(buf[i]);
	}	
}

// void vis_enemy_corvette(uint32_t x, uint32_t y)
#define ADDR_VIS_ENEMY_CORVETTE    	0x00002004
// void vis_enemy_projectile(uint32_t x, uint32_t y)
#define ADDR_VIS_ENEMY_PROJECTILE  	0x00002348
// void vis_player_ship(uint32_t x, uint32_t y)
#define ADDR_VIS_PLAYER_SHIP       	0x000023F8
// void vis_player_projectile(uint32_t x, uint32_t y)
#define ADDR_VIS_PLAYER_PROJECTILE 	0x00002854
// void vis_start_screen();
#define ADDR_VIS_START_SCREEN 		0x000028B8
// void vis_death_screen();
#define ADDR_VIS_DEATH_SCREEN 		0x000028BC
// void vis_clear();
#define ADDR_VIS_CLEAR 				0x00002C88
// void main();
#define MAIN                        0x00002CA4

static void pass_arguments(uint32_t* instructions, uint32_t x, uint32_t y)
{
	x = (x * 5)  / 4;
	y = (y * 15) / 8;

	// ADDI A0, ZERO, <x>
	// Pass x through A0 register:      funct3
	//                                    |
	//                    immediate rs1=0 v rd=A  opcode
	//                  iiiiiiiiiiiisssssfffdddddooooooo          
	instructions[0] = 0b00000000000000000000010100010011 | x << 20;

	// ADDI A1, ZERO, <y>
	// Pass y through A1 register:      funct3
	//                                    |
	//                    immediate rs1=0 v rd=B  opcode
	//                  iiiiiiiiiiiisssssfffdddddooooooo          
	instructions[1] = 0b00000000000000000000010110010011 | y << 20;
}

static void perform_jump(uint32_t* instructions, uint32_t addr)
{
	// LUI GP, <Upper Address>
	// Load ROM address into GP register:
	//                       immediate      rd=03 opcode
	//                  iiiiiiiiiiiiiiiiiiiidddddooooooo   
	instructions[0] = 0b00000000000000000000000110110111 | ((((addr & 0x00000800) << 1) + addr) & 0xFFFFF000);	

	// JALR RA, GP, <Lower Address>     funct3
	// Perform jump                       |
	//                    immediate rs=03 v rd=01 opcode
	//                  iiiiiiiiiiiisssssfffdddddooooooo   
	instructions[1] = 0b00000000000000011000000011100111 | ((addr & 0x00000FFF) << 20);
}

void VGA_RenderEnemyCorvette(uint32_t x, uint32_t y)
{
	uint32_t instructions[4];

	pass_arguments(instructions, x, y);
	perform_jump(&instructions[2], ADDR_VIS_ENEMY_CORVETTE);

	put_to_uart_buffer((char*) instructions, 16);
}

void VGA_RenderEnemyProjectile(uint32_t x, uint32_t y)
{
	uint32_t instructions[4];

	pass_arguments(instructions, x, y);
	perform_jump(&instructions[2], ADDR_VIS_ENEMY_PROJECTILE);

	put_to_uart_buffer((char*) instructions, 16);
}

void VGA_RenderPlayerShip(uint32_t x, uint32_t y)
{
	uint32_t instructions[4];

	pass_arguments(instructions, x, y);
	perform_jump(instructions + 2, ADDR_VIS_PLAYER_SHIP);

	put_to_uart_buffer((char*) instructions, 16);
}

void VGA_RenderPlayerProjectile(uint32_t x, uint32_t y)
{
	uint32_t instructions[4];

	pass_arguments(instructions, x, y);
	perform_jump(instructions + 2, ADDR_VIS_PLAYER_PROJECTILE);

	put_to_uart_buffer((char*) instructions, 16);
}

void VGA_RenderStartScreen()
{
	uint32_t instructions[2];

	perform_jump(instructions, ADDR_VIS_START_SCREEN);

	put_to_uart_buffer((char*) instructions, 8);
}

void VGA_RenderDeathScreen()
{
	uint32_t instructions[2];

	perform_jump(instructions, ADDR_VIS_START_SCREEN);

	put_to_uart_buffer((char*) instructions, 8);
}

void VGA_RenderClear()
{
	uint32_t instructions[2];

	perform_jump(instructions, ADDR_VIS_CLEAR);

	put_to_uart_buffer((char*) instructions, 8);
}

#undef ADDR_VIS_ENEMY_CORVETTE
#undef ADDR_VIS_ENEMY_PROJECTILE
#undef ADDR_VIS_PLAYER_SHIP
#undef ADDR_VIS_PLAYER_PROJECTILE
#undef ADDR_VIS_START_SCREEN
#undef ADDR_VIS_DEATH_SCREEN
#undef ADDR_VIS_CLEAR

#endif