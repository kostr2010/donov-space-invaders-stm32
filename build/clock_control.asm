
build/clock_control.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00000c38  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           0000000c  08000cf8  08000cf8  00010cf8  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08000d04  08000d04  00010d04  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08000d0c  08000d0c  00010d0c  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000550  20000000  08000d10  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000e30  20000550  08001260  00020550  2**2  ALLOC
  7 ._user_heap_stack 00000600  20001380  08001260  00021380  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020550  2**0  CONTENTS, READONLY
  9 .debug_info       00001354  00000000  00000000  00020578  2**0  CONTENTS, READONLY, DEBUGGING
 10 .debug_abbrev     0000041f  00000000  00000000  000218cc  2**0  CONTENTS, READONLY, DEBUGGING
 11 .debug_loc        000008c0  00000000  00000000  00021ceb  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_aranges    000001a0  00000000  00000000  000225ab  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_ranges     00000170  00000000  00000000  0002274b  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_line       00000c1e  00000000  00000000  000228bb  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_str        0000077e  00000000  00000000  000234d9  2**0  CONTENTS, READONLY, DEBUGGING
 16 .comment          0000001d  00000000  00000000  00023c57  2**0  CONTENTS, READONLY
 17 .debug_frame      00000688  00000000  00000000  00023c74  2**2  CONTENTS, READONLY, DEBUGGING

Disassembly of section .text:

080000c0 <__divsi3>:
 80000c0:	2900      	cmp	r1, #0
 80000c2:	d041      	beq.n	8000148 <.divsi3_skip_div0_test+0x84>

080000c4 <.divsi3_skip_div0_test>:
 80000c4:	b410      	push	{r4}
 80000c6:	1c04      	adds	r4, r0, #0
 80000c8:	404c      	eors	r4, r1
 80000ca:	46a4      	mov	ip, r4
 80000cc:	2301      	movs	r3, #1
 80000ce:	2200      	movs	r2, #0
 80000d0:	2900      	cmp	r1, #0
 80000d2:	d500      	bpl.n	80000d6 <.divsi3_skip_div0_test+0x12>
 80000d4:	4249      	negs	r1, r1
 80000d6:	2800      	cmp	r0, #0
 80000d8:	d500      	bpl.n	80000dc <.divsi3_skip_div0_test+0x18>
 80000da:	4240      	negs	r0, r0
 80000dc:	4288      	cmp	r0, r1
 80000de:	d32c      	bcc.n	800013a <.divsi3_skip_div0_test+0x76>
 80000e0:	2401      	movs	r4, #1
 80000e2:	0724      	lsls	r4, r4, #28
 80000e4:	42a1      	cmp	r1, r4
 80000e6:	d204      	bcs.n	80000f2 <.divsi3_skip_div0_test+0x2e>
 80000e8:	4281      	cmp	r1, r0
 80000ea:	d202      	bcs.n	80000f2 <.divsi3_skip_div0_test+0x2e>
 80000ec:	0109      	lsls	r1, r1, #4
 80000ee:	011b      	lsls	r3, r3, #4
 80000f0:	e7f8      	b.n	80000e4 <.divsi3_skip_div0_test+0x20>
 80000f2:	00e4      	lsls	r4, r4, #3
 80000f4:	42a1      	cmp	r1, r4
 80000f6:	d204      	bcs.n	8000102 <.divsi3_skip_div0_test+0x3e>
 80000f8:	4281      	cmp	r1, r0
 80000fa:	d202      	bcs.n	8000102 <.divsi3_skip_div0_test+0x3e>
 80000fc:	0049      	lsls	r1, r1, #1
 80000fe:	005b      	lsls	r3, r3, #1
 8000100:	e7f8      	b.n	80000f4 <.divsi3_skip_div0_test+0x30>
 8000102:	4288      	cmp	r0, r1
 8000104:	d301      	bcc.n	800010a <.divsi3_skip_div0_test+0x46>
 8000106:	1a40      	subs	r0, r0, r1
 8000108:	431a      	orrs	r2, r3
 800010a:	084c      	lsrs	r4, r1, #1
 800010c:	42a0      	cmp	r0, r4
 800010e:	d302      	bcc.n	8000116 <.divsi3_skip_div0_test+0x52>
 8000110:	1b00      	subs	r0, r0, r4
 8000112:	085c      	lsrs	r4, r3, #1
 8000114:	4322      	orrs	r2, r4
 8000116:	088c      	lsrs	r4, r1, #2
 8000118:	42a0      	cmp	r0, r4
 800011a:	d302      	bcc.n	8000122 <.divsi3_skip_div0_test+0x5e>
 800011c:	1b00      	subs	r0, r0, r4
 800011e:	089c      	lsrs	r4, r3, #2
 8000120:	4322      	orrs	r2, r4
 8000122:	08cc      	lsrs	r4, r1, #3
 8000124:	42a0      	cmp	r0, r4
 8000126:	d302      	bcc.n	800012e <.divsi3_skip_div0_test+0x6a>
 8000128:	1b00      	subs	r0, r0, r4
 800012a:	08dc      	lsrs	r4, r3, #3
 800012c:	4322      	orrs	r2, r4
 800012e:	2800      	cmp	r0, #0
 8000130:	d003      	beq.n	800013a <.divsi3_skip_div0_test+0x76>
 8000132:	091b      	lsrs	r3, r3, #4
 8000134:	d001      	beq.n	800013a <.divsi3_skip_div0_test+0x76>
 8000136:	0909      	lsrs	r1, r1, #4
 8000138:	e7e3      	b.n	8000102 <.divsi3_skip_div0_test+0x3e>
 800013a:	1c10      	adds	r0, r2, #0
 800013c:	4664      	mov	r4, ip
 800013e:	2c00      	cmp	r4, #0
 8000140:	d500      	bpl.n	8000144 <.divsi3_skip_div0_test+0x80>
 8000142:	4240      	negs	r0, r0
 8000144:	bc10      	pop	{r4}
 8000146:	4770      	bx	lr
 8000148:	b501      	push	{r0, lr}
 800014a:	2000      	movs	r0, #0
 800014c:	f000 f80c 	bl	8000168 <__aeabi_idiv0>
 8000150:	bd02      	pop	{r1, pc}
 8000152:	46c0      	nop			; (mov r8, r8)

08000154 <__aeabi_idivmod>:
 8000154:	2900      	cmp	r1, #0
 8000156:	d0f7      	beq.n	8000148 <.divsi3_skip_div0_test+0x84>
 8000158:	b503      	push	{r0, r1, lr}
 800015a:	f7ff ffb3 	bl	80000c4 <.divsi3_skip_div0_test>
 800015e:	bc0e      	pop	{r1, r2, r3}
 8000160:	4342      	muls	r2, r0
 8000162:	1a89      	subs	r1, r1, r2
 8000164:	4718      	bx	r3
 8000166:	46c0      	nop			; (mov r8, r8)

08000168 <__aeabi_idiv0>:
 8000168:	4770      	bx	lr
 800016a:	46c0      	nop			; (mov r8, r8)

