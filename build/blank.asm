
build/blank.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             0000084c  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000004  0800090c  0800090c  0001090c  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08000910  08000910  00010910  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08000918  08000918  00010918  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000430  20000000  0800091c  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000020  20000430  08000d4c  00020430  2**2  ALLOC
  7 ._user_heap_stack 00000600  20000450  08000d4c  00020450  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020430  2**0  CONTENTS, READONLY
  9 .debug_info       00000f06  00000000  00000000  00020458  2**0  CONTENTS, READONLY, DEBUGGING
 10 .debug_abbrev     0000039f  00000000  00000000  0002135e  2**0  CONTENTS, READONLY, DEBUGGING
 11 .debug_loc        00000684  00000000  00000000  000216fd  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_aranges    00000150  00000000  00000000  00021d81  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_ranges     00000120  00000000  00000000  00021ed1  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_line       000006e9  00000000  00000000  00021ff1  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_str        000007ac  00000000  00000000  000226da  2**0  CONTENTS, READONLY, DEBUGGING
 16 .comment          0000001d  00000000  00000000  00022e86  2**0  CONTENTS, READONLY
 17 .debug_frame      00000520  00000000  00000000  00022ea4  2**2  CONTENTS, READONLY, DEBUGGING

Disassembly of section .text:

080000c0 <__do_global_dtors_aux>:
 80000c0:	b510      	push	{r4, lr}
 80000c2:	4c06      	ldr	r4, [pc, #24]	; (80000dc <__do_global_dtors_aux+0x1c>)
 80000c4:	7823      	ldrb	r3, [r4, #0]
 80000c6:	2b00      	cmp	r3, #0
 80000c8:	d107      	bne.n	80000da <__do_global_dtors_aux+0x1a>
 80000ca:	4b05      	ldr	r3, [pc, #20]	; (80000e0 <__do_global_dtors_aux+0x20>)
 80000cc:	2b00      	cmp	r3, #0
 80000ce:	d002      	beq.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d0:	4804      	ldr	r0, [pc, #16]	; (80000e4 <__do_global_dtors_aux+0x24>)
 80000d2:	e000      	b.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d4:	bf00      	nop
 80000d6:	2301      	movs	r3, #1
 80000d8:	7023      	strb	r3, [r4, #0]
 80000da:	bd10      	pop	{r4, pc}
 80000dc:	20000430 	.word	0x20000430
 80000e0:	00000000 	.word	0x00000000
 80000e4:	080008f4 	.word	0x080008f4

080000e8 <frame_dummy>:
 80000e8:	4b04      	ldr	r3, [pc, #16]	; (80000fc <frame_dummy+0x14>)
 80000ea:	b510      	push	{r4, lr}
 80000ec:	2b00      	cmp	r3, #0
 80000ee:	d003      	beq.n	80000f8 <frame_dummy+0x10>
 80000f0:	4903      	ldr	r1, [pc, #12]	; (8000100 <frame_dummy+0x18>)
 80000f2:	4804      	ldr	r0, [pc, #16]	; (8000104 <frame_dummy+0x1c>)
 80000f4:	e000      	b.n	80000f8 <frame_dummy+0x10>
 80000f6:	bf00      	nop
 80000f8:	bd10      	pop	{r4, pc}
 80000fa:	46c0      	nop			; (mov r8, r8)
 80000fc:	00000000 	.word	0x00000000
 8000100:	20000434 	.word	0x20000434
 8000104:	080008f4 	.word	0x080008f4

08000108 <Reset_Handler>:
 8000108:	480d      	ldr	r0, [pc, #52]	; (8000140 <LoopForever+0x2>)
 800010a:	4685      	mov	sp, r0
 800010c:	480d      	ldr	r0, [pc, #52]	; (8000144 <LoopForever+0x6>)
 800010e:	490e      	ldr	r1, [pc, #56]	; (8000148 <LoopForever+0xa>)
 8000110:	4a0e      	ldr	r2, [pc, #56]	; (800014c <LoopForever+0xe>)
 8000112:	2300      	movs	r3, #0
 8000114:	e002      	b.n	800011c <LoopCopyDataInit>

08000116 <CopyDataInit>:
 8000116:	58d4      	ldr	r4, [r2, r3]
 8000118:	50c4      	str	r4, [r0, r3]
 800011a:	3304      	adds	r3, #4

0800011c <LoopCopyDataInit>:
 800011c:	18c4      	adds	r4, r0, r3
 800011e:	428c      	cmp	r4, r1
 8000120:	d3f9      	bcc.n	8000116 <CopyDataInit>
 8000122:	4a0b      	ldr	r2, [pc, #44]	; (8000150 <LoopForever+0x12>)
 8000124:	4c0b      	ldr	r4, [pc, #44]	; (8000154 <LoopForever+0x16>)
 8000126:	2300      	movs	r3, #0
 8000128:	e001      	b.n	800012e <LoopFillZerobss>

0800012a <FillZerobss>:
 800012a:	6013      	str	r3, [r2, #0]
 800012c:	3204      	adds	r2, #4

0800012e <LoopFillZerobss>:
 800012e:	42a2      	cmp	r2, r4
 8000130:	d3fb      	bcc.n	800012a <FillZerobss>
 8000132:	f000 fafb 	bl	800072c <SystemInit>
 8000136:	f000 fb6b 	bl	8000810 <__libc_init_array>
 800013a:	f000 fadb 	bl	80006f4 <main>

0800013e <LoopForever>:
 800013e:	e7fe      	b.n	800013e <LoopForever>
 8000140:	20002000 	.word	0x20002000
 8000144:	20000000 	.word	0x20000000
 8000148:	20000430 	.word	0x20000430
 800014c:	0800091c 	.word	0x0800091c
 8000150:	20000430 	.word	0x20000430
 8000154:	20000450 	.word	0x20000450

08000158 <ADC1_COMP_IRQHandler>:
 8000158:	e7fe      	b.n	8000158 <ADC1_COMP_IRQHandler>
	...

0800015c <NVIC_EnableIRQ>:
 800015c:	b580      	push	{r7, lr}
 800015e:	b082      	sub	sp, #8
 8000160:	af00      	add	r7, sp, #0
 8000162:	0002      	movs	r2, r0
 8000164:	1dfb      	adds	r3, r7, #7
 8000166:	701a      	strb	r2, [r3, #0]
 8000168:	1dfb      	adds	r3, r7, #7
 800016a:	781b      	ldrb	r3, [r3, #0]
 800016c:	001a      	movs	r2, r3
 800016e:	231f      	movs	r3, #31
 8000170:	401a      	ands	r2, r3
 8000172:	4b04      	ldr	r3, [pc, #16]	; (8000184 <NVIC_EnableIRQ+0x28>)
 8000174:	2101      	movs	r1, #1
 8000176:	4091      	lsls	r1, r2
 8000178:	000a      	movs	r2, r1
 800017a:	601a      	str	r2, [r3, #0]
 800017c:	46c0      	nop			; (mov r8, r8)
 800017e:	46bd      	mov	sp, r7
 8000180:	b002      	add	sp, #8
 8000182:	bd80      	pop	{r7, pc}
 8000184:	e000e100 	.word	0xe000e100

08000188 <NVIC_SetPriority>:
 8000188:	b590      	push	{r4, r7, lr}
 800018a:	b083      	sub	sp, #12
 800018c:	af00      	add	r7, sp, #0
 800018e:	0002      	movs	r2, r0
 8000190:	6039      	str	r1, [r7, #0]
 8000192:	1dfb      	adds	r3, r7, #7
 8000194:	701a      	strb	r2, [r3, #0]
 8000196:	1dfb      	adds	r3, r7, #7
 8000198:	781b      	ldrb	r3, [r3, #0]
 800019a:	2b7f      	cmp	r3, #127	; 0x7f
 800019c:	d932      	bls.n	8000204 <NVIC_SetPriority+0x7c>
 800019e:	4a2f      	ldr	r2, [pc, #188]	; (800025c <NVIC_SetPriority+0xd4>)
 80001a0:	1dfb      	adds	r3, r7, #7
 80001a2:	781b      	ldrb	r3, [r3, #0]
 80001a4:	0019      	movs	r1, r3
 80001a6:	230f      	movs	r3, #15
 80001a8:	400b      	ands	r3, r1
 80001aa:	3b08      	subs	r3, #8
 80001ac:	089b      	lsrs	r3, r3, #2
 80001ae:	3306      	adds	r3, #6
 80001b0:	009b      	lsls	r3, r3, #2
 80001b2:	18d3      	adds	r3, r2, r3
 80001b4:	3304      	adds	r3, #4
 80001b6:	681b      	ldr	r3, [r3, #0]
 80001b8:	1dfa      	adds	r2, r7, #7
 80001ba:	7812      	ldrb	r2, [r2, #0]
 80001bc:	0011      	movs	r1, r2
 80001be:	2203      	movs	r2, #3
 80001c0:	400a      	ands	r2, r1
 80001c2:	00d2      	lsls	r2, r2, #3
 80001c4:	21ff      	movs	r1, #255	; 0xff
 80001c6:	4091      	lsls	r1, r2
 80001c8:	000a      	movs	r2, r1
 80001ca:	43d2      	mvns	r2, r2
 80001cc:	401a      	ands	r2, r3
 80001ce:	0011      	movs	r1, r2
 80001d0:	683b      	ldr	r3, [r7, #0]
 80001d2:	019b      	lsls	r3, r3, #6
 80001d4:	22ff      	movs	r2, #255	; 0xff
 80001d6:	401a      	ands	r2, r3
 80001d8:	1dfb      	adds	r3, r7, #7
 80001da:	781b      	ldrb	r3, [r3, #0]
 80001dc:	0018      	movs	r0, r3
 80001de:	2303      	movs	r3, #3
 80001e0:	4003      	ands	r3, r0
 80001e2:	00db      	lsls	r3, r3, #3
 80001e4:	409a      	lsls	r2, r3
 80001e6:	481d      	ldr	r0, [pc, #116]	; (800025c <NVIC_SetPriority+0xd4>)
 80001e8:	1dfb      	adds	r3, r7, #7
 80001ea:	781b      	ldrb	r3, [r3, #0]
 80001ec:	001c      	movs	r4, r3
 80001ee:	230f      	movs	r3, #15
 80001f0:	4023      	ands	r3, r4
 80001f2:	3b08      	subs	r3, #8
 80001f4:	089b      	lsrs	r3, r3, #2
 80001f6:	430a      	orrs	r2, r1
 80001f8:	3306      	adds	r3, #6
 80001fa:	009b      	lsls	r3, r3, #2
 80001fc:	18c3      	adds	r3, r0, r3
 80001fe:	3304      	adds	r3, #4
 8000200:	601a      	str	r2, [r3, #0]
 8000202:	e027      	b.n	8000254 <NVIC_SetPriority+0xcc>
 8000204:	4a16      	ldr	r2, [pc, #88]	; (8000260 <NVIC_SetPriority+0xd8>)
 8000206:	1dfb      	adds	r3, r7, #7
 8000208:	781b      	ldrb	r3, [r3, #0]
 800020a:	b25b      	sxtb	r3, r3
 800020c:	089b      	lsrs	r3, r3, #2
 800020e:	33c0      	adds	r3, #192	; 0xc0
 8000210:	009b      	lsls	r3, r3, #2
 8000212:	589b      	ldr	r3, [r3, r2]
 8000214:	1dfa      	adds	r2, r7, #7
 8000216:	7812      	ldrb	r2, [r2, #0]
 8000218:	0011      	movs	r1, r2
 800021a:	2203      	movs	r2, #3
 800021c:	400a      	ands	r2, r1
 800021e:	00d2      	lsls	r2, r2, #3
 8000220:	21ff      	movs	r1, #255	; 0xff
 8000222:	4091      	lsls	r1, r2
 8000224:	000a      	movs	r2, r1
 8000226:	43d2      	mvns	r2, r2
 8000228:	401a      	ands	r2, r3
 800022a:	0011      	movs	r1, r2
 800022c:	683b      	ldr	r3, [r7, #0]
 800022e:	019b      	lsls	r3, r3, #6
 8000230:	22ff      	movs	r2, #255	; 0xff
 8000232:	401a      	ands	r2, r3
 8000234:	1dfb      	adds	r3, r7, #7
 8000236:	781b      	ldrb	r3, [r3, #0]
 8000238:	0018      	movs	r0, r3
 800023a:	2303      	movs	r3, #3
 800023c:	4003      	ands	r3, r0
 800023e:	00db      	lsls	r3, r3, #3
 8000240:	409a      	lsls	r2, r3
 8000242:	4807      	ldr	r0, [pc, #28]	; (8000260 <NVIC_SetPriority+0xd8>)
 8000244:	1dfb      	adds	r3, r7, #7
 8000246:	781b      	ldrb	r3, [r3, #0]
 8000248:	b25b      	sxtb	r3, r3
 800024a:	089b      	lsrs	r3, r3, #2
 800024c:	430a      	orrs	r2, r1
 800024e:	33c0      	adds	r3, #192	; 0xc0
 8000250:	009b      	lsls	r3, r3, #2
 8000252:	501a      	str	r2, [r3, r0]
 8000254:	46c0      	nop			; (mov r8, r8)
 8000256:	46bd      	mov	sp, r7
 8000258:	b003      	add	sp, #12
 800025a:	bd90      	pop	{r4, r7, pc}
 800025c:	e000ed00 	.word	0xe000ed00
 8000260:	e000e100 	.word	0xe000e100

08000264 <SysTick_Config>:
 8000264:	b580      	push	{r7, lr}
 8000266:	b082      	sub	sp, #8
 8000268:	af00      	add	r7, sp, #0
 800026a:	6078      	str	r0, [r7, #4]
 800026c:	687b      	ldr	r3, [r7, #4]
 800026e:	3b01      	subs	r3, #1
 8000270:	4a0c      	ldr	r2, [pc, #48]	; (80002a4 <SysTick_Config+0x40>)
 8000272:	4293      	cmp	r3, r2
 8000274:	d901      	bls.n	800027a <SysTick_Config+0x16>
 8000276:	2301      	movs	r3, #1
 8000278:	e010      	b.n	800029c <SysTick_Config+0x38>
 800027a:	4b0b      	ldr	r3, [pc, #44]	; (80002a8 <SysTick_Config+0x44>)
 800027c:	687a      	ldr	r2, [r7, #4]
 800027e:	3a01      	subs	r2, #1
 8000280:	605a      	str	r2, [r3, #4]
 8000282:	2301      	movs	r3, #1
 8000284:	425b      	negs	r3, r3
 8000286:	2103      	movs	r1, #3
 8000288:	0018      	movs	r0, r3
 800028a:	f7ff ff7d 	bl	8000188 <NVIC_SetPriority>
 800028e:	4b06      	ldr	r3, [pc, #24]	; (80002a8 <SysTick_Config+0x44>)
 8000290:	2200      	movs	r2, #0
 8000292:	609a      	str	r2, [r3, #8]
 8000294:	4b04      	ldr	r3, [pc, #16]	; (80002a8 <SysTick_Config+0x44>)
 8000296:	2207      	movs	r2, #7
 8000298:	601a      	str	r2, [r3, #0]
 800029a:	2300      	movs	r3, #0
 800029c:	0018      	movs	r0, r3
 800029e:	46bd      	mov	sp, r7
 80002a0:	b002      	add	sp, #8
 80002a2:	bd80      	pop	{r7, pc}
 80002a4:	00ffffff 	.word	0x00ffffff
 80002a8:	e000e010 	.word	0xe000e010

080002ac <LL_AHB1_GRP1_EnableClock>:
 80002ac:	b580      	push	{r7, lr}
 80002ae:	b084      	sub	sp, #16
 80002b0:	af00      	add	r7, sp, #0
 80002b2:	6078      	str	r0, [r7, #4]
 80002b4:	4b07      	ldr	r3, [pc, #28]	; (80002d4 <LL_AHB1_GRP1_EnableClock+0x28>)
 80002b6:	6959      	ldr	r1, [r3, #20]
 80002b8:	4b06      	ldr	r3, [pc, #24]	; (80002d4 <LL_AHB1_GRP1_EnableClock+0x28>)
 80002ba:	687a      	ldr	r2, [r7, #4]
 80002bc:	430a      	orrs	r2, r1
 80002be:	615a      	str	r2, [r3, #20]
 80002c0:	4b04      	ldr	r3, [pc, #16]	; (80002d4 <LL_AHB1_GRP1_EnableClock+0x28>)
 80002c2:	695b      	ldr	r3, [r3, #20]
 80002c4:	687a      	ldr	r2, [r7, #4]
 80002c6:	4013      	ands	r3, r2
 80002c8:	60fb      	str	r3, [r7, #12]
 80002ca:	68fb      	ldr	r3, [r7, #12]
 80002cc:	46c0      	nop			; (mov r8, r8)
 80002ce:	46bd      	mov	sp, r7
 80002d0:	b004      	add	sp, #16
 80002d2:	bd80      	pop	{r7, pc}
 80002d4:	40021000 	.word	0x40021000

080002d8 <LL_APB1_GRP2_EnableClock>:
 80002d8:	b580      	push	{r7, lr}
 80002da:	b084      	sub	sp, #16
 80002dc:	af00      	add	r7, sp, #0
 80002de:	6078      	str	r0, [r7, #4]
 80002e0:	4b07      	ldr	r3, [pc, #28]	; (8000300 <LL_APB1_GRP2_EnableClock+0x28>)
 80002e2:	6999      	ldr	r1, [r3, #24]
 80002e4:	4b06      	ldr	r3, [pc, #24]	; (8000300 <LL_APB1_GRP2_EnableClock+0x28>)
 80002e6:	687a      	ldr	r2, [r7, #4]
 80002e8:	430a      	orrs	r2, r1
 80002ea:	619a      	str	r2, [r3, #24]
 80002ec:	4b04      	ldr	r3, [pc, #16]	; (8000300 <LL_APB1_GRP2_EnableClock+0x28>)
 80002ee:	699b      	ldr	r3, [r3, #24]
 80002f0:	687a      	ldr	r2, [r7, #4]
 80002f2:	4013      	ands	r3, r2
 80002f4:	60fb      	str	r3, [r7, #12]
 80002f6:	68fb      	ldr	r3, [r7, #12]
 80002f8:	46c0      	nop			; (mov r8, r8)
 80002fa:	46bd      	mov	sp, r7
 80002fc:	b004      	add	sp, #16
 80002fe:	bd80      	pop	{r7, pc}
 8000300:	40021000 	.word	0x40021000

08000304 <LL_GPIO_SetPinMode>:
 8000304:	b580      	push	{r7, lr}
 8000306:	b084      	sub	sp, #16
 8000308:	af00      	add	r7, sp, #0
 800030a:	60f8      	str	r0, [r7, #12]
 800030c:	60b9      	str	r1, [r7, #8]
 800030e:	607a      	str	r2, [r7, #4]
 8000310:	68fb      	ldr	r3, [r7, #12]
 8000312:	6819      	ldr	r1, [r3, #0]
 8000314:	68bb      	ldr	r3, [r7, #8]
 8000316:	68ba      	ldr	r2, [r7, #8]
 8000318:	435a      	muls	r2, r3
 800031a:	0013      	movs	r3, r2
 800031c:	005b      	lsls	r3, r3, #1
 800031e:	189b      	adds	r3, r3, r2
 8000320:	43db      	mvns	r3, r3
 8000322:	400b      	ands	r3, r1
 8000324:	001a      	movs	r2, r3
 8000326:	68bb      	ldr	r3, [r7, #8]
 8000328:	68b9      	ldr	r1, [r7, #8]
 800032a:	434b      	muls	r3, r1
 800032c:	6879      	ldr	r1, [r7, #4]
 800032e:	434b      	muls	r3, r1
 8000330:	431a      	orrs	r2, r3
 8000332:	68fb      	ldr	r3, [r7, #12]
 8000334:	601a      	str	r2, [r3, #0]
 8000336:	46c0      	nop			; (mov r8, r8)
 8000338:	46bd      	mov	sp, r7
 800033a:	b004      	add	sp, #16
 800033c:	bd80      	pop	{r7, pc}

0800033e <LL_GPIO_SetPinPull>:
 800033e:	b580      	push	{r7, lr}
 8000340:	b084      	sub	sp, #16
 8000342:	af00      	add	r7, sp, #0
 8000344:	60f8      	str	r0, [r7, #12]
 8000346:	60b9      	str	r1, [r7, #8]
 8000348:	607a      	str	r2, [r7, #4]
 800034a:	68fb      	ldr	r3, [r7, #12]
 800034c:	68d9      	ldr	r1, [r3, #12]
 800034e:	68bb      	ldr	r3, [r7, #8]
 8000350:	68ba      	ldr	r2, [r7, #8]
 8000352:	435a      	muls	r2, r3
 8000354:	0013      	movs	r3, r2
 8000356:	005b      	lsls	r3, r3, #1
 8000358:	189b      	adds	r3, r3, r2
 800035a:	43db      	mvns	r3, r3
 800035c:	400b      	ands	r3, r1
 800035e:	001a      	movs	r2, r3
 8000360:	68bb      	ldr	r3, [r7, #8]
 8000362:	68b9      	ldr	r1, [r7, #8]
 8000364:	434b      	muls	r3, r1
 8000366:	6879      	ldr	r1, [r7, #4]
 8000368:	434b      	muls	r3, r1
 800036a:	431a      	orrs	r2, r3
 800036c:	68fb      	ldr	r3, [r7, #12]
 800036e:	60da      	str	r2, [r3, #12]
 8000370:	46c0      	nop			; (mov r8, r8)
 8000372:	46bd      	mov	sp, r7
 8000374:	b004      	add	sp, #16
 8000376:	bd80      	pop	{r7, pc}

08000378 <LL_GPIO_TogglePin>:
 8000378:	b580      	push	{r7, lr}
 800037a:	b082      	sub	sp, #8
 800037c:	af00      	add	r7, sp, #0
 800037e:	6078      	str	r0, [r7, #4]
 8000380:	6039      	str	r1, [r7, #0]
 8000382:	687b      	ldr	r3, [r7, #4]
 8000384:	695a      	ldr	r2, [r3, #20]
 8000386:	683b      	ldr	r3, [r7, #0]
 8000388:	405a      	eors	r2, r3
 800038a:	687b      	ldr	r3, [r7, #4]
 800038c:	615a      	str	r2, [r3, #20]
 800038e:	46c0      	nop			; (mov r8, r8)
 8000390:	46bd      	mov	sp, r7
 8000392:	b002      	add	sp, #8
 8000394:	bd80      	pop	{r7, pc}
	...

08000398 <LL_RCC_HSI_Enable>:
 8000398:	b580      	push	{r7, lr}
 800039a:	af00      	add	r7, sp, #0
 800039c:	4b04      	ldr	r3, [pc, #16]	; (80003b0 <LL_RCC_HSI_Enable+0x18>)
 800039e:	681a      	ldr	r2, [r3, #0]
 80003a0:	4b03      	ldr	r3, [pc, #12]	; (80003b0 <LL_RCC_HSI_Enable+0x18>)
 80003a2:	2101      	movs	r1, #1
 80003a4:	430a      	orrs	r2, r1
 80003a6:	601a      	str	r2, [r3, #0]
 80003a8:	46c0      	nop			; (mov r8, r8)
 80003aa:	46bd      	mov	sp, r7
 80003ac:	bd80      	pop	{r7, pc}
 80003ae:	46c0      	nop			; (mov r8, r8)
 80003b0:	40021000 	.word	0x40021000

080003b4 <LL_RCC_HSI_IsReady>:
 80003b4:	b580      	push	{r7, lr}
 80003b6:	af00      	add	r7, sp, #0
 80003b8:	4b05      	ldr	r3, [pc, #20]	; (80003d0 <LL_RCC_HSI_IsReady+0x1c>)
 80003ba:	681b      	ldr	r3, [r3, #0]
 80003bc:	2202      	movs	r2, #2
 80003be:	4013      	ands	r3, r2
 80003c0:	3b02      	subs	r3, #2
 80003c2:	425a      	negs	r2, r3
 80003c4:	4153      	adcs	r3, r2
 80003c6:	b2db      	uxtb	r3, r3
 80003c8:	0018      	movs	r0, r3
 80003ca:	46bd      	mov	sp, r7
 80003cc:	bd80      	pop	{r7, pc}
 80003ce:	46c0      	nop			; (mov r8, r8)
 80003d0:	40021000 	.word	0x40021000

080003d4 <LL_RCC_SetSysClkSource>:
 80003d4:	b580      	push	{r7, lr}
 80003d6:	b082      	sub	sp, #8
 80003d8:	af00      	add	r7, sp, #0
 80003da:	6078      	str	r0, [r7, #4]
 80003dc:	4b06      	ldr	r3, [pc, #24]	; (80003f8 <LL_RCC_SetSysClkSource+0x24>)
 80003de:	685b      	ldr	r3, [r3, #4]
 80003e0:	2203      	movs	r2, #3
 80003e2:	4393      	bics	r3, r2
 80003e4:	0019      	movs	r1, r3
 80003e6:	4b04      	ldr	r3, [pc, #16]	; (80003f8 <LL_RCC_SetSysClkSource+0x24>)
 80003e8:	687a      	ldr	r2, [r7, #4]
 80003ea:	430a      	orrs	r2, r1
 80003ec:	605a      	str	r2, [r3, #4]
 80003ee:	46c0      	nop			; (mov r8, r8)
 80003f0:	46bd      	mov	sp, r7
 80003f2:	b002      	add	sp, #8
 80003f4:	bd80      	pop	{r7, pc}
 80003f6:	46c0      	nop			; (mov r8, r8)
 80003f8:	40021000 	.word	0x40021000

080003fc <LL_RCC_GetSysClkSource>:
 80003fc:	b580      	push	{r7, lr}
 80003fe:	af00      	add	r7, sp, #0
 8000400:	4b03      	ldr	r3, [pc, #12]	; (8000410 <LL_RCC_GetSysClkSource+0x14>)
 8000402:	685b      	ldr	r3, [r3, #4]
 8000404:	220c      	movs	r2, #12
 8000406:	4013      	ands	r3, r2
 8000408:	0018      	movs	r0, r3
 800040a:	46bd      	mov	sp, r7
 800040c:	bd80      	pop	{r7, pc}
 800040e:	46c0      	nop			; (mov r8, r8)
 8000410:	40021000 	.word	0x40021000

08000414 <LL_RCC_SetAHBPrescaler>:
 8000414:	b580      	push	{r7, lr}
 8000416:	b082      	sub	sp, #8
 8000418:	af00      	add	r7, sp, #0
 800041a:	6078      	str	r0, [r7, #4]
 800041c:	4b06      	ldr	r3, [pc, #24]	; (8000438 <LL_RCC_SetAHBPrescaler+0x24>)
 800041e:	685b      	ldr	r3, [r3, #4]
 8000420:	22f0      	movs	r2, #240	; 0xf0
 8000422:	4393      	bics	r3, r2
 8000424:	0019      	movs	r1, r3
 8000426:	4b04      	ldr	r3, [pc, #16]	; (8000438 <LL_RCC_SetAHBPrescaler+0x24>)
 8000428:	687a      	ldr	r2, [r7, #4]
 800042a:	430a      	orrs	r2, r1
 800042c:	605a      	str	r2, [r3, #4]
 800042e:	46c0      	nop			; (mov r8, r8)
 8000430:	46bd      	mov	sp, r7
 8000432:	b002      	add	sp, #8
 8000434:	bd80      	pop	{r7, pc}
 8000436:	46c0      	nop			; (mov r8, r8)
 8000438:	40021000 	.word	0x40021000

0800043c <LL_RCC_SetAPB1Prescaler>:
 800043c:	b580      	push	{r7, lr}
 800043e:	b082      	sub	sp, #8
 8000440:	af00      	add	r7, sp, #0
 8000442:	6078      	str	r0, [r7, #4]
 8000444:	4b06      	ldr	r3, [pc, #24]	; (8000460 <LL_RCC_SetAPB1Prescaler+0x24>)
 8000446:	685b      	ldr	r3, [r3, #4]
 8000448:	4a06      	ldr	r2, [pc, #24]	; (8000464 <LL_RCC_SetAPB1Prescaler+0x28>)
 800044a:	4013      	ands	r3, r2
 800044c:	0019      	movs	r1, r3
 800044e:	4b04      	ldr	r3, [pc, #16]	; (8000460 <LL_RCC_SetAPB1Prescaler+0x24>)
 8000450:	687a      	ldr	r2, [r7, #4]
 8000452:	430a      	orrs	r2, r1
 8000454:	605a      	str	r2, [r3, #4]
 8000456:	46c0      	nop			; (mov r8, r8)
 8000458:	46bd      	mov	sp, r7
 800045a:	b002      	add	sp, #8
 800045c:	bd80      	pop	{r7, pc}
 800045e:	46c0      	nop			; (mov r8, r8)
 8000460:	40021000 	.word	0x40021000
 8000464:	fffff8ff 	.word	0xfffff8ff

08000468 <LL_RCC_PLL_Enable>:
 8000468:	b580      	push	{r7, lr}
 800046a:	af00      	add	r7, sp, #0
 800046c:	4b04      	ldr	r3, [pc, #16]	; (8000480 <LL_RCC_PLL_Enable+0x18>)
 800046e:	681a      	ldr	r2, [r3, #0]
 8000470:	4b03      	ldr	r3, [pc, #12]	; (8000480 <LL_RCC_PLL_Enable+0x18>)
 8000472:	2180      	movs	r1, #128	; 0x80
 8000474:	0449      	lsls	r1, r1, #17
 8000476:	430a      	orrs	r2, r1
 8000478:	601a      	str	r2, [r3, #0]
 800047a:	46c0      	nop			; (mov r8, r8)
 800047c:	46bd      	mov	sp, r7
 800047e:	bd80      	pop	{r7, pc}
 8000480:	40021000 	.word	0x40021000

08000484 <LL_RCC_PLL_IsReady>:
 8000484:	b580      	push	{r7, lr}
 8000486:	af00      	add	r7, sp, #0
 8000488:	4b07      	ldr	r3, [pc, #28]	; (80004a8 <LL_RCC_PLL_IsReady+0x24>)
 800048a:	681a      	ldr	r2, [r3, #0]
 800048c:	2380      	movs	r3, #128	; 0x80
 800048e:	049b      	lsls	r3, r3, #18
 8000490:	4013      	ands	r3, r2
 8000492:	22fe      	movs	r2, #254	; 0xfe
 8000494:	0612      	lsls	r2, r2, #24
 8000496:	4694      	mov	ip, r2
 8000498:	4463      	add	r3, ip
 800049a:	425a      	negs	r2, r3
 800049c:	4153      	adcs	r3, r2
 800049e:	b2db      	uxtb	r3, r3
 80004a0:	0018      	movs	r0, r3
 80004a2:	46bd      	mov	sp, r7
 80004a4:	bd80      	pop	{r7, pc}
 80004a6:	46c0      	nop			; (mov r8, r8)
 80004a8:	40021000 	.word	0x40021000

080004ac <LL_RCC_PLL_ConfigDomain_SYS>:
 80004ac:	b580      	push	{r7, lr}
 80004ae:	b082      	sub	sp, #8
 80004b0:	af00      	add	r7, sp, #0
 80004b2:	6078      	str	r0, [r7, #4]
 80004b4:	6039      	str	r1, [r7, #0]
 80004b6:	4b0e      	ldr	r3, [pc, #56]	; (80004f0 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80004b8:	685b      	ldr	r3, [r3, #4]
 80004ba:	4a0e      	ldr	r2, [pc, #56]	; (80004f4 <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 80004bc:	4013      	ands	r3, r2
 80004be:	0019      	movs	r1, r3
 80004c0:	687a      	ldr	r2, [r7, #4]
 80004c2:	2380      	movs	r3, #128	; 0x80
 80004c4:	025b      	lsls	r3, r3, #9
 80004c6:	401a      	ands	r2, r3
 80004c8:	683b      	ldr	r3, [r7, #0]
 80004ca:	431a      	orrs	r2, r3
 80004cc:	4b08      	ldr	r3, [pc, #32]	; (80004f0 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80004ce:	430a      	orrs	r2, r1
 80004d0:	605a      	str	r2, [r3, #4]
 80004d2:	4b07      	ldr	r3, [pc, #28]	; (80004f0 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80004d4:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80004d6:	220f      	movs	r2, #15
 80004d8:	4393      	bics	r3, r2
 80004da:	0019      	movs	r1, r3
 80004dc:	687b      	ldr	r3, [r7, #4]
 80004de:	220f      	movs	r2, #15
 80004e0:	401a      	ands	r2, r3
 80004e2:	4b03      	ldr	r3, [pc, #12]	; (80004f0 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80004e4:	430a      	orrs	r2, r1
 80004e6:	62da      	str	r2, [r3, #44]	; 0x2c
 80004e8:	46c0      	nop			; (mov r8, r8)
 80004ea:	46bd      	mov	sp, r7
 80004ec:	b002      	add	sp, #8
 80004ee:	bd80      	pop	{r7, pc}
 80004f0:	40021000 	.word	0x40021000
 80004f4:	ffc2ffff 	.word	0xffc2ffff

080004f8 <LL_SYSCFG_SetEXTISource>:
 80004f8:	b590      	push	{r4, r7, lr}
 80004fa:	b083      	sub	sp, #12
 80004fc:	af00      	add	r7, sp, #0
 80004fe:	6078      	str	r0, [r7, #4]
 8000500:	6039      	str	r1, [r7, #0]
 8000502:	4a0f      	ldr	r2, [pc, #60]	; (8000540 <LL_SYSCFG_SetEXTISource+0x48>)
 8000504:	683b      	ldr	r3, [r7, #0]
 8000506:	21ff      	movs	r1, #255	; 0xff
 8000508:	400b      	ands	r3, r1
 800050a:	3302      	adds	r3, #2
 800050c:	009b      	lsls	r3, r3, #2
 800050e:	589b      	ldr	r3, [r3, r2]
 8000510:	683a      	ldr	r2, [r7, #0]
 8000512:	0c12      	lsrs	r2, r2, #16
 8000514:	210f      	movs	r1, #15
 8000516:	4091      	lsls	r1, r2
 8000518:	000a      	movs	r2, r1
 800051a:	43d2      	mvns	r2, r2
 800051c:	401a      	ands	r2, r3
 800051e:	0011      	movs	r1, r2
 8000520:	683b      	ldr	r3, [r7, #0]
 8000522:	0c1b      	lsrs	r3, r3, #16
 8000524:	687a      	ldr	r2, [r7, #4]
 8000526:	409a      	lsls	r2, r3
 8000528:	4805      	ldr	r0, [pc, #20]	; (8000540 <LL_SYSCFG_SetEXTISource+0x48>)
 800052a:	683b      	ldr	r3, [r7, #0]
 800052c:	24ff      	movs	r4, #255	; 0xff
 800052e:	4023      	ands	r3, r4
 8000530:	430a      	orrs	r2, r1
 8000532:	3302      	adds	r3, #2
 8000534:	009b      	lsls	r3, r3, #2
 8000536:	501a      	str	r2, [r3, r0]
 8000538:	46c0      	nop			; (mov r8, r8)
 800053a:	46bd      	mov	sp, r7
 800053c:	b003      	add	sp, #12
 800053e:	bd90      	pop	{r4, r7, pc}
 8000540:	40010000 	.word	0x40010000

08000544 <LL_FLASH_SetLatency>:
 8000544:	b580      	push	{r7, lr}
 8000546:	b082      	sub	sp, #8
 8000548:	af00      	add	r7, sp, #0
 800054a:	6078      	str	r0, [r7, #4]
 800054c:	4b06      	ldr	r3, [pc, #24]	; (8000568 <LL_FLASH_SetLatency+0x24>)
 800054e:	681b      	ldr	r3, [r3, #0]
 8000550:	2201      	movs	r2, #1
 8000552:	4393      	bics	r3, r2
 8000554:	0019      	movs	r1, r3
 8000556:	4b04      	ldr	r3, [pc, #16]	; (8000568 <LL_FLASH_SetLatency+0x24>)
 8000558:	687a      	ldr	r2, [r7, #4]
 800055a:	430a      	orrs	r2, r1
 800055c:	601a      	str	r2, [r3, #0]
 800055e:	46c0      	nop			; (mov r8, r8)
 8000560:	46bd      	mov	sp, r7
 8000562:	b002      	add	sp, #8
 8000564:	bd80      	pop	{r7, pc}
 8000566:	46c0      	nop			; (mov r8, r8)
 8000568:	40022000 	.word	0x40022000

0800056c <LL_EXTI_EnableIT_0_31>:
 800056c:	b580      	push	{r7, lr}
 800056e:	b082      	sub	sp, #8
 8000570:	af00      	add	r7, sp, #0
 8000572:	6078      	str	r0, [r7, #4]
 8000574:	4b04      	ldr	r3, [pc, #16]	; (8000588 <LL_EXTI_EnableIT_0_31+0x1c>)
 8000576:	6819      	ldr	r1, [r3, #0]
 8000578:	4b03      	ldr	r3, [pc, #12]	; (8000588 <LL_EXTI_EnableIT_0_31+0x1c>)
 800057a:	687a      	ldr	r2, [r7, #4]
 800057c:	430a      	orrs	r2, r1
 800057e:	601a      	str	r2, [r3, #0]
 8000580:	46c0      	nop			; (mov r8, r8)
 8000582:	46bd      	mov	sp, r7
 8000584:	b002      	add	sp, #8
 8000586:	bd80      	pop	{r7, pc}
 8000588:	40010400 	.word	0x40010400

0800058c <LL_EXTI_EnableFallingTrig_0_31>:
 800058c:	b580      	push	{r7, lr}
 800058e:	b082      	sub	sp, #8
 8000590:	af00      	add	r7, sp, #0
 8000592:	6078      	str	r0, [r7, #4]
 8000594:	4b04      	ldr	r3, [pc, #16]	; (80005a8 <LL_EXTI_EnableFallingTrig_0_31+0x1c>)
 8000596:	68d9      	ldr	r1, [r3, #12]
 8000598:	4b03      	ldr	r3, [pc, #12]	; (80005a8 <LL_EXTI_EnableFallingTrig_0_31+0x1c>)
 800059a:	687a      	ldr	r2, [r7, #4]
 800059c:	430a      	orrs	r2, r1
 800059e:	60da      	str	r2, [r3, #12]
 80005a0:	46c0      	nop			; (mov r8, r8)
 80005a2:	46bd      	mov	sp, r7
 80005a4:	b002      	add	sp, #8
 80005a6:	bd80      	pop	{r7, pc}
 80005a8:	40010400 	.word	0x40010400

080005ac <LL_EXTI_ClearFlag_0_31>:
 80005ac:	b580      	push	{r7, lr}
 80005ae:	b082      	sub	sp, #8
 80005b0:	af00      	add	r7, sp, #0
 80005b2:	6078      	str	r0, [r7, #4]
 80005b4:	4b03      	ldr	r3, [pc, #12]	; (80005c4 <LL_EXTI_ClearFlag_0_31+0x18>)
 80005b6:	687a      	ldr	r2, [r7, #4]
 80005b8:	615a      	str	r2, [r3, #20]
 80005ba:	46c0      	nop			; (mov r8, r8)
 80005bc:	46bd      	mov	sp, r7
 80005be:	b002      	add	sp, #8
 80005c0:	bd80      	pop	{r7, pc}
 80005c2:	46c0      	nop			; (mov r8, r8)
 80005c4:	40010400 	.word	0x40010400

080005c8 <rcc_init>:
 80005c8:	b580      	push	{r7, lr}
 80005ca:	af00      	add	r7, sp, #0
 80005cc:	2001      	movs	r0, #1
 80005ce:	f7ff ffb9 	bl	8000544 <LL_FLASH_SetLatency>
 80005d2:	f7ff fee1 	bl	8000398 <LL_RCC_HSI_Enable>
 80005d6:	46c0      	nop			; (mov r8, r8)
 80005d8:	f7ff feec 	bl	80003b4 <LL_RCC_HSI_IsReady>
 80005dc:	0003      	movs	r3, r0
 80005de:	2b01      	cmp	r3, #1
 80005e0:	d1fa      	bne.n	80005d8 <rcc_init+0x10>
 80005e2:	23a0      	movs	r3, #160	; 0xa0
 80005e4:	039b      	lsls	r3, r3, #14
 80005e6:	0019      	movs	r1, r3
 80005e8:	2000      	movs	r0, #0
 80005ea:	f7ff ff5f 	bl	80004ac <LL_RCC_PLL_ConfigDomain_SYS>
 80005ee:	f7ff ff3b 	bl	8000468 <LL_RCC_PLL_Enable>
 80005f2:	46c0      	nop			; (mov r8, r8)
 80005f4:	f7ff ff46 	bl	8000484 <LL_RCC_PLL_IsReady>
 80005f8:	0003      	movs	r3, r0
 80005fa:	2b01      	cmp	r3, #1
 80005fc:	d1fa      	bne.n	80005f4 <rcc_init+0x2c>
 80005fe:	2000      	movs	r0, #0
 8000600:	f7ff ff08 	bl	8000414 <LL_RCC_SetAHBPrescaler>
 8000604:	2002      	movs	r0, #2
 8000606:	f7ff fee5 	bl	80003d4 <LL_RCC_SetSysClkSource>
 800060a:	46c0      	nop			; (mov r8, r8)
 800060c:	f7ff fef6 	bl	80003fc <LL_RCC_GetSysClkSource>
 8000610:	0003      	movs	r3, r0
 8000612:	2b08      	cmp	r3, #8
 8000614:	d1fa      	bne.n	800060c <rcc_init+0x44>
 8000616:	2000      	movs	r0, #0
 8000618:	f7ff ff10 	bl	800043c <LL_RCC_SetAPB1Prescaler>
 800061c:	4b04      	ldr	r3, [pc, #16]	; (8000630 <rcc_init+0x68>)
 800061e:	0018      	movs	r0, r3
 8000620:	f7ff fe20 	bl	8000264 <SysTick_Config>
 8000624:	4b03      	ldr	r3, [pc, #12]	; (8000634 <rcc_init+0x6c>)
 8000626:	4a04      	ldr	r2, [pc, #16]	; (8000638 <rcc_init+0x70>)
 8000628:	601a      	str	r2, [r3, #0]
 800062a:	46c0      	nop			; (mov r8, r8)
 800062c:	46bd      	mov	sp, r7
 800062e:	bd80      	pop	{r7, pc}
 8000630:	0000bb80 	.word	0x0000bb80
 8000634:	20000000 	.word	0x20000000
 8000638:	02dc6c00 	.word	0x02dc6c00

0800063c <exti_init>:
 800063c:	b580      	push	{r7, lr}
 800063e:	af00      	add	r7, sp, #0
 8000640:	2380      	movs	r3, #128	; 0x80
 8000642:	029b      	lsls	r3, r3, #10
 8000644:	0018      	movs	r0, r3
 8000646:	f7ff fe31 	bl	80002ac <LL_AHB1_GRP1_EnableClock>
 800064a:	2390      	movs	r3, #144	; 0x90
 800064c:	05db      	lsls	r3, r3, #23
 800064e:	2200      	movs	r2, #0
 8000650:	2101      	movs	r1, #1
 8000652:	0018      	movs	r0, r3
 8000654:	f7ff fe56 	bl	8000304 <LL_GPIO_SetPinMode>
 8000658:	2390      	movs	r3, #144	; 0x90
 800065a:	05db      	lsls	r3, r3, #23
 800065c:	2200      	movs	r2, #0
 800065e:	2101      	movs	r1, #1
 8000660:	0018      	movs	r0, r3
 8000662:	f7ff fe6c 	bl	800033e <LL_GPIO_SetPinPull>
 8000666:	2001      	movs	r0, #1
 8000668:	f7ff fe36 	bl	80002d8 <LL_APB1_GRP2_EnableClock>
 800066c:	2100      	movs	r1, #0
 800066e:	2000      	movs	r0, #0
 8000670:	f7ff ff42 	bl	80004f8 <LL_SYSCFG_SetEXTISource>
 8000674:	2001      	movs	r0, #1
 8000676:	f7ff ff79 	bl	800056c <LL_EXTI_EnableIT_0_31>
 800067a:	2001      	movs	r0, #1
 800067c:	f7ff ff86 	bl	800058c <LL_EXTI_EnableFallingTrig_0_31>
 8000680:	2005      	movs	r0, #5
 8000682:	f7ff fd6b 	bl	800015c <NVIC_EnableIRQ>
 8000686:	2100      	movs	r1, #0
 8000688:	2005      	movs	r0, #5
 800068a:	f7ff fd7d 	bl	8000188 <NVIC_SetPriority>
 800068e:	46c0      	nop			; (mov r8, r8)
 8000690:	46bd      	mov	sp, r7
 8000692:	bd80      	pop	{r7, pc}

08000694 <SysTick_Handler>:
 8000694:	b580      	push	{r7, lr}
 8000696:	af00      	add	r7, sp, #0
 8000698:	4b0b      	ldr	r3, [pc, #44]	; (80006c8 <SysTick_Handler+0x34>)
 800069a:	681b      	ldr	r3, [r3, #0]
 800069c:	1c5a      	adds	r2, r3, #1
 800069e:	4b0a      	ldr	r3, [pc, #40]	; (80006c8 <SysTick_Handler+0x34>)
 80006a0:	601a      	str	r2, [r3, #0]
 80006a2:	4b09      	ldr	r3, [pc, #36]	; (80006c8 <SysTick_Handler+0x34>)
 80006a4:	681a      	ldr	r2, [r3, #0]
 80006a6:	23fa      	movs	r3, #250	; 0xfa
 80006a8:	009b      	lsls	r3, r3, #2
 80006aa:	429a      	cmp	r2, r3
 80006ac:	d109      	bne.n	80006c2 <SysTick_Handler+0x2e>
 80006ae:	2380      	movs	r3, #128	; 0x80
 80006b0:	005b      	lsls	r3, r3, #1
 80006b2:	4a06      	ldr	r2, [pc, #24]	; (80006cc <SysTick_Handler+0x38>)
 80006b4:	0019      	movs	r1, r3
 80006b6:	0010      	movs	r0, r2
 80006b8:	f7ff fe5e 	bl	8000378 <LL_GPIO_TogglePin>
 80006bc:	4b02      	ldr	r3, [pc, #8]	; (80006c8 <SysTick_Handler+0x34>)
 80006be:	2200      	movs	r2, #0
 80006c0:	601a      	str	r2, [r3, #0]
 80006c2:	46c0      	nop			; (mov r8, r8)
 80006c4:	46bd      	mov	sp, r7
 80006c6:	bd80      	pop	{r7, pc}
 80006c8:	2000044c 	.word	0x2000044c
 80006cc:	48000800 	.word	0x48000800

080006d0 <EXTI0_1_IRQHandler>:
 80006d0:	b580      	push	{r7, lr}
 80006d2:	af00      	add	r7, sp, #0
 80006d4:	2380      	movs	r3, #128	; 0x80
 80006d6:	009b      	lsls	r3, r3, #2
 80006d8:	4a05      	ldr	r2, [pc, #20]	; (80006f0 <EXTI0_1_IRQHandler+0x20>)
 80006da:	0019      	movs	r1, r3
 80006dc:	0010      	movs	r0, r2
 80006de:	f7ff fe4b 	bl	8000378 <LL_GPIO_TogglePin>
 80006e2:	2001      	movs	r0, #1
 80006e4:	f7ff ff62 	bl	80005ac <LL_EXTI_ClearFlag_0_31>
 80006e8:	46c0      	nop			; (mov r8, r8)
 80006ea:	46bd      	mov	sp, r7
 80006ec:	bd80      	pop	{r7, pc}
 80006ee:	46c0      	nop			; (mov r8, r8)
 80006f0:	48000800 	.word	0x48000800

080006f4 <main>:
 80006f4:	b580      	push	{r7, lr}
 80006f6:	af00      	add	r7, sp, #0
 80006f8:	f7ff ff66 	bl	80005c8 <rcc_init>
 80006fc:	f7ff ff9e 	bl	800063c <exti_init>
 8000700:	2380      	movs	r3, #128	; 0x80
 8000702:	031b      	lsls	r3, r3, #12
 8000704:	0018      	movs	r0, r3
 8000706:	f7ff fdd1 	bl	80002ac <LL_AHB1_GRP1_EnableClock>
 800070a:	2380      	movs	r3, #128	; 0x80
 800070c:	009b      	lsls	r3, r3, #2
 800070e:	4806      	ldr	r0, [pc, #24]	; (8000728 <main+0x34>)
 8000710:	2201      	movs	r2, #1
 8000712:	0019      	movs	r1, r3
 8000714:	f7ff fdf6 	bl	8000304 <LL_GPIO_SetPinMode>
 8000718:	2380      	movs	r3, #128	; 0x80
 800071a:	005b      	lsls	r3, r3, #1
 800071c:	4802      	ldr	r0, [pc, #8]	; (8000728 <main+0x34>)
 800071e:	2201      	movs	r2, #1
 8000720:	0019      	movs	r1, r3
 8000722:	f7ff fdef 	bl	8000304 <LL_GPIO_SetPinMode>
 8000726:	e7fe      	b.n	8000726 <main+0x32>
 8000728:	48000800 	.word	0x48000800

0800072c <SystemInit>:
 800072c:	b580      	push	{r7, lr}
 800072e:	af00      	add	r7, sp, #0
 8000730:	4b1a      	ldr	r3, [pc, #104]	; (800079c <SystemInit+0x70>)
 8000732:	681a      	ldr	r2, [r3, #0]
 8000734:	4b19      	ldr	r3, [pc, #100]	; (800079c <SystemInit+0x70>)
 8000736:	2101      	movs	r1, #1
 8000738:	430a      	orrs	r2, r1
 800073a:	601a      	str	r2, [r3, #0]
 800073c:	4b17      	ldr	r3, [pc, #92]	; (800079c <SystemInit+0x70>)
 800073e:	685a      	ldr	r2, [r3, #4]
 8000740:	4b16      	ldr	r3, [pc, #88]	; (800079c <SystemInit+0x70>)
 8000742:	4917      	ldr	r1, [pc, #92]	; (80007a0 <SystemInit+0x74>)
 8000744:	400a      	ands	r2, r1
 8000746:	605a      	str	r2, [r3, #4]
 8000748:	4b14      	ldr	r3, [pc, #80]	; (800079c <SystemInit+0x70>)
 800074a:	681a      	ldr	r2, [r3, #0]
 800074c:	4b13      	ldr	r3, [pc, #76]	; (800079c <SystemInit+0x70>)
 800074e:	4915      	ldr	r1, [pc, #84]	; (80007a4 <SystemInit+0x78>)
 8000750:	400a      	ands	r2, r1
 8000752:	601a      	str	r2, [r3, #0]
 8000754:	4b11      	ldr	r3, [pc, #68]	; (800079c <SystemInit+0x70>)
 8000756:	681a      	ldr	r2, [r3, #0]
 8000758:	4b10      	ldr	r3, [pc, #64]	; (800079c <SystemInit+0x70>)
 800075a:	4913      	ldr	r1, [pc, #76]	; (80007a8 <SystemInit+0x7c>)
 800075c:	400a      	ands	r2, r1
 800075e:	601a      	str	r2, [r3, #0]
 8000760:	4b0e      	ldr	r3, [pc, #56]	; (800079c <SystemInit+0x70>)
 8000762:	685a      	ldr	r2, [r3, #4]
 8000764:	4b0d      	ldr	r3, [pc, #52]	; (800079c <SystemInit+0x70>)
 8000766:	4911      	ldr	r1, [pc, #68]	; (80007ac <SystemInit+0x80>)
 8000768:	400a      	ands	r2, r1
 800076a:	605a      	str	r2, [r3, #4]
 800076c:	4b0b      	ldr	r3, [pc, #44]	; (800079c <SystemInit+0x70>)
 800076e:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8000770:	4b0a      	ldr	r3, [pc, #40]	; (800079c <SystemInit+0x70>)
 8000772:	210f      	movs	r1, #15
 8000774:	438a      	bics	r2, r1
 8000776:	62da      	str	r2, [r3, #44]	; 0x2c
 8000778:	4b08      	ldr	r3, [pc, #32]	; (800079c <SystemInit+0x70>)
 800077a:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 800077c:	4b07      	ldr	r3, [pc, #28]	; (800079c <SystemInit+0x70>)
 800077e:	490c      	ldr	r1, [pc, #48]	; (80007b0 <SystemInit+0x84>)
 8000780:	400a      	ands	r2, r1
 8000782:	631a      	str	r2, [r3, #48]	; 0x30
 8000784:	4b05      	ldr	r3, [pc, #20]	; (800079c <SystemInit+0x70>)
 8000786:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8000788:	4b04      	ldr	r3, [pc, #16]	; (800079c <SystemInit+0x70>)
 800078a:	2101      	movs	r1, #1
 800078c:	438a      	bics	r2, r1
 800078e:	635a      	str	r2, [r3, #52]	; 0x34
 8000790:	4b02      	ldr	r3, [pc, #8]	; (800079c <SystemInit+0x70>)
 8000792:	2200      	movs	r2, #0
 8000794:	609a      	str	r2, [r3, #8]
 8000796:	46c0      	nop			; (mov r8, r8)
 8000798:	46bd      	mov	sp, r7
 800079a:	bd80      	pop	{r7, pc}
 800079c:	40021000 	.word	0x40021000
 80007a0:	f8ffb80c 	.word	0xf8ffb80c
 80007a4:	fef6ffff 	.word	0xfef6ffff
 80007a8:	fffbffff 	.word	0xfffbffff
 80007ac:	ffc0ffff 	.word	0xffc0ffff
 80007b0:	fffffeac 	.word	0xfffffeac

080007b4 <NMI_Handler>:
 80007b4:	b580      	push	{r7, lr}
 80007b6:	af00      	add	r7, sp, #0
 80007b8:	46c0      	nop			; (mov r8, r8)
 80007ba:	46bd      	mov	sp, r7
 80007bc:	bd80      	pop	{r7, pc}

080007be <HardFault_Handler>:
 80007be:	b580      	push	{r7, lr}
 80007c0:	af00      	add	r7, sp, #0
 80007c2:	e7fe      	b.n	80007c2 <HardFault_Handler+0x4>

080007c4 <SVC_Handler>:
 80007c4:	b580      	push	{r7, lr}
 80007c6:	af00      	add	r7, sp, #0
 80007c8:	46c0      	nop			; (mov r8, r8)
 80007ca:	46bd      	mov	sp, r7
 80007cc:	bd80      	pop	{r7, pc}

080007ce <PendSV_Handler>:
 80007ce:	b580      	push	{r7, lr}
 80007d0:	af00      	add	r7, sp, #0
 80007d2:	46c0      	nop			; (mov r8, r8)
 80007d4:	46bd      	mov	sp, r7
 80007d6:	bd80      	pop	{r7, pc}

080007d8 <atexit>:
 80007d8:	b510      	push	{r4, lr}
 80007da:	0001      	movs	r1, r0
 80007dc:	2300      	movs	r3, #0
 80007de:	2200      	movs	r2, #0
 80007e0:	2000      	movs	r0, #0
 80007e2:	f000 f837 	bl	8000854 <__register_exitproc>
 80007e6:	bd10      	pop	{r4, pc}

080007e8 <__libc_fini_array>:
 80007e8:	b570      	push	{r4, r5, r6, lr}
 80007ea:	4d07      	ldr	r5, [pc, #28]	; (8000808 <__libc_fini_array+0x20>)
 80007ec:	4c07      	ldr	r4, [pc, #28]	; (800080c <__libc_fini_array+0x24>)
 80007ee:	1b64      	subs	r4, r4, r5
 80007f0:	10a4      	asrs	r4, r4, #2
 80007f2:	d005      	beq.n	8000800 <__libc_fini_array+0x18>
 80007f4:	3c01      	subs	r4, #1
 80007f6:	00a3      	lsls	r3, r4, #2
 80007f8:	58eb      	ldr	r3, [r5, r3]
 80007fa:	4798      	blx	r3
 80007fc:	2c00      	cmp	r4, #0
 80007fe:	d1f9      	bne.n	80007f4 <__libc_fini_array+0xc>
 8000800:	f000 f87e 	bl	8000900 <_fini>
 8000804:	bd70      	pop	{r4, r5, r6, pc}
 8000806:	46c0      	nop			; (mov r8, r8)
 8000808:	08000918 	.word	0x08000918
 800080c:	0800091c 	.word	0x0800091c

08000810 <__libc_init_array>:
 8000810:	b570      	push	{r4, r5, r6, lr}
 8000812:	4d0c      	ldr	r5, [pc, #48]	; (8000844 <__libc_init_array+0x34>)
 8000814:	4e0c      	ldr	r6, [pc, #48]	; (8000848 <__libc_init_array+0x38>)
 8000816:	1b76      	subs	r6, r6, r5
 8000818:	10b6      	asrs	r6, r6, #2
 800081a:	d005      	beq.n	8000828 <__libc_init_array+0x18>
 800081c:	2400      	movs	r4, #0
 800081e:	cd08      	ldmia	r5!, {r3}
 8000820:	3401      	adds	r4, #1
 8000822:	4798      	blx	r3
 8000824:	42a6      	cmp	r6, r4
 8000826:	d1fa      	bne.n	800081e <__libc_init_array+0xe>
 8000828:	f000 f864 	bl	80008f4 <_init>
 800082c:	4d07      	ldr	r5, [pc, #28]	; (800084c <__libc_init_array+0x3c>)
 800082e:	4e08      	ldr	r6, [pc, #32]	; (8000850 <__libc_init_array+0x40>)
 8000830:	1b76      	subs	r6, r6, r5
 8000832:	10b6      	asrs	r6, r6, #2
 8000834:	d005      	beq.n	8000842 <__libc_init_array+0x32>
 8000836:	2400      	movs	r4, #0
 8000838:	cd08      	ldmia	r5!, {r3}
 800083a:	3401      	adds	r4, #1
 800083c:	4798      	blx	r3
 800083e:	42a6      	cmp	r6, r4
 8000840:	d1fa      	bne.n	8000838 <__libc_init_array+0x28>
 8000842:	bd70      	pop	{r4, r5, r6, pc}
 8000844:	08000910 	.word	0x08000910
 8000848:	08000910 	.word	0x08000910
 800084c:	08000910 	.word	0x08000910
 8000850:	08000918 	.word	0x08000918

08000854 <__register_exitproc>:
 8000854:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000856:	46c6      	mov	lr, r8
 8000858:	b500      	push	{lr}
 800085a:	4c1f      	ldr	r4, [pc, #124]	; (80008d8 <__register_exitproc+0x84>)
 800085c:	b082      	sub	sp, #8
 800085e:	6824      	ldr	r4, [r4, #0]
 8000860:	9401      	str	r4, [sp, #4]
 8000862:	24a4      	movs	r4, #164	; 0xa4
 8000864:	9d01      	ldr	r5, [sp, #4]
 8000866:	0064      	lsls	r4, r4, #1
 8000868:	592d      	ldr	r5, [r5, r4]
 800086a:	2d00      	cmp	r5, #0
 800086c:	d02b      	beq.n	80008c6 <__register_exitproc+0x72>
 800086e:	686c      	ldr	r4, [r5, #4]
 8000870:	2c1f      	cmp	r4, #31
 8000872:	dc2e      	bgt.n	80008d2 <__register_exitproc+0x7e>
 8000874:	2800      	cmp	r0, #0
 8000876:	d109      	bne.n	800088c <__register_exitproc+0x38>
 8000878:	2000      	movs	r0, #0
 800087a:	1c63      	adds	r3, r4, #1
 800087c:	3402      	adds	r4, #2
 800087e:	00a4      	lsls	r4, r4, #2
 8000880:	606b      	str	r3, [r5, #4]
 8000882:	5161      	str	r1, [r4, r5]
 8000884:	b002      	add	sp, #8
 8000886:	bc04      	pop	{r2}
 8000888:	4690      	mov	r8, r2
 800088a:	bdf0      	pop	{r4, r5, r6, r7, pc}
 800088c:	2788      	movs	r7, #136	; 0x88
 800088e:	00a6      	lsls	r6, r4, #2
 8000890:	19ae      	adds	r6, r5, r6
 8000892:	51f2      	str	r2, [r6, r7]
 8000894:	3701      	adds	r7, #1
 8000896:	37ff      	adds	r7, #255	; 0xff
 8000898:	46bc      	mov	ip, r7
 800089a:	2201      	movs	r2, #1
 800089c:	44ac      	add	ip, r5
 800089e:	4667      	mov	r7, ip
 80008a0:	40a2      	lsls	r2, r4
 80008a2:	683f      	ldr	r7, [r7, #0]
 80008a4:	4690      	mov	r8, r2
 80008a6:	4317      	orrs	r7, r2
 80008a8:	4662      	mov	r2, ip
 80008aa:	6017      	str	r7, [r2, #0]
 80008ac:	2784      	movs	r7, #132	; 0x84
 80008ae:	007f      	lsls	r7, r7, #1
 80008b0:	51f3      	str	r3, [r6, r7]
 80008b2:	2802      	cmp	r0, #2
 80008b4:	d1e0      	bne.n	8000878 <__register_exitproc+0x24>
 80008b6:	002b      	movs	r3, r5
 80008b8:	4640      	mov	r0, r8
 80008ba:	338d      	adds	r3, #141	; 0x8d
 80008bc:	33ff      	adds	r3, #255	; 0xff
 80008be:	681a      	ldr	r2, [r3, #0]
 80008c0:	4310      	orrs	r0, r2
 80008c2:	6018      	str	r0, [r3, #0]
 80008c4:	e7d8      	b.n	8000878 <__register_exitproc+0x24>
 80008c6:	9d01      	ldr	r5, [sp, #4]
 80008c8:	9e01      	ldr	r6, [sp, #4]
 80008ca:	354d      	adds	r5, #77	; 0x4d
 80008cc:	35ff      	adds	r5, #255	; 0xff
 80008ce:	5135      	str	r5, [r6, r4]
 80008d0:	e7cd      	b.n	800086e <__register_exitproc+0x1a>
 80008d2:	2001      	movs	r0, #1
 80008d4:	4240      	negs	r0, r0
 80008d6:	e7d5      	b.n	8000884 <__register_exitproc+0x30>
 80008d8:	0800090c 	.word	0x0800090c

080008dc <register_fini>:
 80008dc:	4b03      	ldr	r3, [pc, #12]	; (80008ec <register_fini+0x10>)
 80008de:	b510      	push	{r4, lr}
 80008e0:	2b00      	cmp	r3, #0
 80008e2:	d002      	beq.n	80008ea <register_fini+0xe>
 80008e4:	4802      	ldr	r0, [pc, #8]	; (80008f0 <register_fini+0x14>)
 80008e6:	f7ff ff77 	bl	80007d8 <atexit>
 80008ea:	bd10      	pop	{r4, pc}
 80008ec:	00000000 	.word	0x00000000
 80008f0:	080007e9 	.word	0x080007e9

080008f4 <_init>:
 80008f4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 80008f6:	46c0      	nop			; (mov r8, r8)
 80008f8:	bcf8      	pop	{r3, r4, r5, r6, r7}
 80008fa:	bc08      	pop	{r3}
 80008fc:	469e      	mov	lr, r3
 80008fe:	4770      	bx	lr

08000900 <_fini>:
 8000900:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000902:	46c0      	nop			; (mov r8, r8)
 8000904:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000906:	bc08      	pop	{r3}
 8000908:	469e      	mov	lr, r3
 800090a:	4770      	bx	lr