0800016c <__do_global_dtors_aux>:
 800016c:	b510      	push	{r4, lr}
 800016e:	4c06      	ldr	r4, [pc, #24]	; (8000188 <__do_global_dtors_aux+0x1c>)
 8000170:	7823      	ldrb	r3, [r4, #0]
 8000172:	2b00      	cmp	r3, #0
 8000174:	d107      	bne.n	8000186 <__do_global_dtors_aux+0x1a>
 8000176:	4b05      	ldr	r3, [pc, #20]	; (800018c <__do_global_dtors_aux+0x20>)
 8000178:	2b00      	cmp	r3, #0
 800017a:	d002      	beq.n	8000182 <__do_global_dtors_aux+0x16>
 800017c:	4804      	ldr	r0, [pc, #16]	; (8000190 <__do_global_dtors_aux+0x24>)
 800017e:	e000      	b.n	8000182 <__do_global_dtors_aux+0x16>
 8000180:	bf00      	nop
 8000182:	2301      	movs	r3, #1
 8000184:	7023      	strb	r3, [r4, #0]
 8000186:	bd10      	pop	{r4, pc}
 8000188:	20000550 	.word	0x20000550
 800018c:	00000000 	.word	0x00000000
 8000190:	08000ce0 	.word	0x08000ce0

08000194 <frame_dummy>:
 8000194:	4b04      	ldr	r3, [pc, #16]	; (80001a8 <frame_dummy+0x14>)
 8000196:	b510      	push	{r4, lr}
 8000198:	2b00      	cmp	r3, #0
 800019a:	d003      	beq.n	80001a4 <frame_dummy+0x10>
 800019c:	4903      	ldr	r1, [pc, #12]	; (80001ac <frame_dummy+0x18>)
 800019e:	4804      	ldr	r0, [pc, #16]	; (80001b0 <frame_dummy+0x1c>)
 80001a0:	e000      	b.n	80001a4 <frame_dummy+0x10>
 80001a2:	bf00      	nop
 80001a4:	bd10      	pop	{r4, pc}
 80001a6:	46c0      	nop			; (mov r8, r8)
 80001a8:	00000000 	.word	0x00000000
 80001ac:	20000554 	.word	0x20000554
 80001b0:	08000ce0 	.word	0x08000ce0

080001b4 <Reset_Handler>:
 80001b4:	480d      	ldr	r0, [pc, #52]	; (80001ec <LoopForever+0x2>)
 80001b6:	4685      	mov	sp, r0
 80001b8:	480d      	ldr	r0, [pc, #52]	; (80001f0 <LoopForever+0x6>)
 80001ba:	490e      	ldr	r1, [pc, #56]	; (80001f4 <LoopForever+0xa>)
 80001bc:	4a0e      	ldr	r2, [pc, #56]	; (80001f8 <LoopForever+0xe>)
 80001be:	2300      	movs	r3, #0
 80001c0:	e002      	b.n	80001c8 <LoopCopyDataInit>

080001c2 <CopyDataInit>:
 80001c2:	58d4      	ldr	r4, [r2, r3]
 80001c4:	50c4      	str	r4, [r0, r3]
 80001c6:	3304      	adds	r3, #4

080001c8 <LoopCopyDataInit>:
 80001c8:	18c4      	adds	r4, r0, r3
 80001ca:	428c      	cmp	r4, r1
 80001cc:	d3f9      	bcc.n	80001c2 <CopyDataInit>
 80001ce:	4a0b      	ldr	r2, [pc, #44]	; (80001fc <LoopForever+0x12>)
 80001d0:	4c0b      	ldr	r4, [pc, #44]	; (8000200 <LoopForever+0x16>)
 80001d2:	2300      	movs	r3, #0
 80001d4:	e001      	b.n	80001da <LoopFillZerobss>

080001d6 <FillZerobss>:
 80001d6:	6013      	str	r3, [r2, #0]
 80001d8:	3204      	adds	r2, #4

080001da <LoopFillZerobss>:
 80001da:	42a2      	cmp	r2, r4
 80001dc:	d3fb      	bcc.n	80001d6 <FillZerobss>
 80001de:	f000 fc9b 	bl	8000b18 <SystemInit>
 80001e2:	f000 fd0b 	bl	8000bfc <__libc_init_array>
 80001e6:	f000 fb1d 	bl	8000824 <main>

080001ea <LoopForever>:
 80001ea:	e7fe      	b.n	80001ea <LoopForever>
 80001ec:	20002000 	.word	0x20002000
 80001f0:	20000000 	.word	0x20000000
 80001f4:	20000550 	.word	0x20000550
 80001f8:	08000d10 	.word	0x08000d10
 80001fc:	20000550 	.word	0x20000550
 8000200:	20001380 	.word	0x20001380

08000204 <ADC1_COMP_IRQHandler>:
 8000204:	e7fe      	b.n	8000204 <ADC1_COMP_IRQHandler>
	...

08000208 <LL_RCC_HSI_Enable>:
 8000208:	b580      	push	{r7, lr}
 800020a:	af00      	add	r7, sp, #0
 800020c:	4b04      	ldr	r3, [pc, #16]	; (8000220 <LL_RCC_HSI_Enable+0x18>)
 800020e:	681a      	ldr	r2, [r3, #0]
 8000210:	4b03      	ldr	r3, [pc, #12]	; (8000220 <LL_RCC_HSI_Enable+0x18>)
 8000212:	2101      	movs	r1, #1
 8000214:	430a      	orrs	r2, r1
 8000216:	601a      	str	r2, [r3, #0]
 8000218:	46c0      	nop			; (mov r8, r8)
 800021a:	46bd      	mov	sp, r7
 800021c:	bd80      	pop	{r7, pc}
 800021e:	46c0      	nop			; (mov r8, r8)
 8000220:	40021000 	.word	0x40021000

08000224 <LL_RCC_HSI_IsReady>:
 8000224:	b580      	push	{r7, lr}
 8000226:	af00      	add	r7, sp, #0
 8000228:	4b05      	ldr	r3, [pc, #20]	; (8000240 <LL_RCC_HSI_IsReady+0x1c>)
 800022a:	681b      	ldr	r3, [r3, #0]
 800022c:	2202      	movs	r2, #2
 800022e:	4013      	ands	r3, r2
 8000230:	3b02      	subs	r3, #2
 8000232:	425a      	negs	r2, r3
 8000234:	4153      	adcs	r3, r2
 8000236:	b2db      	uxtb	r3, r3
 8000238:	0018      	movs	r0, r3
 800023a:	46bd      	mov	sp, r7
 800023c:	bd80      	pop	{r7, pc}
 800023e:	46c0      	nop			; (mov r8, r8)
 8000240:	40021000 	.word	0x40021000

08000244 <LL_RCC_SetSysClkSource>:
 8000244:	b580      	push	{r7, lr}
 8000246:	b082      	sub	sp, #8
 8000248:	af00      	add	r7, sp, #0
 800024a:	6078      	str	r0, [r7, #4]
 800024c:	4b06      	ldr	r3, [pc, #24]	; (8000268 <LL_RCC_SetSysClkSource+0x24>)
 800024e:	685b      	ldr	r3, [r3, #4]
 8000250:	2203      	movs	r2, #3
 8000252:	4393      	bics	r3, r2
 8000254:	0019      	movs	r1, r3
 8000256:	4b04      	ldr	r3, [pc, #16]	; (8000268 <LL_RCC_SetSysClkSource+0x24>)
 8000258:	687a      	ldr	r2, [r7, #4]
 800025a:	430a      	orrs	r2, r1
 800025c:	605a      	str	r2, [r3, #4]
 800025e:	46c0      	nop			; (mov r8, r8)
 8000260:	46bd      	mov	sp, r7
 8000262:	b002      	add	sp, #8
 8000264:	bd80      	pop	{r7, pc}
 8000266:	46c0      	nop			; (mov r8, r8)
 8000268:	40021000 	.word	0x40021000

0800026c <LL_RCC_GetSysClkSource>:
 800026c:	b580      	push	{r7, lr}
 800026e:	af00      	add	r7, sp, #0
 8000270:	4b03      	ldr	r3, [pc, #12]	; (8000280 <LL_RCC_GetSysClkSource+0x14>)
 8000272:	685b      	ldr	r3, [r3, #4]
 8000274:	220c      	movs	r2, #12
 8000276:	4013      	ands	r3, r2
 8000278:	0018      	movs	r0, r3
 800027a:	46bd      	mov	sp, r7
 800027c:	bd80      	pop	{r7, pc}
 800027e:	46c0      	nop			; (mov r8, r8)
 8000280:	40021000 	.word	0x40021000

08000284 <LL_RCC_SetAHBPrescaler>:
 8000284:	b580      	push	{r7, lr}
 8000286:	b082      	sub	sp, #8
 8000288:	af00      	add	r7, sp, #0
 800028a:	6078      	str	r0, [r7, #4]
 800028c:	4b06      	ldr	r3, [pc, #24]	; (80002a8 <LL_RCC_SetAHBPrescaler+0x24>)
 800028e:	685b      	ldr	r3, [r3, #4]
 8000290:	22f0      	movs	r2, #240	; 0xf0
 8000292:	4393      	bics	r3, r2
 8000294:	0019      	movs	r1, r3
 8000296:	4b04      	ldr	r3, [pc, #16]	; (80002a8 <LL_RCC_SetAHBPrescaler+0x24>)
 8000298:	687a      	ldr	r2, [r7, #4]
 800029a:	430a      	orrs	r2, r1
 800029c:	605a      	str	r2, [r3, #4]
 800029e:	46c0      	nop			; (mov r8, r8)
 80002a0:	46bd      	mov	sp, r7
 80002a2:	b002      	add	sp, #8
 80002a4:	bd80      	pop	{r7, pc}
 80002a6:	46c0      	nop			; (mov r8, r8)
 80002a8:	40021000 	.word	0x40021000

080002ac <LL_RCC_SetAPB1Prescaler>:
 80002ac:	b580      	push	{r7, lr}
 80002ae:	b082      	sub	sp, #8
 80002b0:	af00      	add	r7, sp, #0
 80002b2:	6078      	str	r0, [r7, #4]
 80002b4:	4b06      	ldr	r3, [pc, #24]	; (80002d0 <LL_RCC_SetAPB1Prescaler+0x24>)
 80002b6:	685b      	ldr	r3, [r3, #4]
 80002b8:	4a06      	ldr	r2, [pc, #24]	; (80002d4 <LL_RCC_SetAPB1Prescaler+0x28>)
 80002ba:	4013      	ands	r3, r2
 80002bc:	0019      	movs	r1, r3
 80002be:	4b04      	ldr	r3, [pc, #16]	; (80002d0 <LL_RCC_SetAPB1Prescaler+0x24>)
 80002c0:	687a      	ldr	r2, [r7, #4]
 80002c2:	430a      	orrs	r2, r1
 80002c4:	605a      	str	r2, [r3, #4]
 80002c6:	46c0      	nop			; (mov r8, r8)
 80002c8:	46bd      	mov	sp, r7
 80002ca:	b002      	add	sp, #8
 80002cc:	bd80      	pop	{r7, pc}
 80002ce:	46c0      	nop			; (mov r8, r8)
 80002d0:	40021000 	.word	0x40021000
 80002d4:	fffff8ff 	.word	0xfffff8ff

080002d8 <LL_RCC_PLL_Enable>:
 80002d8:	b580      	push	{r7, lr}
 80002da:	af00      	add	r7, sp, #0
 80002dc:	4b04      	ldr	r3, [pc, #16]	; (80002f0 <LL_RCC_PLL_Enable+0x18>)
 80002de:	681a      	ldr	r2, [r3, #0]
 80002e0:	4b03      	ldr	r3, [pc, #12]	; (80002f0 <LL_RCC_PLL_Enable+0x18>)
 80002e2:	2180      	movs	r1, #128	; 0x80
 80002e4:	0449      	lsls	r1, r1, #17
 80002e6:	430a      	orrs	r2, r1
 80002e8:	601a      	str	r2, [r3, #0]
 80002ea:	46c0      	nop			; (mov r8, r8)
 80002ec:	46bd      	mov	sp, r7
 80002ee:	bd80      	pop	{r7, pc}
 80002f0:	40021000 	.word	0x40021000

080002f4 <LL_RCC_PLL_IsReady>:
 80002f4:	b580      	push	{r7, lr}
 80002f6:	af00      	add	r7, sp, #0
 80002f8:	4b07      	ldr	r3, [pc, #28]	; (8000318 <LL_RCC_PLL_IsReady+0x24>)
 80002fa:	681a      	ldr	r2, [r3, #0]
 80002fc:	2380      	movs	r3, #128	; 0x80
 80002fe:	049b      	lsls	r3, r3, #18
 8000300:	4013      	ands	r3, r2
 8000302:	22fe      	movs	r2, #254	; 0xfe
 8000304:	0612      	lsls	r2, r2, #24
 8000306:	4694      	mov	ip, r2
 8000308:	4463      	add	r3, ip
 800030a:	425a      	negs	r2, r3
 800030c:	4153      	adcs	r3, r2
 800030e:	b2db      	uxtb	r3, r3
 8000310:	0018      	movs	r0, r3
 8000312:	46bd      	mov	sp, r7
 8000314:	bd80      	pop	{r7, pc}
 8000316:	46c0      	nop			; (mov r8, r8)
 8000318:	40021000 	.word	0x40021000

0800031c <LL_RCC_PLL_ConfigDomain_SYS>:
 800031c:	b580      	push	{r7, lr}
 800031e:	b082      	sub	sp, #8
 8000320:	af00      	add	r7, sp, #0
 8000322:	6078      	str	r0, [r7, #4]
 8000324:	6039      	str	r1, [r7, #0]
 8000326:	4b0e      	ldr	r3, [pc, #56]	; (8000360 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000328:	685b      	ldr	r3, [r3, #4]
 800032a:	4a0e      	ldr	r2, [pc, #56]	; (8000364 <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 800032c:	4013      	ands	r3, r2
 800032e:	0019      	movs	r1, r3
 8000330:	687a      	ldr	r2, [r7, #4]
 8000332:	2380      	movs	r3, #128	; 0x80
 8000334:	025b      	lsls	r3, r3, #9
 8000336:	401a      	ands	r2, r3
 8000338:	683b      	ldr	r3, [r7, #0]
 800033a:	431a      	orrs	r2, r3
 800033c:	4b08      	ldr	r3, [pc, #32]	; (8000360 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 800033e:	430a      	orrs	r2, r1
 8000340:	605a      	str	r2, [r3, #4]
 8000342:	4b07      	ldr	r3, [pc, #28]	; (8000360 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000344:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 8000346:	220f      	movs	r2, #15
 8000348:	4393      	bics	r3, r2
 800034a:	0019      	movs	r1, r3
 800034c:	687b      	ldr	r3, [r7, #4]
 800034e:	220f      	movs	r2, #15
 8000350:	401a      	ands	r2, r3
 8000352:	4b03      	ldr	r3, [pc, #12]	; (8000360 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000354:	430a      	orrs	r2, r1
 8000356:	62da      	str	r2, [r3, #44]	; 0x2c
 8000358:	46c0      	nop			; (mov r8, r8)
 800035a:	46bd      	mov	sp, r7
 800035c:	b002      	add	sp, #8
 800035e:	bd80      	pop	{r7, pc}
 8000360:	40021000 	.word	0x40021000
 8000364:	ffc2ffff 	.word	0xffc2ffff

08000368 <LL_FLASH_SetLatency>:
 8000368:	b580      	push	{r7, lr}
 800036a:	b082      	sub	sp, #8
 800036c:	af00      	add	r7, sp, #0
 800036e:	6078      	str	r0, [r7, #4]
 8000370:	4b06      	ldr	r3, [pc, #24]	; (800038c <LL_FLASH_SetLatency+0x24>)
 8000372:	681b      	ldr	r3, [r3, #0]
 8000374:	2201      	movs	r2, #1
 8000376:	4393      	bics	r3, r2
 8000378:	0019      	movs	r1, r3
 800037a:	4b04      	ldr	r3, [pc, #16]	; (800038c <LL_FLASH_SetLatency+0x24>)
 800037c:	687a      	ldr	r2, [r7, #4]
 800037e:	430a      	orrs	r2, r1
 8000380:	601a      	str	r2, [r3, #0]
 8000382:	46c0      	nop			; (mov r8, r8)
 8000384:	46bd      	mov	sp, r7
 8000386:	b002      	add	sp, #8
 8000388:	bd80      	pop	{r7, pc}
 800038a:	46c0      	nop			; (mov r8, r8)
 800038c:	40022000 	.word	0x40022000

08000390 <LL_AHB1_GRP1_EnableClock>:
 8000390:	b580      	push	{r7, lr}
 8000392:	b084      	sub	sp, #16
 8000394:	af00      	add	r7, sp, #0
 8000396:	6078      	str	r0, [r7, #4]
 8000398:	4b07      	ldr	r3, [pc, #28]	; (80003b8 <LL_AHB1_GRP1_EnableClock+0x28>)
 800039a:	6959      	ldr	r1, [r3, #20]
 800039c:	4b06      	ldr	r3, [pc, #24]	; (80003b8 <LL_AHB1_GRP1_EnableClock+0x28>)
 800039e:	687a      	ldr	r2, [r7, #4]
 80003a0:	430a      	orrs	r2, r1
 80003a2:	615a      	str	r2, [r3, #20]
 80003a4:	4b04      	ldr	r3, [pc, #16]	; (80003b8 <LL_AHB1_GRP1_EnableClock+0x28>)
 80003a6:	695b      	ldr	r3, [r3, #20]
 80003a8:	687a      	ldr	r2, [r7, #4]
 80003aa:	4013      	ands	r3, r2
 80003ac:	60fb      	str	r3, [r7, #12]
 80003ae:	68fb      	ldr	r3, [r7, #12]
 80003b0:	46c0      	nop			; (mov r8, r8)
 80003b2:	46bd      	mov	sp, r7
 80003b4:	b004      	add	sp, #16
 80003b6:	bd80      	pop	{r7, pc}
 80003b8:	40021000 	.word	0x40021000

080003bc <LL_APB1_GRP1_EnableClock>:
 80003bc:	b580      	push	{r7, lr}
 80003be:	b084      	sub	sp, #16
 80003c0:	af00      	add	r7, sp, #0
 80003c2:	6078      	str	r0, [r7, #4]
 80003c4:	4b07      	ldr	r3, [pc, #28]	; (80003e4 <LL_APB1_GRP1_EnableClock+0x28>)
 80003c6:	69d9      	ldr	r1, [r3, #28]
 80003c8:	4b06      	ldr	r3, [pc, #24]	; (80003e4 <LL_APB1_GRP1_EnableClock+0x28>)
 80003ca:	687a      	ldr	r2, [r7, #4]
 80003cc:	430a      	orrs	r2, r1
 80003ce:	61da      	str	r2, [r3, #28]
 80003d0:	4b04      	ldr	r3, [pc, #16]	; (80003e4 <LL_APB1_GRP1_EnableClock+0x28>)
 80003d2:	69db      	ldr	r3, [r3, #28]
 80003d4:	687a      	ldr	r2, [r7, #4]
 80003d6:	4013      	ands	r3, r2
 80003d8:	60fb      	str	r3, [r7, #12]
 80003da:	68fb      	ldr	r3, [r7, #12]
 80003dc:	46c0      	nop			; (mov r8, r8)
 80003de:	46bd      	mov	sp, r7
 80003e0:	b004      	add	sp, #16
 80003e2:	bd80      	pop	{r7, pc}
 80003e4:	40021000 	.word	0x40021000

080003e8 <LL_GPIO_SetPinMode>:
 80003e8:	b580      	push	{r7, lr}
 80003ea:	b084      	sub	sp, #16
 80003ec:	af00      	add	r7, sp, #0
 80003ee:	60f8      	str	r0, [r7, #12]
 80003f0:	60b9      	str	r1, [r7, #8]
 80003f2:	607a      	str	r2, [r7, #4]
 80003f4:	68fb      	ldr	r3, [r7, #12]
 80003f6:	6819      	ldr	r1, [r3, #0]
 80003f8:	68bb      	ldr	r3, [r7, #8]
 80003fa:	435b      	muls	r3, r3
 80003fc:	001a      	movs	r2, r3
 80003fe:	0013      	movs	r3, r2
 8000400:	005b      	lsls	r3, r3, #1
 8000402:	189b      	adds	r3, r3, r2
 8000404:	43db      	mvns	r3, r3
 8000406:	400b      	ands	r3, r1
 8000408:	001a      	movs	r2, r3
 800040a:	68bb      	ldr	r3, [r7, #8]
 800040c:	435b      	muls	r3, r3
 800040e:	6879      	ldr	r1, [r7, #4]
 8000410:	434b      	muls	r3, r1
 8000412:	431a      	orrs	r2, r3
 8000414:	68fb      	ldr	r3, [r7, #12]
 8000416:	601a      	str	r2, [r3, #0]
 8000418:	46c0      	nop			; (mov r8, r8)
 800041a:	46bd      	mov	sp, r7
 800041c:	b004      	add	sp, #16
 800041e:	bd80      	pop	{r7, pc}

08000420 <LL_GPIO_SetPinPull>:
 8000420:	b580      	push	{r7, lr}
 8000422:	b084      	sub	sp, #16
 8000424:	af00      	add	r7, sp, #0
 8000426:	60f8      	str	r0, [r7, #12]
 8000428:	60b9      	str	r1, [r7, #8]
 800042a:	607a      	str	r2, [r7, #4]
 800042c:	68fb      	ldr	r3, [r7, #12]
 800042e:	68d9      	ldr	r1, [r3, #12]
 8000430:	68bb      	ldr	r3, [r7, #8]
 8000432:	435b      	muls	r3, r3
 8000434:	001a      	movs	r2, r3
 8000436:	0013      	movs	r3, r2
 8000438:	005b      	lsls	r3, r3, #1
 800043a:	189b      	adds	r3, r3, r2
 800043c:	43db      	mvns	r3, r3
 800043e:	400b      	ands	r3, r1
 8000440:	001a      	movs	r2, r3
 8000442:	68bb      	ldr	r3, [r7, #8]
 8000444:	435b      	muls	r3, r3
 8000446:	6879      	ldr	r1, [r7, #4]
 8000448:	434b      	muls	r3, r1
 800044a:	431a      	orrs	r2, r3
 800044c:	68fb      	ldr	r3, [r7, #12]
 800044e:	60da      	str	r2, [r3, #12]
 8000450:	46c0      	nop			; (mov r8, r8)
 8000452:	46bd      	mov	sp, r7
 8000454:	b004      	add	sp, #16
 8000456:	bd80      	pop	{r7, pc}

08000458 <LL_GPIO_SetAFPin_0_7>:
 8000458:	b580      	push	{r7, lr}
 800045a:	b084      	sub	sp, #16
 800045c:	af00      	add	r7, sp, #0
 800045e:	60f8      	str	r0, [r7, #12]
 8000460:	60b9      	str	r1, [r7, #8]
 8000462:	607a      	str	r2, [r7, #4]
 8000464:	68fb      	ldr	r3, [r7, #12]
 8000466:	6a19      	ldr	r1, [r3, #32]
 8000468:	68bb      	ldr	r3, [r7, #8]
 800046a:	435b      	muls	r3, r3
 800046c:	68ba      	ldr	r2, [r7, #8]
 800046e:	4353      	muls	r3, r2
 8000470:	68ba      	ldr	r2, [r7, #8]
 8000472:	435a      	muls	r2, r3
 8000474:	0013      	movs	r3, r2
 8000476:	011b      	lsls	r3, r3, #4
 8000478:	1a9b      	subs	r3, r3, r2
 800047a:	43db      	mvns	r3, r3
 800047c:	400b      	ands	r3, r1
 800047e:	001a      	movs	r2, r3
 8000480:	68bb      	ldr	r3, [r7, #8]
 8000482:	435b      	muls	r3, r3
 8000484:	68b9      	ldr	r1, [r7, #8]
 8000486:	434b      	muls	r3, r1
 8000488:	68b9      	ldr	r1, [r7, #8]
 800048a:	434b      	muls	r3, r1
 800048c:	6879      	ldr	r1, [r7, #4]
 800048e:	434b      	muls	r3, r1
 8000490:	431a      	orrs	r2, r3
 8000492:	68fb      	ldr	r3, [r7, #12]
 8000494:	621a      	str	r2, [r3, #32]
 8000496:	46c0      	nop			; (mov r8, r8)
 8000498:	46bd      	mov	sp, r7
 800049a:	b004      	add	sp, #16
 800049c:	bd80      	pop	{r7, pc}

0800049e <LL_GPIO_IsInputPinSet>:
 800049e:	b580      	push	{r7, lr}
 80004a0:	b082      	sub	sp, #8
 80004a2:	af00      	add	r7, sp, #0
 80004a4:	6078      	str	r0, [r7, #4]
 80004a6:	6039      	str	r1, [r7, #0]
 80004a8:	687b      	ldr	r3, [r7, #4]
 80004aa:	691b      	ldr	r3, [r3, #16]
 80004ac:	683a      	ldr	r2, [r7, #0]
 80004ae:	4013      	ands	r3, r2
 80004b0:	683a      	ldr	r2, [r7, #0]
 80004b2:	1ad3      	subs	r3, r2, r3
 80004b4:	425a      	negs	r2, r3
 80004b6:	4153      	adcs	r3, r2
 80004b8:	b2db      	uxtb	r3, r3
 80004ba:	0018      	movs	r0, r3
 80004bc:	46bd      	mov	sp, r7
 80004be:	b002      	add	sp, #8
 80004c0:	bd80      	pop	{r7, pc}

080004c2 <LL_GPIO_WriteOutputPort>:
 80004c2:	b580      	push	{r7, lr}
 80004c4:	b082      	sub	sp, #8
 80004c6:	af00      	add	r7, sp, #0
 80004c8:	6078      	str	r0, [r7, #4]
 80004ca:	6039      	str	r1, [r7, #0]
 80004cc:	687b      	ldr	r3, [r7, #4]
 80004ce:	683a      	ldr	r2, [r7, #0]
 80004d0:	615a      	str	r2, [r3, #20]
 80004d2:	46c0      	nop			; (mov r8, r8)
 80004d4:	46bd      	mov	sp, r7
 80004d6:	b002      	add	sp, #8
 80004d8:	bd80      	pop	{r7, pc}

080004da <LL_GPIO_ReadOutputPort>:
 80004da:	b580      	push	{r7, lr}
 80004dc:	b082      	sub	sp, #8
 80004de:	af00      	add	r7, sp, #0
 80004e0:	6078      	str	r0, [r7, #4]
 80004e2:	687b      	ldr	r3, [r7, #4]
 80004e4:	695b      	ldr	r3, [r3, #20]
 80004e6:	0018      	movs	r0, r3
 80004e8:	46bd      	mov	sp, r7
 80004ea:	b002      	add	sp, #8
 80004ec:	bd80      	pop	{r7, pc}

080004ee <LL_GPIO_SetOutputPin>:
 80004ee:	b580      	push	{r7, lr}
 80004f0:	b082      	sub	sp, #8
 80004f2:	af00      	add	r7, sp, #0
 80004f4:	6078      	str	r0, [r7, #4]
 80004f6:	6039      	str	r1, [r7, #0]
 80004f8:	687b      	ldr	r3, [r7, #4]
 80004fa:	683a      	ldr	r2, [r7, #0]
 80004fc:	619a      	str	r2, [r3, #24]
 80004fe:	46c0      	nop			; (mov r8, r8)
 8000500:	46bd      	mov	sp, r7
 8000502:	b002      	add	sp, #8
 8000504:	bd80      	pop	{r7, pc}

08000506 <LL_GPIO_ResetOutputPin>:
 8000506:	b580      	push	{r7, lr}
 8000508:	b082      	sub	sp, #8
 800050a:	af00      	add	r7, sp, #0
 800050c:	6078      	str	r0, [r7, #4]
 800050e:	6039      	str	r1, [r7, #0]
 8000510:	687b      	ldr	r3, [r7, #4]
 8000512:	683a      	ldr	r2, [r7, #0]
 8000514:	629a      	str	r2, [r3, #40]	; 0x28
 8000516:	46c0      	nop			; (mov r8, r8)
 8000518:	46bd      	mov	sp, r7
 800051a:	b002      	add	sp, #8
 800051c:	bd80      	pop	{r7, pc}

0800051e <LL_TIM_EnableCounter>:
 800051e:	b580      	push	{r7, lr}
 8000520:	b082      	sub	sp, #8
 8000522:	af00      	add	r7, sp, #0
 8000524:	6078      	str	r0, [r7, #4]
 8000526:	687b      	ldr	r3, [r7, #4]
 8000528:	681b      	ldr	r3, [r3, #0]
 800052a:	2201      	movs	r2, #1
 800052c:	431a      	orrs	r2, r3
 800052e:	687b      	ldr	r3, [r7, #4]
 8000530:	601a      	str	r2, [r3, #0]
 8000532:	46c0      	nop			; (mov r8, r8)
 8000534:	46bd      	mov	sp, r7
 8000536:	b002      	add	sp, #8
 8000538:	bd80      	pop	{r7, pc}

0800053a <LL_TIM_GetCounterMode>:
 800053a:	b580      	push	{r7, lr}
 800053c:	b082      	sub	sp, #8
 800053e:	af00      	add	r7, sp, #0
 8000540:	6078      	str	r0, [r7, #4]
 8000542:	687b      	ldr	r3, [r7, #4]
 8000544:	681b      	ldr	r3, [r3, #0]
 8000546:	2270      	movs	r2, #112	; 0x70
 8000548:	4013      	ands	r3, r2
 800054a:	0018      	movs	r0, r3
 800054c:	46bd      	mov	sp, r7
 800054e:	b002      	add	sp, #8
 8000550:	bd80      	pop	{r7, pc}

08000552 <LL_TIM_SetAutoReload>:
 8000552:	b580      	push	{r7, lr}
 8000554:	b082      	sub	sp, #8
 8000556:	af00      	add	r7, sp, #0
 8000558:	6078      	str	r0, [r7, #4]
 800055a:	6039      	str	r1, [r7, #0]
 800055c:	687b      	ldr	r3, [r7, #4]
 800055e:	683a      	ldr	r2, [r7, #0]
 8000560:	62da      	str	r2, [r3, #44]	; 0x2c
 8000562:	46c0      	nop			; (mov r8, r8)
 8000564:	46bd      	mov	sp, r7
 8000566:	b002      	add	sp, #8
 8000568:	bd80      	pop	{r7, pc}
	...

0800056c <LL_TIM_IC_SetPolarity>:
 800056c:	b590      	push	{r4, r7, lr}
 800056e:	b085      	sub	sp, #20
 8000570:	af00      	add	r7, sp, #0
 8000572:	60f8      	str	r0, [r7, #12]
 8000574:	60b9      	str	r1, [r7, #8]
 8000576:	607a      	str	r2, [r7, #4]
 8000578:	68bb      	ldr	r3, [r7, #8]
 800057a:	2b01      	cmp	r3, #1
 800057c:	d01e      	beq.n	80005bc <LL_TIM_IC_SetPolarity+0x50>
 800057e:	68bb      	ldr	r3, [r7, #8]
 8000580:	2b04      	cmp	r3, #4
 8000582:	d019      	beq.n	80005b8 <LL_TIM_IC_SetPolarity+0x4c>
 8000584:	68bb      	ldr	r3, [r7, #8]
 8000586:	2b10      	cmp	r3, #16
 8000588:	d014      	beq.n	80005b4 <LL_TIM_IC_SetPolarity+0x48>
 800058a:	68bb      	ldr	r3, [r7, #8]
 800058c:	2b40      	cmp	r3, #64	; 0x40
 800058e:	d00f      	beq.n	80005b0 <LL_TIM_IC_SetPolarity+0x44>
 8000590:	68ba      	ldr	r2, [r7, #8]
 8000592:	2380      	movs	r3, #128	; 0x80
 8000594:	005b      	lsls	r3, r3, #1
 8000596:	429a      	cmp	r2, r3
 8000598:	d008      	beq.n	80005ac <LL_TIM_IC_SetPolarity+0x40>
 800059a:	68ba      	ldr	r2, [r7, #8]
 800059c:	2380      	movs	r3, #128	; 0x80
 800059e:	00db      	lsls	r3, r3, #3
 80005a0:	429a      	cmp	r2, r3
 80005a2:	d101      	bne.n	80005a8 <LL_TIM_IC_SetPolarity+0x3c>
 80005a4:	2305      	movs	r3, #5
 80005a6:	e00a      	b.n	80005be <LL_TIM_IC_SetPolarity+0x52>
 80005a8:	2306      	movs	r3, #6
 80005aa:	e008      	b.n	80005be <LL_TIM_IC_SetPolarity+0x52>
 80005ac:	2304      	movs	r3, #4
 80005ae:	e006      	b.n	80005be <LL_TIM_IC_SetPolarity+0x52>
 80005b0:	2303      	movs	r3, #3
 80005b2:	e004      	b.n	80005be <LL_TIM_IC_SetPolarity+0x52>
 80005b4:	2302      	movs	r3, #2
 80005b6:	e002      	b.n	80005be <LL_TIM_IC_SetPolarity+0x52>
 80005b8:	2301      	movs	r3, #1
 80005ba:	e000      	b.n	80005be <LL_TIM_IC_SetPolarity+0x52>
 80005bc:	2300      	movs	r3, #0
 80005be:	001c      	movs	r4, r3
 80005c0:	68fb      	ldr	r3, [r7, #12]
 80005c2:	6a1b      	ldr	r3, [r3, #32]
 80005c4:	0021      	movs	r1, r4
 80005c6:	4a0a      	ldr	r2, [pc, #40]	; (80005f0 <LL_TIM_IC_SetPolarity+0x84>)
 80005c8:	5c52      	ldrb	r2, [r2, r1]
 80005ca:	0011      	movs	r1, r2
 80005cc:	220a      	movs	r2, #10
 80005ce:	408a      	lsls	r2, r1
 80005d0:	43d2      	mvns	r2, r2
 80005d2:	401a      	ands	r2, r3
 80005d4:	0021      	movs	r1, r4
 80005d6:	4b06      	ldr	r3, [pc, #24]	; (80005f0 <LL_TIM_IC_SetPolarity+0x84>)
 80005d8:	5c5b      	ldrb	r3, [r3, r1]
 80005da:	0019      	movs	r1, r3
 80005dc:	687b      	ldr	r3, [r7, #4]
 80005de:	408b      	lsls	r3, r1
 80005e0:	431a      	orrs	r2, r3
 80005e2:	68fb      	ldr	r3, [r7, #12]
 80005e4:	621a      	str	r2, [r3, #32]
 80005e6:	46c0      	nop			; (mov r8, r8)
 80005e8:	46bd      	mov	sp, r7
 80005ea:	b005      	add	sp, #20
 80005ec:	bd90      	pop	{r4, r7, pc}
 80005ee:	46c0      	nop			; (mov r8, r8)
 80005f0:	08000cf8 	.word	0x08000cf8

080005f4 <LL_TIM_SetEncoderMode>:
 80005f4:	b580      	push	{r7, lr}
 80005f6:	b082      	sub	sp, #8
 80005f8:	af00      	add	r7, sp, #0
 80005fa:	6078      	str	r0, [r7, #4]
 80005fc:	6039      	str	r1, [r7, #0]
 80005fe:	687b      	ldr	r3, [r7, #4]
 8000600:	689b      	ldr	r3, [r3, #8]
 8000602:	2207      	movs	r2, #7
 8000604:	4393      	bics	r3, r2
 8000606:	001a      	movs	r2, r3
 8000608:	683b      	ldr	r3, [r7, #0]
 800060a:	431a      	orrs	r2, r3
 800060c:	687b      	ldr	r3, [r7, #4]
 800060e:	609a      	str	r2, [r3, #8]
 8000610:	46c0      	nop			; (mov r8, r8)
 8000612:	46bd      	mov	sp, r7
 8000614:	b002      	add	sp, #8
 8000616:	bd80      	pop	{r7, pc}

08000618 <rcc_config>:
 8000618:	b580      	push	{r7, lr}
 800061a:	af00      	add	r7, sp, #0
 800061c:	2001      	movs	r0, #1
 800061e:	f7ff fea3 	bl	8000368 <LL_FLASH_SetLatency>
 8000622:	f7ff fdf1 	bl	8000208 <LL_RCC_HSI_Enable>
 8000626:	f7ff fe57 	bl	80002d8 <LL_RCC_PLL_Enable>
 800062a:	46c0      	nop			; (mov r8, r8)
 800062c:	f7ff fdfa 	bl	8000224 <LL_RCC_HSI_IsReady>
 8000630:	0003      	movs	r3, r0
 8000632:	2b01      	cmp	r3, #1
 8000634:	d004      	beq.n	8000640 <rcc_config+0x28>
 8000636:	f7ff fe5d 	bl	80002f4 <LL_RCC_PLL_IsReady>
 800063a:	0003      	movs	r3, r0
 800063c:	2b01      	cmp	r3, #1
 800063e:	d1f5      	bne.n	800062c <rcc_config+0x14>
 8000640:	23a0      	movs	r3, #160	; 0xa0
 8000642:	039b      	lsls	r3, r3, #14
 8000644:	0019      	movs	r1, r3
 8000646:	2000      	movs	r0, #0
 8000648:	f7ff fe68 	bl	800031c <LL_RCC_PLL_ConfigDomain_SYS>
 800064c:	2000      	movs	r0, #0
 800064e:	f7ff fe19 	bl	8000284 <LL_RCC_SetAHBPrescaler>
 8000652:	2002      	movs	r0, #2
 8000654:	f7ff fdf6 	bl	8000244 <LL_RCC_SetSysClkSource>
 8000658:	46c0      	nop			; (mov r8, r8)
 800065a:	f7ff fe07 	bl	800026c <LL_RCC_GetSysClkSource>
 800065e:	0003      	movs	r3, r0
 8000660:	2b08      	cmp	r3, #8
 8000662:	d1fa      	bne.n	800065a <rcc_config+0x42>
 8000664:	2000      	movs	r0, #0
 8000666:	f7ff fe21 	bl	80002ac <LL_RCC_SetAPB1Prescaler>
 800066a:	4b03      	ldr	r3, [pc, #12]	; (8000678 <rcc_config+0x60>)
 800066c:	4a03      	ldr	r2, [pc, #12]	; (800067c <rcc_config+0x64>)
 800066e:	601a      	str	r2, [r3, #0]
 8000670:	46c0      	nop			; (mov r8, r8)
 8000672:	46bd      	mov	sp, r7
 8000674:	bd80      	pop	{r7, pc}
 8000676:	46c0      	nop			; (mov r8, r8)
 8000678:	20000124 	.word	0x20000124
 800067c:	02dc6c00 	.word	0x02dc6c00

08000680 <gpio_config>:
 8000680:	b580      	push	{r7, lr}
 8000682:	af00      	add	r7, sp, #0
 8000684:	2380      	movs	r3, #128	; 0x80
 8000686:	029b      	lsls	r3, r3, #10
 8000688:	0018      	movs	r0, r3
 800068a:	f7ff fe81 	bl	8000390 <LL_AHB1_GRP1_EnableClock>
 800068e:	2390      	movs	r3, #144	; 0x90
 8000690:	05db      	lsls	r3, r3, #23
 8000692:	2201      	movs	r2, #1
 8000694:	2104      	movs	r1, #4
 8000696:	0018      	movs	r0, r3
 8000698:	f7ff fea6 	bl	80003e8 <LL_GPIO_SetPinMode>
 800069c:	2390      	movs	r3, #144	; 0x90
 800069e:	05db      	lsls	r3, r3, #23
 80006a0:	2201      	movs	r2, #1
 80006a2:	2108      	movs	r1, #8
 80006a4:	0018      	movs	r0, r3
 80006a6:	f7ff fe9f 	bl	80003e8 <LL_GPIO_SetPinMode>
 80006aa:	2380      	movs	r3, #128	; 0x80
 80006ac:	02db      	lsls	r3, r3, #11
 80006ae:	0018      	movs	r0, r3
 80006b0:	f7ff fe6e 	bl	8000390 <LL_AHB1_GRP1_EnableClock>
 80006b4:	2380      	movs	r3, #128	; 0x80
 80006b6:	015b      	lsls	r3, r3, #5
 80006b8:	482c      	ldr	r0, [pc, #176]	; (800076c <gpio_config+0xec>)
 80006ba:	2201      	movs	r2, #1
 80006bc:	0019      	movs	r1, r3
 80006be:	f7ff fe93 	bl	80003e8 <LL_GPIO_SetPinMode>
 80006c2:	2380      	movs	r3, #128	; 0x80
 80006c4:	009b      	lsls	r3, r3, #2
 80006c6:	4829      	ldr	r0, [pc, #164]	; (800076c <gpio_config+0xec>)
 80006c8:	2201      	movs	r2, #1
 80006ca:	0019      	movs	r1, r3
 80006cc:	f7ff fe8c 	bl	80003e8 <LL_GPIO_SetPinMode>
 80006d0:	2380      	movs	r3, #128	; 0x80
 80006d2:	005b      	lsls	r3, r3, #1
 80006d4:	4825      	ldr	r0, [pc, #148]	; (800076c <gpio_config+0xec>)
 80006d6:	2201      	movs	r2, #1
 80006d8:	0019      	movs	r1, r3
 80006da:	f7ff fe85 	bl	80003e8 <LL_GPIO_SetPinMode>
 80006de:	4b23      	ldr	r3, [pc, #140]	; (800076c <gpio_config+0xec>)
 80006e0:	2201      	movs	r2, #1
 80006e2:	2140      	movs	r1, #64	; 0x40
 80006e4:	0018      	movs	r0, r3
 80006e6:	f7ff fe7f 	bl	80003e8 <LL_GPIO_SetPinMode>
 80006ea:	2380      	movs	r3, #128	; 0x80
 80006ec:	011b      	lsls	r3, r3, #4
 80006ee:	481f      	ldr	r0, [pc, #124]	; (800076c <gpio_config+0xec>)
 80006f0:	2201      	movs	r2, #1
 80006f2:	0019      	movs	r1, r3
 80006f4:	f7ff fe78 	bl	80003e8 <LL_GPIO_SetPinMode>
 80006f8:	4b1c      	ldr	r3, [pc, #112]	; (800076c <gpio_config+0xec>)
 80006fa:	2201      	movs	r2, #1
 80006fc:	2180      	movs	r1, #128	; 0x80
 80006fe:	0018      	movs	r0, r3
 8000700:	f7ff fe72 	bl	80003e8 <LL_GPIO_SetPinMode>
 8000704:	4b19      	ldr	r3, [pc, #100]	; (800076c <gpio_config+0xec>)
 8000706:	2201      	movs	r2, #1
 8000708:	2110      	movs	r1, #16
 800070a:	0018      	movs	r0, r3
 800070c:	f7ff fe6c 	bl	80003e8 <LL_GPIO_SetPinMode>
 8000710:	4b16      	ldr	r3, [pc, #88]	; (800076c <gpio_config+0xec>)
 8000712:	2201      	movs	r2, #1
 8000714:	2104      	movs	r1, #4
 8000716:	0018      	movs	r0, r3
 8000718:	f7ff fe66 	bl	80003e8 <LL_GPIO_SetPinMode>
 800071c:	4b13      	ldr	r3, [pc, #76]	; (800076c <gpio_config+0xec>)
 800071e:	2201      	movs	r2, #1
 8000720:	2102      	movs	r1, #2
 8000722:	0018      	movs	r0, r3
 8000724:	f7ff fe60 	bl	80003e8 <LL_GPIO_SetPinMode>
 8000728:	2380      	movs	r3, #128	; 0x80
 800072a:	00db      	lsls	r3, r3, #3
 800072c:	480f      	ldr	r0, [pc, #60]	; (800076c <gpio_config+0xec>)
 800072e:	2201      	movs	r2, #1
 8000730:	0019      	movs	r1, r3
 8000732:	f7ff fe59 	bl	80003e8 <LL_GPIO_SetPinMode>
 8000736:	4b0d      	ldr	r3, [pc, #52]	; (800076c <gpio_config+0xec>)
 8000738:	2201      	movs	r2, #1
 800073a:	2120      	movs	r1, #32
 800073c:	0018      	movs	r0, r3
 800073e:	f7ff fe53 	bl	80003e8 <LL_GPIO_SetPinMode>
 8000742:	4b0a      	ldr	r3, [pc, #40]	; (800076c <gpio_config+0xec>)
 8000744:	2201      	movs	r2, #1
 8000746:	2108      	movs	r1, #8
 8000748:	0018      	movs	r0, r3
 800074a:	f7ff fe4d 	bl	80003e8 <LL_GPIO_SetPinMode>
 800074e:	4b07      	ldr	r3, [pc, #28]	; (800076c <gpio_config+0xec>)
 8000750:	2200      	movs	r2, #0
 8000752:	2101      	movs	r1, #1
 8000754:	0018      	movs	r0, r3
 8000756:	f7ff fe47 	bl	80003e8 <LL_GPIO_SetPinMode>
 800075a:	4b04      	ldr	r3, [pc, #16]	; (800076c <gpio_config+0xec>)
 800075c:	2202      	movs	r2, #2
 800075e:	2101      	movs	r1, #1
 8000760:	0018      	movs	r0, r3
 8000762:	f7ff fe5d 	bl	8000420 <LL_GPIO_SetPinPull>
 8000766:	46c0      	nop			; (mov r8, r8)
 8000768:	46bd      	mov	sp, r7
 800076a:	bd80      	pop	{r7, pc}
 800076c:	48000400 	.word	0x48000400

08000770 <timers_config>:
 8000770:	b580      	push	{r7, lr}
 8000772:	af00      	add	r7, sp, #0
 8000774:	2380      	movs	r3, #128	; 0x80
 8000776:	029b      	lsls	r3, r3, #10
 8000778:	0018      	movs	r0, r3
 800077a:	f7ff fe09 	bl	8000390 <LL_AHB1_GRP1_EnableClock>
 800077e:	2390      	movs	r3, #144	; 0x90
 8000780:	05db      	lsls	r3, r3, #23
 8000782:	2202      	movs	r2, #2
 8000784:	2101      	movs	r1, #1
 8000786:	0018      	movs	r0, r3
 8000788:	f7ff fe2e 	bl	80003e8 <LL_GPIO_SetPinMode>
 800078c:	2390      	movs	r3, #144	; 0x90
 800078e:	05db      	lsls	r3, r3, #23
 8000790:	2202      	movs	r2, #2
 8000792:	2102      	movs	r1, #2
 8000794:	0018      	movs	r0, r3
 8000796:	f7ff fe27 	bl	80003e8 <LL_GPIO_SetPinMode>
 800079a:	2390      	movs	r3, #144	; 0x90
 800079c:	05db      	lsls	r3, r3, #23
 800079e:	2202      	movs	r2, #2
 80007a0:	2101      	movs	r1, #1
 80007a2:	0018      	movs	r0, r3
 80007a4:	f7ff fe58 	bl	8000458 <LL_GPIO_SetAFPin_0_7>
 80007a8:	2390      	movs	r3, #144	; 0x90
 80007aa:	05db      	lsls	r3, r3, #23
 80007ac:	2202      	movs	r2, #2
 80007ae:	2102      	movs	r1, #2
 80007b0:	0018      	movs	r0, r3
 80007b2:	f7ff fe51 	bl	8000458 <LL_GPIO_SetAFPin_0_7>
 80007b6:	2390      	movs	r3, #144	; 0x90
 80007b8:	05db      	lsls	r3, r3, #23
 80007ba:	2201      	movs	r2, #1
 80007bc:	2101      	movs	r1, #1
 80007be:	0018      	movs	r0, r3
 80007c0:	f7ff fe2e 	bl	8000420 <LL_GPIO_SetPinPull>
 80007c4:	2390      	movs	r3, #144	; 0x90
 80007c6:	05db      	lsls	r3, r3, #23
 80007c8:	2201      	movs	r2, #1
 80007ca:	2102      	movs	r1, #2
 80007cc:	0018      	movs	r0, r3
 80007ce:	f7ff fe27 	bl	8000420 <LL_GPIO_SetPinPull>
 80007d2:	2001      	movs	r0, #1
 80007d4:	f7ff fdf2 	bl	80003bc <LL_APB1_GRP1_EnableClock>
 80007d8:	2380      	movs	r3, #128	; 0x80
 80007da:	05db      	lsls	r3, r3, #23
 80007dc:	2103      	movs	r1, #3
 80007de:	0018      	movs	r0, r3
 80007e0:	f7ff ff08 	bl	80005f4 <LL_TIM_SetEncoderMode>
 80007e4:	2380      	movs	r3, #128	; 0x80
 80007e6:	05db      	lsls	r3, r3, #23
 80007e8:	2202      	movs	r2, #2
 80007ea:	2101      	movs	r1, #1
 80007ec:	0018      	movs	r0, r3
 80007ee:	f7ff febd 	bl	800056c <LL_TIM_IC_SetPolarity>
 80007f2:	2380      	movs	r3, #128	; 0x80
 80007f4:	05db      	lsls	r3, r3, #23
 80007f6:	2202      	movs	r2, #2
 80007f8:	2110      	movs	r1, #16
 80007fa:	0018      	movs	r0, r3
 80007fc:	f7ff feb6 	bl	800056c <LL_TIM_IC_SetPolarity>
 8000800:	4a07      	ldr	r2, [pc, #28]	; (8000820 <timers_config+0xb0>)
 8000802:	2380      	movs	r3, #128	; 0x80
 8000804:	05db      	lsls	r3, r3, #23
 8000806:	0011      	movs	r1, r2
 8000808:	0018      	movs	r0, r3
 800080a:	f7ff fea2 	bl	8000552 <LL_TIM_SetAutoReload>
 800080e:	2380      	movs	r3, #128	; 0x80
 8000810:	05db      	lsls	r3, r3, #23
 8000812:	0018      	movs	r0, r3
 8000814:	f7ff fe83 	bl	800051e <LL_TIM_EnableCounter>
 8000818:	46c0      	nop			; (mov r8, r8)
 800081a:	46bd      	mov	sp, r7
 800081c:	bd80      	pop	{r7, pc}
 800081e:	46c0      	nop			; (mov r8, r8)
 8000820:	0000ffff 	.word	0x0000ffff

08000824 <main>:
 8000824:	b590      	push	{r4, r7, lr}
 8000826:	b087      	sub	sp, #28
 8000828:	af00      	add	r7, sp, #0
 800082a:	2305      	movs	r3, #5
 800082c:	617b      	str	r3, [r7, #20]
 800082e:	2300      	movs	r3, #0
 8000830:	607b      	str	r3, [r7, #4]
 8000832:	2300      	movs	r3, #0
 8000834:	613b      	str	r3, [r7, #16]
 8000836:	2300      	movs	r3, #0
 8000838:	60fb      	str	r3, [r7, #12]
 800083a:	f7ff feed 	bl	8000618 <rcc_config>
 800083e:	f7ff ff1f 	bl	8000680 <gpio_config>
 8000842:	f7ff ff95 	bl	8000770 <timers_config>
 8000846:	f000 f90b 	bl	8000a60 <initialize_battlefield>
 800084a:	2300      	movs	r3, #0
 800084c:	60bb      	str	r3, [r7, #8]
 800084e:	4b3c      	ldr	r3, [pc, #240]	; (8000940 <main+0x11c>)
 8000850:	6958      	ldr	r0, [r3, #20]
 8000852:	68bb      	ldr	r3, [r7, #8]
 8000854:	4a3b      	ldr	r2, [pc, #236]	; (8000944 <main+0x120>)
 8000856:	4013      	ands	r3, r2
 8000858:	d504      	bpl.n	8000864 <main+0x40>
 800085a:	3b01      	subs	r3, #1
 800085c:	2204      	movs	r2, #4
 800085e:	4252      	negs	r2, r2
 8000860:	4313      	orrs	r3, r2
 8000862:	3301      	adds	r3, #1
 8000864:	0019      	movs	r1, r3
 8000866:	f000 f877 	bl	8000958 <set_indicator_hp>
 800086a:	f000 f8c7 	bl	80009fc <get_encoder_rotation>
 800086e:	4b36      	ldr	r3, [pc, #216]	; (8000948 <main+0x124>)
 8000870:	2101      	movs	r1, #1
 8000872:	0018      	movs	r0, r3
 8000874:	f7ff fe13 	bl	800049e <LL_GPIO_IsInputPinSet>
 8000878:	1e03      	subs	r3, r0, #0
 800087a:	d003      	beq.n	8000884 <main+0x60>
 800087c:	2301      	movs	r3, #1
 800087e:	60fb      	str	r3, [r7, #12]
 8000880:	2300      	movs	r3, #0
 8000882:	613b      	str	r3, [r7, #16]
 8000884:	68fb      	ldr	r3, [r7, #12]
 8000886:	2b00      	cmp	r3, #0
 8000888:	d002      	beq.n	8000890 <main+0x6c>
 800088a:	693b      	ldr	r3, [r7, #16]
 800088c:	3301      	adds	r3, #1
 800088e:	613b      	str	r3, [r7, #16]
 8000890:	693b      	ldr	r3, [r7, #16]
 8000892:	2b09      	cmp	r3, #9
 8000894:	d949      	bls.n	800092a <main+0x106>
 8000896:	697b      	ldr	r3, [r7, #20]
 8000898:	3b01      	subs	r3, #1
 800089a:	617b      	str	r3, [r7, #20]
 800089c:	4b2b      	ldr	r3, [pc, #172]	; (800094c <main+0x128>)
 800089e:	681b      	ldr	r3, [r3, #0]
 80008a0:	1c5a      	adds	r2, r3, #1
 80008a2:	4b2a      	ldr	r3, [pc, #168]	; (800094c <main+0x128>)
 80008a4:	601a      	str	r2, [r3, #0]
 80008a6:	4b29      	ldr	r3, [pc, #164]	; (800094c <main+0x128>)
 80008a8:	681b      	ldr	r3, [r3, #0]
 80008aa:	1e5a      	subs	r2, r3, #1
 80008ac:	4924      	ldr	r1, [pc, #144]	; (8000940 <main+0x11c>)
 80008ae:	0013      	movs	r3, r2
 80008b0:	00db      	lsls	r3, r3, #3
 80008b2:	189b      	adds	r3, r3, r2
 80008b4:	009b      	lsls	r3, r3, #2
 80008b6:	4a26      	ldr	r2, [pc, #152]	; (8000950 <main+0x12c>)
 80008b8:	18cb      	adds	r3, r1, r3
 80008ba:	ca13      	ldmia	r2!, {r0, r1, r4}
 80008bc:	c313      	stmia	r3!, {r0, r1, r4}
 80008be:	ca13      	ldmia	r2!, {r0, r1, r4}
 80008c0:	c313      	stmia	r3!, {r0, r1, r4}
 80008c2:	ca13      	ldmia	r2!, {r0, r1, r4}
 80008c4:	c313      	stmia	r3!, {r0, r1, r4}
 80008c6:	4b21      	ldr	r3, [pc, #132]	; (800094c <main+0x128>)
 80008c8:	681b      	ldr	r3, [r3, #0]
 80008ca:	1e5a      	subs	r2, r3, #1
 80008cc:	4b1c      	ldr	r3, [pc, #112]	; (8000940 <main+0x11c>)
 80008ce:	6899      	ldr	r1, [r3, #8]
 80008d0:	481b      	ldr	r0, [pc, #108]	; (8000940 <main+0x11c>)
 80008d2:	0013      	movs	r3, r2
 80008d4:	00db      	lsls	r3, r3, #3
 80008d6:	189b      	adds	r3, r3, r2
 80008d8:	009b      	lsls	r3, r3, #2
 80008da:	18c3      	adds	r3, r0, r3
 80008dc:	3308      	adds	r3, #8
 80008de:	6019      	str	r1, [r3, #0]
 80008e0:	4b17      	ldr	r3, [pc, #92]	; (8000940 <main+0x11c>)
 80008e2:	6859      	ldr	r1, [r3, #4]
 80008e4:	4b19      	ldr	r3, [pc, #100]	; (800094c <main+0x128>)
 80008e6:	681b      	ldr	r3, [r3, #0]
 80008e8:	1e5a      	subs	r2, r3, #1
 80008ea:	4815      	ldr	r0, [pc, #84]	; (8000940 <main+0x11c>)
 80008ec:	0013      	movs	r3, r2
 80008ee:	00db      	lsls	r3, r3, #3
 80008f0:	189b      	adds	r3, r3, r2
 80008f2:	009b      	lsls	r3, r3, #2
 80008f4:	18c3      	adds	r3, r0, r3
 80008f6:	330c      	adds	r3, #12
 80008f8:	681a      	ldr	r2, [r3, #0]
 80008fa:	4b11      	ldr	r3, [pc, #68]	; (8000940 <main+0x11c>)
 80008fc:	68db      	ldr	r3, [r3, #12]
 80008fe:	18d3      	adds	r3, r2, r3
 8000900:	2b00      	cmp	r3, #0
 8000902:	da00      	bge.n	8000906 <main+0xe2>
 8000904:	3301      	adds	r3, #1
 8000906:	105b      	asrs	r3, r3, #1
 8000908:	0018      	movs	r0, r3
 800090a:	4b10      	ldr	r3, [pc, #64]	; (800094c <main+0x128>)
 800090c:	681b      	ldr	r3, [r3, #0]
 800090e:	1e5a      	subs	r2, r3, #1
 8000910:	1809      	adds	r1, r1, r0
 8000912:	480b      	ldr	r0, [pc, #44]	; (8000940 <main+0x11c>)
 8000914:	0013      	movs	r3, r2
 8000916:	00db      	lsls	r3, r3, #3
 8000918:	189b      	adds	r3, r3, r2
 800091a:	009b      	lsls	r3, r3, #2
 800091c:	18c3      	adds	r3, r0, r3
 800091e:	3304      	adds	r3, #4
 8000920:	6019      	str	r1, [r3, #0]
 8000922:	2300      	movs	r3, #0
 8000924:	60fb      	str	r3, [r7, #12]
 8000926:	2300      	movs	r3, #0
 8000928:	613b      	str	r3, [r7, #16]
 800092a:	68bb      	ldr	r3, [r7, #8]
 800092c:	4a09      	ldr	r2, [pc, #36]	; (8000954 <main+0x130>)
 800092e:	4293      	cmp	r3, r2
 8000930:	dd01      	ble.n	8000936 <main+0x112>
 8000932:	2300      	movs	r3, #0
 8000934:	60bb      	str	r3, [r7, #8]
 8000936:	68bb      	ldr	r3, [r7, #8]
 8000938:	3301      	adds	r3, #1
 800093a:	60bb      	str	r3, [r7, #8]
 800093c:	e787      	b.n	800084e <main+0x2a>
 800093e:	46c0      	nop			; (mov r8, r8)
 8000940:	20000570 	.word	0x20000570
 8000944:	80000003 	.word	0x80000003
 8000948:	48000400 	.word	0x48000400
 800094c:	2000056c 	.word	0x2000056c
 8000950:	20000024 	.word	0x20000024
 8000954:	000f4240 	.word	0x000f4240

08000958 <set_indicator_hp>:
 8000958:	b590      	push	{r4, r7, lr}
 800095a:	b089      	sub	sp, #36	; 0x24
 800095c:	af00      	add	r7, sp, #0
 800095e:	6078      	str	r0, [r7, #4]
 8000960:	6039      	str	r1, [r7, #0]
 8000962:	2300      	movs	r3, #0
 8000964:	61fb      	str	r3, [r7, #28]
 8000966:	4b1f      	ldr	r3, [pc, #124]	; (80009e4 <set_indicator_hp+0x8c>)
 8000968:	0018      	movs	r0, r3
 800096a:	f7ff fdb6 	bl	80004da <LL_GPIO_ReadOutputPort>
 800096e:	0003      	movs	r3, r0
 8000970:	61fb      	str	r3, [r7, #28]
 8000972:	4b1d      	ldr	r3, [pc, #116]	; (80009e8 <set_indicator_hp+0x90>)
 8000974:	69da      	ldr	r2, [r3, #28]
 8000976:	240c      	movs	r4, #12
 8000978:	193b      	adds	r3, r7, r4
 800097a:	601a      	str	r2, [r3, #0]
 800097c:	4b1a      	ldr	r3, [pc, #104]	; (80009e8 <set_indicator_hp+0x90>)
 800097e:	6bda      	ldr	r2, [r3, #60]	; 0x3c
 8000980:	193b      	adds	r3, r7, r4
 8000982:	605a      	str	r2, [r3, #4]
 8000984:	4b19      	ldr	r3, [pc, #100]	; (80009ec <set_indicator_hp+0x94>)
 8000986:	681a      	ldr	r2, [r3, #0]
 8000988:	193b      	adds	r3, r7, r4
 800098a:	609a      	str	r2, [r3, #8]
 800098c:	687b      	ldr	r3, [r7, #4]
 800098e:	17da      	asrs	r2, r3, #31
 8000990:	189b      	adds	r3, r3, r2
 8000992:	4053      	eors	r3, r2
 8000994:	210a      	movs	r1, #10
 8000996:	0018      	movs	r0, r3
 8000998:	f7ff fbdc 	bl	8000154 <__aeabi_idivmod>
 800099c:	000b      	movs	r3, r1
 800099e:	001a      	movs	r2, r3
 80009a0:	4b13      	ldr	r3, [pc, #76]	; (80009f0 <set_indicator_hp+0x98>)
 80009a2:	0092      	lsls	r2, r2, #2
 80009a4:	58d2      	ldr	r2, [r2, r3]
 80009a6:	193b      	adds	r3, r7, r4
 80009a8:	60da      	str	r2, [r3, #12]
 80009aa:	4b12      	ldr	r3, [pc, #72]	; (80009f4 <set_indicator_hp+0x9c>)
 80009ac:	681b      	ldr	r3, [r3, #0]
 80009ae:	43db      	mvns	r3, r3
 80009b0:	69fa      	ldr	r2, [r7, #28]
 80009b2:	401a      	ands	r2, r3
 80009b4:	683b      	ldr	r3, [r7, #0]
 80009b6:	2103      	movs	r1, #3
 80009b8:	1ac9      	subs	r1, r1, r3
 80009ba:	193b      	adds	r3, r7, r4
 80009bc:	0089      	lsls	r1, r1, #2
 80009be:	58cb      	ldr	r3, [r1, r3]
 80009c0:	431a      	orrs	r2, r3
 80009c2:	4b0d      	ldr	r3, [pc, #52]	; (80009f8 <set_indicator_hp+0xa0>)
 80009c4:	6839      	ldr	r1, [r7, #0]
 80009c6:	0089      	lsls	r1, r1, #2
 80009c8:	58cb      	ldr	r3, [r1, r3]
 80009ca:	4313      	orrs	r3, r2
 80009cc:	61fb      	str	r3, [r7, #28]
 80009ce:	69fb      	ldr	r3, [r7, #28]
 80009d0:	4a04      	ldr	r2, [pc, #16]	; (80009e4 <set_indicator_hp+0x8c>)
 80009d2:	0019      	movs	r1, r3
 80009d4:	0010      	movs	r0, r2
 80009d6:	f7ff fd74 	bl	80004c2 <LL_GPIO_WriteOutputPort>
 80009da:	46c0      	nop			; (mov r8, r8)
 80009dc:	46bd      	mov	sp, r7
 80009de:	b009      	add	sp, #36	; 0x24
 80009e0:	bd90      	pop	{r4, r7, pc}
 80009e2:	46c0      	nop			; (mov r8, r8)
 80009e4:	48000400 	.word	0x48000400
 80009e8:	20000070 	.word	0x20000070
 80009ec:	200000d8 	.word	0x200000d8
 80009f0:	200000ec 	.word	0x200000ec
 80009f4:	2000006c 	.word	0x2000006c
 80009f8:	20000114 	.word	0x20000114

080009fc <get_encoder_rotation>:
 80009fc:	b580      	push	{r7, lr}
 80009fe:	af00      	add	r7, sp, #0
 8000a00:	2380      	movs	r3, #128	; 0x80
 8000a02:	05db      	lsls	r3, r3, #23
 8000a04:	0018      	movs	r0, r3
 8000a06:	f7ff fd98 	bl	800053a <LL_TIM_GetCounterMode>
 8000a0a:	1e03      	subs	r3, r0, #0
 8000a0c:	d10d      	bne.n	8000a2a <get_encoder_rotation+0x2e>
 8000a0e:	2390      	movs	r3, #144	; 0x90
 8000a10:	05db      	lsls	r3, r3, #23
 8000a12:	2104      	movs	r1, #4
 8000a14:	0018      	movs	r0, r3
 8000a16:	f7ff fd6a 	bl	80004ee <LL_GPIO_SetOutputPin>
 8000a1a:	2390      	movs	r3, #144	; 0x90
 8000a1c:	05db      	lsls	r3, r3, #23
 8000a1e:	2108      	movs	r1, #8
 8000a20:	0018      	movs	r0, r3
 8000a22:	f7ff fd70 	bl	8000506 <LL_GPIO_ResetOutputPin>
 8000a26:	2301      	movs	r3, #1
 8000a28:	e017      	b.n	8000a5a <get_encoder_rotation+0x5e>
 8000a2a:	2380      	movs	r3, #128	; 0x80
 8000a2c:	05db      	lsls	r3, r3, #23
 8000a2e:	0018      	movs	r0, r3
 8000a30:	f7ff fd83 	bl	800053a <LL_TIM_GetCounterMode>
 8000a34:	0003      	movs	r3, r0
 8000a36:	2b10      	cmp	r3, #16
 8000a38:	d10e      	bne.n	8000a58 <get_encoder_rotation+0x5c>
 8000a3a:	2390      	movs	r3, #144	; 0x90
 8000a3c:	05db      	lsls	r3, r3, #23
 8000a3e:	2108      	movs	r1, #8
 8000a40:	0018      	movs	r0, r3
 8000a42:	f7ff fd54 	bl	80004ee <LL_GPIO_SetOutputPin>
 8000a46:	2390      	movs	r3, #144	; 0x90
 8000a48:	05db      	lsls	r3, r3, #23
 8000a4a:	2104      	movs	r1, #4
 8000a4c:	0018      	movs	r0, r3
 8000a4e:	f7ff fd5a 	bl	8000506 <LL_GPIO_ResetOutputPin>
 8000a52:	2301      	movs	r3, #1
 8000a54:	425b      	negs	r3, r3
 8000a56:	e000      	b.n	8000a5a <get_encoder_rotation+0x5e>
 8000a58:	2300      	movs	r3, #0
 8000a5a:	0018      	movs	r0, r3
 8000a5c:	46bd      	mov	sp, r7
 8000a5e:	bd80      	pop	{r7, pc}

08000a60 <initialize_battlefield>:
 8000a60:	b590      	push	{r4, r7, lr}
 8000a62:	b083      	sub	sp, #12
 8000a64:	af00      	add	r7, sp, #0
 8000a66:	2301      	movs	r3, #1
 8000a68:	607b      	str	r3, [r7, #4]
 8000a6a:	e022      	b.n	8000ab2 <initialize_battlefield+0x52>
 8000a6c:	4925      	ldr	r1, [pc, #148]	; (8000b04 <initialize_battlefield+0xa4>)
 8000a6e:	687a      	ldr	r2, [r7, #4]
 8000a70:	0013      	movs	r3, r2
 8000a72:	00db      	lsls	r3, r3, #3
 8000a74:	189b      	adds	r3, r3, r2
 8000a76:	009b      	lsls	r3, r3, #2
 8000a78:	4a23      	ldr	r2, [pc, #140]	; (8000b08 <initialize_battlefield+0xa8>)
 8000a7a:	18cb      	adds	r3, r1, r3
 8000a7c:	ca13      	ldmia	r2!, {r0, r1, r4}
 8000a7e:	c313      	stmia	r3!, {r0, r1, r4}
 8000a80:	ca13      	ldmia	r2!, {r0, r1, r4}
 8000a82:	c313      	stmia	r3!, {r0, r1, r4}
 8000a84:	ca13      	ldmia	r2!, {r0, r1, r4}
 8000a86:	c313      	stmia	r3!, {r0, r1, r4}
 8000a88:	4b1f      	ldr	r3, [pc, #124]	; (8000b08 <initialize_battlefield+0xa8>)
 8000a8a:	689a      	ldr	r2, [r3, #8]
 8000a8c:	687b      	ldr	r3, [r7, #4]
 8000a8e:	1e59      	subs	r1, r3, #1
 8000a90:	4b1d      	ldr	r3, [pc, #116]	; (8000b08 <initialize_battlefield+0xa8>)
 8000a92:	691b      	ldr	r3, [r3, #16]
 8000a94:	3308      	adds	r3, #8
 8000a96:	434b      	muls	r3, r1
 8000a98:	18d1      	adds	r1, r2, r3
 8000a9a:	481a      	ldr	r0, [pc, #104]	; (8000b04 <initialize_battlefield+0xa4>)
 8000a9c:	687a      	ldr	r2, [r7, #4]
 8000a9e:	0013      	movs	r3, r2
 8000aa0:	00db      	lsls	r3, r3, #3
 8000aa2:	189b      	adds	r3, r3, r2
 8000aa4:	009b      	lsls	r3, r3, #2
 8000aa6:	18c3      	adds	r3, r0, r3
 8000aa8:	3308      	adds	r3, #8
 8000aaa:	6019      	str	r1, [r3, #0]
 8000aac:	687b      	ldr	r3, [r7, #4]
 8000aae:	3301      	adds	r3, #1
 8000ab0:	607b      	str	r3, [r7, #4]
 8000ab2:	687b      	ldr	r3, [r7, #4]
 8000ab4:	2b06      	cmp	r3, #6
 8000ab6:	ddd9      	ble.n	8000a6c <initialize_battlefield+0xc>
 8000ab8:	4b12      	ldr	r3, [pc, #72]	; (8000b04 <initialize_battlefield+0xa4>)
 8000aba:	22fc      	movs	r2, #252	; 0xfc
 8000abc:	4913      	ldr	r1, [pc, #76]	; (8000b0c <initialize_battlefield+0xac>)
 8000abe:	189b      	adds	r3, r3, r2
 8000ac0:	000a      	movs	r2, r1
 8000ac2:	ca13      	ldmia	r2!, {r0, r1, r4}
 8000ac4:	c313      	stmia	r3!, {r0, r1, r4}
 8000ac6:	ca13      	ldmia	r2!, {r0, r1, r4}
 8000ac8:	c313      	stmia	r3!, {r0, r1, r4}
 8000aca:	ca13      	ldmia	r2!, {r0, r1, r4}
 8000acc:	c313      	stmia	r3!, {r0, r1, r4}
 8000ace:	4a0d      	ldr	r2, [pc, #52]	; (8000b04 <initialize_battlefield+0xa4>)
 8000ad0:	2382      	movs	r3, #130	; 0x82
 8000ad2:	005b      	lsls	r3, r3, #1
 8000ad4:	216f      	movs	r1, #111	; 0x6f
 8000ad6:	50d1      	str	r1, [r2, r3]
 8000ad8:	4a0a      	ldr	r2, [pc, #40]	; (8000b04 <initialize_battlefield+0xa4>)
 8000ada:	2380      	movs	r3, #128	; 0x80
 8000adc:	005b      	lsls	r3, r3, #1
 8000ade:	2128      	movs	r1, #40	; 0x28
 8000ae0:	50d1      	str	r1, [r2, r3]
 8000ae2:	4b08      	ldr	r3, [pc, #32]	; (8000b04 <initialize_battlefield+0xa4>)
 8000ae4:	4a0a      	ldr	r2, [pc, #40]	; (8000b10 <initialize_battlefield+0xb0>)
 8000ae6:	ca13      	ldmia	r2!, {r0, r1, r4}
 8000ae8:	c313      	stmia	r3!, {r0, r1, r4}
 8000aea:	ca13      	ldmia	r2!, {r0, r1, r4}
 8000aec:	c313      	stmia	r3!, {r0, r1, r4}
 8000aee:	ca13      	ldmia	r2!, {r0, r1, r4}
 8000af0:	c313      	stmia	r3!, {r0, r1, r4}
 8000af2:	4b08      	ldr	r3, [pc, #32]	; (8000b14 <initialize_battlefield+0xb4>)
 8000af4:	2208      	movs	r2, #8
 8000af6:	601a      	str	r2, [r3, #0]
 8000af8:	4b02      	ldr	r3, [pc, #8]	; (8000b04 <initialize_battlefield+0xa4>)
 8000afa:	0018      	movs	r0, r3
 8000afc:	46bd      	mov	sp, r7
 8000afe:	b003      	add	sp, #12
 8000b00:	bd90      	pop	{r4, r7, pc}
 8000b02:	46c0      	nop			; (mov r8, r8)
 8000b04:	20000570 	.word	0x20000570
 8000b08:	20000048 	.word	0x20000048
 8000b0c:	20000024 	.word	0x20000024
 8000b10:	20000000 	.word	0x20000000
 8000b14:	2000056c 	.word	0x2000056c

08000b18 <SystemInit>:
 8000b18:	b580      	push	{r7, lr}
 8000b1a:	af00      	add	r7, sp, #0
 8000b1c:	4b1a      	ldr	r3, [pc, #104]	; (8000b88 <SystemInit+0x70>)
 8000b1e:	681a      	ldr	r2, [r3, #0]
 8000b20:	4b19      	ldr	r3, [pc, #100]	; (8000b88 <SystemInit+0x70>)
 8000b22:	2101      	movs	r1, #1
 8000b24:	430a      	orrs	r2, r1
 8000b26:	601a      	str	r2, [r3, #0]
 8000b28:	4b17      	ldr	r3, [pc, #92]	; (8000b88 <SystemInit+0x70>)
 8000b2a:	685a      	ldr	r2, [r3, #4]
 8000b2c:	4b16      	ldr	r3, [pc, #88]	; (8000b88 <SystemInit+0x70>)
 8000b2e:	4917      	ldr	r1, [pc, #92]	; (8000b8c <SystemInit+0x74>)
 8000b30:	400a      	ands	r2, r1
 8000b32:	605a      	str	r2, [r3, #4]
 8000b34:	4b14      	ldr	r3, [pc, #80]	; (8000b88 <SystemInit+0x70>)
 8000b36:	681a      	ldr	r2, [r3, #0]
 8000b38:	4b13      	ldr	r3, [pc, #76]	; (8000b88 <SystemInit+0x70>)
 8000b3a:	4915      	ldr	r1, [pc, #84]	; (8000b90 <SystemInit+0x78>)
 8000b3c:	400a      	ands	r2, r1
 8000b3e:	601a      	str	r2, [r3, #0]
 8000b40:	4b11      	ldr	r3, [pc, #68]	; (8000b88 <SystemInit+0x70>)
 8000b42:	681a      	ldr	r2, [r3, #0]
 8000b44:	4b10      	ldr	r3, [pc, #64]	; (8000b88 <SystemInit+0x70>)
 8000b46:	4913      	ldr	r1, [pc, #76]	; (8000b94 <SystemInit+0x7c>)
 8000b48:	400a      	ands	r2, r1
 8000b4a:	601a      	str	r2, [r3, #0]
 8000b4c:	4b0e      	ldr	r3, [pc, #56]	; (8000b88 <SystemInit+0x70>)
 8000b4e:	685a      	ldr	r2, [r3, #4]
 8000b50:	4b0d      	ldr	r3, [pc, #52]	; (8000b88 <SystemInit+0x70>)
 8000b52:	4911      	ldr	r1, [pc, #68]	; (8000b98 <SystemInit+0x80>)
 8000b54:	400a      	ands	r2, r1
 8000b56:	605a      	str	r2, [r3, #4]
 8000b58:	4b0b      	ldr	r3, [pc, #44]	; (8000b88 <SystemInit+0x70>)
 8000b5a:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8000b5c:	4b0a      	ldr	r3, [pc, #40]	; (8000b88 <SystemInit+0x70>)
 8000b5e:	210f      	movs	r1, #15
 8000b60:	438a      	bics	r2, r1
 8000b62:	62da      	str	r2, [r3, #44]	; 0x2c
 8000b64:	4b08      	ldr	r3, [pc, #32]	; (8000b88 <SystemInit+0x70>)
 8000b66:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8000b68:	4b07      	ldr	r3, [pc, #28]	; (8000b88 <SystemInit+0x70>)
 8000b6a:	490c      	ldr	r1, [pc, #48]	; (8000b9c <SystemInit+0x84>)
 8000b6c:	400a      	ands	r2, r1
 8000b6e:	631a      	str	r2, [r3, #48]	; 0x30
 8000b70:	4b05      	ldr	r3, [pc, #20]	; (8000b88 <SystemInit+0x70>)
 8000b72:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8000b74:	4b04      	ldr	r3, [pc, #16]	; (8000b88 <SystemInit+0x70>)
 8000b76:	2101      	movs	r1, #1
 8000b78:	438a      	bics	r2, r1
 8000b7a:	635a      	str	r2, [r3, #52]	; 0x34
 8000b7c:	4b02      	ldr	r3, [pc, #8]	; (8000b88 <SystemInit+0x70>)
 8000b7e:	2200      	movs	r2, #0
 8000b80:	609a      	str	r2, [r3, #8]
 8000b82:	46c0      	nop			; (mov r8, r8)
 8000b84:	46bd      	mov	sp, r7
 8000b86:	bd80      	pop	{r7, pc}
 8000b88:	40021000 	.word	0x40021000
 8000b8c:	f8ffb80c 	.word	0xf8ffb80c
 8000b90:	fef6ffff 	.word	0xfef6ffff
 8000b94:	fffbffff 	.word	0xfffbffff
 8000b98:	ffc0ffff 	.word	0xffc0ffff
 8000b9c:	fffffeac 	.word	0xfffffeac

08000ba0 <NMI_Handler>:
 8000ba0:	b580      	push	{r7, lr}
 8000ba2:	af00      	add	r7, sp, #0
 8000ba4:	46c0      	nop			; (mov r8, r8)
 8000ba6:	46bd      	mov	sp, r7
 8000ba8:	bd80      	pop	{r7, pc}

08000baa <HardFault_Handler>:
 8000baa:	b580      	push	{r7, lr}
 8000bac:	af00      	add	r7, sp, #0
 8000bae:	e7fe      	b.n	8000bae <HardFault_Handler+0x4>

08000bb0 <SVC_Handler>:
 8000bb0:	b580      	push	{r7, lr}
 8000bb2:	af00      	add	r7, sp, #0
 8000bb4:	46c0      	nop			; (mov r8, r8)
 8000bb6:	46bd      	mov	sp, r7
 8000bb8:	bd80      	pop	{r7, pc}

08000bba <PendSV_Handler>:
 8000bba:	b580      	push	{r7, lr}
 8000bbc:	af00      	add	r7, sp, #0
 8000bbe:	46c0      	nop			; (mov r8, r8)
 8000bc0:	46bd      	mov	sp, r7
 8000bc2:	bd80      	pop	{r7, pc}

08000bc4 <atexit>:
 8000bc4:	b510      	push	{r4, lr}
 8000bc6:	0001      	movs	r1, r0
 8000bc8:	2300      	movs	r3, #0
 8000bca:	2200      	movs	r2, #0
 8000bcc:	2000      	movs	r0, #0
 8000bce:	f000 f837 	bl	8000c40 <__register_exitproc>
 8000bd2:	bd10      	pop	{r4, pc}

08000bd4 <__libc_fini_array>:
 8000bd4:	b570      	push	{r4, r5, r6, lr}
 8000bd6:	4d07      	ldr	r5, [pc, #28]	; (8000bf4 <__libc_fini_array+0x20>)
 8000bd8:	4c07      	ldr	r4, [pc, #28]	; (8000bf8 <__libc_fini_array+0x24>)
 8000bda:	1b64      	subs	r4, r4, r5
 8000bdc:	10a4      	asrs	r4, r4, #2
 8000bde:	d005      	beq.n	8000bec <__libc_fini_array+0x18>
 8000be0:	3c01      	subs	r4, #1
 8000be2:	00a3      	lsls	r3, r4, #2
 8000be4:	58eb      	ldr	r3, [r5, r3]
 8000be6:	4798      	blx	r3
 8000be8:	2c00      	cmp	r4, #0
 8000bea:	d1f9      	bne.n	8000be0 <__libc_fini_array+0xc>
 8000bec:	f000 f87e 	bl	8000cec <_fini>
 8000bf0:	bd70      	pop	{r4, r5, r6, pc}
 8000bf2:	46c0      	nop			; (mov r8, r8)
 8000bf4:	08000d0c 	.word	0x08000d0c
 8000bf8:	08000d10 	.word	0x08000d10

08000bfc <__libc_init_array>:
 8000bfc:	b570      	push	{r4, r5, r6, lr}
 8000bfe:	4d0c      	ldr	r5, [pc, #48]	; (8000c30 <__libc_init_array+0x34>)
 8000c00:	4e0c      	ldr	r6, [pc, #48]	; (8000c34 <__libc_init_array+0x38>)
 8000c02:	1b76      	subs	r6, r6, r5
 8000c04:	10b6      	asrs	r6, r6, #2
 8000c06:	d005      	beq.n	8000c14 <__libc_init_array+0x18>
 8000c08:	2400      	movs	r4, #0
 8000c0a:	cd08      	ldmia	r5!, {r3}
 8000c0c:	3401      	adds	r4, #1
 8000c0e:	4798      	blx	r3
 8000c10:	42a6      	cmp	r6, r4
 8000c12:	d1fa      	bne.n	8000c0a <__libc_init_array+0xe>
 8000c14:	f000 f864 	bl	8000ce0 <_init>
 8000c18:	4d07      	ldr	r5, [pc, #28]	; (8000c38 <__libc_init_array+0x3c>)
 8000c1a:	4e08      	ldr	r6, [pc, #32]	; (8000c3c <__libc_init_array+0x40>)
 8000c1c:	1b76      	subs	r6, r6, r5
 8000c1e:	10b6      	asrs	r6, r6, #2
 8000c20:	d005      	beq.n	8000c2e <__libc_init_array+0x32>
 8000c22:	2400      	movs	r4, #0
 8000c24:	cd08      	ldmia	r5!, {r3}
 8000c26:	3401      	adds	r4, #1
 8000c28:	4798      	blx	r3
 8000c2a:	42a6      	cmp	r6, r4
 8000c2c:	d1fa      	bne.n	8000c24 <__libc_init_array+0x28>
 8000c2e:	bd70      	pop	{r4, r5, r6, pc}
 8000c30:	08000d04 	.word	0x08000d04
 8000c34:	08000d04 	.word	0x08000d04
 8000c38:	08000d04 	.word	0x08000d04
 8000c3c:	08000d0c 	.word	0x08000d0c

08000c40 <__register_exitproc>:
 8000c40:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000c42:	46c6      	mov	lr, r8
 8000c44:	b500      	push	{lr}
 8000c46:	4c1f      	ldr	r4, [pc, #124]	; (8000cc4 <__register_exitproc+0x84>)
 8000c48:	b082      	sub	sp, #8
 8000c4a:	6824      	ldr	r4, [r4, #0]
 8000c4c:	9401      	str	r4, [sp, #4]
 8000c4e:	24a4      	movs	r4, #164	; 0xa4
 8000c50:	9d01      	ldr	r5, [sp, #4]
 8000c52:	0064      	lsls	r4, r4, #1
 8000c54:	592d      	ldr	r5, [r5, r4]
 8000c56:	2d00      	cmp	r5, #0
 8000c58:	d02b      	beq.n	8000cb2 <__register_exitproc+0x72>
 8000c5a:	686c      	ldr	r4, [r5, #4]
 8000c5c:	2c1f      	cmp	r4, #31
 8000c5e:	dc2e      	bgt.n	8000cbe <__register_exitproc+0x7e>
 8000c60:	2800      	cmp	r0, #0
 8000c62:	d109      	bne.n	8000c78 <__register_exitproc+0x38>
 8000c64:	2000      	movs	r0, #0
 8000c66:	1c63      	adds	r3, r4, #1
 8000c68:	3402      	adds	r4, #2
 8000c6a:	00a4      	lsls	r4, r4, #2
 8000c6c:	606b      	str	r3, [r5, #4]
 8000c6e:	5161      	str	r1, [r4, r5]
 8000c70:	b002      	add	sp, #8
 8000c72:	bc04      	pop	{r2}
 8000c74:	4690      	mov	r8, r2
 8000c76:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000c78:	2788      	movs	r7, #136	; 0x88
 8000c7a:	00a6      	lsls	r6, r4, #2
 8000c7c:	19ae      	adds	r6, r5, r6
 8000c7e:	51f2      	str	r2, [r6, r7]
 8000c80:	3701      	adds	r7, #1
 8000c82:	37ff      	adds	r7, #255	; 0xff
 8000c84:	46bc      	mov	ip, r7
 8000c86:	2201      	movs	r2, #1
 8000c88:	44ac      	add	ip, r5
 8000c8a:	4667      	mov	r7, ip
 8000c8c:	40a2      	lsls	r2, r4
 8000c8e:	683f      	ldr	r7, [r7, #0]
 8000c90:	4690      	mov	r8, r2
 8000c92:	4317      	orrs	r7, r2
 8000c94:	4662      	mov	r2, ip
 8000c96:	6017      	str	r7, [r2, #0]
 8000c98:	2784      	movs	r7, #132	; 0x84
 8000c9a:	007f      	lsls	r7, r7, #1
 8000c9c:	51f3      	str	r3, [r6, r7]
 8000c9e:	2802      	cmp	r0, #2
 8000ca0:	d1e0      	bne.n	8000c64 <__register_exitproc+0x24>
 8000ca2:	002b      	movs	r3, r5
 8000ca4:	4640      	mov	r0, r8
 8000ca6:	338d      	adds	r3, #141	; 0x8d
 8000ca8:	33ff      	adds	r3, #255	; 0xff
 8000caa:	681a      	ldr	r2, [r3, #0]
 8000cac:	4310      	orrs	r0, r2
 8000cae:	6018      	str	r0, [r3, #0]
 8000cb0:	e7d8      	b.n	8000c64 <__register_exitproc+0x24>
 8000cb2:	9d01      	ldr	r5, [sp, #4]
 8000cb4:	9e01      	ldr	r6, [sp, #4]
 8000cb6:	354d      	adds	r5, #77	; 0x4d
 8000cb8:	35ff      	adds	r5, #255	; 0xff
 8000cba:	5135      	str	r5, [r6, r4]
 8000cbc:	e7cd      	b.n	8000c5a <__register_exitproc+0x1a>
 8000cbe:	2001      	movs	r0, #1
 8000cc0:	4240      	negs	r0, r0
 8000cc2:	e7d5      	b.n	8000c70 <__register_exitproc+0x30>
 8000cc4:	08000d00 	.word	0x08000d00

08000cc8 <register_fini>:
 8000cc8:	4b03      	ldr	r3, [pc, #12]	; (8000cd8 <register_fini+0x10>)
 8000cca:	b510      	push	{r4, lr}
 8000ccc:	2b00      	cmp	r3, #0
 8000cce:	d002      	beq.n	8000cd6 <register_fini+0xe>
 8000cd0:	4802      	ldr	r0, [pc, #8]	; (8000cdc <register_fini+0x14>)
 8000cd2:	f7ff ff77 	bl	8000bc4 <atexit>
 8000cd6:	bd10      	pop	{r4, pc}
 8000cd8:	00000000 	.word	0x00000000
 8000cdc:	08000bd5 	.word	0x08000bd5

08000ce0 <_init>:
 8000ce0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000ce2:	46c0      	nop			; (mov r8, r8)
 8000ce4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000ce6:	bc08      	pop	{r3}
 8000ce8:	469e      	mov	lr, r3
 8000cea:	4770      	bx	lr

08000cec <_fini>:
 8000cec:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8000cee:	46c0      	nop			; (mov r8, r8)
 8000cf0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8000cf2:	bc08      	pop	{r3}
 8000cf4:	469e      	mov	lr, r3
 8000cf6:	4770      	bx	lr
