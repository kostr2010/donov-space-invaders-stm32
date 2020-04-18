
build/oled_display.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00004a08  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000638  08004ac8  08004ac8  00014ac8  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08005100  08005100  00015100  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08005108  08005108  00015108  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000508  20000000  0800510c  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00001248  20000508  08005614  00020508  2**2  ALLOC
  7 ._user_heap_stack 00000600  20001750  08005614  00021750  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020508  2**0  CONTENTS, READONLY
  9 .debug_info       00003328  00000000  00000000  00020530  2**0  CONTENTS, READONLY, DEBUGGING
 10 .debug_abbrev     00000a8a  00000000  00000000  00023858  2**0  CONTENTS, READONLY, DEBUGGING
 11 .debug_loc        00001466  00000000  00000000  000242e2  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_aranges    00000390  00000000  00000000  00025748  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_ranges     00000330  00000000  00000000  00025ad8  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_line       00002107  00000000  00000000  00025e08  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_str        00000fd3  00000000  00000000  00027f0f  2**0  CONTENTS, READONLY, DEBUGGING
 16 .comment          0000001d  00000000  00000000  00028ee2  2**0  CONTENTS, READONLY
 17 .debug_frame      00000db4  00000000  00000000  00028f00  2**2  CONTENTS, READONLY, DEBUGGING

Disassembly of section .text:

080000c0 <__udivsi3>:
 80000c0:	2900      	cmp	r1, #0
 80000c2:	d034      	beq.n	800012e <.udivsi3_skip_div0_test+0x6a>

080000c4 <.udivsi3_skip_div0_test>:
 80000c4:	2301      	movs	r3, #1
 80000c6:	2200      	movs	r2, #0
 80000c8:	b410      	push	{r4}
 80000ca:	4288      	cmp	r0, r1
 80000cc:	d32c      	bcc.n	8000128 <.udivsi3_skip_div0_test+0x64>
 80000ce:	2401      	movs	r4, #1
 80000d0:	0724      	lsls	r4, r4, #28
 80000d2:	42a1      	cmp	r1, r4
 80000d4:	d204      	bcs.n	80000e0 <.udivsi3_skip_div0_test+0x1c>
 80000d6:	4281      	cmp	r1, r0
 80000d8:	d202      	bcs.n	80000e0 <.udivsi3_skip_div0_test+0x1c>
 80000da:	0109      	lsls	r1, r1, #4
 80000dc:	011b      	lsls	r3, r3, #4
 80000de:	e7f8      	b.n	80000d2 <.udivsi3_skip_div0_test+0xe>
 80000e0:	00e4      	lsls	r4, r4, #3
 80000e2:	42a1      	cmp	r1, r4
 80000e4:	d204      	bcs.n	80000f0 <.udivsi3_skip_div0_test+0x2c>
 80000e6:	4281      	cmp	r1, r0
 80000e8:	d202      	bcs.n	80000f0 <.udivsi3_skip_div0_test+0x2c>
 80000ea:	0049      	lsls	r1, r1, #1
 80000ec:	005b      	lsls	r3, r3, #1
 80000ee:	e7f8      	b.n	80000e2 <.udivsi3_skip_div0_test+0x1e>
 80000f0:	4288      	cmp	r0, r1
 80000f2:	d301      	bcc.n	80000f8 <.udivsi3_skip_div0_test+0x34>
 80000f4:	1a40      	subs	r0, r0, r1
 80000f6:	431a      	orrs	r2, r3
 80000f8:	084c      	lsrs	r4, r1, #1
 80000fa:	42a0      	cmp	r0, r4
 80000fc:	d302      	bcc.n	8000104 <.udivsi3_skip_div0_test+0x40>
 80000fe:	1b00      	subs	r0, r0, r4
 8000100:	085c      	lsrs	r4, r3, #1
 8000102:	4322      	orrs	r2, r4
 8000104:	088c      	lsrs	r4, r1, #2
 8000106:	42a0      	cmp	r0, r4
 8000108:	d302      	bcc.n	8000110 <.udivsi3_skip_div0_test+0x4c>
 800010a:	1b00      	subs	r0, r0, r4
 800010c:	089c      	lsrs	r4, r3, #2
 800010e:	4322      	orrs	r2, r4
 8000110:	08cc      	lsrs	r4, r1, #3
 8000112:	42a0      	cmp	r0, r4
 8000114:	d302      	bcc.n	800011c <.udivsi3_skip_div0_test+0x58>
 8000116:	1b00      	subs	r0, r0, r4
 8000118:	08dc      	lsrs	r4, r3, #3
 800011a:	4322      	orrs	r2, r4
 800011c:	2800      	cmp	r0, #0
 800011e:	d003      	beq.n	8000128 <.udivsi3_skip_div0_test+0x64>
 8000120:	091b      	lsrs	r3, r3, #4
 8000122:	d001      	beq.n	8000128 <.udivsi3_skip_div0_test+0x64>
 8000124:	0909      	lsrs	r1, r1, #4
 8000126:	e7e3      	b.n	80000f0 <.udivsi3_skip_div0_test+0x2c>
 8000128:	1c10      	adds	r0, r2, #0
 800012a:	bc10      	pop	{r4}
 800012c:	4770      	bx	lr
 800012e:	b501      	push	{r0, lr}
 8000130:	2000      	movs	r0, #0
 8000132:	f000 f85f 	bl	80001f4 <__aeabi_idiv0>
 8000136:	bd02      	pop	{r1, pc}

08000138 <__aeabi_uidivmod>:
 8000138:	2900      	cmp	r1, #0
 800013a:	d0f8      	beq.n	800012e <.udivsi3_skip_div0_test+0x6a>
 800013c:	b503      	push	{r0, r1, lr}
 800013e:	f7ff ffc1 	bl	80000c4 <.udivsi3_skip_div0_test>
 8000142:	bc0e      	pop	{r1, r2, r3}
 8000144:	4342      	muls	r2, r0
 8000146:	1a89      	subs	r1, r1, r2
 8000148:	4718      	bx	r3
 800014a:	46c0      	nop			; (mov r8, r8)

0800014c <__divsi3>:
 800014c:	2900      	cmp	r1, #0
 800014e:	d041      	beq.n	80001d4 <.divsi3_skip_div0_test+0x84>

08000150 <.divsi3_skip_div0_test>:
 8000150:	b410      	push	{r4}
 8000152:	1c04      	adds	r4, r0, #0
 8000154:	404c      	eors	r4, r1
 8000156:	46a4      	mov	ip, r4
 8000158:	2301      	movs	r3, #1
 800015a:	2200      	movs	r2, #0
 800015c:	2900      	cmp	r1, #0
 800015e:	d500      	bpl.n	8000162 <.divsi3_skip_div0_test+0x12>
 8000160:	4249      	negs	r1, r1
 8000162:	2800      	cmp	r0, #0
 8000164:	d500      	bpl.n	8000168 <.divsi3_skip_div0_test+0x18>
 8000166:	4240      	negs	r0, r0
 8000168:	4288      	cmp	r0, r1
 800016a:	d32c      	bcc.n	80001c6 <.divsi3_skip_div0_test+0x76>
 800016c:	2401      	movs	r4, #1
 800016e:	0724      	lsls	r4, r4, #28
 8000170:	42a1      	cmp	r1, r4
 8000172:	d204      	bcs.n	800017e <.divsi3_skip_div0_test+0x2e>
 8000174:	4281      	cmp	r1, r0
 8000176:	d202      	bcs.n	800017e <.divsi3_skip_div0_test+0x2e>
 8000178:	0109      	lsls	r1, r1, #4
 800017a:	011b      	lsls	r3, r3, #4
 800017c:	e7f8      	b.n	8000170 <.divsi3_skip_div0_test+0x20>
 800017e:	00e4      	lsls	r4, r4, #3
 8000180:	42a1      	cmp	r1, r4
 8000182:	d204      	bcs.n	800018e <.divsi3_skip_div0_test+0x3e>
 8000184:	4281      	cmp	r1, r0
 8000186:	d202      	bcs.n	800018e <.divsi3_skip_div0_test+0x3e>
 8000188:	0049      	lsls	r1, r1, #1
 800018a:	005b      	lsls	r3, r3, #1
 800018c:	e7f8      	b.n	8000180 <.divsi3_skip_div0_test+0x30>
 800018e:	4288      	cmp	r0, r1
 8000190:	d301      	bcc.n	8000196 <.divsi3_skip_div0_test+0x46>
 8000192:	1a40      	subs	r0, r0, r1
 8000194:	431a      	orrs	r2, r3
 8000196:	084c      	lsrs	r4, r1, #1
 8000198:	42a0      	cmp	r0, r4
 800019a:	d302      	bcc.n	80001a2 <.divsi3_skip_div0_test+0x52>
 800019c:	1b00      	subs	r0, r0, r4
 800019e:	085c      	lsrs	r4, r3, #1
 80001a0:	4322      	orrs	r2, r4
 80001a2:	088c      	lsrs	r4, r1, #2
 80001a4:	42a0      	cmp	r0, r4
 80001a6:	d302      	bcc.n	80001ae <.divsi3_skip_div0_test+0x5e>
 80001a8:	1b00      	subs	r0, r0, r4
 80001aa:	089c      	lsrs	r4, r3, #2
 80001ac:	4322      	orrs	r2, r4
 80001ae:	08cc      	lsrs	r4, r1, #3
 80001b0:	42a0      	cmp	r0, r4
 80001b2:	d302      	bcc.n	80001ba <.divsi3_skip_div0_test+0x6a>
 80001b4:	1b00      	subs	r0, r0, r4
 80001b6:	08dc      	lsrs	r4, r3, #3
 80001b8:	4322      	orrs	r2, r4
 80001ba:	2800      	cmp	r0, #0
 80001bc:	d003      	beq.n	80001c6 <.divsi3_skip_div0_test+0x76>
 80001be:	091b      	lsrs	r3, r3, #4
 80001c0:	d001      	beq.n	80001c6 <.divsi3_skip_div0_test+0x76>
 80001c2:	0909      	lsrs	r1, r1, #4
 80001c4:	e7e3      	b.n	800018e <.divsi3_skip_div0_test+0x3e>
 80001c6:	1c10      	adds	r0, r2, #0
 80001c8:	4664      	mov	r4, ip
 80001ca:	2c00      	cmp	r4, #0
 80001cc:	d500      	bpl.n	80001d0 <.divsi3_skip_div0_test+0x80>
 80001ce:	4240      	negs	r0, r0
 80001d0:	bc10      	pop	{r4}
 80001d2:	4770      	bx	lr
 80001d4:	b501      	push	{r0, lr}
 80001d6:	2000      	movs	r0, #0
 80001d8:	f000 f80c 	bl	80001f4 <__aeabi_idiv0>
 80001dc:	bd02      	pop	{r1, pc}
 80001de:	46c0      	nop			; (mov r8, r8)

080001e0 <__aeabi_idivmod>:
 80001e0:	2900      	cmp	r1, #0
 80001e2:	d0f7      	beq.n	80001d4 <.divsi3_skip_div0_test+0x84>
 80001e4:	b503      	push	{r0, r1, lr}
 80001e6:	f7ff ffb3 	bl	8000150 <.divsi3_skip_div0_test>
 80001ea:	bc0e      	pop	{r1, r2, r3}
 80001ec:	4342      	muls	r2, r0
 80001ee:	1a89      	subs	r1, r1, r2
 80001f0:	4718      	bx	r3
 80001f2:	46c0      	nop			; (mov r8, r8)

080001f4 <__aeabi_idiv0>:
 80001f4:	4770      	bx	lr
 80001f6:	46c0      	nop			; (mov r8, r8)

080001f8 <__do_global_dtors_aux>:
 80001f8:	b510      	push	{r4, lr}
 80001fa:	4c06      	ldr	r4, [pc, #24]	; (8000214 <__do_global_dtors_aux+0x1c>)
 80001fc:	7823      	ldrb	r3, [r4, #0]
 80001fe:	2b00      	cmp	r3, #0
 8000200:	d107      	bne.n	8000212 <__do_global_dtors_aux+0x1a>
 8000202:	4b05      	ldr	r3, [pc, #20]	; (8000218 <__do_global_dtors_aux+0x20>)
 8000204:	2b00      	cmp	r3, #0
 8000206:	d002      	beq.n	800020e <__do_global_dtors_aux+0x16>
 8000208:	4804      	ldr	r0, [pc, #16]	; (800021c <__do_global_dtors_aux+0x24>)
 800020a:	e000      	b.n	800020e <__do_global_dtors_aux+0x16>
 800020c:	bf00      	nop
 800020e:	2301      	movs	r3, #1
 8000210:	7023      	strb	r3, [r4, #0]
 8000212:	bd10      	pop	{r4, pc}
 8000214:	20000508 	.word	0x20000508
 8000218:	00000000 	.word	0x00000000
 800021c:	08004ab0 	.word	0x08004ab0

08000220 <frame_dummy>:
 8000220:	4b04      	ldr	r3, [pc, #16]	; (8000234 <frame_dummy+0x14>)
 8000222:	b510      	push	{r4, lr}
 8000224:	2b00      	cmp	r3, #0
 8000226:	d003      	beq.n	8000230 <frame_dummy+0x10>
 8000228:	4903      	ldr	r1, [pc, #12]	; (8000238 <frame_dummy+0x18>)
 800022a:	4804      	ldr	r0, [pc, #16]	; (800023c <frame_dummy+0x1c>)
 800022c:	e000      	b.n	8000230 <frame_dummy+0x10>
 800022e:	bf00      	nop
 8000230:	bd10      	pop	{r4, pc}
 8000232:	46c0      	nop			; (mov r8, r8)
 8000234:	00000000 	.word	0x00000000
 8000238:	2000050c 	.word	0x2000050c
 800023c:	08004ab0 	.word	0x08004ab0

08000240 <Reset_Handler>:
 8000240:	480d      	ldr	r0, [pc, #52]	; (8000278 <LoopForever+0x2>)
 8000242:	4685      	mov	sp, r0
 8000244:	480d      	ldr	r0, [pc, #52]	; (800027c <LoopForever+0x6>)
 8000246:	490e      	ldr	r1, [pc, #56]	; (8000280 <LoopForever+0xa>)
 8000248:	4a0e      	ldr	r2, [pc, #56]	; (8000284 <LoopForever+0xe>)
 800024a:	2300      	movs	r3, #0
 800024c:	e002      	b.n	8000254 <LoopCopyDataInit>

0800024e <CopyDataInit>:
 800024e:	58d4      	ldr	r4, [r2, r3]
 8000250:	50c4      	str	r4, [r0, r3]
 8000252:	3304      	adds	r3, #4

08000254 <LoopCopyDataInit>:
 8000254:	18c4      	adds	r4, r0, r3
 8000256:	428c      	cmp	r4, r1
 8000258:	d3f9      	bcc.n	800024e <CopyDataInit>
 800025a:	4a0b      	ldr	r2, [pc, #44]	; (8000288 <LoopForever+0x12>)
 800025c:	4c0b      	ldr	r4, [pc, #44]	; (800028c <LoopForever+0x16>)
 800025e:	2300      	movs	r3, #0
 8000260:	e001      	b.n	8000266 <LoopFillZerobss>

08000262 <FillZerobss>:
 8000262:	6013      	str	r3, [r2, #0]
 8000264:	3204      	adds	r2, #4

08000266 <LoopFillZerobss>:
 8000266:	42a2      	cmp	r2, r4
 8000268:	d3fb      	bcc.n	8000262 <FillZerobss>
 800026a:	f003 fcd5 	bl	8003c18 <SystemInit>
 800026e:	f004 fb59 	bl	8004924 <__libc_init_array>
 8000272:	f000 faf7 	bl	8000864 <main>

08000276 <LoopForever>:
 8000276:	e7fe      	b.n	8000276 <LoopForever>
 8000278:	20002000 	.word	0x20002000
 800027c:	20000000 	.word	0x20000000
 8000280:	20000508 	.word	0x20000508
 8000284:	0800510c 	.word	0x0800510c
 8000288:	20000508 	.word	0x20000508
 800028c:	20001750 	.word	0x20001750

08000290 <ADC1_COMP_IRQHandler>:
 8000290:	e7fe      	b.n	8000290 <ADC1_COMP_IRQHandler>
	...

08000294 <LL_RCC_HSI_Enable>:
 8000294:	b580      	push	{r7, lr}
 8000296:	af00      	add	r7, sp, #0
 8000298:	4b04      	ldr	r3, [pc, #16]	; (80002ac <LL_RCC_HSI_Enable+0x18>)
 800029a:	681a      	ldr	r2, [r3, #0]
 800029c:	4b03      	ldr	r3, [pc, #12]	; (80002ac <LL_RCC_HSI_Enable+0x18>)
 800029e:	2101      	movs	r1, #1
 80002a0:	430a      	orrs	r2, r1
 80002a2:	601a      	str	r2, [r3, #0]
 80002a4:	46c0      	nop			; (mov r8, r8)
 80002a6:	46bd      	mov	sp, r7
 80002a8:	bd80      	pop	{r7, pc}
 80002aa:	46c0      	nop			; (mov r8, r8)
 80002ac:	40021000 	.word	0x40021000

080002b0 <LL_RCC_HSI_IsReady>:
 80002b0:	b580      	push	{r7, lr}
 80002b2:	af00      	add	r7, sp, #0
 80002b4:	4b05      	ldr	r3, [pc, #20]	; (80002cc <LL_RCC_HSI_IsReady+0x1c>)
 80002b6:	681b      	ldr	r3, [r3, #0]
 80002b8:	2202      	movs	r2, #2
 80002ba:	4013      	ands	r3, r2
 80002bc:	3b02      	subs	r3, #2
 80002be:	425a      	negs	r2, r3
 80002c0:	4153      	adcs	r3, r2
 80002c2:	b2db      	uxtb	r3, r3
 80002c4:	0018      	movs	r0, r3
 80002c6:	46bd      	mov	sp, r7
 80002c8:	bd80      	pop	{r7, pc}
 80002ca:	46c0      	nop			; (mov r8, r8)
 80002cc:	40021000 	.word	0x40021000

080002d0 <LL_RCC_SetSysClkSource>:
 80002d0:	b580      	push	{r7, lr}
 80002d2:	b082      	sub	sp, #8
 80002d4:	af00      	add	r7, sp, #0
 80002d6:	6078      	str	r0, [r7, #4]
 80002d8:	4b06      	ldr	r3, [pc, #24]	; (80002f4 <LL_RCC_SetSysClkSource+0x24>)
 80002da:	685b      	ldr	r3, [r3, #4]
 80002dc:	2203      	movs	r2, #3
 80002de:	4393      	bics	r3, r2
 80002e0:	0019      	movs	r1, r3
 80002e2:	4b04      	ldr	r3, [pc, #16]	; (80002f4 <LL_RCC_SetSysClkSource+0x24>)
 80002e4:	687a      	ldr	r2, [r7, #4]
 80002e6:	430a      	orrs	r2, r1
 80002e8:	605a      	str	r2, [r3, #4]
 80002ea:	46c0      	nop			; (mov r8, r8)
 80002ec:	46bd      	mov	sp, r7
 80002ee:	b002      	add	sp, #8
 80002f0:	bd80      	pop	{r7, pc}
 80002f2:	46c0      	nop			; (mov r8, r8)
 80002f4:	40021000 	.word	0x40021000

080002f8 <LL_RCC_GetSysClkSource>:
 80002f8:	b580      	push	{r7, lr}
 80002fa:	af00      	add	r7, sp, #0
 80002fc:	4b03      	ldr	r3, [pc, #12]	; (800030c <LL_RCC_GetSysClkSource+0x14>)
 80002fe:	685b      	ldr	r3, [r3, #4]
 8000300:	220c      	movs	r2, #12
 8000302:	4013      	ands	r3, r2
 8000304:	0018      	movs	r0, r3
 8000306:	46bd      	mov	sp, r7
 8000308:	bd80      	pop	{r7, pc}
 800030a:	46c0      	nop			; (mov r8, r8)
 800030c:	40021000 	.word	0x40021000

08000310 <LL_RCC_SetAHBPrescaler>:
 8000310:	b580      	push	{r7, lr}
 8000312:	b082      	sub	sp, #8
 8000314:	af00      	add	r7, sp, #0
 8000316:	6078      	str	r0, [r7, #4]
 8000318:	4b06      	ldr	r3, [pc, #24]	; (8000334 <LL_RCC_SetAHBPrescaler+0x24>)
 800031a:	685b      	ldr	r3, [r3, #4]
 800031c:	22f0      	movs	r2, #240	; 0xf0
 800031e:	4393      	bics	r3, r2
 8000320:	0019      	movs	r1, r3
 8000322:	4b04      	ldr	r3, [pc, #16]	; (8000334 <LL_RCC_SetAHBPrescaler+0x24>)
 8000324:	687a      	ldr	r2, [r7, #4]
 8000326:	430a      	orrs	r2, r1
 8000328:	605a      	str	r2, [r3, #4]
 800032a:	46c0      	nop			; (mov r8, r8)
 800032c:	46bd      	mov	sp, r7
 800032e:	b002      	add	sp, #8
 8000330:	bd80      	pop	{r7, pc}
 8000332:	46c0      	nop			; (mov r8, r8)
 8000334:	40021000 	.word	0x40021000

08000338 <LL_RCC_SetAPB1Prescaler>:
 8000338:	b580      	push	{r7, lr}
 800033a:	b082      	sub	sp, #8
 800033c:	af00      	add	r7, sp, #0
 800033e:	6078      	str	r0, [r7, #4]
 8000340:	4b06      	ldr	r3, [pc, #24]	; (800035c <LL_RCC_SetAPB1Prescaler+0x24>)
 8000342:	685b      	ldr	r3, [r3, #4]
 8000344:	4a06      	ldr	r2, [pc, #24]	; (8000360 <LL_RCC_SetAPB1Prescaler+0x28>)
 8000346:	4013      	ands	r3, r2
 8000348:	0019      	movs	r1, r3
 800034a:	4b04      	ldr	r3, [pc, #16]	; (800035c <LL_RCC_SetAPB1Prescaler+0x24>)
 800034c:	687a      	ldr	r2, [r7, #4]
 800034e:	430a      	orrs	r2, r1
 8000350:	605a      	str	r2, [r3, #4]
 8000352:	46c0      	nop			; (mov r8, r8)
 8000354:	46bd      	mov	sp, r7
 8000356:	b002      	add	sp, #8
 8000358:	bd80      	pop	{r7, pc}
 800035a:	46c0      	nop			; (mov r8, r8)
 800035c:	40021000 	.word	0x40021000
 8000360:	fffff8ff 	.word	0xfffff8ff

08000364 <LL_RCC_PLL_Enable>:
 8000364:	b580      	push	{r7, lr}
 8000366:	af00      	add	r7, sp, #0
 8000368:	4b04      	ldr	r3, [pc, #16]	; (800037c <LL_RCC_PLL_Enable+0x18>)
 800036a:	681a      	ldr	r2, [r3, #0]
 800036c:	4b03      	ldr	r3, [pc, #12]	; (800037c <LL_RCC_PLL_Enable+0x18>)
 800036e:	2180      	movs	r1, #128	; 0x80
 8000370:	0449      	lsls	r1, r1, #17
 8000372:	430a      	orrs	r2, r1
 8000374:	601a      	str	r2, [r3, #0]
 8000376:	46c0      	nop			; (mov r8, r8)
 8000378:	46bd      	mov	sp, r7
 800037a:	bd80      	pop	{r7, pc}
 800037c:	40021000 	.word	0x40021000

08000380 <LL_RCC_PLL_IsReady>:
 8000380:	b580      	push	{r7, lr}
 8000382:	af00      	add	r7, sp, #0
 8000384:	4b07      	ldr	r3, [pc, #28]	; (80003a4 <LL_RCC_PLL_IsReady+0x24>)
 8000386:	681a      	ldr	r2, [r3, #0]
 8000388:	2380      	movs	r3, #128	; 0x80
 800038a:	049b      	lsls	r3, r3, #18
 800038c:	4013      	ands	r3, r2
 800038e:	22fe      	movs	r2, #254	; 0xfe
 8000390:	0612      	lsls	r2, r2, #24
 8000392:	4694      	mov	ip, r2
 8000394:	4463      	add	r3, ip
 8000396:	425a      	negs	r2, r3
 8000398:	4153      	adcs	r3, r2
 800039a:	b2db      	uxtb	r3, r3
 800039c:	0018      	movs	r0, r3
 800039e:	46bd      	mov	sp, r7
 80003a0:	bd80      	pop	{r7, pc}
 80003a2:	46c0      	nop			; (mov r8, r8)
 80003a4:	40021000 	.word	0x40021000

080003a8 <LL_RCC_PLL_ConfigDomain_SYS>:
 80003a8:	b580      	push	{r7, lr}
 80003aa:	b082      	sub	sp, #8
 80003ac:	af00      	add	r7, sp, #0
 80003ae:	6078      	str	r0, [r7, #4]
 80003b0:	6039      	str	r1, [r7, #0]
 80003b2:	4b0e      	ldr	r3, [pc, #56]	; (80003ec <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80003b4:	685b      	ldr	r3, [r3, #4]
 80003b6:	4a0e      	ldr	r2, [pc, #56]	; (80003f0 <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 80003b8:	4013      	ands	r3, r2
 80003ba:	0019      	movs	r1, r3
 80003bc:	687a      	ldr	r2, [r7, #4]
 80003be:	2380      	movs	r3, #128	; 0x80
 80003c0:	025b      	lsls	r3, r3, #9
 80003c2:	401a      	ands	r2, r3
 80003c4:	683b      	ldr	r3, [r7, #0]
 80003c6:	431a      	orrs	r2, r3
 80003c8:	4b08      	ldr	r3, [pc, #32]	; (80003ec <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80003ca:	430a      	orrs	r2, r1
 80003cc:	605a      	str	r2, [r3, #4]
 80003ce:	4b07      	ldr	r3, [pc, #28]	; (80003ec <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80003d0:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 80003d2:	220f      	movs	r2, #15
 80003d4:	4393      	bics	r3, r2
 80003d6:	0019      	movs	r1, r3
 80003d8:	687b      	ldr	r3, [r7, #4]
 80003da:	220f      	movs	r2, #15
 80003dc:	401a      	ands	r2, r3
 80003de:	4b03      	ldr	r3, [pc, #12]	; (80003ec <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 80003e0:	430a      	orrs	r2, r1
 80003e2:	62da      	str	r2, [r3, #44]	; 0x2c
 80003e4:	46c0      	nop			; (mov r8, r8)
 80003e6:	46bd      	mov	sp, r7
 80003e8:	b002      	add	sp, #8
 80003ea:	bd80      	pop	{r7, pc}
 80003ec:	40021000 	.word	0x40021000
 80003f0:	ffc2ffff 	.word	0xffc2ffff

080003f4 <LL_FLASH_SetLatency>:
 80003f4:	b580      	push	{r7, lr}
 80003f6:	b082      	sub	sp, #8
 80003f8:	af00      	add	r7, sp, #0
 80003fa:	6078      	str	r0, [r7, #4]
 80003fc:	4b06      	ldr	r3, [pc, #24]	; (8000418 <LL_FLASH_SetLatency+0x24>)
 80003fe:	681b      	ldr	r3, [r3, #0]
 8000400:	2201      	movs	r2, #1
 8000402:	4393      	bics	r3, r2
 8000404:	0019      	movs	r1, r3
 8000406:	4b04      	ldr	r3, [pc, #16]	; (8000418 <LL_FLASH_SetLatency+0x24>)
 8000408:	687a      	ldr	r2, [r7, #4]
 800040a:	430a      	orrs	r2, r1
 800040c:	601a      	str	r2, [r3, #0]
 800040e:	46c0      	nop			; (mov r8, r8)
 8000410:	46bd      	mov	sp, r7
 8000412:	b002      	add	sp, #8
 8000414:	bd80      	pop	{r7, pc}
 8000416:	46c0      	nop			; (mov r8, r8)
 8000418:	40022000 	.word	0x40022000

0800041c <LL_AHB1_GRP1_EnableClock>:
 800041c:	b580      	push	{r7, lr}
 800041e:	b084      	sub	sp, #16
 8000420:	af00      	add	r7, sp, #0
 8000422:	6078      	str	r0, [r7, #4]
 8000424:	4b07      	ldr	r3, [pc, #28]	; (8000444 <LL_AHB1_GRP1_EnableClock+0x28>)
 8000426:	6959      	ldr	r1, [r3, #20]
 8000428:	4b06      	ldr	r3, [pc, #24]	; (8000444 <LL_AHB1_GRP1_EnableClock+0x28>)
 800042a:	687a      	ldr	r2, [r7, #4]
 800042c:	430a      	orrs	r2, r1
 800042e:	615a      	str	r2, [r3, #20]
 8000430:	4b04      	ldr	r3, [pc, #16]	; (8000444 <LL_AHB1_GRP1_EnableClock+0x28>)
 8000432:	695b      	ldr	r3, [r3, #20]
 8000434:	687a      	ldr	r2, [r7, #4]
 8000436:	4013      	ands	r3, r2
 8000438:	60fb      	str	r3, [r7, #12]
 800043a:	68fb      	ldr	r3, [r7, #12]
 800043c:	46c0      	nop			; (mov r8, r8)
 800043e:	46bd      	mov	sp, r7
 8000440:	b004      	add	sp, #16
 8000442:	bd80      	pop	{r7, pc}
 8000444:	40021000 	.word	0x40021000

08000448 <LL_APB1_GRP1_EnableClock>:
 8000448:	b580      	push	{r7, lr}
 800044a:	b084      	sub	sp, #16
 800044c:	af00      	add	r7, sp, #0
 800044e:	6078      	str	r0, [r7, #4]
 8000450:	4b07      	ldr	r3, [pc, #28]	; (8000470 <LL_APB1_GRP1_EnableClock+0x28>)
 8000452:	69d9      	ldr	r1, [r3, #28]
 8000454:	4b06      	ldr	r3, [pc, #24]	; (8000470 <LL_APB1_GRP1_EnableClock+0x28>)
 8000456:	687a      	ldr	r2, [r7, #4]
 8000458:	430a      	orrs	r2, r1
 800045a:	61da      	str	r2, [r3, #28]
 800045c:	4b04      	ldr	r3, [pc, #16]	; (8000470 <LL_APB1_GRP1_EnableClock+0x28>)
 800045e:	69db      	ldr	r3, [r3, #28]
 8000460:	687a      	ldr	r2, [r7, #4]
 8000462:	4013      	ands	r3, r2
 8000464:	60fb      	str	r3, [r7, #12]
 8000466:	68fb      	ldr	r3, [r7, #12]
 8000468:	46c0      	nop			; (mov r8, r8)
 800046a:	46bd      	mov	sp, r7
 800046c:	b004      	add	sp, #16
 800046e:	bd80      	pop	{r7, pc}
 8000470:	40021000 	.word	0x40021000

08000474 <LL_GPIO_SetPinMode>:
 8000474:	b580      	push	{r7, lr}
 8000476:	b084      	sub	sp, #16
 8000478:	af00      	add	r7, sp, #0
 800047a:	60f8      	str	r0, [r7, #12]
 800047c:	60b9      	str	r1, [r7, #8]
 800047e:	607a      	str	r2, [r7, #4]
 8000480:	68fb      	ldr	r3, [r7, #12]
 8000482:	6819      	ldr	r1, [r3, #0]
 8000484:	68bb      	ldr	r3, [r7, #8]
 8000486:	435b      	muls	r3, r3
 8000488:	001a      	movs	r2, r3
 800048a:	0013      	movs	r3, r2
 800048c:	005b      	lsls	r3, r3, #1
 800048e:	189b      	adds	r3, r3, r2
 8000490:	43db      	mvns	r3, r3
 8000492:	400b      	ands	r3, r1
 8000494:	001a      	movs	r2, r3
 8000496:	68bb      	ldr	r3, [r7, #8]
 8000498:	435b      	muls	r3, r3
 800049a:	6879      	ldr	r1, [r7, #4]
 800049c:	434b      	muls	r3, r1
 800049e:	431a      	orrs	r2, r3
 80004a0:	68fb      	ldr	r3, [r7, #12]
 80004a2:	601a      	str	r2, [r3, #0]
 80004a4:	46c0      	nop			; (mov r8, r8)
 80004a6:	46bd      	mov	sp, r7
 80004a8:	b004      	add	sp, #16
 80004aa:	bd80      	pop	{r7, pc}

080004ac <LL_GPIO_SetPinPull>:
 80004ac:	b580      	push	{r7, lr}
 80004ae:	b084      	sub	sp, #16
 80004b0:	af00      	add	r7, sp, #0
 80004b2:	60f8      	str	r0, [r7, #12]
 80004b4:	60b9      	str	r1, [r7, #8]
 80004b6:	607a      	str	r2, [r7, #4]
 80004b8:	68fb      	ldr	r3, [r7, #12]
 80004ba:	68d9      	ldr	r1, [r3, #12]
 80004bc:	68bb      	ldr	r3, [r7, #8]
 80004be:	435b      	muls	r3, r3
 80004c0:	001a      	movs	r2, r3
 80004c2:	0013      	movs	r3, r2
 80004c4:	005b      	lsls	r3, r3, #1
 80004c6:	189b      	adds	r3, r3, r2
 80004c8:	43db      	mvns	r3, r3
 80004ca:	400b      	ands	r3, r1
 80004cc:	001a      	movs	r2, r3
 80004ce:	68bb      	ldr	r3, [r7, #8]
 80004d0:	435b      	muls	r3, r3
 80004d2:	6879      	ldr	r1, [r7, #4]
 80004d4:	434b      	muls	r3, r1
 80004d6:	431a      	orrs	r2, r3
 80004d8:	68fb      	ldr	r3, [r7, #12]
 80004da:	60da      	str	r2, [r3, #12]
 80004dc:	46c0      	nop			; (mov r8, r8)
 80004de:	46bd      	mov	sp, r7
 80004e0:	b004      	add	sp, #16
 80004e2:	bd80      	pop	{r7, pc}

080004e4 <LL_GPIO_SetAFPin_0_7>:
 80004e4:	b580      	push	{r7, lr}
 80004e6:	b084      	sub	sp, #16
 80004e8:	af00      	add	r7, sp, #0
 80004ea:	60f8      	str	r0, [r7, #12]
 80004ec:	60b9      	str	r1, [r7, #8]
 80004ee:	607a      	str	r2, [r7, #4]
 80004f0:	68fb      	ldr	r3, [r7, #12]
 80004f2:	6a19      	ldr	r1, [r3, #32]
 80004f4:	68bb      	ldr	r3, [r7, #8]
 80004f6:	435b      	muls	r3, r3
 80004f8:	68ba      	ldr	r2, [r7, #8]
 80004fa:	4353      	muls	r3, r2
 80004fc:	68ba      	ldr	r2, [r7, #8]
 80004fe:	435a      	muls	r2, r3
 8000500:	0013      	movs	r3, r2
 8000502:	011b      	lsls	r3, r3, #4
 8000504:	1a9b      	subs	r3, r3, r2
 8000506:	43db      	mvns	r3, r3
 8000508:	400b      	ands	r3, r1
 800050a:	001a      	movs	r2, r3
 800050c:	68bb      	ldr	r3, [r7, #8]
 800050e:	435b      	muls	r3, r3
 8000510:	68b9      	ldr	r1, [r7, #8]
 8000512:	434b      	muls	r3, r1
 8000514:	68b9      	ldr	r1, [r7, #8]
 8000516:	434b      	muls	r3, r1
 8000518:	6879      	ldr	r1, [r7, #4]
 800051a:	434b      	muls	r3, r1
 800051c:	431a      	orrs	r2, r3
 800051e:	68fb      	ldr	r3, [r7, #12]
 8000520:	621a      	str	r2, [r3, #32]
 8000522:	46c0      	nop			; (mov r8, r8)
 8000524:	46bd      	mov	sp, r7
 8000526:	b004      	add	sp, #16
 8000528:	bd80      	pop	{r7, pc}

0800052a <LL_GPIO_IsInputPinSet>:
 800052a:	b580      	push	{r7, lr}
 800052c:	b082      	sub	sp, #8
 800052e:	af00      	add	r7, sp, #0
 8000530:	6078      	str	r0, [r7, #4]
 8000532:	6039      	str	r1, [r7, #0]
 8000534:	687b      	ldr	r3, [r7, #4]
 8000536:	691b      	ldr	r3, [r3, #16]
 8000538:	683a      	ldr	r2, [r7, #0]
 800053a:	4013      	ands	r3, r2
 800053c:	683a      	ldr	r2, [r7, #0]
 800053e:	1ad3      	subs	r3, r2, r3
 8000540:	425a      	negs	r2, r3
 8000542:	4153      	adcs	r3, r2
 8000544:	b2db      	uxtb	r3, r3
 8000546:	0018      	movs	r0, r3
 8000548:	46bd      	mov	sp, r7
 800054a:	b002      	add	sp, #8
 800054c:	bd80      	pop	{r7, pc}

0800054e <LL_GPIO_WriteOutputPort>:
 800054e:	b580      	push	{r7, lr}
 8000550:	b082      	sub	sp, #8
 8000552:	af00      	add	r7, sp, #0
 8000554:	6078      	str	r0, [r7, #4]
 8000556:	6039      	str	r1, [r7, #0]
 8000558:	687b      	ldr	r3, [r7, #4]
 800055a:	683a      	ldr	r2, [r7, #0]
 800055c:	615a      	str	r2, [r3, #20]
 800055e:	46c0      	nop			; (mov r8, r8)
 8000560:	46bd      	mov	sp, r7
 8000562:	b002      	add	sp, #8
 8000564:	bd80      	pop	{r7, pc}

08000566 <LL_GPIO_ReadOutputPort>:
 8000566:	b580      	push	{r7, lr}
 8000568:	b082      	sub	sp, #8
 800056a:	af00      	add	r7, sp, #0
 800056c:	6078      	str	r0, [r7, #4]
 800056e:	687b      	ldr	r3, [r7, #4]
 8000570:	695b      	ldr	r3, [r3, #20]
 8000572:	0018      	movs	r0, r3
 8000574:	46bd      	mov	sp, r7
 8000576:	b002      	add	sp, #8
 8000578:	bd80      	pop	{r7, pc}

0800057a <LL_TIM_EnableCounter>:
 800057a:	b580      	push	{r7, lr}
 800057c:	b082      	sub	sp, #8
 800057e:	af00      	add	r7, sp, #0
 8000580:	6078      	str	r0, [r7, #4]
 8000582:	687b      	ldr	r3, [r7, #4]
 8000584:	681b      	ldr	r3, [r3, #0]
 8000586:	2201      	movs	r2, #1
 8000588:	431a      	orrs	r2, r3
 800058a:	687b      	ldr	r3, [r7, #4]
 800058c:	601a      	str	r2, [r3, #0]
 800058e:	46c0      	nop			; (mov r8, r8)
 8000590:	46bd      	mov	sp, r7
 8000592:	b002      	add	sp, #8
 8000594:	bd80      	pop	{r7, pc}

08000596 <LL_TIM_GetCounterMode>:
 8000596:	b580      	push	{r7, lr}
 8000598:	b082      	sub	sp, #8
 800059a:	af00      	add	r7, sp, #0
 800059c:	6078      	str	r0, [r7, #4]
 800059e:	687b      	ldr	r3, [r7, #4]
 80005a0:	681b      	ldr	r3, [r3, #0]
 80005a2:	2270      	movs	r2, #112	; 0x70
 80005a4:	4013      	ands	r3, r2
 80005a6:	0018      	movs	r0, r3
 80005a8:	46bd      	mov	sp, r7
 80005aa:	b002      	add	sp, #8
 80005ac:	bd80      	pop	{r7, pc}

080005ae <LL_TIM_SetAutoReload>:
 80005ae:	b580      	push	{r7, lr}
 80005b0:	b082      	sub	sp, #8
 80005b2:	af00      	add	r7, sp, #0
 80005b4:	6078      	str	r0, [r7, #4]
 80005b6:	6039      	str	r1, [r7, #0]
 80005b8:	687b      	ldr	r3, [r7, #4]
 80005ba:	683a      	ldr	r2, [r7, #0]
 80005bc:	62da      	str	r2, [r3, #44]	; 0x2c
 80005be:	46c0      	nop			; (mov r8, r8)
 80005c0:	46bd      	mov	sp, r7
 80005c2:	b002      	add	sp, #8
 80005c4:	bd80      	pop	{r7, pc}
	...

080005c8 <LL_TIM_IC_SetPolarity>:
 80005c8:	b590      	push	{r4, r7, lr}
 80005ca:	b085      	sub	sp, #20
 80005cc:	af00      	add	r7, sp, #0
 80005ce:	60f8      	str	r0, [r7, #12]
 80005d0:	60b9      	str	r1, [r7, #8]
 80005d2:	607a      	str	r2, [r7, #4]
 80005d4:	68bb      	ldr	r3, [r7, #8]
 80005d6:	2b01      	cmp	r3, #1
 80005d8:	d01e      	beq.n	8000618 <LL_TIM_IC_SetPolarity+0x50>
 80005da:	68bb      	ldr	r3, [r7, #8]
 80005dc:	2b04      	cmp	r3, #4
 80005de:	d019      	beq.n	8000614 <LL_TIM_IC_SetPolarity+0x4c>
 80005e0:	68bb      	ldr	r3, [r7, #8]
 80005e2:	2b10      	cmp	r3, #16
 80005e4:	d014      	beq.n	8000610 <LL_TIM_IC_SetPolarity+0x48>
 80005e6:	68bb      	ldr	r3, [r7, #8]
 80005e8:	2b40      	cmp	r3, #64	; 0x40
 80005ea:	d00f      	beq.n	800060c <LL_TIM_IC_SetPolarity+0x44>
 80005ec:	68ba      	ldr	r2, [r7, #8]
 80005ee:	2380      	movs	r3, #128	; 0x80
 80005f0:	005b      	lsls	r3, r3, #1
 80005f2:	429a      	cmp	r2, r3
 80005f4:	d008      	beq.n	8000608 <LL_TIM_IC_SetPolarity+0x40>
 80005f6:	68ba      	ldr	r2, [r7, #8]
 80005f8:	2380      	movs	r3, #128	; 0x80
 80005fa:	00db      	lsls	r3, r3, #3
 80005fc:	429a      	cmp	r2, r3
 80005fe:	d101      	bne.n	8000604 <LL_TIM_IC_SetPolarity+0x3c>
 8000600:	2305      	movs	r3, #5
 8000602:	e00a      	b.n	800061a <LL_TIM_IC_SetPolarity+0x52>
 8000604:	2306      	movs	r3, #6
 8000606:	e008      	b.n	800061a <LL_TIM_IC_SetPolarity+0x52>
 8000608:	2304      	movs	r3, #4
 800060a:	e006      	b.n	800061a <LL_TIM_IC_SetPolarity+0x52>
 800060c:	2303      	movs	r3, #3
 800060e:	e004      	b.n	800061a <LL_TIM_IC_SetPolarity+0x52>
 8000610:	2302      	movs	r3, #2
 8000612:	e002      	b.n	800061a <LL_TIM_IC_SetPolarity+0x52>
 8000614:	2301      	movs	r3, #1
 8000616:	e000      	b.n	800061a <LL_TIM_IC_SetPolarity+0x52>
 8000618:	2300      	movs	r3, #0
 800061a:	001c      	movs	r4, r3
 800061c:	68fb      	ldr	r3, [r7, #12]
 800061e:	6a1b      	ldr	r3, [r3, #32]
 8000620:	0021      	movs	r1, r4
 8000622:	4a0a      	ldr	r2, [pc, #40]	; (800064c <LL_TIM_IC_SetPolarity+0x84>)
 8000624:	5c52      	ldrb	r2, [r2, r1]
 8000626:	0011      	movs	r1, r2
 8000628:	220a      	movs	r2, #10
 800062a:	408a      	lsls	r2, r1
 800062c:	43d2      	mvns	r2, r2
 800062e:	401a      	ands	r2, r3
 8000630:	0021      	movs	r1, r4
 8000632:	4b06      	ldr	r3, [pc, #24]	; (800064c <LL_TIM_IC_SetPolarity+0x84>)
 8000634:	5c5b      	ldrb	r3, [r3, r1]
 8000636:	0019      	movs	r1, r3
 8000638:	687b      	ldr	r3, [r7, #4]
 800063a:	408b      	lsls	r3, r1
 800063c:	431a      	orrs	r2, r3
 800063e:	68fb      	ldr	r3, [r7, #12]
 8000640:	621a      	str	r2, [r3, #32]
 8000642:	46c0      	nop			; (mov r8, r8)
 8000644:	46bd      	mov	sp, r7
 8000646:	b005      	add	sp, #20
 8000648:	bd90      	pop	{r4, r7, pc}
 800064a:	46c0      	nop			; (mov r8, r8)
 800064c:	08004b9c 	.word	0x08004b9c

08000650 <LL_TIM_SetEncoderMode>:
 8000650:	b580      	push	{r7, lr}
 8000652:	b082      	sub	sp, #8
 8000654:	af00      	add	r7, sp, #0
 8000656:	6078      	str	r0, [r7, #4]
 8000658:	6039      	str	r1, [r7, #0]
 800065a:	687b      	ldr	r3, [r7, #4]
 800065c:	689b      	ldr	r3, [r3, #8]
 800065e:	2207      	movs	r2, #7
 8000660:	4393      	bics	r3, r2
 8000662:	001a      	movs	r2, r3
 8000664:	683b      	ldr	r3, [r7, #0]
 8000666:	431a      	orrs	r2, r3
 8000668:	687b      	ldr	r3, [r7, #4]
 800066a:	609a      	str	r2, [r3, #8]
 800066c:	46c0      	nop			; (mov r8, r8)
 800066e:	46bd      	mov	sp, r7
 8000670:	b002      	add	sp, #8
 8000672:	bd80      	pop	{r7, pc}

08000674 <rcc_config>:
 8000674:	b580      	push	{r7, lr}
 8000676:	af00      	add	r7, sp, #0
 8000678:	2001      	movs	r0, #1
 800067a:	f7ff febb 	bl	80003f4 <LL_FLASH_SetLatency>
 800067e:	f7ff fe09 	bl	8000294 <LL_RCC_HSI_Enable>
 8000682:	f7ff fe6f 	bl	8000364 <LL_RCC_PLL_Enable>
 8000686:	46c0      	nop			; (mov r8, r8)
 8000688:	f7ff fe12 	bl	80002b0 <LL_RCC_HSI_IsReady>
 800068c:	0003      	movs	r3, r0
 800068e:	2b01      	cmp	r3, #1
 8000690:	d004      	beq.n	800069c <rcc_config+0x28>
 8000692:	f7ff fe75 	bl	8000380 <LL_RCC_PLL_IsReady>
 8000696:	0003      	movs	r3, r0
 8000698:	2b01      	cmp	r3, #1
 800069a:	d1f5      	bne.n	8000688 <rcc_config+0x14>
 800069c:	23a0      	movs	r3, #160	; 0xa0
 800069e:	039b      	lsls	r3, r3, #14
 80006a0:	0019      	movs	r1, r3
 80006a2:	2000      	movs	r0, #0
 80006a4:	f7ff fe80 	bl	80003a8 <LL_RCC_PLL_ConfigDomain_SYS>
 80006a8:	2000      	movs	r0, #0
 80006aa:	f7ff fe31 	bl	8000310 <LL_RCC_SetAHBPrescaler>
 80006ae:	2002      	movs	r0, #2
 80006b0:	f7ff fe0e 	bl	80002d0 <LL_RCC_SetSysClkSource>
 80006b4:	46c0      	nop			; (mov r8, r8)
 80006b6:	f7ff fe1f 	bl	80002f8 <LL_RCC_GetSysClkSource>
 80006ba:	0003      	movs	r3, r0
 80006bc:	2b08      	cmp	r3, #8
 80006be:	d1fa      	bne.n	80006b6 <rcc_config+0x42>
 80006c0:	2000      	movs	r0, #0
 80006c2:	f7ff fe39 	bl	8000338 <LL_RCC_SetAPB1Prescaler>
 80006c6:	4b03      	ldr	r3, [pc, #12]	; (80006d4 <rcc_config+0x60>)
 80006c8:	4a03      	ldr	r2, [pc, #12]	; (80006d8 <rcc_config+0x64>)
 80006ca:	601a      	str	r2, [r3, #0]
 80006cc:	46c0      	nop			; (mov r8, r8)
 80006ce:	46bd      	mov	sp, r7
 80006d0:	bd80      	pop	{r7, pc}
 80006d2:	46c0      	nop			; (mov r8, r8)
 80006d4:	200000cc 	.word	0x200000cc
 80006d8:	02dc6c00 	.word	0x02dc6c00

080006dc <gpio_config>:
 80006dc:	b580      	push	{r7, lr}
 80006de:	af00      	add	r7, sp, #0
 80006e0:	2380      	movs	r3, #128	; 0x80
 80006e2:	029b      	lsls	r3, r3, #10
 80006e4:	0018      	movs	r0, r3
 80006e6:	f7ff fe99 	bl	800041c <LL_AHB1_GRP1_EnableClock>
 80006ea:	2380      	movs	r3, #128	; 0x80
 80006ec:	031b      	lsls	r3, r3, #12
 80006ee:	0018      	movs	r0, r3
 80006f0:	f7ff fe94 	bl	800041c <LL_AHB1_GRP1_EnableClock>
 80006f4:	2380      	movs	r3, #128	; 0x80
 80006f6:	015b      	lsls	r3, r3, #5
 80006f8:	482c      	ldr	r0, [pc, #176]	; (80007ac <gpio_config+0xd0>)
 80006fa:	2201      	movs	r2, #1
 80006fc:	0019      	movs	r1, r3
 80006fe:	f7ff feb9 	bl	8000474 <LL_GPIO_SetPinMode>
 8000702:	2380      	movs	r3, #128	; 0x80
 8000704:	009b      	lsls	r3, r3, #2
 8000706:	4829      	ldr	r0, [pc, #164]	; (80007ac <gpio_config+0xd0>)
 8000708:	2201      	movs	r2, #1
 800070a:	0019      	movs	r1, r3
 800070c:	f7ff feb2 	bl	8000474 <LL_GPIO_SetPinMode>
 8000710:	2380      	movs	r3, #128	; 0x80
 8000712:	005b      	lsls	r3, r3, #1
 8000714:	4825      	ldr	r0, [pc, #148]	; (80007ac <gpio_config+0xd0>)
 8000716:	2201      	movs	r2, #1
 8000718:	0019      	movs	r1, r3
 800071a:	f7ff feab 	bl	8000474 <LL_GPIO_SetPinMode>
 800071e:	4b23      	ldr	r3, [pc, #140]	; (80007ac <gpio_config+0xd0>)
 8000720:	2201      	movs	r2, #1
 8000722:	2140      	movs	r1, #64	; 0x40
 8000724:	0018      	movs	r0, r3
 8000726:	f7ff fea5 	bl	8000474 <LL_GPIO_SetPinMode>
 800072a:	2380      	movs	r3, #128	; 0x80
 800072c:	011b      	lsls	r3, r3, #4
 800072e:	481f      	ldr	r0, [pc, #124]	; (80007ac <gpio_config+0xd0>)
 8000730:	2201      	movs	r2, #1
 8000732:	0019      	movs	r1, r3
 8000734:	f7ff fe9e 	bl	8000474 <LL_GPIO_SetPinMode>
 8000738:	4b1c      	ldr	r3, [pc, #112]	; (80007ac <gpio_config+0xd0>)
 800073a:	2201      	movs	r2, #1
 800073c:	2180      	movs	r1, #128	; 0x80
 800073e:	0018      	movs	r0, r3
 8000740:	f7ff fe98 	bl	8000474 <LL_GPIO_SetPinMode>
 8000744:	4b19      	ldr	r3, [pc, #100]	; (80007ac <gpio_config+0xd0>)
 8000746:	2201      	movs	r2, #1
 8000748:	2110      	movs	r1, #16
 800074a:	0018      	movs	r0, r3
 800074c:	f7ff fe92 	bl	8000474 <LL_GPIO_SetPinMode>
 8000750:	4b16      	ldr	r3, [pc, #88]	; (80007ac <gpio_config+0xd0>)
 8000752:	2201      	movs	r2, #1
 8000754:	2104      	movs	r1, #4
 8000756:	0018      	movs	r0, r3
 8000758:	f7ff fe8c 	bl	8000474 <LL_GPIO_SetPinMode>
 800075c:	4b13      	ldr	r3, [pc, #76]	; (80007ac <gpio_config+0xd0>)
 800075e:	2201      	movs	r2, #1
 8000760:	2102      	movs	r1, #2
 8000762:	0018      	movs	r0, r3
 8000764:	f7ff fe86 	bl	8000474 <LL_GPIO_SetPinMode>
 8000768:	2380      	movs	r3, #128	; 0x80
 800076a:	00db      	lsls	r3, r3, #3
 800076c:	480f      	ldr	r0, [pc, #60]	; (80007ac <gpio_config+0xd0>)
 800076e:	2201      	movs	r2, #1
 8000770:	0019      	movs	r1, r3
 8000772:	f7ff fe7f 	bl	8000474 <LL_GPIO_SetPinMode>
 8000776:	4b0d      	ldr	r3, [pc, #52]	; (80007ac <gpio_config+0xd0>)
 8000778:	2201      	movs	r2, #1
 800077a:	2120      	movs	r1, #32
 800077c:	0018      	movs	r0, r3
 800077e:	f7ff fe79 	bl	8000474 <LL_GPIO_SetPinMode>
 8000782:	4b0a      	ldr	r3, [pc, #40]	; (80007ac <gpio_config+0xd0>)
 8000784:	2201      	movs	r2, #1
 8000786:	2108      	movs	r1, #8
 8000788:	0018      	movs	r0, r3
 800078a:	f7ff fe73 	bl	8000474 <LL_GPIO_SetPinMode>
 800078e:	4b07      	ldr	r3, [pc, #28]	; (80007ac <gpio_config+0xd0>)
 8000790:	2200      	movs	r2, #0
 8000792:	2101      	movs	r1, #1
 8000794:	0018      	movs	r0, r3
 8000796:	f7ff fe6d 	bl	8000474 <LL_GPIO_SetPinMode>
 800079a:	4b04      	ldr	r3, [pc, #16]	; (80007ac <gpio_config+0xd0>)
 800079c:	2202      	movs	r2, #2
 800079e:	2101      	movs	r1, #1
 80007a0:	0018      	movs	r0, r3
 80007a2:	f7ff fe83 	bl	80004ac <LL_GPIO_SetPinPull>
 80007a6:	46c0      	nop			; (mov r8, r8)
 80007a8:	46bd      	mov	sp, r7
 80007aa:	bd80      	pop	{r7, pc}
 80007ac:	48000800 	.word	0x48000800

080007b0 <timers_config>:
 80007b0:	b580      	push	{r7, lr}
 80007b2:	af00      	add	r7, sp, #0
 80007b4:	2380      	movs	r3, #128	; 0x80
 80007b6:	029b      	lsls	r3, r3, #10
 80007b8:	0018      	movs	r0, r3
 80007ba:	f7ff fe2f 	bl	800041c <LL_AHB1_GRP1_EnableClock>
 80007be:	2390      	movs	r3, #144	; 0x90
 80007c0:	05db      	lsls	r3, r3, #23
 80007c2:	2202      	movs	r2, #2
 80007c4:	2101      	movs	r1, #1
 80007c6:	0018      	movs	r0, r3
 80007c8:	f7ff fe54 	bl	8000474 <LL_GPIO_SetPinMode>
 80007cc:	2390      	movs	r3, #144	; 0x90
 80007ce:	05db      	lsls	r3, r3, #23
 80007d0:	2202      	movs	r2, #2
 80007d2:	2102      	movs	r1, #2
 80007d4:	0018      	movs	r0, r3
 80007d6:	f7ff fe4d 	bl	8000474 <LL_GPIO_SetPinMode>
 80007da:	2390      	movs	r3, #144	; 0x90
 80007dc:	05db      	lsls	r3, r3, #23
 80007de:	2202      	movs	r2, #2
 80007e0:	2101      	movs	r1, #1
 80007e2:	0018      	movs	r0, r3
 80007e4:	f7ff fe7e 	bl	80004e4 <LL_GPIO_SetAFPin_0_7>
 80007e8:	2390      	movs	r3, #144	; 0x90
 80007ea:	05db      	lsls	r3, r3, #23
 80007ec:	2202      	movs	r2, #2
 80007ee:	2102      	movs	r1, #2
 80007f0:	0018      	movs	r0, r3
 80007f2:	f7ff fe77 	bl	80004e4 <LL_GPIO_SetAFPin_0_7>
 80007f6:	2390      	movs	r3, #144	; 0x90
 80007f8:	05db      	lsls	r3, r3, #23
 80007fa:	2201      	movs	r2, #1
 80007fc:	2101      	movs	r1, #1
 80007fe:	0018      	movs	r0, r3
 8000800:	f7ff fe54 	bl	80004ac <LL_GPIO_SetPinPull>
 8000804:	2390      	movs	r3, #144	; 0x90
 8000806:	05db      	lsls	r3, r3, #23
 8000808:	2201      	movs	r2, #1
 800080a:	2102      	movs	r1, #2
 800080c:	0018      	movs	r0, r3
 800080e:	f7ff fe4d 	bl	80004ac <LL_GPIO_SetPinPull>
 8000812:	2001      	movs	r0, #1
 8000814:	f7ff fe18 	bl	8000448 <LL_APB1_GRP1_EnableClock>
 8000818:	2380      	movs	r3, #128	; 0x80
 800081a:	05db      	lsls	r3, r3, #23
 800081c:	2103      	movs	r1, #3
 800081e:	0018      	movs	r0, r3
 8000820:	f7ff ff16 	bl	8000650 <LL_TIM_SetEncoderMode>
 8000824:	2380      	movs	r3, #128	; 0x80
 8000826:	05db      	lsls	r3, r3, #23
 8000828:	2202      	movs	r2, #2
 800082a:	2101      	movs	r1, #1
 800082c:	0018      	movs	r0, r3
 800082e:	f7ff fecb 	bl	80005c8 <LL_TIM_IC_SetPolarity>
 8000832:	2380      	movs	r3, #128	; 0x80
 8000834:	05db      	lsls	r3, r3, #23
 8000836:	2202      	movs	r2, #2
 8000838:	2110      	movs	r1, #16
 800083a:	0018      	movs	r0, r3
 800083c:	f7ff fec4 	bl	80005c8 <LL_TIM_IC_SetPolarity>
 8000840:	4a07      	ldr	r2, [pc, #28]	; (8000860 <timers_config+0xb0>)
 8000842:	2380      	movs	r3, #128	; 0x80
 8000844:	05db      	lsls	r3, r3, #23
 8000846:	0011      	movs	r1, r2
 8000848:	0018      	movs	r0, r3
 800084a:	f7ff feb0 	bl	80005ae <LL_TIM_SetAutoReload>
 800084e:	2380      	movs	r3, #128	; 0x80
 8000850:	05db      	lsls	r3, r3, #23
 8000852:	0018      	movs	r0, r3
 8000854:	f7ff fe91 	bl	800057a <LL_TIM_EnableCounter>
 8000858:	46c0      	nop			; (mov r8, r8)
 800085a:	46bd      	mov	sp, r7
 800085c:	bd80      	pop	{r7, pc}
 800085e:	46c0      	nop			; (mov r8, r8)
 8000860:	0000ffff 	.word	0x0000ffff

08000864 <main>:
 8000864:	b590      	push	{r4, r7, lr}
 8000866:	b085      	sub	sp, #20
 8000868:	af00      	add	r7, sp, #0
 800086a:	1dfb      	adds	r3, r7, #7
 800086c:	2205      	movs	r2, #5
 800086e:	701a      	strb	r2, [r3, #0]
 8000870:	230f      	movs	r3, #15
 8000872:	18fb      	adds	r3, r7, r3
 8000874:	2200      	movs	r2, #0
 8000876:	701a      	strb	r2, [r3, #0]
 8000878:	230e      	movs	r3, #14
 800087a:	18fb      	adds	r3, r7, r3
 800087c:	2200      	movs	r2, #0
 800087e:	701a      	strb	r2, [r3, #0]
 8000880:	f7ff fef8 	bl	8000674 <rcc_config>
 8000884:	f7ff ff2a 	bl	80006dc <gpio_config>
 8000888:	f7ff ff92 	bl	80007b0 <timers_config>
 800088c:	f000 fa10 	bl	8000cb0 <initialize_battlefield>
 8000890:	f003 fea0 	bl	80045d4 <oled_config>
 8000894:	f000 f9e0 	bl	8000c58 <printf_config>
 8000898:	2000      	movs	r0, #0
 800089a:	f003 fe59 	bl	8004550 <oled_clr>
 800089e:	2139      	movs	r1, #57	; 0x39
 80008a0:	2030      	movs	r0, #48	; 0x30
 80008a2:	f003 ff51 	bl	8004748 <oled_set_cursor>
 80008a6:	4bae      	ldr	r3, [pc, #696]	; (8000b60 <main+0x2fc>)
 80008a8:	0018      	movs	r0, r3
 80008aa:	f003 fbbf 	bl	800402c <xprintf>
 80008ae:	212d      	movs	r1, #45	; 0x2d
 80008b0:	2040      	movs	r0, #64	; 0x40
 80008b2:	f002 fd08 	bl	80032c6 <draw_player_ship>
 80008b6:	f003 fe5f 	bl	8004578 <oled_update>
 80008ba:	e02c      	b.n	8000916 <main+0xb2>
 80008bc:	4ba9      	ldr	r3, [pc, #676]	; (8000b64 <main+0x300>)
 80008be:	2101      	movs	r1, #1
 80008c0:	0018      	movs	r0, r3
 80008c2:	f7ff fe32 	bl	800052a <LL_GPIO_IsInputPinSet>
 80008c6:	1e03      	subs	r3, r0, #0
 80008c8:	d00b      	beq.n	80008e2 <main+0x7e>
 80008ca:	220e      	movs	r2, #14
 80008cc:	18bb      	adds	r3, r7, r2
 80008ce:	781b      	ldrb	r3, [r3, #0]
 80008d0:	2b00      	cmp	r3, #0
 80008d2:	d106      	bne.n	80008e2 <main+0x7e>
 80008d4:	18bb      	adds	r3, r7, r2
 80008d6:	2201      	movs	r2, #1
 80008d8:	701a      	strb	r2, [r3, #0]
 80008da:	230f      	movs	r3, #15
 80008dc:	18fb      	adds	r3, r7, r3
 80008de:	2200      	movs	r2, #0
 80008e0:	701a      	strb	r2, [r3, #0]
 80008e2:	230e      	movs	r3, #14
 80008e4:	18fb      	adds	r3, r7, r3
 80008e6:	781b      	ldrb	r3, [r3, #0]
 80008e8:	2b00      	cmp	r3, #0
 80008ea:	d005      	beq.n	80008f8 <main+0x94>
 80008ec:	210f      	movs	r1, #15
 80008ee:	187b      	adds	r3, r7, r1
 80008f0:	781a      	ldrb	r2, [r3, #0]
 80008f2:	187b      	adds	r3, r7, r1
 80008f4:	3201      	adds	r2, #1
 80008f6:	701a      	strb	r2, [r3, #0]
 80008f8:	210f      	movs	r1, #15
 80008fa:	187b      	adds	r3, r7, r1
 80008fc:	781b      	ldrb	r3, [r3, #0]
 80008fe:	2b09      	cmp	r3, #9
 8000900:	d909      	bls.n	8000916 <main+0xb2>
 8000902:	4b99      	ldr	r3, [pc, #612]	; (8000b68 <main+0x304>)
 8000904:	2201      	movs	r2, #1
 8000906:	701a      	strb	r2, [r3, #0]
 8000908:	230e      	movs	r3, #14
 800090a:	18fb      	adds	r3, r7, r3
 800090c:	2200      	movs	r2, #0
 800090e:	701a      	strb	r2, [r3, #0]
 8000910:	187b      	adds	r3, r7, r1
 8000912:	2200      	movs	r2, #0
 8000914:	701a      	strb	r2, [r3, #0]
 8000916:	4b94      	ldr	r3, [pc, #592]	; (8000b68 <main+0x304>)
 8000918:	781b      	ldrb	r3, [r3, #0]
 800091a:	2b00      	cmp	r3, #0
 800091c:	d0ce      	beq.n	80008bc <main+0x58>
 800091e:	230d      	movs	r3, #13
 8000920:	18fb      	adds	r3, r7, r3
 8000922:	2200      	movs	r2, #0
 8000924:	701a      	strb	r2, [r3, #0]
 8000926:	4b91      	ldr	r3, [pc, #580]	; (8000b6c <main+0x308>)
 8000928:	781b      	ldrb	r3, [r3, #0]
 800092a:	2b00      	cmp	r3, #0
 800092c:	d011      	beq.n	8000952 <main+0xee>
 800092e:	2000      	movs	r0, #0
 8000930:	f003 fe0e 	bl	8004550 <oled_clr>
 8000934:	2139      	movs	r1, #57	; 0x39
 8000936:	202b      	movs	r0, #43	; 0x2b
 8000938:	f003 ff06 	bl	8004748 <oled_set_cursor>
 800093c:	4b8c      	ldr	r3, [pc, #560]	; (8000b70 <main+0x30c>)
 800093e:	0018      	movs	r0, r3
 8000940:	f003 fb74 	bl	800402c <xprintf>
 8000944:	2146      	movs	r1, #70	; 0x46
 8000946:	200a      	movs	r0, #10
 8000948:	f001 f903 	bl	8001b52 <draw_defeat>
 800094c:	f003 fe14 	bl	8004578 <oled_update>
 8000950:	e0f0      	b.n	8000b34 <main+0x2d0>
 8000952:	4b88      	ldr	r3, [pc, #544]	; (8000b74 <main+0x310>)
 8000954:	781b      	ldrb	r3, [r3, #0]
 8000956:	2b00      	cmp	r3, #0
 8000958:	d00d      	beq.n	8000976 <main+0x112>
 800095a:	2000      	movs	r0, #0
 800095c:	f003 fdf8 	bl	8004550 <oled_clr>
 8000960:	2139      	movs	r1, #57	; 0x39
 8000962:	202b      	movs	r0, #43	; 0x2b
 8000964:	f003 fef0 	bl	8004748 <oled_set_cursor>
 8000968:	4b83      	ldr	r3, [pc, #524]	; (8000b78 <main+0x314>)
 800096a:	0018      	movs	r0, r3
 800096c:	f003 fb5e 	bl	800402c <xprintf>
 8000970:	f003 fe02 	bl	8004578 <oled_update>
 8000974:	e0de      	b.n	8000b34 <main+0x2d0>
 8000976:	4b7b      	ldr	r3, [pc, #492]	; (8000b64 <main+0x300>)
 8000978:	2101      	movs	r1, #1
 800097a:	0018      	movs	r0, r3
 800097c:	f7ff fdd5 	bl	800052a <LL_GPIO_IsInputPinSet>
 8000980:	1e03      	subs	r3, r0, #0
 8000982:	d00b      	beq.n	800099c <main+0x138>
 8000984:	220e      	movs	r2, #14
 8000986:	18bb      	adds	r3, r7, r2
 8000988:	781b      	ldrb	r3, [r3, #0]
 800098a:	2b00      	cmp	r3, #0
 800098c:	d106      	bne.n	800099c <main+0x138>
 800098e:	18bb      	adds	r3, r7, r2
 8000990:	2201      	movs	r2, #1
 8000992:	701a      	strb	r2, [r3, #0]
 8000994:	230f      	movs	r3, #15
 8000996:	18fb      	adds	r3, r7, r3
 8000998:	2200      	movs	r2, #0
 800099a:	701a      	strb	r2, [r3, #0]
 800099c:	230e      	movs	r3, #14
 800099e:	18fb      	adds	r3, r7, r3
 80009a0:	781b      	ldrb	r3, [r3, #0]
 80009a2:	2b00      	cmp	r3, #0
 80009a4:	d005      	beq.n	80009b2 <main+0x14e>
 80009a6:	210f      	movs	r1, #15
 80009a8:	187b      	adds	r3, r7, r1
 80009aa:	781a      	ldrb	r2, [r3, #0]
 80009ac:	187b      	adds	r3, r7, r1
 80009ae:	3201      	adds	r2, #1
 80009b0:	701a      	strb	r2, [r3, #0]
 80009b2:	230f      	movs	r3, #15
 80009b4:	18fb      	adds	r3, r7, r3
 80009b6:	781b      	ldrb	r3, [r3, #0]
 80009b8:	2b09      	cmp	r3, #9
 80009ba:	d979      	bls.n	8000ab0 <main+0x24c>
 80009bc:	4b6f      	ldr	r3, [pc, #444]	; (8000b7c <main+0x318>)
 80009be:	781b      	ldrb	r3, [r3, #0]
 80009c0:	3302      	adds	r3, #2
 80009c2:	b2da      	uxtb	r2, r3
 80009c4:	4b6d      	ldr	r3, [pc, #436]	; (8000b7c <main+0x318>)
 80009c6:	701a      	strb	r2, [r3, #0]
 80009c8:	4b6c      	ldr	r3, [pc, #432]	; (8000b7c <main+0x318>)
 80009ca:	781b      	ldrb	r3, [r3, #0]
 80009cc:	1e5a      	subs	r2, r3, #1
 80009ce:	496c      	ldr	r1, [pc, #432]	; (8000b80 <main+0x31c>)
 80009d0:	0013      	movs	r3, r2
 80009d2:	00db      	lsls	r3, r3, #3
 80009d4:	189b      	adds	r3, r3, r2
 80009d6:	009b      	lsls	r3, r3, #2
 80009d8:	4a6a      	ldr	r2, [pc, #424]	; (8000b84 <main+0x320>)
 80009da:	18cb      	adds	r3, r1, r3
 80009dc:	ca13      	ldmia	r2!, {r0, r1, r4}
 80009de:	c313      	stmia	r3!, {r0, r1, r4}
 80009e0:	ca13      	ldmia	r2!, {r0, r1, r4}
 80009e2:	c313      	stmia	r3!, {r0, r1, r4}
 80009e4:	ca13      	ldmia	r2!, {r0, r1, r4}
 80009e6:	c313      	stmia	r3!, {r0, r1, r4}
 80009e8:	4b65      	ldr	r3, [pc, #404]	; (8000b80 <main+0x31c>)
 80009ea:	689b      	ldr	r3, [r3, #8]
 80009ec:	4a63      	ldr	r2, [pc, #396]	; (8000b7c <main+0x318>)
 80009ee:	7812      	ldrb	r2, [r2, #0]
 80009f0:	3a01      	subs	r2, #1
 80009f2:	1dd9      	adds	r1, r3, #7
 80009f4:	4862      	ldr	r0, [pc, #392]	; (8000b80 <main+0x31c>)
 80009f6:	0013      	movs	r3, r2
 80009f8:	00db      	lsls	r3, r3, #3
 80009fa:	189b      	adds	r3, r3, r2
 80009fc:	009b      	lsls	r3, r3, #2
 80009fe:	18c3      	adds	r3, r0, r3
 8000a00:	3308      	adds	r3, #8
 8000a02:	6019      	str	r1, [r3, #0]
 8000a04:	4b5e      	ldr	r3, [pc, #376]	; (8000b80 <main+0x31c>)
 8000a06:	6859      	ldr	r1, [r3, #4]
 8000a08:	4b5d      	ldr	r3, [pc, #372]	; (8000b80 <main+0x31c>)
 8000a0a:	68da      	ldr	r2, [r3, #12]
 8000a0c:	4b5d      	ldr	r3, [pc, #372]	; (8000b84 <main+0x320>)
 8000a0e:	68db      	ldr	r3, [r3, #12]
 8000a10:	18d3      	adds	r3, r2, r3
 8000a12:	2b00      	cmp	r3, #0
 8000a14:	da00      	bge.n	8000a18 <main+0x1b4>
 8000a16:	3301      	adds	r3, #1
 8000a18:	105b      	asrs	r3, r3, #1
 8000a1a:	0018      	movs	r0, r3
 8000a1c:	4b57      	ldr	r3, [pc, #348]	; (8000b7c <main+0x318>)
 8000a1e:	781b      	ldrb	r3, [r3, #0]
 8000a20:	1e5a      	subs	r2, r3, #1
 8000a22:	1809      	adds	r1, r1, r0
 8000a24:	4856      	ldr	r0, [pc, #344]	; (8000b80 <main+0x31c>)
 8000a26:	0013      	movs	r3, r2
 8000a28:	00db      	lsls	r3, r3, #3
 8000a2a:	189b      	adds	r3, r3, r2
 8000a2c:	009b      	lsls	r3, r3, #2
 8000a2e:	18c3      	adds	r3, r0, r3
 8000a30:	3304      	adds	r3, #4
 8000a32:	6019      	str	r1, [r3, #0]
 8000a34:	4b51      	ldr	r3, [pc, #324]	; (8000b7c <main+0x318>)
 8000a36:	781b      	ldrb	r3, [r3, #0]
 8000a38:	1e9a      	subs	r2, r3, #2
 8000a3a:	4951      	ldr	r1, [pc, #324]	; (8000b80 <main+0x31c>)
 8000a3c:	0013      	movs	r3, r2
 8000a3e:	00db      	lsls	r3, r3, #3
 8000a40:	189b      	adds	r3, r3, r2
 8000a42:	009b      	lsls	r3, r3, #2
 8000a44:	4a4f      	ldr	r2, [pc, #316]	; (8000b84 <main+0x320>)
 8000a46:	18cb      	adds	r3, r1, r3
 8000a48:	ca13      	ldmia	r2!, {r0, r1, r4}
 8000a4a:	c313      	stmia	r3!, {r0, r1, r4}
 8000a4c:	ca13      	ldmia	r2!, {r0, r1, r4}
 8000a4e:	c313      	stmia	r3!, {r0, r1, r4}
 8000a50:	ca13      	ldmia	r2!, {r0, r1, r4}
 8000a52:	c313      	stmia	r3!, {r0, r1, r4}
 8000a54:	4b4a      	ldr	r3, [pc, #296]	; (8000b80 <main+0x31c>)
 8000a56:	689b      	ldr	r3, [r3, #8]
 8000a58:	4a48      	ldr	r2, [pc, #288]	; (8000b7c <main+0x318>)
 8000a5a:	7812      	ldrb	r2, [r2, #0]
 8000a5c:	3a02      	subs	r2, #2
 8000a5e:	1fd9      	subs	r1, r3, #7
 8000a60:	4847      	ldr	r0, [pc, #284]	; (8000b80 <main+0x31c>)
 8000a62:	0013      	movs	r3, r2
 8000a64:	00db      	lsls	r3, r3, #3
 8000a66:	189b      	adds	r3, r3, r2
 8000a68:	009b      	lsls	r3, r3, #2
 8000a6a:	18c3      	adds	r3, r0, r3
 8000a6c:	3308      	adds	r3, #8
 8000a6e:	6019      	str	r1, [r3, #0]
 8000a70:	4b43      	ldr	r3, [pc, #268]	; (8000b80 <main+0x31c>)
 8000a72:	6859      	ldr	r1, [r3, #4]
 8000a74:	4b42      	ldr	r3, [pc, #264]	; (8000b80 <main+0x31c>)
 8000a76:	68da      	ldr	r2, [r3, #12]
 8000a78:	4b42      	ldr	r3, [pc, #264]	; (8000b84 <main+0x320>)
 8000a7a:	68db      	ldr	r3, [r3, #12]
 8000a7c:	18d3      	adds	r3, r2, r3
 8000a7e:	2b00      	cmp	r3, #0
 8000a80:	da00      	bge.n	8000a84 <main+0x220>
 8000a82:	3301      	adds	r3, #1
 8000a84:	105b      	asrs	r3, r3, #1
 8000a86:	0018      	movs	r0, r3
 8000a88:	4b3c      	ldr	r3, [pc, #240]	; (8000b7c <main+0x318>)
 8000a8a:	781b      	ldrb	r3, [r3, #0]
 8000a8c:	1e9a      	subs	r2, r3, #2
 8000a8e:	1809      	adds	r1, r1, r0
 8000a90:	483b      	ldr	r0, [pc, #236]	; (8000b80 <main+0x31c>)
 8000a92:	0013      	movs	r3, r2
 8000a94:	00db      	lsls	r3, r3, #3
 8000a96:	189b      	adds	r3, r3, r2
 8000a98:	009b      	lsls	r3, r3, #2
 8000a9a:	18c3      	adds	r3, r0, r3
 8000a9c:	3304      	adds	r3, #4
 8000a9e:	6019      	str	r1, [r3, #0]
 8000aa0:	230e      	movs	r3, #14
 8000aa2:	18fb      	adds	r3, r7, r3
 8000aa4:	2200      	movs	r2, #0
 8000aa6:	701a      	strb	r2, [r3, #0]
 8000aa8:	230f      	movs	r3, #15
 8000aaa:	18fb      	adds	r3, r7, r3
 8000aac:	2200      	movs	r2, #0
 8000aae:	701a      	strb	r2, [r3, #0]
 8000ab0:	220d      	movs	r2, #13
 8000ab2:	18bb      	adds	r3, r7, r2
 8000ab4:	781b      	ldrb	r3, [r3, #0]
 8000ab6:	2be6      	cmp	r3, #230	; 0xe6
 8000ab8:	d902      	bls.n	8000ac0 <main+0x25c>
 8000aba:	18bb      	adds	r3, r7, r2
 8000abc:	2200      	movs	r2, #0
 8000abe:	701a      	strb	r2, [r3, #0]
 8000ac0:	240d      	movs	r4, #13
 8000ac2:	193b      	adds	r3, r7, r4
 8000ac4:	781b      	ldrb	r3, [r3, #0]
 8000ac6:	2103      	movs	r1, #3
 8000ac8:	0018      	movs	r0, r3
 8000aca:	f7ff fb35 	bl	8000138 <__aeabi_uidivmod>
 8000ace:	000b      	movs	r3, r1
 8000ad0:	b2db      	uxtb	r3, r3
 8000ad2:	2b00      	cmp	r3, #0
 8000ad4:	d127      	bne.n	8000b26 <main+0x2c2>
 8000ad6:	f000 f8a5 	bl	8000c24 <get_encoder_rotation>
 8000ada:	2000      	movs	r0, #0
 8000adc:	f003 fd38 	bl	8004550 <oled_clr>
 8000ae0:	2139      	movs	r1, #57	; 0x39
 8000ae2:	202b      	movs	r0, #43	; 0x2b
 8000ae4:	f003 fe30 	bl	8004748 <oled_set_cursor>
 8000ae8:	4b25      	ldr	r3, [pc, #148]	; (8000b80 <main+0x31c>)
 8000aea:	695a      	ldr	r2, [r3, #20]
 8000aec:	4b26      	ldr	r3, [pc, #152]	; (8000b88 <main+0x324>)
 8000aee:	0011      	movs	r1, r2
 8000af0:	0018      	movs	r0, r3
 8000af2:	f003 fa9b 	bl	800402c <xprintf>
 8000af6:	193b      	adds	r3, r7, r4
 8000af8:	781a      	ldrb	r2, [r3, #0]
 8000afa:	4b21      	ldr	r3, [pc, #132]	; (8000b80 <main+0x31c>)
 8000afc:	0011      	movs	r1, r2
 8000afe:	0018      	movs	r0, r3
 8000b00:	f000 f91a 	bl	8000d38 <move_entities>
 8000b04:	193b      	adds	r3, r7, r4
 8000b06:	781a      	ldrb	r2, [r3, #0]
 8000b08:	4b1d      	ldr	r3, [pc, #116]	; (8000b80 <main+0x31c>)
 8000b0a:	0011      	movs	r1, r2
 8000b0c:	0018      	movs	r0, r3
 8000b0e:	f000 fc35 	bl	800137c <spawn_enemies>
 8000b12:	4b1b      	ldr	r3, [pc, #108]	; (8000b80 <main+0x31c>)
 8000b14:	0018      	movs	r0, r3
 8000b16:	f000 fa4d 	bl	8000fb4 <update_entities>
 8000b1a:	4b19      	ldr	r3, [pc, #100]	; (8000b80 <main+0x31c>)
 8000b1c:	0018      	movs	r0, r3
 8000b1e:	f002 ff95 	bl	8003a4c <draw_battlefield>
 8000b22:	f003 fd29 	bl	8004578 <oled_update>
 8000b26:	210d      	movs	r1, #13
 8000b28:	187b      	adds	r3, r7, r1
 8000b2a:	781a      	ldrb	r2, [r3, #0]
 8000b2c:	187b      	adds	r3, r7, r1
 8000b2e:	3201      	adds	r2, #1
 8000b30:	701a      	strb	r2, [r3, #0]
 8000b32:	e6f8      	b.n	8000926 <main+0xc2>
 8000b34:	2300      	movs	r3, #0
 8000b36:	60bb      	str	r3, [r7, #8]
 8000b38:	4b14      	ldr	r3, [pc, #80]	; (8000b8c <main+0x328>)
 8000b3a:	681b      	ldr	r3, [r3, #0]
 8000b3c:	0018      	movs	r0, r3
 8000b3e:	68bb      	ldr	r3, [r7, #8]
 8000b40:	4a13      	ldr	r2, [pc, #76]	; (8000b90 <main+0x32c>)
 8000b42:	4013      	ands	r3, r2
 8000b44:	d504      	bpl.n	8000b50 <main+0x2ec>
 8000b46:	3b01      	subs	r3, #1
 8000b48:	2204      	movs	r2, #4
 8000b4a:	4252      	negs	r2, r2
 8000b4c:	4313      	orrs	r3, r2
 8000b4e:	3301      	adds	r3, #1
 8000b50:	0019      	movs	r1, r3
 8000b52:	f000 f81f 	bl	8000b94 <set_indicator_4digits>
 8000b56:	68bb      	ldr	r3, [r7, #8]
 8000b58:	3301      	adds	r3, #1
 8000b5a:	60bb      	str	r3, [r7, #8]
 8000b5c:	e7ec      	b.n	8000b38 <main+0x2d4>
 8000b5e:	46c0      	nop			; (mov r8, r8)
 8000b60:	08004ac8 	.word	0x08004ac8
 8000b64:	48000800 	.word	0x48000800
 8000b68:	20000524 	.word	0x20000524
 8000b6c:	2000052d 	.word	0x2000052d
 8000b70:	08004b00 	.word	0x08004b00
 8000b74:	2000052c 	.word	0x2000052c
 8000b78:	08004b38 	.word	0x08004b38
 8000b7c:	2000052e 	.word	0x2000052e
 8000b80:	20000938 	.word	0x20000938
 8000b84:	20000024 	.word	0x20000024
 8000b88:	08004b80 	.word	0x08004b80
 8000b8c:	20000528 	.word	0x20000528
 8000b90:	80000003 	.word	0x80000003

08000b94 <set_indicator_4digits>:
 8000b94:	b5b0      	push	{r4, r5, r7, lr}
 8000b96:	b088      	sub	sp, #32
 8000b98:	af00      	add	r7, sp, #0
 8000b9a:	6078      	str	r0, [r7, #4]
 8000b9c:	6039      	str	r1, [r7, #0]
 8000b9e:	2300      	movs	r3, #0
 8000ba0:	61fb      	str	r3, [r7, #28]
 8000ba2:	4b1b      	ldr	r3, [pc, #108]	; (8000c10 <set_indicator_4digits+0x7c>)
 8000ba4:	0018      	movs	r0, r3
 8000ba6:	f7ff fcde 	bl	8000566 <LL_GPIO_ReadOutputPort>
 8000baa:	0003      	movs	r3, r0
 8000bac:	61fb      	str	r3, [r7, #28]
 8000bae:	210c      	movs	r1, #12
 8000bb0:	187b      	adds	r3, r7, r1
 8000bb2:	4a18      	ldr	r2, [pc, #96]	; (8000c14 <set_indicator_4digits+0x80>)
 8000bb4:	ca31      	ldmia	r2!, {r0, r4, r5}
 8000bb6:	c331      	stmia	r3!, {r0, r4, r5}
 8000bb8:	6812      	ldr	r2, [r2, #0]
 8000bba:	601a      	str	r2, [r3, #0]
 8000bbc:	4b16      	ldr	r3, [pc, #88]	; (8000c18 <set_indicator_4digits+0x84>)
 8000bbe:	681b      	ldr	r3, [r3, #0]
 8000bc0:	43db      	mvns	r3, r3
 8000bc2:	69fa      	ldr	r2, [r7, #28]
 8000bc4:	401a      	ands	r2, r3
 8000bc6:	0014      	movs	r4, r2
 8000bc8:	187b      	adds	r3, r7, r1
 8000bca:	683a      	ldr	r2, [r7, #0]
 8000bcc:	0092      	lsls	r2, r2, #2
 8000bce:	58d3      	ldr	r3, [r2, r3]
 8000bd0:	0019      	movs	r1, r3
 8000bd2:	6878      	ldr	r0, [r7, #4]
 8000bd4:	f7ff fa74 	bl	80000c0 <__udivsi3>
 8000bd8:	0003      	movs	r3, r0
 8000bda:	210a      	movs	r1, #10
 8000bdc:	0018      	movs	r0, r3
 8000bde:	f7ff faab 	bl	8000138 <__aeabi_uidivmod>
 8000be2:	000b      	movs	r3, r1
 8000be4:	001a      	movs	r2, r3
 8000be6:	4b0d      	ldr	r3, [pc, #52]	; (8000c1c <set_indicator_4digits+0x88>)
 8000be8:	0092      	lsls	r2, r2, #2
 8000bea:	58d3      	ldr	r3, [r2, r3]
 8000bec:	0022      	movs	r2, r4
 8000bee:	431a      	orrs	r2, r3
 8000bf0:	4b0b      	ldr	r3, [pc, #44]	; (8000c20 <set_indicator_4digits+0x8c>)
 8000bf2:	6839      	ldr	r1, [r7, #0]
 8000bf4:	0089      	lsls	r1, r1, #2
 8000bf6:	58cb      	ldr	r3, [r1, r3]
 8000bf8:	4313      	orrs	r3, r2
 8000bfa:	61fb      	str	r3, [r7, #28]
 8000bfc:	69fb      	ldr	r3, [r7, #28]
 8000bfe:	4a04      	ldr	r2, [pc, #16]	; (8000c10 <set_indicator_4digits+0x7c>)
 8000c00:	0019      	movs	r1, r3
 8000c02:	0010      	movs	r0, r2
 8000c04:	f7ff fca3 	bl	800054e <LL_GPIO_WriteOutputPort>
 8000c08:	46c0      	nop			; (mov r8, r8)
 8000c0a:	46bd      	mov	sp, r7
 8000c0c:	b008      	add	sp, #32
 8000c0e:	bdb0      	pop	{r4, r5, r7, pc}
 8000c10:	48000800 	.word	0x48000800
 8000c14:	08004b8c 	.word	0x08004b8c
 8000c18:	20000090 	.word	0x20000090
 8000c1c:	20000094 	.word	0x20000094
 8000c20:	200000bc 	.word	0x200000bc

08000c24 <get_encoder_rotation>:
 8000c24:	b580      	push	{r7, lr}
 8000c26:	af00      	add	r7, sp, #0
 8000c28:	2380      	movs	r3, #128	; 0x80
 8000c2a:	05db      	lsls	r3, r3, #23
 8000c2c:	0018      	movs	r0, r3
 8000c2e:	f7ff fcb2 	bl	8000596 <LL_TIM_GetCounterMode>
 8000c32:	1e03      	subs	r3, r0, #0
 8000c34:	d101      	bne.n	8000c3a <get_encoder_rotation+0x16>
 8000c36:	2301      	movs	r3, #1
 8000c38:	e00b      	b.n	8000c52 <get_encoder_rotation+0x2e>
 8000c3a:	2380      	movs	r3, #128	; 0x80
 8000c3c:	05db      	lsls	r3, r3, #23
 8000c3e:	0018      	movs	r0, r3
 8000c40:	f7ff fca9 	bl	8000596 <LL_TIM_GetCounterMode>
 8000c44:	0003      	movs	r3, r0
 8000c46:	2b10      	cmp	r3, #16
 8000c48:	d102      	bne.n	8000c50 <get_encoder_rotation+0x2c>
 8000c4a:	2301      	movs	r3, #1
 8000c4c:	425b      	negs	r3, r3
 8000c4e:	e000      	b.n	8000c52 <get_encoder_rotation+0x2e>
 8000c50:	2300      	movs	r3, #0
 8000c52:	0018      	movs	r0, r3
 8000c54:	46bd      	mov	sp, r7
 8000c56:	bd80      	pop	{r7, pc}

08000c58 <printf_config>:
 8000c58:	b580      	push	{r7, lr}
 8000c5a:	af00      	add	r7, sp, #0
 8000c5c:	4b02      	ldr	r3, [pc, #8]	; (8000c68 <printf_config+0x10>)
 8000c5e:	4a03      	ldr	r2, [pc, #12]	; (8000c6c <printf_config+0x14>)
 8000c60:	601a      	str	r2, [r3, #0]
 8000c62:	46c0      	nop			; (mov r8, r8)
 8000c64:	46bd      	mov	sp, r7
 8000c66:	bd80      	pop	{r7, pc}
 8000c68:	2000174c 	.word	0x2000174c
 8000c6c:	0800477d 	.word	0x0800477d

08000c70 <mypow>:
 8000c70:	b580      	push	{r7, lr}
 8000c72:	b084      	sub	sp, #16
 8000c74:	af00      	add	r7, sp, #0
 8000c76:	6078      	str	r0, [r7, #4]
 8000c78:	6039      	str	r1, [r7, #0]
 8000c7a:	2301      	movs	r3, #1
 8000c7c:	60fb      	str	r3, [r7, #12]
 8000c7e:	683b      	ldr	r3, [r7, #0]
 8000c80:	2b00      	cmp	r3, #0
 8000c82:	d00f      	beq.n	8000ca4 <mypow+0x34>
 8000c84:	2300      	movs	r3, #0
 8000c86:	60bb      	str	r3, [r7, #8]
 8000c88:	e006      	b.n	8000c98 <mypow+0x28>
 8000c8a:	68fb      	ldr	r3, [r7, #12]
 8000c8c:	687a      	ldr	r2, [r7, #4]
 8000c8e:	4353      	muls	r3, r2
 8000c90:	60fb      	str	r3, [r7, #12]
 8000c92:	68bb      	ldr	r3, [r7, #8]
 8000c94:	3301      	adds	r3, #1
 8000c96:	60bb      	str	r3, [r7, #8]
 8000c98:	68ba      	ldr	r2, [r7, #8]
 8000c9a:	683b      	ldr	r3, [r7, #0]
 8000c9c:	429a      	cmp	r2, r3
 8000c9e:	dbf4      	blt.n	8000c8a <mypow+0x1a>
 8000ca0:	68fb      	ldr	r3, [r7, #12]
 8000ca2:	e000      	b.n	8000ca6 <mypow+0x36>
 8000ca4:	68fb      	ldr	r3, [r7, #12]
 8000ca6:	0018      	movs	r0, r3
 8000ca8:	46bd      	mov	sp, r7
 8000caa:	b004      	add	sp, #16
 8000cac:	bd80      	pop	{r7, pc}
	...

08000cb0 <initialize_battlefield>:
 8000cb0:	b590      	push	{r4, r7, lr}
 8000cb2:	b083      	sub	sp, #12
 8000cb4:	af00      	add	r7, sp, #0
 8000cb6:	2301      	movs	r3, #1
 8000cb8:	607b      	str	r3, [r7, #4]
 8000cba:	e022      	b.n	8000d02 <initialize_battlefield+0x52>
 8000cbc:	491a      	ldr	r1, [pc, #104]	; (8000d28 <initialize_battlefield+0x78>)
 8000cbe:	687a      	ldr	r2, [r7, #4]
 8000cc0:	0013      	movs	r3, r2
 8000cc2:	00db      	lsls	r3, r3, #3
 8000cc4:	189b      	adds	r3, r3, r2
 8000cc6:	009b      	lsls	r3, r3, #2
 8000cc8:	4a18      	ldr	r2, [pc, #96]	; (8000d2c <initialize_battlefield+0x7c>)
 8000cca:	18cb      	adds	r3, r1, r3
 8000ccc:	ca13      	ldmia	r2!, {r0, r1, r4}
 8000cce:	c313      	stmia	r3!, {r0, r1, r4}
 8000cd0:	ca13      	ldmia	r2!, {r0, r1, r4}
 8000cd2:	c313      	stmia	r3!, {r0, r1, r4}
 8000cd4:	ca13      	ldmia	r2!, {r0, r1, r4}
 8000cd6:	c313      	stmia	r3!, {r0, r1, r4}
 8000cd8:	4b14      	ldr	r3, [pc, #80]	; (8000d2c <initialize_battlefield+0x7c>)
 8000cda:	689a      	ldr	r2, [r3, #8]
 8000cdc:	687b      	ldr	r3, [r7, #4]
 8000cde:	1e59      	subs	r1, r3, #1
 8000ce0:	4b12      	ldr	r3, [pc, #72]	; (8000d2c <initialize_battlefield+0x7c>)
 8000ce2:	691b      	ldr	r3, [r3, #16]
 8000ce4:	3308      	adds	r3, #8
 8000ce6:	434b      	muls	r3, r1
 8000ce8:	18d1      	adds	r1, r2, r3
 8000cea:	480f      	ldr	r0, [pc, #60]	; (8000d28 <initialize_battlefield+0x78>)
 8000cec:	687a      	ldr	r2, [r7, #4]
 8000cee:	0013      	movs	r3, r2
 8000cf0:	00db      	lsls	r3, r3, #3
 8000cf2:	189b      	adds	r3, r3, r2
 8000cf4:	009b      	lsls	r3, r3, #2
 8000cf6:	18c3      	adds	r3, r0, r3
 8000cf8:	3308      	adds	r3, #8
 8000cfa:	6019      	str	r1, [r3, #0]
 8000cfc:	687b      	ldr	r3, [r7, #4]
 8000cfe:	3301      	adds	r3, #1
 8000d00:	607b      	str	r3, [r7, #4]
 8000d02:	687b      	ldr	r3, [r7, #4]
 8000d04:	2b06      	cmp	r3, #6
 8000d06:	ddd9      	ble.n	8000cbc <initialize_battlefield+0xc>
 8000d08:	4b07      	ldr	r3, [pc, #28]	; (8000d28 <initialize_battlefield+0x78>)
 8000d0a:	4a09      	ldr	r2, [pc, #36]	; (8000d30 <initialize_battlefield+0x80>)
 8000d0c:	ca13      	ldmia	r2!, {r0, r1, r4}
 8000d0e:	c313      	stmia	r3!, {r0, r1, r4}
 8000d10:	ca13      	ldmia	r2!, {r0, r1, r4}
 8000d12:	c313      	stmia	r3!, {r0, r1, r4}
 8000d14:	ca13      	ldmia	r2!, {r0, r1, r4}
 8000d16:	c313      	stmia	r3!, {r0, r1, r4}
 8000d18:	4b06      	ldr	r3, [pc, #24]	; (8000d34 <initialize_battlefield+0x84>)
 8000d1a:	2207      	movs	r2, #7
 8000d1c:	701a      	strb	r2, [r3, #0]
 8000d1e:	4b02      	ldr	r3, [pc, #8]	; (8000d28 <initialize_battlefield+0x78>)
 8000d20:	0018      	movs	r0, r3
 8000d22:	46bd      	mov	sp, r7
 8000d24:	b003      	add	sp, #12
 8000d26:	bd90      	pop	{r4, r7, pc}
 8000d28:	20000938 	.word	0x20000938
 8000d2c:	20000048 	.word	0x20000048
 8000d30:	20000000 	.word	0x20000000
 8000d34:	2000052e 	.word	0x2000052e

08000d38 <move_entities>:
 8000d38:	b590      	push	{r4, r7, lr}
 8000d3a:	b085      	sub	sp, #20
 8000d3c:	af00      	add	r7, sp, #0
 8000d3e:	6078      	str	r0, [r7, #4]
 8000d40:	6039      	str	r1, [r7, #0]
 8000d42:	2300      	movs	r3, #0
 8000d44:	60fb      	str	r3, [r7, #12]
 8000d46:	e125      	b.n	8000f94 <move_entities+0x25c>
 8000d48:	68fa      	ldr	r2, [r7, #12]
 8000d4a:	0013      	movs	r3, r2
 8000d4c:	00db      	lsls	r3, r3, #3
 8000d4e:	189b      	adds	r3, r3, r2
 8000d50:	009b      	lsls	r3, r3, #2
 8000d52:	001a      	movs	r2, r3
 8000d54:	687b      	ldr	r3, [r7, #4]
 8000d56:	189b      	adds	r3, r3, r2
 8000d58:	7e1b      	ldrb	r3, [r3, #24]
 8000d5a:	2b65      	cmp	r3, #101	; 0x65
 8000d5c:	d160      	bne.n	8000e20 <move_entities+0xe8>
 8000d5e:	68fa      	ldr	r2, [r7, #12]
 8000d60:	0013      	movs	r3, r2
 8000d62:	00db      	lsls	r3, r3, #3
 8000d64:	189b      	adds	r3, r3, r2
 8000d66:	009b      	lsls	r3, r3, #2
 8000d68:	001a      	movs	r2, r3
 8000d6a:	687b      	ldr	r3, [r7, #4]
 8000d6c:	189b      	adds	r3, r3, r2
 8000d6e:	7e5b      	ldrb	r3, [r3, #25]
 8000d70:	2b73      	cmp	r3, #115	; 0x73
 8000d72:	d155      	bne.n	8000e20 <move_entities+0xe8>
 8000d74:	68fa      	ldr	r2, [r7, #12]
 8000d76:	0013      	movs	r3, r2
 8000d78:	00db      	lsls	r3, r3, #3
 8000d7a:	189b      	adds	r3, r3, r2
 8000d7c:	009b      	lsls	r3, r3, #2
 8000d7e:	001a      	movs	r2, r3
 8000d80:	687b      	ldr	r3, [r7, #4]
 8000d82:	189b      	adds	r3, r3, r2
 8000d84:	6a1c      	ldr	r4, [r3, #32]
 8000d86:	683b      	ldr	r3, [r7, #0]
 8000d88:	4a88      	ldr	r2, [pc, #544]	; (8000fac <move_entities+0x274>)
 8000d8a:	4013      	ands	r3, r2
 8000d8c:	d504      	bpl.n	8000d98 <move_entities+0x60>
 8000d8e:	3b01      	subs	r3, #1
 8000d90:	2202      	movs	r2, #2
 8000d92:	4252      	negs	r2, r2
 8000d94:	4313      	orrs	r3, r2
 8000d96:	3301      	adds	r3, #1
 8000d98:	001a      	movs	r2, r3
 8000d9a:	2301      	movs	r3, #1
 8000d9c:	425b      	negs	r3, r3
 8000d9e:	0011      	movs	r1, r2
 8000da0:	0018      	movs	r0, r3
 8000da2:	f7ff ff65 	bl	8000c70 <mypow>
 8000da6:	0003      	movs	r3, r0
 8000da8:	4363      	muls	r3, r4
 8000daa:	0018      	movs	r0, r3
 8000dac:	68fa      	ldr	r2, [r7, #12]
 8000dae:	0013      	movs	r3, r2
 8000db0:	00db      	lsls	r3, r3, #3
 8000db2:	189b      	adds	r3, r3, r2
 8000db4:	009b      	lsls	r3, r3, #2
 8000db6:	001a      	movs	r2, r3
 8000db8:	687b      	ldr	r3, [r7, #4]
 8000dba:	189b      	adds	r3, r3, r2
 8000dbc:	6899      	ldr	r1, [r3, #8]
 8000dbe:	68fa      	ldr	r2, [r7, #12]
 8000dc0:	0013      	movs	r3, r2
 8000dc2:	00db      	lsls	r3, r3, #3
 8000dc4:	189b      	adds	r3, r3, r2
 8000dc6:	009b      	lsls	r3, r3, #2
 8000dc8:	001a      	movs	r2, r3
 8000dca:	687b      	ldr	r3, [r7, #4]
 8000dcc:	189b      	adds	r3, r3, r2
 8000dce:	1842      	adds	r2, r0, r1
 8000dd0:	609a      	str	r2, [r3, #8]
 8000dd2:	68fa      	ldr	r2, [r7, #12]
 8000dd4:	0013      	movs	r3, r2
 8000dd6:	00db      	lsls	r3, r3, #3
 8000dd8:	189b      	adds	r3, r3, r2
 8000dda:	009b      	lsls	r3, r3, #2
 8000ddc:	001a      	movs	r2, r3
 8000dde:	687b      	ldr	r3, [r7, #4]
 8000de0:	189b      	adds	r3, r3, r2
 8000de2:	6858      	ldr	r0, [r3, #4]
 8000de4:	683b      	ldr	r3, [r7, #0]
 8000de6:	4a71      	ldr	r2, [pc, #452]	; (8000fac <move_entities+0x274>)
 8000de8:	4013      	ands	r3, r2
 8000dea:	d504      	bpl.n	8000df6 <move_entities+0xbe>
 8000dec:	3b01      	subs	r3, #1
 8000dee:	2202      	movs	r2, #2
 8000df0:	4252      	negs	r2, r2
 8000df2:	4313      	orrs	r3, r2
 8000df4:	3301      	adds	r3, #1
 8000df6:	0019      	movs	r1, r3
 8000df8:	68fa      	ldr	r2, [r7, #12]
 8000dfa:	0013      	movs	r3, r2
 8000dfc:	00db      	lsls	r3, r3, #3
 8000dfe:	189b      	adds	r3, r3, r2
 8000e00:	009b      	lsls	r3, r3, #2
 8000e02:	001a      	movs	r2, r3
 8000e04:	687b      	ldr	r3, [r7, #4]
 8000e06:	189b      	adds	r3, r3, r2
 8000e08:	69db      	ldr	r3, [r3, #28]
 8000e0a:	4359      	muls	r1, r3
 8000e0c:	68fa      	ldr	r2, [r7, #12]
 8000e0e:	0013      	movs	r3, r2
 8000e10:	00db      	lsls	r3, r3, #3
 8000e12:	189b      	adds	r3, r3, r2
 8000e14:	009b      	lsls	r3, r3, #2
 8000e16:	001a      	movs	r2, r3
 8000e18:	687b      	ldr	r3, [r7, #4]
 8000e1a:	189b      	adds	r3, r3, r2
 8000e1c:	1842      	adds	r2, r0, r1
 8000e1e:	605a      	str	r2, [r3, #4]
 8000e20:	68fa      	ldr	r2, [r7, #12]
 8000e22:	0013      	movs	r3, r2
 8000e24:	00db      	lsls	r3, r3, #3
 8000e26:	189b      	adds	r3, r3, r2
 8000e28:	009b      	lsls	r3, r3, #2
 8000e2a:	001a      	movs	r2, r3
 8000e2c:	687b      	ldr	r3, [r7, #4]
 8000e2e:	189b      	adds	r3, r3, r2
 8000e30:	7e1b      	ldrb	r3, [r3, #24]
 8000e32:	2b65      	cmp	r3, #101	; 0x65
 8000e34:	d142      	bne.n	8000ebc <move_entities+0x184>
 8000e36:	68fa      	ldr	r2, [r7, #12]
 8000e38:	0013      	movs	r3, r2
 8000e3a:	00db      	lsls	r3, r3, #3
 8000e3c:	189b      	adds	r3, r3, r2
 8000e3e:	009b      	lsls	r3, r3, #2
 8000e40:	001a      	movs	r2, r3
 8000e42:	687b      	ldr	r3, [r7, #4]
 8000e44:	189b      	adds	r3, r3, r2
 8000e46:	7e5b      	ldrb	r3, [r3, #25]
 8000e48:	2b70      	cmp	r3, #112	; 0x70
 8000e4a:	d137      	bne.n	8000ebc <move_entities+0x184>
 8000e4c:	68fa      	ldr	r2, [r7, #12]
 8000e4e:	0013      	movs	r3, r2
 8000e50:	00db      	lsls	r3, r3, #3
 8000e52:	189b      	adds	r3, r3, r2
 8000e54:	009b      	lsls	r3, r3, #2
 8000e56:	001a      	movs	r2, r3
 8000e58:	687b      	ldr	r3, [r7, #4]
 8000e5a:	189b      	adds	r3, r3, r2
 8000e5c:	6898      	ldr	r0, [r3, #8]
 8000e5e:	68fa      	ldr	r2, [r7, #12]
 8000e60:	0013      	movs	r3, r2
 8000e62:	00db      	lsls	r3, r3, #3
 8000e64:	189b      	adds	r3, r3, r2
 8000e66:	009b      	lsls	r3, r3, #2
 8000e68:	001a      	movs	r2, r3
 8000e6a:	687b      	ldr	r3, [r7, #4]
 8000e6c:	189b      	adds	r3, r3, r2
 8000e6e:	6a19      	ldr	r1, [r3, #32]
 8000e70:	68fa      	ldr	r2, [r7, #12]
 8000e72:	0013      	movs	r3, r2
 8000e74:	00db      	lsls	r3, r3, #3
 8000e76:	189b      	adds	r3, r3, r2
 8000e78:	009b      	lsls	r3, r3, #2
 8000e7a:	001a      	movs	r2, r3
 8000e7c:	687b      	ldr	r3, [r7, #4]
 8000e7e:	189b      	adds	r3, r3, r2
 8000e80:	1842      	adds	r2, r0, r1
 8000e82:	609a      	str	r2, [r3, #8]
 8000e84:	68fa      	ldr	r2, [r7, #12]
 8000e86:	0013      	movs	r3, r2
 8000e88:	00db      	lsls	r3, r3, #3
 8000e8a:	189b      	adds	r3, r3, r2
 8000e8c:	009b      	lsls	r3, r3, #2
 8000e8e:	001a      	movs	r2, r3
 8000e90:	687b      	ldr	r3, [r7, #4]
 8000e92:	189b      	adds	r3, r3, r2
 8000e94:	6858      	ldr	r0, [r3, #4]
 8000e96:	68fa      	ldr	r2, [r7, #12]
 8000e98:	0013      	movs	r3, r2
 8000e9a:	00db      	lsls	r3, r3, #3
 8000e9c:	189b      	adds	r3, r3, r2
 8000e9e:	009b      	lsls	r3, r3, #2
 8000ea0:	001a      	movs	r2, r3
 8000ea2:	687b      	ldr	r3, [r7, #4]
 8000ea4:	189b      	adds	r3, r3, r2
 8000ea6:	69d9      	ldr	r1, [r3, #28]
 8000ea8:	68fa      	ldr	r2, [r7, #12]
 8000eaa:	0013      	movs	r3, r2
 8000eac:	00db      	lsls	r3, r3, #3
 8000eae:	189b      	adds	r3, r3, r2
 8000eb0:	009b      	lsls	r3, r3, #2
 8000eb2:	001a      	movs	r2, r3
 8000eb4:	687b      	ldr	r3, [r7, #4]
 8000eb6:	189b      	adds	r3, r3, r2
 8000eb8:	1842      	adds	r2, r0, r1
 8000eba:	605a      	str	r2, [r3, #4]
 8000ebc:	68fa      	ldr	r2, [r7, #12]
 8000ebe:	0013      	movs	r3, r2
 8000ec0:	00db      	lsls	r3, r3, #3
 8000ec2:	189b      	adds	r3, r3, r2
 8000ec4:	009b      	lsls	r3, r3, #2
 8000ec6:	001a      	movs	r2, r3
 8000ec8:	687b      	ldr	r3, [r7, #4]
 8000eca:	189b      	adds	r3, r3, r2
 8000ecc:	7e1b      	ldrb	r3, [r3, #24]
 8000ece:	2b66      	cmp	r3, #102	; 0x66
 8000ed0:	d12b      	bne.n	8000f2a <move_entities+0x1f2>
 8000ed2:	68fa      	ldr	r2, [r7, #12]
 8000ed4:	0013      	movs	r3, r2
 8000ed6:	00db      	lsls	r3, r3, #3
 8000ed8:	189b      	adds	r3, r3, r2
 8000eda:	009b      	lsls	r3, r3, #2
 8000edc:	001a      	movs	r2, r3
 8000ede:	687b      	ldr	r3, [r7, #4]
 8000ee0:	189b      	adds	r3, r3, r2
 8000ee2:	7e5b      	ldrb	r3, [r3, #25]
 8000ee4:	2b73      	cmp	r3, #115	; 0x73
 8000ee6:	d120      	bne.n	8000f2a <move_entities+0x1f2>
 8000ee8:	68fa      	ldr	r2, [r7, #12]
 8000eea:	0013      	movs	r3, r2
 8000eec:	00db      	lsls	r3, r3, #3
 8000eee:	189b      	adds	r3, r3, r2
 8000ef0:	009b      	lsls	r3, r3, #2
 8000ef2:	001a      	movs	r2, r3
 8000ef4:	687b      	ldr	r3, [r7, #4]
 8000ef6:	189b      	adds	r3, r3, r2
 8000ef8:	6a1c      	ldr	r4, [r3, #32]
 8000efa:	f7ff fe93 	bl	8000c24 <get_encoder_rotation>
 8000efe:	0003      	movs	r3, r0
 8000f00:	4363      	muls	r3, r4
 8000f02:	0018      	movs	r0, r3
 8000f04:	68fa      	ldr	r2, [r7, #12]
 8000f06:	0013      	movs	r3, r2
 8000f08:	00db      	lsls	r3, r3, #3
 8000f0a:	189b      	adds	r3, r3, r2
 8000f0c:	009b      	lsls	r3, r3, #2
 8000f0e:	001a      	movs	r2, r3
 8000f10:	687b      	ldr	r3, [r7, #4]
 8000f12:	189b      	adds	r3, r3, r2
 8000f14:	6899      	ldr	r1, [r3, #8]
 8000f16:	68fa      	ldr	r2, [r7, #12]
 8000f18:	0013      	movs	r3, r2
 8000f1a:	00db      	lsls	r3, r3, #3
 8000f1c:	189b      	adds	r3, r3, r2
 8000f1e:	009b      	lsls	r3, r3, #2
 8000f20:	001a      	movs	r2, r3
 8000f22:	687b      	ldr	r3, [r7, #4]
 8000f24:	189b      	adds	r3, r3, r2
 8000f26:	1842      	adds	r2, r0, r1
 8000f28:	609a      	str	r2, [r3, #8]
 8000f2a:	68fa      	ldr	r2, [r7, #12]
 8000f2c:	0013      	movs	r3, r2
 8000f2e:	00db      	lsls	r3, r3, #3
 8000f30:	189b      	adds	r3, r3, r2
 8000f32:	009b      	lsls	r3, r3, #2
 8000f34:	001a      	movs	r2, r3
 8000f36:	687b      	ldr	r3, [r7, #4]
 8000f38:	189b      	adds	r3, r3, r2
 8000f3a:	7e1b      	ldrb	r3, [r3, #24]
 8000f3c:	2b66      	cmp	r3, #102	; 0x66
 8000f3e:	d126      	bne.n	8000f8e <move_entities+0x256>
 8000f40:	68fa      	ldr	r2, [r7, #12]
 8000f42:	0013      	movs	r3, r2
 8000f44:	00db      	lsls	r3, r3, #3
 8000f46:	189b      	adds	r3, r3, r2
 8000f48:	009b      	lsls	r3, r3, #2
 8000f4a:	001a      	movs	r2, r3
 8000f4c:	687b      	ldr	r3, [r7, #4]
 8000f4e:	189b      	adds	r3, r3, r2
 8000f50:	7e5b      	ldrb	r3, [r3, #25]
 8000f52:	2b70      	cmp	r3, #112	; 0x70
 8000f54:	d11b      	bne.n	8000f8e <move_entities+0x256>
 8000f56:	68fa      	ldr	r2, [r7, #12]
 8000f58:	0013      	movs	r3, r2
 8000f5a:	00db      	lsls	r3, r3, #3
 8000f5c:	189b      	adds	r3, r3, r2
 8000f5e:	009b      	lsls	r3, r3, #2
 8000f60:	001a      	movs	r2, r3
 8000f62:	687b      	ldr	r3, [r7, #4]
 8000f64:	189b      	adds	r3, r3, r2
 8000f66:	6858      	ldr	r0, [r3, #4]
 8000f68:	68fa      	ldr	r2, [r7, #12]
 8000f6a:	0013      	movs	r3, r2
 8000f6c:	00db      	lsls	r3, r3, #3
 8000f6e:	189b      	adds	r3, r3, r2
 8000f70:	009b      	lsls	r3, r3, #2
 8000f72:	001a      	movs	r2, r3
 8000f74:	687b      	ldr	r3, [r7, #4]
 8000f76:	189b      	adds	r3, r3, r2
 8000f78:	69d9      	ldr	r1, [r3, #28]
 8000f7a:	68fa      	ldr	r2, [r7, #12]
 8000f7c:	0013      	movs	r3, r2
 8000f7e:	00db      	lsls	r3, r3, #3
 8000f80:	189b      	adds	r3, r3, r2
 8000f82:	009b      	lsls	r3, r3, #2
 8000f84:	001a      	movs	r2, r3
 8000f86:	687b      	ldr	r3, [r7, #4]
 8000f88:	189b      	adds	r3, r3, r2
 8000f8a:	1842      	adds	r2, r0, r1
 8000f8c:	605a      	str	r2, [r3, #4]
 8000f8e:	68fb      	ldr	r3, [r7, #12]
 8000f90:	3301      	adds	r3, #1
 8000f92:	60fb      	str	r3, [r7, #12]
 8000f94:	4b06      	ldr	r3, [pc, #24]	; (8000fb0 <move_entities+0x278>)
 8000f96:	781b      	ldrb	r3, [r3, #0]
 8000f98:	001a      	movs	r2, r3
 8000f9a:	68fb      	ldr	r3, [r7, #12]
 8000f9c:	4293      	cmp	r3, r2
 8000f9e:	da00      	bge.n	8000fa2 <move_entities+0x26a>
 8000fa0:	e6d2      	b.n	8000d48 <move_entities+0x10>
 8000fa2:	687b      	ldr	r3, [r7, #4]
 8000fa4:	0018      	movs	r0, r3
 8000fa6:	46bd      	mov	sp, r7
 8000fa8:	b005      	add	sp, #20
 8000faa:	bd90      	pop	{r4, r7, pc}
 8000fac:	80000001 	.word	0x80000001
 8000fb0:	2000052e 	.word	0x2000052e

08000fb4 <update_entities>:
 8000fb4:	b5b0      	push	{r4, r5, r7, lr}
 8000fb6:	b084      	sub	sp, #16
 8000fb8:	af00      	add	r7, sp, #0
 8000fba:	6078      	str	r0, [r7, #4]
 8000fbc:	4bd2      	ldr	r3, [pc, #840]	; (8001308 <update_entities+0x354>)
 8000fbe:	2201      	movs	r2, #1
 8000fc0:	701a      	strb	r2, [r3, #0]
 8000fc2:	230b      	movs	r3, #11
 8000fc4:	18fb      	adds	r3, r7, r3
 8000fc6:	4ad1      	ldr	r2, [pc, #836]	; (800130c <update_entities+0x358>)
 8000fc8:	7812      	ldrb	r2, [r2, #0]
 8000fca:	701a      	strb	r2, [r3, #0]
 8000fcc:	230f      	movs	r3, #15
 8000fce:	18fb      	adds	r3, r7, r3
 8000fd0:	2200      	movs	r2, #0
 8000fd2:	701a      	strb	r2, [r3, #0]
 8000fd4:	e0df      	b.n	8001196 <update_entities+0x1e2>
 8000fd6:	230e      	movs	r3, #14
 8000fd8:	18fb      	adds	r3, r7, r3
 8000fda:	220f      	movs	r2, #15
 8000fdc:	18ba      	adds	r2, r7, r2
 8000fde:	7812      	ldrb	r2, [r2, #0]
 8000fe0:	3201      	adds	r2, #1
 8000fe2:	701a      	strb	r2, [r3, #0]
 8000fe4:	e0c8      	b.n	8001178 <update_entities+0x1c4>
 8000fe6:	240f      	movs	r4, #15
 8000fe8:	193b      	adds	r3, r7, r4
 8000fea:	781a      	ldrb	r2, [r3, #0]
 8000fec:	0013      	movs	r3, r2
 8000fee:	00db      	lsls	r3, r3, #3
 8000ff0:	189b      	adds	r3, r3, r2
 8000ff2:	009b      	lsls	r3, r3, #2
 8000ff4:	001a      	movs	r2, r3
 8000ff6:	687b      	ldr	r3, [r7, #4]
 8000ff8:	189b      	adds	r3, r3, r2
 8000ffa:	6899      	ldr	r1, [r3, #8]
 8000ffc:	200e      	movs	r0, #14
 8000ffe:	183b      	adds	r3, r7, r0
 8001000:	781a      	ldrb	r2, [r3, #0]
 8001002:	0013      	movs	r3, r2
 8001004:	00db      	lsls	r3, r3, #3
 8001006:	189b      	adds	r3, r3, r2
 8001008:	009b      	lsls	r3, r3, #2
 800100a:	001a      	movs	r2, r3
 800100c:	687b      	ldr	r3, [r7, #4]
 800100e:	189b      	adds	r3, r3, r2
 8001010:	689b      	ldr	r3, [r3, #8]
 8001012:	1acb      	subs	r3, r1, r3
 8001014:	17da      	asrs	r2, r3, #31
 8001016:	1899      	adds	r1, r3, r2
 8001018:	4051      	eors	r1, r2
 800101a:	183b      	adds	r3, r7, r0
 800101c:	781a      	ldrb	r2, [r3, #0]
 800101e:	0013      	movs	r3, r2
 8001020:	00db      	lsls	r3, r3, #3
 8001022:	189b      	adds	r3, r3, r2
 8001024:	009b      	lsls	r3, r3, #2
 8001026:	001a      	movs	r2, r3
 8001028:	687b      	ldr	r3, [r7, #4]
 800102a:	189b      	adds	r3, r3, r2
 800102c:	6918      	ldr	r0, [r3, #16]
 800102e:	193b      	adds	r3, r7, r4
 8001030:	781a      	ldrb	r2, [r3, #0]
 8001032:	0013      	movs	r3, r2
 8001034:	00db      	lsls	r3, r3, #3
 8001036:	189b      	adds	r3, r3, r2
 8001038:	009b      	lsls	r3, r3, #2
 800103a:	001a      	movs	r2, r3
 800103c:	687b      	ldr	r3, [r7, #4]
 800103e:	189b      	adds	r3, r3, r2
 8001040:	691b      	ldr	r3, [r3, #16]
 8001042:	18c3      	adds	r3, r0, r3
 8001044:	2b00      	cmp	r3, #0
 8001046:	da00      	bge.n	800104a <update_entities+0x96>
 8001048:	3301      	adds	r3, #1
 800104a:	105b      	asrs	r3, r3, #1
 800104c:	4299      	cmp	r1, r3
 800104e:	dd00      	ble.n	8001052 <update_entities+0x9e>
 8001050:	e08c      	b.n	800116c <update_entities+0x1b8>
 8001052:	240f      	movs	r4, #15
 8001054:	193b      	adds	r3, r7, r4
 8001056:	781a      	ldrb	r2, [r3, #0]
 8001058:	0013      	movs	r3, r2
 800105a:	00db      	lsls	r3, r3, #3
 800105c:	189b      	adds	r3, r3, r2
 800105e:	009b      	lsls	r3, r3, #2
 8001060:	001a      	movs	r2, r3
 8001062:	687b      	ldr	r3, [r7, #4]
 8001064:	189b      	adds	r3, r3, r2
 8001066:	6859      	ldr	r1, [r3, #4]
 8001068:	200e      	movs	r0, #14
 800106a:	183b      	adds	r3, r7, r0
 800106c:	781a      	ldrb	r2, [r3, #0]
 800106e:	0013      	movs	r3, r2
 8001070:	00db      	lsls	r3, r3, #3
 8001072:	189b      	adds	r3, r3, r2
 8001074:	009b      	lsls	r3, r3, #2
 8001076:	001a      	movs	r2, r3
 8001078:	687b      	ldr	r3, [r7, #4]
 800107a:	189b      	adds	r3, r3, r2
 800107c:	685b      	ldr	r3, [r3, #4]
 800107e:	1acb      	subs	r3, r1, r3
 8001080:	17da      	asrs	r2, r3, #31
 8001082:	1899      	adds	r1, r3, r2
 8001084:	4051      	eors	r1, r2
 8001086:	183b      	adds	r3, r7, r0
 8001088:	781a      	ldrb	r2, [r3, #0]
 800108a:	0013      	movs	r3, r2
 800108c:	00db      	lsls	r3, r3, #3
 800108e:	189b      	adds	r3, r3, r2
 8001090:	009b      	lsls	r3, r3, #2
 8001092:	001a      	movs	r2, r3
 8001094:	687b      	ldr	r3, [r7, #4]
 8001096:	189b      	adds	r3, r3, r2
 8001098:	68d8      	ldr	r0, [r3, #12]
 800109a:	193b      	adds	r3, r7, r4
 800109c:	781a      	ldrb	r2, [r3, #0]
 800109e:	0013      	movs	r3, r2
 80010a0:	00db      	lsls	r3, r3, #3
 80010a2:	189b      	adds	r3, r3, r2
 80010a4:	009b      	lsls	r3, r3, #2
 80010a6:	001a      	movs	r2, r3
 80010a8:	687b      	ldr	r3, [r7, #4]
 80010aa:	189b      	adds	r3, r3, r2
 80010ac:	68db      	ldr	r3, [r3, #12]
 80010ae:	18c3      	adds	r3, r0, r3
 80010b0:	2b00      	cmp	r3, #0
 80010b2:	da00      	bge.n	80010b6 <update_entities+0x102>
 80010b4:	3301      	adds	r3, #1
 80010b6:	105b      	asrs	r3, r3, #1
 80010b8:	4299      	cmp	r1, r3
 80010ba:	dc57      	bgt.n	800116c <update_entities+0x1b8>
 80010bc:	240f      	movs	r4, #15
 80010be:	193b      	adds	r3, r7, r4
 80010c0:	781a      	ldrb	r2, [r3, #0]
 80010c2:	0013      	movs	r3, r2
 80010c4:	00db      	lsls	r3, r3, #3
 80010c6:	189b      	adds	r3, r3, r2
 80010c8:	009b      	lsls	r3, r3, #2
 80010ca:	001a      	movs	r2, r3
 80010cc:	687b      	ldr	r3, [r7, #4]
 80010ce:	189b      	adds	r3, r3, r2
 80010d0:	7e19      	ldrb	r1, [r3, #24]
 80010d2:	250e      	movs	r5, #14
 80010d4:	197b      	adds	r3, r7, r5
 80010d6:	781a      	ldrb	r2, [r3, #0]
 80010d8:	0013      	movs	r3, r2
 80010da:	00db      	lsls	r3, r3, #3
 80010dc:	189b      	adds	r3, r3, r2
 80010de:	009b      	lsls	r3, r3, #2
 80010e0:	001a      	movs	r2, r3
 80010e2:	687b      	ldr	r3, [r7, #4]
 80010e4:	189b      	adds	r3, r3, r2
 80010e6:	7e1b      	ldrb	r3, [r3, #24]
 80010e8:	4299      	cmp	r1, r3
 80010ea:	d03f      	beq.n	800116c <update_entities+0x1b8>
 80010ec:	193b      	adds	r3, r7, r4
 80010ee:	781a      	ldrb	r2, [r3, #0]
 80010f0:	0013      	movs	r3, r2
 80010f2:	00db      	lsls	r3, r3, #3
 80010f4:	189b      	adds	r3, r3, r2
 80010f6:	009b      	lsls	r3, r3, #2
 80010f8:	001a      	movs	r2, r3
 80010fa:	687b      	ldr	r3, [r7, #4]
 80010fc:	189b      	adds	r3, r3, r2
 80010fe:	6959      	ldr	r1, [r3, #20]
 8001100:	197b      	adds	r3, r7, r5
 8001102:	781a      	ldrb	r2, [r3, #0]
 8001104:	0013      	movs	r3, r2
 8001106:	00db      	lsls	r3, r3, #3
 8001108:	189b      	adds	r3, r3, r2
 800110a:	009b      	lsls	r3, r3, #2
 800110c:	001a      	movs	r2, r3
 800110e:	687b      	ldr	r3, [r7, #4]
 8001110:	189b      	adds	r3, r3, r2
 8001112:	781b      	ldrb	r3, [r3, #0]
 8001114:	0018      	movs	r0, r3
 8001116:	193b      	adds	r3, r7, r4
 8001118:	781a      	ldrb	r2, [r3, #0]
 800111a:	0013      	movs	r3, r2
 800111c:	00db      	lsls	r3, r3, #3
 800111e:	189b      	adds	r3, r3, r2
 8001120:	009b      	lsls	r3, r3, #2
 8001122:	001a      	movs	r2, r3
 8001124:	687b      	ldr	r3, [r7, #4]
 8001126:	189b      	adds	r3, r3, r2
 8001128:	1a0a      	subs	r2, r1, r0
 800112a:	615a      	str	r2, [r3, #20]
 800112c:	197b      	adds	r3, r7, r5
 800112e:	781a      	ldrb	r2, [r3, #0]
 8001130:	0013      	movs	r3, r2
 8001132:	00db      	lsls	r3, r3, #3
 8001134:	189b      	adds	r3, r3, r2
 8001136:	009b      	lsls	r3, r3, #2
 8001138:	001a      	movs	r2, r3
 800113a:	687b      	ldr	r3, [r7, #4]
 800113c:	189b      	adds	r3, r3, r2
 800113e:	6959      	ldr	r1, [r3, #20]
 8001140:	193b      	adds	r3, r7, r4
 8001142:	781a      	ldrb	r2, [r3, #0]
 8001144:	0013      	movs	r3, r2
 8001146:	00db      	lsls	r3, r3, #3
 8001148:	189b      	adds	r3, r3, r2
 800114a:	009b      	lsls	r3, r3, #2
 800114c:	001a      	movs	r2, r3
 800114e:	687b      	ldr	r3, [r7, #4]
 8001150:	189b      	adds	r3, r3, r2
 8001152:	781b      	ldrb	r3, [r3, #0]
 8001154:	0018      	movs	r0, r3
 8001156:	197b      	adds	r3, r7, r5
 8001158:	781a      	ldrb	r2, [r3, #0]
 800115a:	0013      	movs	r3, r2
 800115c:	00db      	lsls	r3, r3, #3
 800115e:	189b      	adds	r3, r3, r2
 8001160:	009b      	lsls	r3, r3, #2
 8001162:	001a      	movs	r2, r3
 8001164:	687b      	ldr	r3, [r7, #4]
 8001166:	189b      	adds	r3, r3, r2
 8001168:	1a0a      	subs	r2, r1, r0
 800116a:	615a      	str	r2, [r3, #20]
 800116c:	210e      	movs	r1, #14
 800116e:	187b      	adds	r3, r7, r1
 8001170:	781a      	ldrb	r2, [r3, #0]
 8001172:	187b      	adds	r3, r7, r1
 8001174:	3201      	adds	r2, #1
 8001176:	701a      	strb	r2, [r3, #0]
 8001178:	230e      	movs	r3, #14
 800117a:	18fa      	adds	r2, r7, r3
 800117c:	230b      	movs	r3, #11
 800117e:	18fb      	adds	r3, r7, r3
 8001180:	7812      	ldrb	r2, [r2, #0]
 8001182:	781b      	ldrb	r3, [r3, #0]
 8001184:	429a      	cmp	r2, r3
 8001186:	d200      	bcs.n	800118a <update_entities+0x1d6>
 8001188:	e72d      	b.n	8000fe6 <update_entities+0x32>
 800118a:	210f      	movs	r1, #15
 800118c:	187b      	adds	r3, r7, r1
 800118e:	781a      	ldrb	r2, [r3, #0]
 8001190:	187b      	adds	r3, r7, r1
 8001192:	3201      	adds	r2, #1
 8001194:	701a      	strb	r2, [r3, #0]
 8001196:	230f      	movs	r3, #15
 8001198:	18fa      	adds	r2, r7, r3
 800119a:	230b      	movs	r3, #11
 800119c:	18fb      	adds	r3, r7, r3
 800119e:	7812      	ldrb	r2, [r2, #0]
 80011a0:	781b      	ldrb	r3, [r3, #0]
 80011a2:	429a      	cmp	r2, r3
 80011a4:	d200      	bcs.n	80011a8 <update_entities+0x1f4>
 80011a6:	e716      	b.n	8000fd6 <update_entities+0x22>
 80011a8:	687b      	ldr	r3, [r7, #4]
 80011aa:	695b      	ldr	r3, [r3, #20]
 80011ac:	2b00      	cmp	r3, #0
 80011ae:	dd0f      	ble.n	80011d0 <update_entities+0x21c>
 80011b0:	687b      	ldr	r3, [r7, #4]
 80011b2:	685b      	ldr	r3, [r3, #4]
 80011b4:	2b00      	cmp	r3, #0
 80011b6:	dd0b      	ble.n	80011d0 <update_entities+0x21c>
 80011b8:	687b      	ldr	r3, [r7, #4]
 80011ba:	685b      	ldr	r3, [r3, #4]
 80011bc:	2b3f      	cmp	r3, #63	; 0x3f
 80011be:	dc07      	bgt.n	80011d0 <update_entities+0x21c>
 80011c0:	687b      	ldr	r3, [r7, #4]
 80011c2:	689b      	ldr	r3, [r3, #8]
 80011c4:	2b00      	cmp	r3, #0
 80011c6:	dd03      	ble.n	80011d0 <update_entities+0x21c>
 80011c8:	687b      	ldr	r3, [r7, #4]
 80011ca:	689b      	ldr	r3, [r3, #8]
 80011cc:	2b7f      	cmp	r3, #127	; 0x7f
 80011ce:	dd02      	ble.n	80011d6 <update_entities+0x222>
 80011d0:	4b4f      	ldr	r3, [pc, #316]	; (8001310 <update_entities+0x35c>)
 80011d2:	2201      	movs	r2, #1
 80011d4:	701a      	strb	r2, [r3, #0]
 80011d6:	230d      	movs	r3, #13
 80011d8:	18fb      	adds	r3, r7, r3
 80011da:	2201      	movs	r2, #1
 80011dc:	701a      	strb	r2, [r3, #0]
 80011de:	e0bd      	b.n	800135c <update_entities+0x3a8>
 80011e0:	210d      	movs	r1, #13
 80011e2:	187b      	adds	r3, r7, r1
 80011e4:	781a      	ldrb	r2, [r3, #0]
 80011e6:	0013      	movs	r3, r2
 80011e8:	00db      	lsls	r3, r3, #3
 80011ea:	189b      	adds	r3, r3, r2
 80011ec:	009b      	lsls	r3, r3, #2
 80011ee:	001a      	movs	r2, r3
 80011f0:	687b      	ldr	r3, [r7, #4]
 80011f2:	189b      	adds	r3, r3, r2
 80011f4:	695b      	ldr	r3, [r3, #20]
 80011f6:	2b00      	cmp	r3, #0
 80011f8:	dd2f      	ble.n	800125a <update_entities+0x2a6>
 80011fa:	187b      	adds	r3, r7, r1
 80011fc:	781a      	ldrb	r2, [r3, #0]
 80011fe:	0013      	movs	r3, r2
 8001200:	00db      	lsls	r3, r3, #3
 8001202:	189b      	adds	r3, r3, r2
 8001204:	009b      	lsls	r3, r3, #2
 8001206:	001a      	movs	r2, r3
 8001208:	687b      	ldr	r3, [r7, #4]
 800120a:	189b      	adds	r3, r3, r2
 800120c:	685b      	ldr	r3, [r3, #4]
 800120e:	2b00      	cmp	r3, #0
 8001210:	dd23      	ble.n	800125a <update_entities+0x2a6>
 8001212:	187b      	adds	r3, r7, r1
 8001214:	781a      	ldrb	r2, [r3, #0]
 8001216:	0013      	movs	r3, r2
 8001218:	00db      	lsls	r3, r3, #3
 800121a:	189b      	adds	r3, r3, r2
 800121c:	009b      	lsls	r3, r3, #2
 800121e:	001a      	movs	r2, r3
 8001220:	687b      	ldr	r3, [r7, #4]
 8001222:	189b      	adds	r3, r3, r2
 8001224:	685b      	ldr	r3, [r3, #4]
 8001226:	2b3f      	cmp	r3, #63	; 0x3f
 8001228:	dc17      	bgt.n	800125a <update_entities+0x2a6>
 800122a:	187b      	adds	r3, r7, r1
 800122c:	781a      	ldrb	r2, [r3, #0]
 800122e:	0013      	movs	r3, r2
 8001230:	00db      	lsls	r3, r3, #3
 8001232:	189b      	adds	r3, r3, r2
 8001234:	009b      	lsls	r3, r3, #2
 8001236:	001a      	movs	r2, r3
 8001238:	687b      	ldr	r3, [r7, #4]
 800123a:	189b      	adds	r3, r3, r2
 800123c:	689b      	ldr	r3, [r3, #8]
 800123e:	2b00      	cmp	r3, #0
 8001240:	dd0b      	ble.n	800125a <update_entities+0x2a6>
 8001242:	187b      	adds	r3, r7, r1
 8001244:	781a      	ldrb	r2, [r3, #0]
 8001246:	0013      	movs	r3, r2
 8001248:	00db      	lsls	r3, r3, #3
 800124a:	189b      	adds	r3, r3, r2
 800124c:	009b      	lsls	r3, r3, #2
 800124e:	001a      	movs	r2, r3
 8001250:	687b      	ldr	r3, [r7, #4]
 8001252:	189b      	adds	r3, r3, r2
 8001254:	689b      	ldr	r3, [r3, #8]
 8001256:	2b7f      	cmp	r3, #127	; 0x7f
 8001258:	dd5e      	ble.n	8001318 <update_entities+0x364>
 800125a:	230c      	movs	r3, #12
 800125c:	18fb      	adds	r3, r7, r3
 800125e:	220d      	movs	r2, #13
 8001260:	18ba      	adds	r2, r7, r2
 8001262:	7812      	ldrb	r2, [r2, #0]
 8001264:	701a      	strb	r2, [r3, #0]
 8001266:	e01f      	b.n	80012a8 <update_entities+0x2f4>
 8001268:	200c      	movs	r0, #12
 800126a:	183b      	adds	r3, r7, r0
 800126c:	781b      	ldrb	r3, [r3, #0]
 800126e:	1c5a      	adds	r2, r3, #1
 8001270:	0013      	movs	r3, r2
 8001272:	00db      	lsls	r3, r3, #3
 8001274:	189b      	adds	r3, r3, r2
 8001276:	009b      	lsls	r3, r3, #2
 8001278:	001a      	movs	r2, r3
 800127a:	687b      	ldr	r3, [r7, #4]
 800127c:	1899      	adds	r1, r3, r2
 800127e:	183b      	adds	r3, r7, r0
 8001280:	781a      	ldrb	r2, [r3, #0]
 8001282:	0013      	movs	r3, r2
 8001284:	00db      	lsls	r3, r3, #3
 8001286:	189b      	adds	r3, r3, r2
 8001288:	009b      	lsls	r3, r3, #2
 800128a:	001a      	movs	r2, r3
 800128c:	687b      	ldr	r3, [r7, #4]
 800128e:	189b      	adds	r3, r3, r2
 8001290:	000a      	movs	r2, r1
 8001292:	ca32      	ldmia	r2!, {r1, r4, r5}
 8001294:	c332      	stmia	r3!, {r1, r4, r5}
 8001296:	ca32      	ldmia	r2!, {r1, r4, r5}
 8001298:	c332      	stmia	r3!, {r1, r4, r5}
 800129a:	ca32      	ldmia	r2!, {r1, r4, r5}
 800129c:	c332      	stmia	r3!, {r1, r4, r5}
 800129e:	183b      	adds	r3, r7, r0
 80012a0:	781a      	ldrb	r2, [r3, #0]
 80012a2:	183b      	adds	r3, r7, r0
 80012a4:	3201      	adds	r2, #1
 80012a6:	701a      	strb	r2, [r3, #0]
 80012a8:	230c      	movs	r3, #12
 80012aa:	18fb      	adds	r3, r7, r3
 80012ac:	781a      	ldrb	r2, [r3, #0]
 80012ae:	230b      	movs	r3, #11
 80012b0:	18fb      	adds	r3, r7, r3
 80012b2:	781b      	ldrb	r3, [r3, #0]
 80012b4:	3b01      	subs	r3, #1
 80012b6:	429a      	cmp	r2, r3
 80012b8:	dbd6      	blt.n	8001268 <update_entities+0x2b4>
 80012ba:	4b14      	ldr	r3, [pc, #80]	; (800130c <update_entities+0x358>)
 80012bc:	781b      	ldrb	r3, [r3, #0]
 80012be:	3b01      	subs	r3, #1
 80012c0:	b2da      	uxtb	r2, r3
 80012c2:	4b12      	ldr	r3, [pc, #72]	; (800130c <update_entities+0x358>)
 80012c4:	701a      	strb	r2, [r3, #0]
 80012c6:	230d      	movs	r3, #13
 80012c8:	18fb      	adds	r3, r7, r3
 80012ca:	781a      	ldrb	r2, [r3, #0]
 80012cc:	0013      	movs	r3, r2
 80012ce:	00db      	lsls	r3, r3, #3
 80012d0:	189b      	adds	r3, r3, r2
 80012d2:	009b      	lsls	r3, r3, #2
 80012d4:	001a      	movs	r2, r3
 80012d6:	687b      	ldr	r3, [r7, #4]
 80012d8:	189b      	adds	r3, r3, r2
 80012da:	7e5b      	ldrb	r3, [r3, #25]
 80012dc:	2b73      	cmp	r3, #115	; 0x73
 80012de:	d106      	bne.n	80012ee <update_entities+0x33a>
 80012e0:	4b0c      	ldr	r3, [pc, #48]	; (8001314 <update_entities+0x360>)
 80012e2:	681b      	ldr	r3, [r3, #0]
 80012e4:	330a      	adds	r3, #10
 80012e6:	001a      	movs	r2, r3
 80012e8:	4b0a      	ldr	r3, [pc, #40]	; (8001314 <update_entities+0x360>)
 80012ea:	601a      	str	r2, [r3, #0]
 80012ec:	e004      	b.n	80012f8 <update_entities+0x344>
 80012ee:	4b09      	ldr	r3, [pc, #36]	; (8001314 <update_entities+0x360>)
 80012f0:	681b      	ldr	r3, [r3, #0]
 80012f2:	1c9a      	adds	r2, r3, #2
 80012f4:	4b07      	ldr	r3, [pc, #28]	; (8001314 <update_entities+0x360>)
 80012f6:	601a      	str	r2, [r3, #0]
 80012f8:	4b04      	ldr	r3, [pc, #16]	; (800130c <update_entities+0x358>)
 80012fa:	781b      	ldrb	r3, [r3, #0]
 80012fc:	2b01      	cmp	r3, #1
 80012fe:	d10b      	bne.n	8001318 <update_entities+0x364>
 8001300:	4b01      	ldr	r3, [pc, #4]	; (8001308 <update_entities+0x354>)
 8001302:	2201      	movs	r2, #1
 8001304:	701a      	strb	r2, [r3, #0]
 8001306:	e032      	b.n	800136e <update_entities+0x3ba>
 8001308:	2000052c 	.word	0x2000052c
 800130c:	2000052e 	.word	0x2000052e
 8001310:	2000052d 	.word	0x2000052d
 8001314:	20000528 	.word	0x20000528
 8001318:	210d      	movs	r1, #13
 800131a:	187b      	adds	r3, r7, r1
 800131c:	781a      	ldrb	r2, [r3, #0]
 800131e:	0013      	movs	r3, r2
 8001320:	00db      	lsls	r3, r3, #3
 8001322:	189b      	adds	r3, r3, r2
 8001324:	009b      	lsls	r3, r3, #2
 8001326:	001a      	movs	r2, r3
 8001328:	687b      	ldr	r3, [r7, #4]
 800132a:	189b      	adds	r3, r3, r2
 800132c:	7e1b      	ldrb	r3, [r3, #24]
 800132e:	2b65      	cmp	r3, #101	; 0x65
 8001330:	d10e      	bne.n	8001350 <update_entities+0x39c>
 8001332:	187b      	adds	r3, r7, r1
 8001334:	781a      	ldrb	r2, [r3, #0]
 8001336:	0013      	movs	r3, r2
 8001338:	00db      	lsls	r3, r3, #3
 800133a:	189b      	adds	r3, r3, r2
 800133c:	009b      	lsls	r3, r3, #2
 800133e:	001a      	movs	r2, r3
 8001340:	687b      	ldr	r3, [r7, #4]
 8001342:	189b      	adds	r3, r3, r2
 8001344:	7e5b      	ldrb	r3, [r3, #25]
 8001346:	2b73      	cmp	r3, #115	; 0x73
 8001348:	d102      	bne.n	8001350 <update_entities+0x39c>
 800134a:	4b0b      	ldr	r3, [pc, #44]	; (8001378 <update_entities+0x3c4>)
 800134c:	2200      	movs	r2, #0
 800134e:	701a      	strb	r2, [r3, #0]
 8001350:	210d      	movs	r1, #13
 8001352:	187b      	adds	r3, r7, r1
 8001354:	781a      	ldrb	r2, [r3, #0]
 8001356:	187b      	adds	r3, r7, r1
 8001358:	3201      	adds	r2, #1
 800135a:	701a      	strb	r2, [r3, #0]
 800135c:	230d      	movs	r3, #13
 800135e:	18fa      	adds	r2, r7, r3
 8001360:	230b      	movs	r3, #11
 8001362:	18fb      	adds	r3, r7, r3
 8001364:	7812      	ldrb	r2, [r2, #0]
 8001366:	781b      	ldrb	r3, [r3, #0]
 8001368:	429a      	cmp	r2, r3
 800136a:	d200      	bcs.n	800136e <update_entities+0x3ba>
 800136c:	e738      	b.n	80011e0 <update_entities+0x22c>
 800136e:	687b      	ldr	r3, [r7, #4]
 8001370:	0018      	movs	r0, r3
 8001372:	46bd      	mov	sp, r7
 8001374:	b004      	add	sp, #16
 8001376:	bdb0      	pop	{r4, r5, r7, pc}
 8001378:	2000052c 	.word	0x2000052c

0800137c <spawn_enemies>:
 800137c:	b5b0      	push	{r4, r5, r7, lr}
 800137e:	b084      	sub	sp, #16
 8001380:	af00      	add	r7, sp, #0
 8001382:	6078      	str	r0, [r7, #4]
 8001384:	6039      	str	r1, [r7, #0]
 8001386:	683b      	ldr	r3, [r7, #0]
 8001388:	210a      	movs	r1, #10
 800138a:	0018      	movs	r0, r3
 800138c:	f7fe ff28 	bl	80001e0 <__aeabi_idivmod>
 8001390:	1e0b      	subs	r3, r1, #0
 8001392:	d000      	beq.n	8001396 <spawn_enemies+0x1a>
 8001394:	e0bd      	b.n	8001512 <spawn_enemies+0x196>
 8001396:	230f      	movs	r3, #15
 8001398:	18fb      	adds	r3, r7, r3
 800139a:	2200      	movs	r2, #0
 800139c:	701a      	strb	r2, [r3, #0]
 800139e:	e0b0      	b.n	8001502 <spawn_enemies+0x186>
 80013a0:	210f      	movs	r1, #15
 80013a2:	187b      	adds	r3, r7, r1
 80013a4:	781a      	ldrb	r2, [r3, #0]
 80013a6:	0013      	movs	r3, r2
 80013a8:	00db      	lsls	r3, r3, #3
 80013aa:	189b      	adds	r3, r3, r2
 80013ac:	009b      	lsls	r3, r3, #2
 80013ae:	001a      	movs	r2, r3
 80013b0:	687b      	ldr	r3, [r7, #4]
 80013b2:	189b      	adds	r3, r3, r2
 80013b4:	7e1b      	ldrb	r3, [r3, #24]
 80013b6:	2b65      	cmp	r3, #101	; 0x65
 80013b8:	d000      	beq.n	80013bc <spawn_enemies+0x40>
 80013ba:	e09c      	b.n	80014f6 <spawn_enemies+0x17a>
 80013bc:	187b      	adds	r3, r7, r1
 80013be:	781a      	ldrb	r2, [r3, #0]
 80013c0:	0013      	movs	r3, r2
 80013c2:	00db      	lsls	r3, r3, #3
 80013c4:	189b      	adds	r3, r3, r2
 80013c6:	009b      	lsls	r3, r3, #2
 80013c8:	001a      	movs	r2, r3
 80013ca:	687b      	ldr	r3, [r7, #4]
 80013cc:	189b      	adds	r3, r3, r2
 80013ce:	7e5b      	ldrb	r3, [r3, #25]
 80013d0:	2b73      	cmp	r3, #115	; 0x73
 80013d2:	d000      	beq.n	80013d6 <spawn_enemies+0x5a>
 80013d4:	e08f      	b.n	80014f6 <spawn_enemies+0x17a>
 80013d6:	4b8a      	ldr	r3, [pc, #552]	; (8001600 <spawn_enemies+0x284>)
 80013d8:	781b      	ldrb	r3, [r3, #0]
 80013da:	3301      	adds	r3, #1
 80013dc:	b2da      	uxtb	r2, r3
 80013de:	4b88      	ldr	r3, [pc, #544]	; (8001600 <spawn_enemies+0x284>)
 80013e0:	701a      	strb	r2, [r3, #0]
 80013e2:	4b87      	ldr	r3, [pc, #540]	; (8001600 <spawn_enemies+0x284>)
 80013e4:	781b      	ldrb	r3, [r3, #0]
 80013e6:	001a      	movs	r2, r3
 80013e8:	0013      	movs	r3, r2
 80013ea:	00db      	lsls	r3, r3, #3
 80013ec:	189b      	adds	r3, r3, r2
 80013ee:	009b      	lsls	r3, r3, #2
 80013f0:	3b24      	subs	r3, #36	; 0x24
 80013f2:	687a      	ldr	r2, [r7, #4]
 80013f4:	18d3      	adds	r3, r2, r3
 80013f6:	4a83      	ldr	r2, [pc, #524]	; (8001604 <spawn_enemies+0x288>)
 80013f8:	ca31      	ldmia	r2!, {r0, r4, r5}
 80013fa:	c331      	stmia	r3!, {r0, r4, r5}
 80013fc:	ca31      	ldmia	r2!, {r0, r4, r5}
 80013fe:	c331      	stmia	r3!, {r0, r4, r5}
 8001400:	ca31      	ldmia	r2!, {r0, r4, r5}
 8001402:	c331      	stmia	r3!, {r0, r4, r5}
 8001404:	0008      	movs	r0, r1
 8001406:	187b      	adds	r3, r7, r1
 8001408:	781a      	ldrb	r2, [r3, #0]
 800140a:	0013      	movs	r3, r2
 800140c:	00db      	lsls	r3, r3, #3
 800140e:	189b      	adds	r3, r3, r2
 8001410:	009b      	lsls	r3, r3, #2
 8001412:	001a      	movs	r2, r3
 8001414:	687b      	ldr	r3, [r7, #4]
 8001416:	189a      	adds	r2, r3, r2
 8001418:	4b79      	ldr	r3, [pc, #484]	; (8001600 <spawn_enemies+0x284>)
 800141a:	781b      	ldrb	r3, [r3, #0]
 800141c:	0019      	movs	r1, r3
 800141e:	000b      	movs	r3, r1
 8001420:	00db      	lsls	r3, r3, #3
 8001422:	185b      	adds	r3, r3, r1
 8001424:	009b      	lsls	r3, r3, #2
 8001426:	3b24      	subs	r3, #36	; 0x24
 8001428:	6879      	ldr	r1, [r7, #4]
 800142a:	18cb      	adds	r3, r1, r3
 800142c:	6892      	ldr	r2, [r2, #8]
 800142e:	609a      	str	r2, [r3, #8]
 8001430:	183b      	adds	r3, r7, r0
 8001432:	781a      	ldrb	r2, [r3, #0]
 8001434:	0013      	movs	r3, r2
 8001436:	00db      	lsls	r3, r3, #3
 8001438:	189b      	adds	r3, r3, r2
 800143a:	009b      	lsls	r3, r3, #2
 800143c:	001a      	movs	r2, r3
 800143e:	687b      	ldr	r3, [r7, #4]
 8001440:	189b      	adds	r3, r3, r2
 8001442:	6859      	ldr	r1, [r3, #4]
 8001444:	183b      	adds	r3, r7, r0
 8001446:	781a      	ldrb	r2, [r3, #0]
 8001448:	0013      	movs	r3, r2
 800144a:	00db      	lsls	r3, r3, #3
 800144c:	189b      	adds	r3, r3, r2
 800144e:	009b      	lsls	r3, r3, #2
 8001450:	001a      	movs	r2, r3
 8001452:	687b      	ldr	r3, [r7, #4]
 8001454:	189b      	adds	r3, r3, r2
 8001456:	68da      	ldr	r2, [r3, #12]
 8001458:	4b6a      	ldr	r3, [pc, #424]	; (8001604 <spawn_enemies+0x288>)
 800145a:	68db      	ldr	r3, [r3, #12]
 800145c:	18d3      	adds	r3, r2, r3
 800145e:	2b00      	cmp	r3, #0
 8001460:	da00      	bge.n	8001464 <spawn_enemies+0xe8>
 8001462:	3301      	adds	r3, #1
 8001464:	105b      	asrs	r3, r3, #1
 8001466:	425b      	negs	r3, r3
 8001468:	0018      	movs	r0, r3
 800146a:	4b65      	ldr	r3, [pc, #404]	; (8001600 <spawn_enemies+0x284>)
 800146c:	781b      	ldrb	r3, [r3, #0]
 800146e:	001a      	movs	r2, r3
 8001470:	0013      	movs	r3, r2
 8001472:	00db      	lsls	r3, r3, #3
 8001474:	189b      	adds	r3, r3, r2
 8001476:	009b      	lsls	r3, r3, #2
 8001478:	3b24      	subs	r3, #36	; 0x24
 800147a:	687a      	ldr	r2, [r7, #4]
 800147c:	18d3      	adds	r3, r2, r3
 800147e:	180a      	adds	r2, r1, r0
 8001480:	605a      	str	r2, [r3, #4]
 8001482:	687b      	ldr	r3, [r7, #4]
 8001484:	689a      	ldr	r2, [r3, #8]
 8001486:	4b5e      	ldr	r3, [pc, #376]	; (8001600 <spawn_enemies+0x284>)
 8001488:	781b      	ldrb	r3, [r3, #0]
 800148a:	0019      	movs	r1, r3
 800148c:	000b      	movs	r3, r1
 800148e:	00db      	lsls	r3, r3, #3
 8001490:	185b      	adds	r3, r3, r1
 8001492:	009b      	lsls	r3, r3, #2
 8001494:	3b24      	subs	r3, #36	; 0x24
 8001496:	6879      	ldr	r1, [r7, #4]
 8001498:	18cb      	adds	r3, r1, r3
 800149a:	689b      	ldr	r3, [r3, #8]
 800149c:	1ad0      	subs	r0, r2, r3
 800149e:	4b58      	ldr	r3, [pc, #352]	; (8001600 <spawn_enemies+0x284>)
 80014a0:	781b      	ldrb	r3, [r3, #0]
 80014a2:	001a      	movs	r2, r3
 80014a4:	0013      	movs	r3, r2
 80014a6:	00db      	lsls	r3, r3, #3
 80014a8:	189b      	adds	r3, r3, r2
 80014aa:	009b      	lsls	r3, r3, #2
 80014ac:	3b24      	subs	r3, #36	; 0x24
 80014ae:	687a      	ldr	r2, [r7, #4]
 80014b0:	18d4      	adds	r4, r2, r3
 80014b2:	210f      	movs	r1, #15
 80014b4:	f7fe fe4a 	bl	800014c <__divsi3>
 80014b8:	0003      	movs	r3, r0
 80014ba:	6223      	str	r3, [r4, #32]
 80014bc:	687b      	ldr	r3, [r7, #4]
 80014be:	685a      	ldr	r2, [r3, #4]
 80014c0:	4b4f      	ldr	r3, [pc, #316]	; (8001600 <spawn_enemies+0x284>)
 80014c2:	781b      	ldrb	r3, [r3, #0]
 80014c4:	0019      	movs	r1, r3
 80014c6:	000b      	movs	r3, r1
 80014c8:	00db      	lsls	r3, r3, #3
 80014ca:	185b      	adds	r3, r3, r1
 80014cc:	009b      	lsls	r3, r3, #2
 80014ce:	3b24      	subs	r3, #36	; 0x24
 80014d0:	6879      	ldr	r1, [r7, #4]
 80014d2:	18cb      	adds	r3, r1, r3
 80014d4:	685b      	ldr	r3, [r3, #4]
 80014d6:	1ad0      	subs	r0, r2, r3
 80014d8:	4b49      	ldr	r3, [pc, #292]	; (8001600 <spawn_enemies+0x284>)
 80014da:	781b      	ldrb	r3, [r3, #0]
 80014dc:	001a      	movs	r2, r3
 80014de:	0013      	movs	r3, r2
 80014e0:	00db      	lsls	r3, r3, #3
 80014e2:	189b      	adds	r3, r3, r2
 80014e4:	009b      	lsls	r3, r3, #2
 80014e6:	3b24      	subs	r3, #36	; 0x24
 80014e8:	687a      	ldr	r2, [r7, #4]
 80014ea:	18d4      	adds	r4, r2, r3
 80014ec:	210f      	movs	r1, #15
 80014ee:	f7fe fe2d 	bl	800014c <__divsi3>
 80014f2:	0003      	movs	r3, r0
 80014f4:	61e3      	str	r3, [r4, #28]
 80014f6:	210f      	movs	r1, #15
 80014f8:	187b      	adds	r3, r7, r1
 80014fa:	781a      	ldrb	r2, [r3, #0]
 80014fc:	187b      	adds	r3, r7, r1
 80014fe:	3201      	adds	r2, #1
 8001500:	701a      	strb	r2, [r3, #0]
 8001502:	4b3f      	ldr	r3, [pc, #252]	; (8001600 <spawn_enemies+0x284>)
 8001504:	781b      	ldrb	r3, [r3, #0]
 8001506:	220f      	movs	r2, #15
 8001508:	18ba      	adds	r2, r7, r2
 800150a:	7812      	ldrb	r2, [r2, #0]
 800150c:	429a      	cmp	r2, r3
 800150e:	d200      	bcs.n	8001512 <spawn_enemies+0x196>
 8001510:	e746      	b.n	80013a0 <spawn_enemies+0x24>
 8001512:	230e      	movs	r3, #14
 8001514:	18fb      	adds	r3, r7, r3
 8001516:	2201      	movs	r2, #1
 8001518:	701a      	strb	r2, [r3, #0]
 800151a:	230d      	movs	r3, #13
 800151c:	18fb      	adds	r3, r7, r3
 800151e:	2200      	movs	r2, #0
 8001520:	701a      	strb	r2, [r3, #0]
 8001522:	e016      	b.n	8001552 <spawn_enemies+0x1d6>
 8001524:	230d      	movs	r3, #13
 8001526:	18fb      	adds	r3, r7, r3
 8001528:	781a      	ldrb	r2, [r3, #0]
 800152a:	0013      	movs	r3, r2
 800152c:	00db      	lsls	r3, r3, #3
 800152e:	189b      	adds	r3, r3, r2
 8001530:	009b      	lsls	r3, r3, #2
 8001532:	001a      	movs	r2, r3
 8001534:	687b      	ldr	r3, [r7, #4]
 8001536:	189b      	adds	r3, r3, r2
 8001538:	685b      	ldr	r3, [r3, #4]
 800153a:	2b2d      	cmp	r3, #45	; 0x2d
 800153c:	dd03      	ble.n	8001546 <spawn_enemies+0x1ca>
 800153e:	230e      	movs	r3, #14
 8001540:	18fb      	adds	r3, r7, r3
 8001542:	2200      	movs	r2, #0
 8001544:	701a      	strb	r2, [r3, #0]
 8001546:	210d      	movs	r1, #13
 8001548:	187b      	adds	r3, r7, r1
 800154a:	781a      	ldrb	r2, [r3, #0]
 800154c:	187b      	adds	r3, r7, r1
 800154e:	3201      	adds	r2, #1
 8001550:	701a      	strb	r2, [r3, #0]
 8001552:	4b2b      	ldr	r3, [pc, #172]	; (8001600 <spawn_enemies+0x284>)
 8001554:	781b      	ldrb	r3, [r3, #0]
 8001556:	220d      	movs	r2, #13
 8001558:	18ba      	adds	r2, r7, r2
 800155a:	7812      	ldrb	r2, [r2, #0]
 800155c:	429a      	cmp	r2, r3
 800155e:	d3e1      	bcc.n	8001524 <spawn_enemies+0x1a8>
 8001560:	230e      	movs	r3, #14
 8001562:	18fb      	adds	r3, r7, r3
 8001564:	781b      	ldrb	r3, [r3, #0]
 8001566:	2b00      	cmp	r3, #0
 8001568:	d045      	beq.n	80015f6 <spawn_enemies+0x27a>
 800156a:	4b25      	ldr	r3, [pc, #148]	; (8001600 <spawn_enemies+0x284>)
 800156c:	781b      	ldrb	r3, [r3, #0]
 800156e:	3306      	adds	r3, #6
 8001570:	b2da      	uxtb	r2, r3
 8001572:	4b23      	ldr	r3, [pc, #140]	; (8001600 <spawn_enemies+0x284>)
 8001574:	701a      	strb	r2, [r3, #0]
 8001576:	4b22      	ldr	r3, [pc, #136]	; (8001600 <spawn_enemies+0x284>)
 8001578:	781a      	ldrb	r2, [r3, #0]
 800157a:	230c      	movs	r3, #12
 800157c:	18fb      	adds	r3, r7, r3
 800157e:	3a06      	subs	r2, #6
 8001580:	701a      	strb	r2, [r3, #0]
 8001582:	e031      	b.n	80015e8 <spawn_enemies+0x26c>
 8001584:	210c      	movs	r1, #12
 8001586:	187b      	adds	r3, r7, r1
 8001588:	781a      	ldrb	r2, [r3, #0]
 800158a:	0013      	movs	r3, r2
 800158c:	00db      	lsls	r3, r3, #3
 800158e:	189b      	adds	r3, r3, r2
 8001590:	009b      	lsls	r3, r3, #2
 8001592:	001a      	movs	r2, r3
 8001594:	687b      	ldr	r3, [r7, #4]
 8001596:	189b      	adds	r3, r3, r2
 8001598:	4a1b      	ldr	r2, [pc, #108]	; (8001608 <spawn_enemies+0x28c>)
 800159a:	ca31      	ldmia	r2!, {r0, r4, r5}
 800159c:	c331      	stmia	r3!, {r0, r4, r5}
 800159e:	ca31      	ldmia	r2!, {r0, r4, r5}
 80015a0:	c331      	stmia	r3!, {r0, r4, r5}
 80015a2:	ca31      	ldmia	r2!, {r0, r4, r5}
 80015a4:	c331      	stmia	r3!, {r0, r4, r5}
 80015a6:	4b18      	ldr	r3, [pc, #96]	; (8001608 <spawn_enemies+0x28c>)
 80015a8:	6898      	ldr	r0, [r3, #8]
 80015aa:	4b15      	ldr	r3, [pc, #84]	; (8001600 <spawn_enemies+0x284>)
 80015ac:	781b      	ldrb	r3, [r3, #0]
 80015ae:	001a      	movs	r2, r3
 80015b0:	2306      	movs	r3, #6
 80015b2:	1a9a      	subs	r2, r3, r2
 80015b4:	000c      	movs	r4, r1
 80015b6:	187b      	adds	r3, r7, r1
 80015b8:	781b      	ldrb	r3, [r3, #0]
 80015ba:	18d3      	adds	r3, r2, r3
 80015bc:	1c5a      	adds	r2, r3, #1
 80015be:	4b12      	ldr	r3, [pc, #72]	; (8001608 <spawn_enemies+0x28c>)
 80015c0:	691b      	ldr	r3, [r3, #16]
 80015c2:	3308      	adds	r3, #8
 80015c4:	4353      	muls	r3, r2
 80015c6:	0019      	movs	r1, r3
 80015c8:	193b      	adds	r3, r7, r4
 80015ca:	781a      	ldrb	r2, [r3, #0]
 80015cc:	0013      	movs	r3, r2
 80015ce:	00db      	lsls	r3, r3, #3
 80015d0:	189b      	adds	r3, r3, r2
 80015d2:	009b      	lsls	r3, r3, #2
 80015d4:	001a      	movs	r2, r3
 80015d6:	687b      	ldr	r3, [r7, #4]
 80015d8:	189b      	adds	r3, r3, r2
 80015da:	1842      	adds	r2, r0, r1
 80015dc:	609a      	str	r2, [r3, #8]
 80015de:	193b      	adds	r3, r7, r4
 80015e0:	781a      	ldrb	r2, [r3, #0]
 80015e2:	193b      	adds	r3, r7, r4
 80015e4:	3201      	adds	r2, #1
 80015e6:	701a      	strb	r2, [r3, #0]
 80015e8:	4b05      	ldr	r3, [pc, #20]	; (8001600 <spawn_enemies+0x284>)
 80015ea:	781b      	ldrb	r3, [r3, #0]
 80015ec:	220c      	movs	r2, #12
 80015ee:	18ba      	adds	r2, r7, r2
 80015f0:	7812      	ldrb	r2, [r2, #0]
 80015f2:	429a      	cmp	r2, r3
 80015f4:	d3c6      	bcc.n	8001584 <spawn_enemies+0x208>
 80015f6:	687b      	ldr	r3, [r7, #4]
 80015f8:	0018      	movs	r0, r3
 80015fa:	46bd      	mov	sp, r7
 80015fc:	b004      	add	sp, #16
 80015fe:	bdb0      	pop	{r4, r5, r7, pc}
 8001600:	2000052e 	.word	0x2000052e
 8001604:	2000006c 	.word	0x2000006c
 8001608:	20000048 	.word	0x20000048

0800160c <draw_corvette>:
 800160c:	b580      	push	{r7, lr}
 800160e:	b082      	sub	sp, #8
 8001610:	af00      	add	r7, sp, #0
 8001612:	0002      	movs	r2, r0
 8001614:	1dfb      	adds	r3, r7, #7
 8001616:	701a      	strb	r2, [r3, #0]
 8001618:	1dbb      	adds	r3, r7, #6
 800161a:	1c0a      	adds	r2, r1, #0
 800161c:	701a      	strb	r2, [r3, #0]
 800161e:	1dbb      	adds	r3, r7, #6
 8001620:	7819      	ldrb	r1, [r3, #0]
 8001622:	1dfb      	adds	r3, r7, #7
 8001624:	781b      	ldrb	r3, [r3, #0]
 8001626:	22ff      	movs	r2, #255	; 0xff
 8001628:	0018      	movs	r0, r3
 800162a:	f003 f82b 	bl	8004684 <oled_set_pix>
 800162e:	1dbb      	adds	r3, r7, #6
 8001630:	781b      	ldrb	r3, [r3, #0]
 8001632:	3301      	adds	r3, #1
 8001634:	b2d9      	uxtb	r1, r3
 8001636:	1dfb      	adds	r3, r7, #7
 8001638:	781b      	ldrb	r3, [r3, #0]
 800163a:	22ff      	movs	r2, #255	; 0xff
 800163c:	0018      	movs	r0, r3
 800163e:	f003 f821 	bl	8004684 <oled_set_pix>
 8001642:	1dbb      	adds	r3, r7, #6
 8001644:	781b      	ldrb	r3, [r3, #0]
 8001646:	3302      	adds	r3, #2
 8001648:	b2d9      	uxtb	r1, r3
 800164a:	1dfb      	adds	r3, r7, #7
 800164c:	781b      	ldrb	r3, [r3, #0]
 800164e:	22ff      	movs	r2, #255	; 0xff
 8001650:	0018      	movs	r0, r3
 8001652:	f003 f817 	bl	8004684 <oled_set_pix>
 8001656:	1dbb      	adds	r3, r7, #6
 8001658:	781b      	ldrb	r3, [r3, #0]
 800165a:	3303      	adds	r3, #3
 800165c:	b2d9      	uxtb	r1, r3
 800165e:	1dfb      	adds	r3, r7, #7
 8001660:	781b      	ldrb	r3, [r3, #0]
 8001662:	22ff      	movs	r2, #255	; 0xff
 8001664:	0018      	movs	r0, r3
 8001666:	f003 f80d 	bl	8004684 <oled_set_pix>
 800166a:	1dbb      	adds	r3, r7, #6
 800166c:	781b      	ldrb	r3, [r3, #0]
 800166e:	3304      	adds	r3, #4
 8001670:	b2d9      	uxtb	r1, r3
 8001672:	1dfb      	adds	r3, r7, #7
 8001674:	781b      	ldrb	r3, [r3, #0]
 8001676:	22ff      	movs	r2, #255	; 0xff
 8001678:	0018      	movs	r0, r3
 800167a:	f003 f803 	bl	8004684 <oled_set_pix>
 800167e:	1dbb      	adds	r3, r7, #6
 8001680:	781b      	ldrb	r3, [r3, #0]
 8001682:	3b01      	subs	r3, #1
 8001684:	b2d9      	uxtb	r1, r3
 8001686:	1dfb      	adds	r3, r7, #7
 8001688:	781b      	ldrb	r3, [r3, #0]
 800168a:	22ff      	movs	r2, #255	; 0xff
 800168c:	0018      	movs	r0, r3
 800168e:	f002 fff9 	bl	8004684 <oled_set_pix>
 8001692:	1dbb      	adds	r3, r7, #6
 8001694:	781b      	ldrb	r3, [r3, #0]
 8001696:	3b02      	subs	r3, #2
 8001698:	b2d9      	uxtb	r1, r3
 800169a:	1dfb      	adds	r3, r7, #7
 800169c:	781b      	ldrb	r3, [r3, #0]
 800169e:	22ff      	movs	r2, #255	; 0xff
 80016a0:	0018      	movs	r0, r3
 80016a2:	f002 ffef 	bl	8004684 <oled_set_pix>
 80016a6:	1dbb      	adds	r3, r7, #6
 80016a8:	781b      	ldrb	r3, [r3, #0]
 80016aa:	3b03      	subs	r3, #3
 80016ac:	b2d9      	uxtb	r1, r3
 80016ae:	1dfb      	adds	r3, r7, #7
 80016b0:	781b      	ldrb	r3, [r3, #0]
 80016b2:	22ff      	movs	r2, #255	; 0xff
 80016b4:	0018      	movs	r0, r3
 80016b6:	f002 ffe5 	bl	8004684 <oled_set_pix>
 80016ba:	1dfb      	adds	r3, r7, #7
 80016bc:	781b      	ldrb	r3, [r3, #0]
 80016be:	3301      	adds	r3, #1
 80016c0:	b2d8      	uxtb	r0, r3
 80016c2:	1dbb      	adds	r3, r7, #6
 80016c4:	781b      	ldrb	r3, [r3, #0]
 80016c6:	22ff      	movs	r2, #255	; 0xff
 80016c8:	0019      	movs	r1, r3
 80016ca:	f002 ffdb 	bl	8004684 <oled_set_pix>
 80016ce:	1dfb      	adds	r3, r7, #7
 80016d0:	781b      	ldrb	r3, [r3, #0]
 80016d2:	3301      	adds	r3, #1
 80016d4:	b2d8      	uxtb	r0, r3
 80016d6:	1dbb      	adds	r3, r7, #6
 80016d8:	781b      	ldrb	r3, [r3, #0]
 80016da:	3b02      	subs	r3, #2
 80016dc:	b2db      	uxtb	r3, r3
 80016de:	22ff      	movs	r2, #255	; 0xff
 80016e0:	0019      	movs	r1, r3
 80016e2:	f002 ffcf 	bl	8004684 <oled_set_pix>
 80016e6:	1dfb      	adds	r3, r7, #7
 80016e8:	781b      	ldrb	r3, [r3, #0]
 80016ea:	3301      	adds	r3, #1
 80016ec:	b2d8      	uxtb	r0, r3
 80016ee:	1dbb      	adds	r3, r7, #6
 80016f0:	781b      	ldrb	r3, [r3, #0]
 80016f2:	3b03      	subs	r3, #3
 80016f4:	b2db      	uxtb	r3, r3
 80016f6:	22ff      	movs	r2, #255	; 0xff
 80016f8:	0019      	movs	r1, r3
 80016fa:	f002 ffc3 	bl	8004684 <oled_set_pix>
 80016fe:	1dfb      	adds	r3, r7, #7
 8001700:	781b      	ldrb	r3, [r3, #0]
 8001702:	3301      	adds	r3, #1
 8001704:	b2d8      	uxtb	r0, r3
 8001706:	1dbb      	adds	r3, r7, #6
 8001708:	781b      	ldrb	r3, [r3, #0]
 800170a:	3b04      	subs	r3, #4
 800170c:	b2db      	uxtb	r3, r3
 800170e:	22ff      	movs	r2, #255	; 0xff
 8001710:	0019      	movs	r1, r3
 8001712:	f002 ffb7 	bl	8004684 <oled_set_pix>
 8001716:	1dfb      	adds	r3, r7, #7
 8001718:	781b      	ldrb	r3, [r3, #0]
 800171a:	3301      	adds	r3, #1
 800171c:	b2d8      	uxtb	r0, r3
 800171e:	1dbb      	adds	r3, r7, #6
 8001720:	781b      	ldrb	r3, [r3, #0]
 8001722:	3301      	adds	r3, #1
 8001724:	b2db      	uxtb	r3, r3
 8001726:	22ff      	movs	r2, #255	; 0xff
 8001728:	0019      	movs	r1, r3
 800172a:	f002 ffab 	bl	8004684 <oled_set_pix>
 800172e:	1dfb      	adds	r3, r7, #7
 8001730:	781b      	ldrb	r3, [r3, #0]
 8001732:	3301      	adds	r3, #1
 8001734:	b2d8      	uxtb	r0, r3
 8001736:	1dbb      	adds	r3, r7, #6
 8001738:	781b      	ldrb	r3, [r3, #0]
 800173a:	3302      	adds	r3, #2
 800173c:	b2db      	uxtb	r3, r3
 800173e:	22ff      	movs	r2, #255	; 0xff
 8001740:	0019      	movs	r1, r3
 8001742:	f002 ff9f 	bl	8004684 <oled_set_pix>
 8001746:	1dfb      	adds	r3, r7, #7
 8001748:	781b      	ldrb	r3, [r3, #0]
 800174a:	3b01      	subs	r3, #1
 800174c:	b2d8      	uxtb	r0, r3
 800174e:	1dbb      	adds	r3, r7, #6
 8001750:	781b      	ldrb	r3, [r3, #0]
 8001752:	22ff      	movs	r2, #255	; 0xff
 8001754:	0019      	movs	r1, r3
 8001756:	f002 ff95 	bl	8004684 <oled_set_pix>
 800175a:	1dfb      	adds	r3, r7, #7
 800175c:	781b      	ldrb	r3, [r3, #0]
 800175e:	3b01      	subs	r3, #1
 8001760:	b2d8      	uxtb	r0, r3
 8001762:	1dbb      	adds	r3, r7, #6
 8001764:	781b      	ldrb	r3, [r3, #0]
 8001766:	3b02      	subs	r3, #2
 8001768:	b2db      	uxtb	r3, r3
 800176a:	22ff      	movs	r2, #255	; 0xff
 800176c:	0019      	movs	r1, r3
 800176e:	f002 ff89 	bl	8004684 <oled_set_pix>
 8001772:	1dfb      	adds	r3, r7, #7
 8001774:	781b      	ldrb	r3, [r3, #0]
 8001776:	3b01      	subs	r3, #1
 8001778:	b2d8      	uxtb	r0, r3
 800177a:	1dbb      	adds	r3, r7, #6
 800177c:	781b      	ldrb	r3, [r3, #0]
 800177e:	3b03      	subs	r3, #3
 8001780:	b2db      	uxtb	r3, r3
 8001782:	22ff      	movs	r2, #255	; 0xff
 8001784:	0019      	movs	r1, r3
 8001786:	f002 ff7d 	bl	8004684 <oled_set_pix>
 800178a:	1dfb      	adds	r3, r7, #7
 800178c:	781b      	ldrb	r3, [r3, #0]
 800178e:	3b01      	subs	r3, #1
 8001790:	b2d8      	uxtb	r0, r3
 8001792:	1dbb      	adds	r3, r7, #6
 8001794:	781b      	ldrb	r3, [r3, #0]
 8001796:	3b04      	subs	r3, #4
 8001798:	b2db      	uxtb	r3, r3
 800179a:	22ff      	movs	r2, #255	; 0xff
 800179c:	0019      	movs	r1, r3
 800179e:	f002 ff71 	bl	8004684 <oled_set_pix>
 80017a2:	1dfb      	adds	r3, r7, #7
 80017a4:	781b      	ldrb	r3, [r3, #0]
 80017a6:	3b01      	subs	r3, #1
 80017a8:	b2d8      	uxtb	r0, r3
 80017aa:	1dbb      	adds	r3, r7, #6
 80017ac:	781b      	ldrb	r3, [r3, #0]
 80017ae:	3301      	adds	r3, #1
 80017b0:	b2db      	uxtb	r3, r3
 80017b2:	22ff      	movs	r2, #255	; 0xff
 80017b4:	0019      	movs	r1, r3
 80017b6:	f002 ff65 	bl	8004684 <oled_set_pix>
 80017ba:	1dfb      	adds	r3, r7, #7
 80017bc:	781b      	ldrb	r3, [r3, #0]
 80017be:	3b01      	subs	r3, #1
 80017c0:	b2d8      	uxtb	r0, r3
 80017c2:	1dbb      	adds	r3, r7, #6
 80017c4:	781b      	ldrb	r3, [r3, #0]
 80017c6:	3302      	adds	r3, #2
 80017c8:	b2db      	uxtb	r3, r3
 80017ca:	22ff      	movs	r2, #255	; 0xff
 80017cc:	0019      	movs	r1, r3
 80017ce:	f002 ff59 	bl	8004684 <oled_set_pix>
 80017d2:	1dfb      	adds	r3, r7, #7
 80017d4:	781b      	ldrb	r3, [r3, #0]
 80017d6:	3302      	adds	r3, #2
 80017d8:	b2d8      	uxtb	r0, r3
 80017da:	1dbb      	adds	r3, r7, #6
 80017dc:	781b      	ldrb	r3, [r3, #0]
 80017de:	22ff      	movs	r2, #255	; 0xff
 80017e0:	0019      	movs	r1, r3
 80017e2:	f002 ff4f 	bl	8004684 <oled_set_pix>
 80017e6:	1dfb      	adds	r3, r7, #7
 80017e8:	781b      	ldrb	r3, [r3, #0]
 80017ea:	3302      	adds	r3, #2
 80017ec:	b2d8      	uxtb	r0, r3
 80017ee:	1dbb      	adds	r3, r7, #6
 80017f0:	781b      	ldrb	r3, [r3, #0]
 80017f2:	3b01      	subs	r3, #1
 80017f4:	b2db      	uxtb	r3, r3
 80017f6:	22ff      	movs	r2, #255	; 0xff
 80017f8:	0019      	movs	r1, r3
 80017fa:	f002 ff43 	bl	8004684 <oled_set_pix>
 80017fe:	1dfb      	adds	r3, r7, #7
 8001800:	781b      	ldrb	r3, [r3, #0]
 8001802:	3302      	adds	r3, #2
 8001804:	b2d8      	uxtb	r0, r3
 8001806:	1dbb      	adds	r3, r7, #6
 8001808:	781b      	ldrb	r3, [r3, #0]
 800180a:	3b02      	subs	r3, #2
 800180c:	b2db      	uxtb	r3, r3
 800180e:	22ff      	movs	r2, #255	; 0xff
 8001810:	0019      	movs	r1, r3
 8001812:	f002 ff37 	bl	8004684 <oled_set_pix>
 8001816:	1dfb      	adds	r3, r7, #7
 8001818:	781b      	ldrb	r3, [r3, #0]
 800181a:	3302      	adds	r3, #2
 800181c:	b2d8      	uxtb	r0, r3
 800181e:	1dbb      	adds	r3, r7, #6
 8001820:	781b      	ldrb	r3, [r3, #0]
 8001822:	3301      	adds	r3, #1
 8001824:	b2db      	uxtb	r3, r3
 8001826:	22ff      	movs	r2, #255	; 0xff
 8001828:	0019      	movs	r1, r3
 800182a:	f002 ff2b 	bl	8004684 <oled_set_pix>
 800182e:	1dfb      	adds	r3, r7, #7
 8001830:	781b      	ldrb	r3, [r3, #0]
 8001832:	3302      	adds	r3, #2
 8001834:	b2d8      	uxtb	r0, r3
 8001836:	1dbb      	adds	r3, r7, #6
 8001838:	781b      	ldrb	r3, [r3, #0]
 800183a:	3302      	adds	r3, #2
 800183c:	b2db      	uxtb	r3, r3
 800183e:	22ff      	movs	r2, #255	; 0xff
 8001840:	0019      	movs	r1, r3
 8001842:	f002 ff1f 	bl	8004684 <oled_set_pix>
 8001846:	1dfb      	adds	r3, r7, #7
 8001848:	781b      	ldrb	r3, [r3, #0]
 800184a:	3302      	adds	r3, #2
 800184c:	b2d8      	uxtb	r0, r3
 800184e:	1dbb      	adds	r3, r7, #6
 8001850:	781b      	ldrb	r3, [r3, #0]
 8001852:	3303      	adds	r3, #3
 8001854:	b2db      	uxtb	r3, r3
 8001856:	22ff      	movs	r2, #255	; 0xff
 8001858:	0019      	movs	r1, r3
 800185a:	f002 ff13 	bl	8004684 <oled_set_pix>
 800185e:	1dfb      	adds	r3, r7, #7
 8001860:	781b      	ldrb	r3, [r3, #0]
 8001862:	3b02      	subs	r3, #2
 8001864:	b2d8      	uxtb	r0, r3
 8001866:	1dbb      	adds	r3, r7, #6
 8001868:	781b      	ldrb	r3, [r3, #0]
 800186a:	22ff      	movs	r2, #255	; 0xff
 800186c:	0019      	movs	r1, r3
 800186e:	f002 ff09 	bl	8004684 <oled_set_pix>
 8001872:	1dfb      	adds	r3, r7, #7
 8001874:	781b      	ldrb	r3, [r3, #0]
 8001876:	3b02      	subs	r3, #2
 8001878:	b2d8      	uxtb	r0, r3
 800187a:	1dbb      	adds	r3, r7, #6
 800187c:	781b      	ldrb	r3, [r3, #0]
 800187e:	3b01      	subs	r3, #1
 8001880:	b2db      	uxtb	r3, r3
 8001882:	22ff      	movs	r2, #255	; 0xff
 8001884:	0019      	movs	r1, r3
 8001886:	f002 fefd 	bl	8004684 <oled_set_pix>
 800188a:	1dfb      	adds	r3, r7, #7
 800188c:	781b      	ldrb	r3, [r3, #0]
 800188e:	3b02      	subs	r3, #2
 8001890:	b2d8      	uxtb	r0, r3
 8001892:	1dbb      	adds	r3, r7, #6
 8001894:	781b      	ldrb	r3, [r3, #0]
 8001896:	3b02      	subs	r3, #2
 8001898:	b2db      	uxtb	r3, r3
 800189a:	22ff      	movs	r2, #255	; 0xff
 800189c:	0019      	movs	r1, r3
 800189e:	f002 fef1 	bl	8004684 <oled_set_pix>
 80018a2:	1dfb      	adds	r3, r7, #7
 80018a4:	781b      	ldrb	r3, [r3, #0]
 80018a6:	3b02      	subs	r3, #2
 80018a8:	b2d8      	uxtb	r0, r3
 80018aa:	1dbb      	adds	r3, r7, #6
 80018ac:	781b      	ldrb	r3, [r3, #0]
 80018ae:	3301      	adds	r3, #1
 80018b0:	b2db      	uxtb	r3, r3
 80018b2:	22ff      	movs	r2, #255	; 0xff
 80018b4:	0019      	movs	r1, r3
 80018b6:	f002 fee5 	bl	8004684 <oled_set_pix>
 80018ba:	1dfb      	adds	r3, r7, #7
 80018bc:	781b      	ldrb	r3, [r3, #0]
 80018be:	3b02      	subs	r3, #2
 80018c0:	b2d8      	uxtb	r0, r3
 80018c2:	1dbb      	adds	r3, r7, #6
 80018c4:	781b      	ldrb	r3, [r3, #0]
 80018c6:	3302      	adds	r3, #2
 80018c8:	b2db      	uxtb	r3, r3
 80018ca:	22ff      	movs	r2, #255	; 0xff
 80018cc:	0019      	movs	r1, r3
 80018ce:	f002 fed9 	bl	8004684 <oled_set_pix>
 80018d2:	1dfb      	adds	r3, r7, #7
 80018d4:	781b      	ldrb	r3, [r3, #0]
 80018d6:	3b02      	subs	r3, #2
 80018d8:	b2d8      	uxtb	r0, r3
 80018da:	1dbb      	adds	r3, r7, #6
 80018dc:	781b      	ldrb	r3, [r3, #0]
 80018de:	3303      	adds	r3, #3
 80018e0:	b2db      	uxtb	r3, r3
 80018e2:	22ff      	movs	r2, #255	; 0xff
 80018e4:	0019      	movs	r1, r3
 80018e6:	f002 fecd 	bl	8004684 <oled_set_pix>
 80018ea:	1dfb      	adds	r3, r7, #7
 80018ec:	781b      	ldrb	r3, [r3, #0]
 80018ee:	3303      	adds	r3, #3
 80018f0:	b2d8      	uxtb	r0, r3
 80018f2:	1dbb      	adds	r3, r7, #6
 80018f4:	781b      	ldrb	r3, [r3, #0]
 80018f6:	22ff      	movs	r2, #255	; 0xff
 80018f8:	0019      	movs	r1, r3
 80018fa:	f002 fec3 	bl	8004684 <oled_set_pix>
 80018fe:	1dfb      	adds	r3, r7, #7
 8001900:	781b      	ldrb	r3, [r3, #0]
 8001902:	3303      	adds	r3, #3
 8001904:	b2d8      	uxtb	r0, r3
 8001906:	1dbb      	adds	r3, r7, #6
 8001908:	781b      	ldrb	r3, [r3, #0]
 800190a:	3b01      	subs	r3, #1
 800190c:	b2db      	uxtb	r3, r3
 800190e:	22ff      	movs	r2, #255	; 0xff
 8001910:	0019      	movs	r1, r3
 8001912:	f002 feb7 	bl	8004684 <oled_set_pix>
 8001916:	1dfb      	adds	r3, r7, #7
 8001918:	781b      	ldrb	r3, [r3, #0]
 800191a:	3303      	adds	r3, #3
 800191c:	b2d8      	uxtb	r0, r3
 800191e:	1dbb      	adds	r3, r7, #6
 8001920:	781b      	ldrb	r3, [r3, #0]
 8001922:	3b04      	subs	r3, #4
 8001924:	b2db      	uxtb	r3, r3
 8001926:	22ff      	movs	r2, #255	; 0xff
 8001928:	0019      	movs	r1, r3
 800192a:	f002 feab 	bl	8004684 <oled_set_pix>
 800192e:	1dfb      	adds	r3, r7, #7
 8001930:	781b      	ldrb	r3, [r3, #0]
 8001932:	3303      	adds	r3, #3
 8001934:	b2d8      	uxtb	r0, r3
 8001936:	1dbb      	adds	r3, r7, #6
 8001938:	781b      	ldrb	r3, [r3, #0]
 800193a:	3301      	adds	r3, #1
 800193c:	b2db      	uxtb	r3, r3
 800193e:	22ff      	movs	r2, #255	; 0xff
 8001940:	0019      	movs	r1, r3
 8001942:	f002 fe9f 	bl	8004684 <oled_set_pix>
 8001946:	1dfb      	adds	r3, r7, #7
 8001948:	781b      	ldrb	r3, [r3, #0]
 800194a:	3303      	adds	r3, #3
 800194c:	b2d8      	uxtb	r0, r3
 800194e:	1dbb      	adds	r3, r7, #6
 8001950:	781b      	ldrb	r3, [r3, #0]
 8001952:	3303      	adds	r3, #3
 8001954:	b2db      	uxtb	r3, r3
 8001956:	22ff      	movs	r2, #255	; 0xff
 8001958:	0019      	movs	r1, r3
 800195a:	f002 fe93 	bl	8004684 <oled_set_pix>
 800195e:	1dfb      	adds	r3, r7, #7
 8001960:	781b      	ldrb	r3, [r3, #0]
 8001962:	3b03      	subs	r3, #3
 8001964:	b2d8      	uxtb	r0, r3
 8001966:	1dbb      	adds	r3, r7, #6
 8001968:	781b      	ldrb	r3, [r3, #0]
 800196a:	22ff      	movs	r2, #255	; 0xff
 800196c:	0019      	movs	r1, r3
 800196e:	f002 fe89 	bl	8004684 <oled_set_pix>
 8001972:	1dfb      	adds	r3, r7, #7
 8001974:	781b      	ldrb	r3, [r3, #0]
 8001976:	3b03      	subs	r3, #3
 8001978:	b2d8      	uxtb	r0, r3
 800197a:	1dbb      	adds	r3, r7, #6
 800197c:	781b      	ldrb	r3, [r3, #0]
 800197e:	3b01      	subs	r3, #1
 8001980:	b2db      	uxtb	r3, r3
 8001982:	22ff      	movs	r2, #255	; 0xff
 8001984:	0019      	movs	r1, r3
 8001986:	f002 fe7d 	bl	8004684 <oled_set_pix>
 800198a:	1dfb      	adds	r3, r7, #7
 800198c:	781b      	ldrb	r3, [r3, #0]
 800198e:	3b03      	subs	r3, #3
 8001990:	b2d8      	uxtb	r0, r3
 8001992:	1dbb      	adds	r3, r7, #6
 8001994:	781b      	ldrb	r3, [r3, #0]
 8001996:	3b04      	subs	r3, #4
 8001998:	b2db      	uxtb	r3, r3
 800199a:	22ff      	movs	r2, #255	; 0xff
 800199c:	0019      	movs	r1, r3
 800199e:	f002 fe71 	bl	8004684 <oled_set_pix>
 80019a2:	1dfb      	adds	r3, r7, #7
 80019a4:	781b      	ldrb	r3, [r3, #0]
 80019a6:	3b03      	subs	r3, #3
 80019a8:	b2d8      	uxtb	r0, r3
 80019aa:	1dbb      	adds	r3, r7, #6
 80019ac:	781b      	ldrb	r3, [r3, #0]
 80019ae:	3301      	adds	r3, #1
 80019b0:	b2db      	uxtb	r3, r3
 80019b2:	22ff      	movs	r2, #255	; 0xff
 80019b4:	0019      	movs	r1, r3
 80019b6:	f002 fe65 	bl	8004684 <oled_set_pix>
 80019ba:	1dfb      	adds	r3, r7, #7
 80019bc:	781b      	ldrb	r3, [r3, #0]
 80019be:	3b03      	subs	r3, #3
 80019c0:	b2d8      	uxtb	r0, r3
 80019c2:	1dbb      	adds	r3, r7, #6
 80019c4:	781b      	ldrb	r3, [r3, #0]
 80019c6:	3303      	adds	r3, #3
 80019c8:	b2db      	uxtb	r3, r3
 80019ca:	22ff      	movs	r2, #255	; 0xff
 80019cc:	0019      	movs	r1, r3
 80019ce:	f002 fe59 	bl	8004684 <oled_set_pix>
 80019d2:	1dfb      	adds	r3, r7, #7
 80019d4:	781b      	ldrb	r3, [r3, #0]
 80019d6:	3304      	adds	r3, #4
 80019d8:	b2d8      	uxtb	r0, r3
 80019da:	1dbb      	adds	r3, r7, #6
 80019dc:	781b      	ldrb	r3, [r3, #0]
 80019de:	22ff      	movs	r2, #255	; 0xff
 80019e0:	0019      	movs	r1, r3
 80019e2:	f002 fe4f 	bl	8004684 <oled_set_pix>
 80019e6:	1dfb      	adds	r3, r7, #7
 80019e8:	781b      	ldrb	r3, [r3, #0]
 80019ea:	3304      	adds	r3, #4
 80019ec:	b2d8      	uxtb	r0, r3
 80019ee:	1dbb      	adds	r3, r7, #6
 80019f0:	781b      	ldrb	r3, [r3, #0]
 80019f2:	3304      	adds	r3, #4
 80019f4:	b2db      	uxtb	r3, r3
 80019f6:	22ff      	movs	r2, #255	; 0xff
 80019f8:	0019      	movs	r1, r3
 80019fa:	f002 fe43 	bl	8004684 <oled_set_pix>
 80019fe:	1dfb      	adds	r3, r7, #7
 8001a00:	781b      	ldrb	r3, [r3, #0]
 8001a02:	3304      	adds	r3, #4
 8001a04:	b2d8      	uxtb	r0, r3
 8001a06:	1dbb      	adds	r3, r7, #6
 8001a08:	781b      	ldrb	r3, [r3, #0]
 8001a0a:	3b02      	subs	r3, #2
 8001a0c:	b2db      	uxtb	r3, r3
 8001a0e:	22ff      	movs	r2, #255	; 0xff
 8001a10:	0019      	movs	r1, r3
 8001a12:	f002 fe37 	bl	8004684 <oled_set_pix>
 8001a16:	1dfb      	adds	r3, r7, #7
 8001a18:	781b      	ldrb	r3, [r3, #0]
 8001a1a:	3304      	adds	r3, #4
 8001a1c:	b2d8      	uxtb	r0, r3
 8001a1e:	1dbb      	adds	r3, r7, #6
 8001a20:	781b      	ldrb	r3, [r3, #0]
 8001a22:	3b03      	subs	r3, #3
 8001a24:	b2db      	uxtb	r3, r3
 8001a26:	22ff      	movs	r2, #255	; 0xff
 8001a28:	0019      	movs	r1, r3
 8001a2a:	f002 fe2b 	bl	8004684 <oled_set_pix>
 8001a2e:	1dfb      	adds	r3, r7, #7
 8001a30:	781b      	ldrb	r3, [r3, #0]
 8001a32:	3b04      	subs	r3, #4
 8001a34:	b2d8      	uxtb	r0, r3
 8001a36:	1dbb      	adds	r3, r7, #6
 8001a38:	781b      	ldrb	r3, [r3, #0]
 8001a3a:	22ff      	movs	r2, #255	; 0xff
 8001a3c:	0019      	movs	r1, r3
 8001a3e:	f002 fe21 	bl	8004684 <oled_set_pix>
 8001a42:	1dfb      	adds	r3, r7, #7
 8001a44:	781b      	ldrb	r3, [r3, #0]
 8001a46:	3b04      	subs	r3, #4
 8001a48:	b2d8      	uxtb	r0, r3
 8001a4a:	1dbb      	adds	r3, r7, #6
 8001a4c:	781b      	ldrb	r3, [r3, #0]
 8001a4e:	3304      	adds	r3, #4
 8001a50:	b2db      	uxtb	r3, r3
 8001a52:	22ff      	movs	r2, #255	; 0xff
 8001a54:	0019      	movs	r1, r3
 8001a56:	f002 fe15 	bl	8004684 <oled_set_pix>
 8001a5a:	1dfb      	adds	r3, r7, #7
 8001a5c:	781b      	ldrb	r3, [r3, #0]
 8001a5e:	3b04      	subs	r3, #4
 8001a60:	b2d8      	uxtb	r0, r3
 8001a62:	1dbb      	adds	r3, r7, #6
 8001a64:	781b      	ldrb	r3, [r3, #0]
 8001a66:	3b02      	subs	r3, #2
 8001a68:	b2db      	uxtb	r3, r3
 8001a6a:	22ff      	movs	r2, #255	; 0xff
 8001a6c:	0019      	movs	r1, r3
 8001a6e:	f002 fe09 	bl	8004684 <oled_set_pix>
 8001a72:	1dfb      	adds	r3, r7, #7
 8001a74:	781b      	ldrb	r3, [r3, #0]
 8001a76:	3b04      	subs	r3, #4
 8001a78:	b2d8      	uxtb	r0, r3
 8001a7a:	1dbb      	adds	r3, r7, #6
 8001a7c:	781b      	ldrb	r3, [r3, #0]
 8001a7e:	3b03      	subs	r3, #3
 8001a80:	b2db      	uxtb	r3, r3
 8001a82:	22ff      	movs	r2, #255	; 0xff
 8001a84:	0019      	movs	r1, r3
 8001a86:	f002 fdfd 	bl	8004684 <oled_set_pix>
 8001a8a:	1dfb      	adds	r3, r7, #7
 8001a8c:	781b      	ldrb	r3, [r3, #0]
 8001a8e:	3305      	adds	r3, #5
 8001a90:	b2d8      	uxtb	r0, r3
 8001a92:	1dbb      	adds	r3, r7, #6
 8001a94:	781b      	ldrb	r3, [r3, #0]
 8001a96:	3301      	adds	r3, #1
 8001a98:	b2db      	uxtb	r3, r3
 8001a9a:	22ff      	movs	r2, #255	; 0xff
 8001a9c:	0019      	movs	r1, r3
 8001a9e:	f002 fdf1 	bl	8004684 <oled_set_pix>
 8001aa2:	1dfb      	adds	r3, r7, #7
 8001aa4:	781b      	ldrb	r3, [r3, #0]
 8001aa6:	3305      	adds	r3, #5
 8001aa8:	b2d8      	uxtb	r0, r3
 8001aaa:	1dbb      	adds	r3, r7, #6
 8001aac:	781b      	ldrb	r3, [r3, #0]
 8001aae:	3302      	adds	r3, #2
 8001ab0:	b2db      	uxtb	r3, r3
 8001ab2:	22ff      	movs	r2, #255	; 0xff
 8001ab4:	0019      	movs	r1, r3
 8001ab6:	f002 fde5 	bl	8004684 <oled_set_pix>
 8001aba:	1dfb      	adds	r3, r7, #7
 8001abc:	781b      	ldrb	r3, [r3, #0]
 8001abe:	3305      	adds	r3, #5
 8001ac0:	b2d8      	uxtb	r0, r3
 8001ac2:	1dbb      	adds	r3, r7, #6
 8001ac4:	781b      	ldrb	r3, [r3, #0]
 8001ac6:	3b04      	subs	r3, #4
 8001ac8:	b2db      	uxtb	r3, r3
 8001aca:	22ff      	movs	r2, #255	; 0xff
 8001acc:	0019      	movs	r1, r3
 8001ace:	f002 fdd9 	bl	8004684 <oled_set_pix>
 8001ad2:	1dfb      	adds	r3, r7, #7
 8001ad4:	781b      	ldrb	r3, [r3, #0]
 8001ad6:	3b05      	subs	r3, #5
 8001ad8:	b2d8      	uxtb	r0, r3
 8001ada:	1dbb      	adds	r3, r7, #6
 8001adc:	781b      	ldrb	r3, [r3, #0]
 8001ade:	3301      	adds	r3, #1
 8001ae0:	b2db      	uxtb	r3, r3
 8001ae2:	22ff      	movs	r2, #255	; 0xff
 8001ae4:	0019      	movs	r1, r3
 8001ae6:	f002 fdcd 	bl	8004684 <oled_set_pix>
 8001aea:	1dfb      	adds	r3, r7, #7
 8001aec:	781b      	ldrb	r3, [r3, #0]
 8001aee:	3b05      	subs	r3, #5
 8001af0:	b2d8      	uxtb	r0, r3
 8001af2:	1dbb      	adds	r3, r7, #6
 8001af4:	781b      	ldrb	r3, [r3, #0]
 8001af6:	3302      	adds	r3, #2
 8001af8:	b2db      	uxtb	r3, r3
 8001afa:	22ff      	movs	r2, #255	; 0xff
 8001afc:	0019      	movs	r1, r3
 8001afe:	f002 fdc1 	bl	8004684 <oled_set_pix>
 8001b02:	1dfb      	adds	r3, r7, #7
 8001b04:	781b      	ldrb	r3, [r3, #0]
 8001b06:	3b05      	subs	r3, #5
 8001b08:	b2d8      	uxtb	r0, r3
 8001b0a:	1dbb      	adds	r3, r7, #6
 8001b0c:	781b      	ldrb	r3, [r3, #0]
 8001b0e:	3b04      	subs	r3, #4
 8001b10:	b2db      	uxtb	r3, r3
 8001b12:	22ff      	movs	r2, #255	; 0xff
 8001b14:	0019      	movs	r1, r3
 8001b16:	f002 fdb5 	bl	8004684 <oled_set_pix>
 8001b1a:	1dfb      	adds	r3, r7, #7
 8001b1c:	781b      	ldrb	r3, [r3, #0]
 8001b1e:	3306      	adds	r3, #6
 8001b20:	b2d8      	uxtb	r0, r3
 8001b22:	1dbb      	adds	r3, r7, #6
 8001b24:	781b      	ldrb	r3, [r3, #0]
 8001b26:	3303      	adds	r3, #3
 8001b28:	b2db      	uxtb	r3, r3
 8001b2a:	22ff      	movs	r2, #255	; 0xff
 8001b2c:	0019      	movs	r1, r3
 8001b2e:	f002 fda9 	bl	8004684 <oled_set_pix>
 8001b32:	1dfb      	adds	r3, r7, #7
 8001b34:	781b      	ldrb	r3, [r3, #0]
 8001b36:	3b06      	subs	r3, #6
 8001b38:	b2d8      	uxtb	r0, r3
 8001b3a:	1dbb      	adds	r3, r7, #6
 8001b3c:	781b      	ldrb	r3, [r3, #0]
 8001b3e:	3b03      	subs	r3, #3
 8001b40:	b2db      	uxtb	r3, r3
 8001b42:	22ff      	movs	r2, #255	; 0xff
 8001b44:	0019      	movs	r1, r3
 8001b46:	f002 fd9d 	bl	8004684 <oled_set_pix>
 8001b4a:	46c0      	nop			; (mov r8, r8)
 8001b4c:	46bd      	mov	sp, r7
 8001b4e:	b002      	add	sp, #8
 8001b50:	bd80      	pop	{r7, pc}

08001b52 <draw_defeat>:
 8001b52:	b580      	push	{r7, lr}
 8001b54:	b082      	sub	sp, #8
 8001b56:	af00      	add	r7, sp, #0
 8001b58:	0002      	movs	r2, r0
 8001b5a:	1dfb      	adds	r3, r7, #7
 8001b5c:	701a      	strb	r2, [r3, #0]
 8001b5e:	1dbb      	adds	r3, r7, #6
 8001b60:	1c0a      	adds	r2, r1, #0
 8001b62:	701a      	strb	r2, [r3, #0]
 8001b64:	1dfb      	adds	r3, r7, #7
 8001b66:	781b      	ldrb	r3, [r3, #0]
 8001b68:	3306      	adds	r3, #6
 8001b6a:	b2d8      	uxtb	r0, r3
 8001b6c:	1dbb      	adds	r3, r7, #6
 8001b6e:	781b      	ldrb	r3, [r3, #0]
 8001b70:	3b03      	subs	r3, #3
 8001b72:	b2db      	uxtb	r3, r3
 8001b74:	22ff      	movs	r2, #255	; 0xff
 8001b76:	0019      	movs	r1, r3
 8001b78:	f002 fd84 	bl	8004684 <oled_set_pix>
 8001b7c:	1dfb      	adds	r3, r7, #7
 8001b7e:	781b      	ldrb	r3, [r3, #0]
 8001b80:	3306      	adds	r3, #6
 8001b82:	b2d8      	uxtb	r0, r3
 8001b84:	1dbb      	adds	r3, r7, #6
 8001b86:	781b      	ldrb	r3, [r3, #0]
 8001b88:	3b04      	subs	r3, #4
 8001b8a:	b2db      	uxtb	r3, r3
 8001b8c:	22ff      	movs	r2, #255	; 0xff
 8001b8e:	0019      	movs	r1, r3
 8001b90:	f002 fd78 	bl	8004684 <oled_set_pix>
 8001b94:	1dfb      	adds	r3, r7, #7
 8001b96:	781b      	ldrb	r3, [r3, #0]
 8001b98:	3306      	adds	r3, #6
 8001b9a:	b2d8      	uxtb	r0, r3
 8001b9c:	1dbb      	adds	r3, r7, #6
 8001b9e:	781b      	ldrb	r3, [r3, #0]
 8001ba0:	3b05      	subs	r3, #5
 8001ba2:	b2db      	uxtb	r3, r3
 8001ba4:	22ff      	movs	r2, #255	; 0xff
 8001ba6:	0019      	movs	r1, r3
 8001ba8:	f002 fd6c 	bl	8004684 <oled_set_pix>
 8001bac:	1dfb      	adds	r3, r7, #7
 8001bae:	781b      	ldrb	r3, [r3, #0]
 8001bb0:	3306      	adds	r3, #6
 8001bb2:	b2d8      	uxtb	r0, r3
 8001bb4:	1dbb      	adds	r3, r7, #6
 8001bb6:	781b      	ldrb	r3, [r3, #0]
 8001bb8:	3b06      	subs	r3, #6
 8001bba:	b2db      	uxtb	r3, r3
 8001bbc:	22ff      	movs	r2, #255	; 0xff
 8001bbe:	0019      	movs	r1, r3
 8001bc0:	f002 fd60 	bl	8004684 <oled_set_pix>
 8001bc4:	1dfb      	adds	r3, r7, #7
 8001bc6:	781b      	ldrb	r3, [r3, #0]
 8001bc8:	3306      	adds	r3, #6
 8001bca:	b2d8      	uxtb	r0, r3
 8001bcc:	1dbb      	adds	r3, r7, #6
 8001bce:	781b      	ldrb	r3, [r3, #0]
 8001bd0:	3b07      	subs	r3, #7
 8001bd2:	b2db      	uxtb	r3, r3
 8001bd4:	22ff      	movs	r2, #255	; 0xff
 8001bd6:	0019      	movs	r1, r3
 8001bd8:	f002 fd54 	bl	8004684 <oled_set_pix>
 8001bdc:	1dfb      	adds	r3, r7, #7
 8001bde:	781b      	ldrb	r3, [r3, #0]
 8001be0:	3306      	adds	r3, #6
 8001be2:	b2d8      	uxtb	r0, r3
 8001be4:	1dbb      	adds	r3, r7, #6
 8001be6:	781b      	ldrb	r3, [r3, #0]
 8001be8:	3b08      	subs	r3, #8
 8001bea:	b2db      	uxtb	r3, r3
 8001bec:	22ff      	movs	r2, #255	; 0xff
 8001bee:	0019      	movs	r1, r3
 8001bf0:	f002 fd48 	bl	8004684 <oled_set_pix>
 8001bf4:	1dfb      	adds	r3, r7, #7
 8001bf6:	781b      	ldrb	r3, [r3, #0]
 8001bf8:	3307      	adds	r3, #7
 8001bfa:	b2d8      	uxtb	r0, r3
 8001bfc:	1dbb      	adds	r3, r7, #6
 8001bfe:	781b      	ldrb	r3, [r3, #0]
 8001c00:	3b07      	subs	r3, #7
 8001c02:	b2db      	uxtb	r3, r3
 8001c04:	22ff      	movs	r2, #255	; 0xff
 8001c06:	0019      	movs	r1, r3
 8001c08:	f002 fd3c 	bl	8004684 <oled_set_pix>
 8001c0c:	1dfb      	adds	r3, r7, #7
 8001c0e:	781b      	ldrb	r3, [r3, #0]
 8001c10:	3307      	adds	r3, #7
 8001c12:	b2d8      	uxtb	r0, r3
 8001c14:	1dbb      	adds	r3, r7, #6
 8001c16:	781b      	ldrb	r3, [r3, #0]
 8001c18:	3b08      	subs	r3, #8
 8001c1a:	b2db      	uxtb	r3, r3
 8001c1c:	22ff      	movs	r2, #255	; 0xff
 8001c1e:	0019      	movs	r1, r3
 8001c20:	f002 fd30 	bl	8004684 <oled_set_pix>
 8001c24:	1dfb      	adds	r3, r7, #7
 8001c26:	781b      	ldrb	r3, [r3, #0]
 8001c28:	3307      	adds	r3, #7
 8001c2a:	b2d8      	uxtb	r0, r3
 8001c2c:	1dbb      	adds	r3, r7, #6
 8001c2e:	781b      	ldrb	r3, [r3, #0]
 8001c30:	3b09      	subs	r3, #9
 8001c32:	b2db      	uxtb	r3, r3
 8001c34:	22ff      	movs	r2, #255	; 0xff
 8001c36:	0019      	movs	r1, r3
 8001c38:	f002 fd24 	bl	8004684 <oled_set_pix>
 8001c3c:	1dfb      	adds	r3, r7, #7
 8001c3e:	781b      	ldrb	r3, [r3, #0]
 8001c40:	3307      	adds	r3, #7
 8001c42:	b2d8      	uxtb	r0, r3
 8001c44:	1dbb      	adds	r3, r7, #6
 8001c46:	781b      	ldrb	r3, [r3, #0]
 8001c48:	3b0a      	subs	r3, #10
 8001c4a:	b2db      	uxtb	r3, r3
 8001c4c:	22ff      	movs	r2, #255	; 0xff
 8001c4e:	0019      	movs	r1, r3
 8001c50:	f002 fd18 	bl	8004684 <oled_set_pix>
 8001c54:	1dfb      	adds	r3, r7, #7
 8001c56:	781b      	ldrb	r3, [r3, #0]
 8001c58:	3307      	adds	r3, #7
 8001c5a:	b2d8      	uxtb	r0, r3
 8001c5c:	1dbb      	adds	r3, r7, #6
 8001c5e:	781b      	ldrb	r3, [r3, #0]
 8001c60:	3b0b      	subs	r3, #11
 8001c62:	b2db      	uxtb	r3, r3
 8001c64:	22ff      	movs	r2, #255	; 0xff
 8001c66:	0019      	movs	r1, r3
 8001c68:	f002 fd0c 	bl	8004684 <oled_set_pix>
 8001c6c:	1dfb      	adds	r3, r7, #7
 8001c6e:	781b      	ldrb	r3, [r3, #0]
 8001c70:	3308      	adds	r3, #8
 8001c72:	b2d8      	uxtb	r0, r3
 8001c74:	1dbb      	adds	r3, r7, #6
 8001c76:	781b      	ldrb	r3, [r3, #0]
 8001c78:	3b0b      	subs	r3, #11
 8001c7a:	b2db      	uxtb	r3, r3
 8001c7c:	22ff      	movs	r2, #255	; 0xff
 8001c7e:	0019      	movs	r1, r3
 8001c80:	f002 fd00 	bl	8004684 <oled_set_pix>
 8001c84:	1dfb      	adds	r3, r7, #7
 8001c86:	781b      	ldrb	r3, [r3, #0]
 8001c88:	3308      	adds	r3, #8
 8001c8a:	b2d8      	uxtb	r0, r3
 8001c8c:	1dbb      	adds	r3, r7, #6
 8001c8e:	781b      	ldrb	r3, [r3, #0]
 8001c90:	3b0c      	subs	r3, #12
 8001c92:	b2db      	uxtb	r3, r3
 8001c94:	22ff      	movs	r2, #255	; 0xff
 8001c96:	0019      	movs	r1, r3
 8001c98:	f002 fcf4 	bl	8004684 <oled_set_pix>
 8001c9c:	1dfb      	adds	r3, r7, #7
 8001c9e:	781b      	ldrb	r3, [r3, #0]
 8001ca0:	3309      	adds	r3, #9
 8001ca2:	b2d8      	uxtb	r0, r3
 8001ca4:	1dbb      	adds	r3, r7, #6
 8001ca6:	781b      	ldrb	r3, [r3, #0]
 8001ca8:	3b0b      	subs	r3, #11
 8001caa:	b2db      	uxtb	r3, r3
 8001cac:	22ff      	movs	r2, #255	; 0xff
 8001cae:	0019      	movs	r1, r3
 8001cb0:	f002 fce8 	bl	8004684 <oled_set_pix>
 8001cb4:	1dfb      	adds	r3, r7, #7
 8001cb6:	781b      	ldrb	r3, [r3, #0]
 8001cb8:	3309      	adds	r3, #9
 8001cba:	b2d8      	uxtb	r0, r3
 8001cbc:	1dbb      	adds	r3, r7, #6
 8001cbe:	781b      	ldrb	r3, [r3, #0]
 8001cc0:	3b0c      	subs	r3, #12
 8001cc2:	b2db      	uxtb	r3, r3
 8001cc4:	22ff      	movs	r2, #255	; 0xff
 8001cc6:	0019      	movs	r1, r3
 8001cc8:	f002 fcdc 	bl	8004684 <oled_set_pix>
 8001ccc:	1dfb      	adds	r3, r7, #7
 8001cce:	781b      	ldrb	r3, [r3, #0]
 8001cd0:	330a      	adds	r3, #10
 8001cd2:	b2d8      	uxtb	r0, r3
 8001cd4:	1dbb      	adds	r3, r7, #6
 8001cd6:	781b      	ldrb	r3, [r3, #0]
 8001cd8:	3b0a      	subs	r3, #10
 8001cda:	b2db      	uxtb	r3, r3
 8001cdc:	22ff      	movs	r2, #255	; 0xff
 8001cde:	0019      	movs	r1, r3
 8001ce0:	f002 fcd0 	bl	8004684 <oled_set_pix>
 8001ce4:	1dfb      	adds	r3, r7, #7
 8001ce6:	781b      	ldrb	r3, [r3, #0]
 8001ce8:	330a      	adds	r3, #10
 8001cea:	b2d8      	uxtb	r0, r3
 8001cec:	1dbb      	adds	r3, r7, #6
 8001cee:	781b      	ldrb	r3, [r3, #0]
 8001cf0:	3b0b      	subs	r3, #11
 8001cf2:	b2db      	uxtb	r3, r3
 8001cf4:	22ff      	movs	r2, #255	; 0xff
 8001cf6:	0019      	movs	r1, r3
 8001cf8:	f002 fcc4 	bl	8004684 <oled_set_pix>
 8001cfc:	1dfb      	adds	r3, r7, #7
 8001cfe:	781b      	ldrb	r3, [r3, #0]
 8001d00:	330b      	adds	r3, #11
 8001d02:	b2d8      	uxtb	r0, r3
 8001d04:	1dbb      	adds	r3, r7, #6
 8001d06:	781b      	ldrb	r3, [r3, #0]
 8001d08:	3b0a      	subs	r3, #10
 8001d0a:	b2db      	uxtb	r3, r3
 8001d0c:	22ff      	movs	r2, #255	; 0xff
 8001d0e:	0019      	movs	r1, r3
 8001d10:	f002 fcb8 	bl	8004684 <oled_set_pix>
 8001d14:	1dfb      	adds	r3, r7, #7
 8001d16:	781b      	ldrb	r3, [r3, #0]
 8001d18:	330b      	adds	r3, #11
 8001d1a:	b2d8      	uxtb	r0, r3
 8001d1c:	1dbb      	adds	r3, r7, #6
 8001d1e:	781b      	ldrb	r3, [r3, #0]
 8001d20:	3b0b      	subs	r3, #11
 8001d22:	b2db      	uxtb	r3, r3
 8001d24:	22ff      	movs	r2, #255	; 0xff
 8001d26:	0019      	movs	r1, r3
 8001d28:	f002 fcac 	bl	8004684 <oled_set_pix>
 8001d2c:	1dfb      	adds	r3, r7, #7
 8001d2e:	781b      	ldrb	r3, [r3, #0]
 8001d30:	330c      	adds	r3, #12
 8001d32:	b2d8      	uxtb	r0, r3
 8001d34:	1dbb      	adds	r3, r7, #6
 8001d36:	781b      	ldrb	r3, [r3, #0]
 8001d38:	3b03      	subs	r3, #3
 8001d3a:	b2db      	uxtb	r3, r3
 8001d3c:	22ff      	movs	r2, #255	; 0xff
 8001d3e:	0019      	movs	r1, r3
 8001d40:	f002 fca0 	bl	8004684 <oled_set_pix>
 8001d44:	1dfb      	adds	r3, r7, #7
 8001d46:	781b      	ldrb	r3, [r3, #0]
 8001d48:	330c      	adds	r3, #12
 8001d4a:	b2d8      	uxtb	r0, r3
 8001d4c:	1dbb      	adds	r3, r7, #6
 8001d4e:	781b      	ldrb	r3, [r3, #0]
 8001d50:	3b04      	subs	r3, #4
 8001d52:	b2db      	uxtb	r3, r3
 8001d54:	22ff      	movs	r2, #255	; 0xff
 8001d56:	0019      	movs	r1, r3
 8001d58:	f002 fc94 	bl	8004684 <oled_set_pix>
 8001d5c:	1dfb      	adds	r3, r7, #7
 8001d5e:	781b      	ldrb	r3, [r3, #0]
 8001d60:	330c      	adds	r3, #12
 8001d62:	b2d8      	uxtb	r0, r3
 8001d64:	1dbb      	adds	r3, r7, #6
 8001d66:	781b      	ldrb	r3, [r3, #0]
 8001d68:	3b05      	subs	r3, #5
 8001d6a:	b2db      	uxtb	r3, r3
 8001d6c:	22ff      	movs	r2, #255	; 0xff
 8001d6e:	0019      	movs	r1, r3
 8001d70:	f002 fc88 	bl	8004684 <oled_set_pix>
 8001d74:	1dfb      	adds	r3, r7, #7
 8001d76:	781b      	ldrb	r3, [r3, #0]
 8001d78:	330c      	adds	r3, #12
 8001d7a:	b2d8      	uxtb	r0, r3
 8001d7c:	1dbb      	adds	r3, r7, #6
 8001d7e:	781b      	ldrb	r3, [r3, #0]
 8001d80:	3b09      	subs	r3, #9
 8001d82:	b2db      	uxtb	r3, r3
 8001d84:	22ff      	movs	r2, #255	; 0xff
 8001d86:	0019      	movs	r1, r3
 8001d88:	f002 fc7c 	bl	8004684 <oled_set_pix>
 8001d8c:	1dfb      	adds	r3, r7, #7
 8001d8e:	781b      	ldrb	r3, [r3, #0]
 8001d90:	330c      	adds	r3, #12
 8001d92:	b2d8      	uxtb	r0, r3
 8001d94:	1dbb      	adds	r3, r7, #6
 8001d96:	781b      	ldrb	r3, [r3, #0]
 8001d98:	3b0a      	subs	r3, #10
 8001d9a:	b2db      	uxtb	r3, r3
 8001d9c:	22ff      	movs	r2, #255	; 0xff
 8001d9e:	0019      	movs	r1, r3
 8001da0:	f002 fc70 	bl	8004684 <oled_set_pix>
 8001da4:	1dfb      	adds	r3, r7, #7
 8001da6:	781b      	ldrb	r3, [r3, #0]
 8001da8:	330d      	adds	r3, #13
 8001daa:	b2d8      	uxtb	r0, r3
 8001dac:	1dbb      	adds	r3, r7, #6
 8001dae:	781b      	ldrb	r3, [r3, #0]
 8001db0:	3b05      	subs	r3, #5
 8001db2:	b2db      	uxtb	r3, r3
 8001db4:	22ff      	movs	r2, #255	; 0xff
 8001db6:	0019      	movs	r1, r3
 8001db8:	f002 fc64 	bl	8004684 <oled_set_pix>
 8001dbc:	1dfb      	adds	r3, r7, #7
 8001dbe:	781b      	ldrb	r3, [r3, #0]
 8001dc0:	330d      	adds	r3, #13
 8001dc2:	b2d8      	uxtb	r0, r3
 8001dc4:	1dbb      	adds	r3, r7, #6
 8001dc6:	781b      	ldrb	r3, [r3, #0]
 8001dc8:	3b06      	subs	r3, #6
 8001dca:	b2db      	uxtb	r3, r3
 8001dcc:	22ff      	movs	r2, #255	; 0xff
 8001dce:	0019      	movs	r1, r3
 8001dd0:	f002 fc58 	bl	8004684 <oled_set_pix>
 8001dd4:	1dfb      	adds	r3, r7, #7
 8001dd6:	781b      	ldrb	r3, [r3, #0]
 8001dd8:	330d      	adds	r3, #13
 8001dda:	b2d8      	uxtb	r0, r3
 8001ddc:	1dbb      	adds	r3, r7, #6
 8001dde:	781b      	ldrb	r3, [r3, #0]
 8001de0:	3b09      	subs	r3, #9
 8001de2:	b2db      	uxtb	r3, r3
 8001de4:	22ff      	movs	r2, #255	; 0xff
 8001de6:	0019      	movs	r1, r3
 8001de8:	f002 fc4c 	bl	8004684 <oled_set_pix>
 8001dec:	1dfb      	adds	r3, r7, #7
 8001dee:	781b      	ldrb	r3, [r3, #0]
 8001df0:	330d      	adds	r3, #13
 8001df2:	b2d8      	uxtb	r0, r3
 8001df4:	1dbb      	adds	r3, r7, #6
 8001df6:	781b      	ldrb	r3, [r3, #0]
 8001df8:	3b11      	subs	r3, #17
 8001dfa:	b2db      	uxtb	r3, r3
 8001dfc:	22ff      	movs	r2, #255	; 0xff
 8001dfe:	0019      	movs	r1, r3
 8001e00:	f002 fc40 	bl	8004684 <oled_set_pix>
 8001e04:	1dfb      	adds	r3, r7, #7
 8001e06:	781b      	ldrb	r3, [r3, #0]
 8001e08:	330d      	adds	r3, #13
 8001e0a:	b2d8      	uxtb	r0, r3
 8001e0c:	1dbb      	adds	r3, r7, #6
 8001e0e:	781b      	ldrb	r3, [r3, #0]
 8001e10:	3b12      	subs	r3, #18
 8001e12:	b2db      	uxtb	r3, r3
 8001e14:	22ff      	movs	r2, #255	; 0xff
 8001e16:	0019      	movs	r1, r3
 8001e18:	f002 fc34 	bl	8004684 <oled_set_pix>
 8001e1c:	1dfb      	adds	r3, r7, #7
 8001e1e:	781b      	ldrb	r3, [r3, #0]
 8001e20:	330d      	adds	r3, #13
 8001e22:	b2d8      	uxtb	r0, r3
 8001e24:	1dbb      	adds	r3, r7, #6
 8001e26:	781b      	ldrb	r3, [r3, #0]
 8001e28:	3b13      	subs	r3, #19
 8001e2a:	b2db      	uxtb	r3, r3
 8001e2c:	22ff      	movs	r2, #255	; 0xff
 8001e2e:	0019      	movs	r1, r3
 8001e30:	f002 fc28 	bl	8004684 <oled_set_pix>
 8001e34:	1dfb      	adds	r3, r7, #7
 8001e36:	781b      	ldrb	r3, [r3, #0]
 8001e38:	330d      	adds	r3, #13
 8001e3a:	b2d8      	uxtb	r0, r3
 8001e3c:	1dbb      	adds	r3, r7, #6
 8001e3e:	781b      	ldrb	r3, [r3, #0]
 8001e40:	3b09      	subs	r3, #9
 8001e42:	b2db      	uxtb	r3, r3
 8001e44:	22ff      	movs	r2, #255	; 0xff
 8001e46:	0019      	movs	r1, r3
 8001e48:	f002 fc1c 	bl	8004684 <oled_set_pix>
 8001e4c:	1dfb      	adds	r3, r7, #7
 8001e4e:	781b      	ldrb	r3, [r3, #0]
 8001e50:	330e      	adds	r3, #14
 8001e52:	b2d8      	uxtb	r0, r3
 8001e54:	1dbb      	adds	r3, r7, #6
 8001e56:	781b      	ldrb	r3, [r3, #0]
 8001e58:	3b06      	subs	r3, #6
 8001e5a:	b2db      	uxtb	r3, r3
 8001e5c:	22ff      	movs	r2, #255	; 0xff
 8001e5e:	0019      	movs	r1, r3
 8001e60:	f002 fc10 	bl	8004684 <oled_set_pix>
 8001e64:	1dfb      	adds	r3, r7, #7
 8001e66:	781b      	ldrb	r3, [r3, #0]
 8001e68:	330e      	adds	r3, #14
 8001e6a:	b2d8      	uxtb	r0, r3
 8001e6c:	1dbb      	adds	r3, r7, #6
 8001e6e:	781b      	ldrb	r3, [r3, #0]
 8001e70:	3b08      	subs	r3, #8
 8001e72:	b2db      	uxtb	r3, r3
 8001e74:	22ff      	movs	r2, #255	; 0xff
 8001e76:	0019      	movs	r1, r3
 8001e78:	f002 fc04 	bl	8004684 <oled_set_pix>
 8001e7c:	1dfb      	adds	r3, r7, #7
 8001e7e:	781b      	ldrb	r3, [r3, #0]
 8001e80:	330e      	adds	r3, #14
 8001e82:	b2d8      	uxtb	r0, r3
 8001e84:	1dbb      	adds	r3, r7, #6
 8001e86:	781b      	ldrb	r3, [r3, #0]
 8001e88:	3b09      	subs	r3, #9
 8001e8a:	b2db      	uxtb	r3, r3
 8001e8c:	22ff      	movs	r2, #255	; 0xff
 8001e8e:	0019      	movs	r1, r3
 8001e90:	f002 fbf8 	bl	8004684 <oled_set_pix>
 8001e94:	1dfb      	adds	r3, r7, #7
 8001e96:	781b      	ldrb	r3, [r3, #0]
 8001e98:	330e      	adds	r3, #14
 8001e9a:	b2d8      	uxtb	r0, r3
 8001e9c:	1dbb      	adds	r3, r7, #6
 8001e9e:	781b      	ldrb	r3, [r3, #0]
 8001ea0:	3b0f      	subs	r3, #15
 8001ea2:	b2db      	uxtb	r3, r3
 8001ea4:	22ff      	movs	r2, #255	; 0xff
 8001ea6:	0019      	movs	r1, r3
 8001ea8:	f002 fbec 	bl	8004684 <oled_set_pix>
 8001eac:	1dfb      	adds	r3, r7, #7
 8001eae:	781b      	ldrb	r3, [r3, #0]
 8001eb0:	330e      	adds	r3, #14
 8001eb2:	b2d8      	uxtb	r0, r3
 8001eb4:	1dbb      	adds	r3, r7, #6
 8001eb6:	781b      	ldrb	r3, [r3, #0]
 8001eb8:	3b10      	subs	r3, #16
 8001eba:	b2db      	uxtb	r3, r3
 8001ebc:	22ff      	movs	r2, #255	; 0xff
 8001ebe:	0019      	movs	r1, r3
 8001ec0:	f002 fbe0 	bl	8004684 <oled_set_pix>
 8001ec4:	1dfb      	adds	r3, r7, #7
 8001ec6:	781b      	ldrb	r3, [r3, #0]
 8001ec8:	330e      	adds	r3, #14
 8001eca:	b2d8      	uxtb	r0, r3
 8001ecc:	1dbb      	adds	r3, r7, #6
 8001ece:	781b      	ldrb	r3, [r3, #0]
 8001ed0:	3b11      	subs	r3, #17
 8001ed2:	b2db      	uxtb	r3, r3
 8001ed4:	22ff      	movs	r2, #255	; 0xff
 8001ed6:	0019      	movs	r1, r3
 8001ed8:	f002 fbd4 	bl	8004684 <oled_set_pix>
 8001edc:	1dfb      	adds	r3, r7, #7
 8001ede:	781b      	ldrb	r3, [r3, #0]
 8001ee0:	330e      	adds	r3, #14
 8001ee2:	b2d8      	uxtb	r0, r3
 8001ee4:	1dbb      	adds	r3, r7, #6
 8001ee6:	781b      	ldrb	r3, [r3, #0]
 8001ee8:	3b12      	subs	r3, #18
 8001eea:	b2db      	uxtb	r3, r3
 8001eec:	22ff      	movs	r2, #255	; 0xff
 8001eee:	0019      	movs	r1, r3
 8001ef0:	f002 fbc8 	bl	8004684 <oled_set_pix>
 8001ef4:	1dfb      	adds	r3, r7, #7
 8001ef6:	781b      	ldrb	r3, [r3, #0]
 8001ef8:	330e      	adds	r3, #14
 8001efa:	b2d8      	uxtb	r0, r3
 8001efc:	1dbb      	adds	r3, r7, #6
 8001efe:	781b      	ldrb	r3, [r3, #0]
 8001f00:	3b13      	subs	r3, #19
 8001f02:	b2db      	uxtb	r3, r3
 8001f04:	22ff      	movs	r2, #255	; 0xff
 8001f06:	0019      	movs	r1, r3
 8001f08:	f002 fbbc 	bl	8004684 <oled_set_pix>
 8001f0c:	1dfb      	adds	r3, r7, #7
 8001f0e:	781b      	ldrb	r3, [r3, #0]
 8001f10:	330e      	adds	r3, #14
 8001f12:	b2d8      	uxtb	r0, r3
 8001f14:	1dbb      	adds	r3, r7, #6
 8001f16:	781b      	ldrb	r3, [r3, #0]
 8001f18:	3b14      	subs	r3, #20
 8001f1a:	b2db      	uxtb	r3, r3
 8001f1c:	22ff      	movs	r2, #255	; 0xff
 8001f1e:	0019      	movs	r1, r3
 8001f20:	f002 fbb0 	bl	8004684 <oled_set_pix>
 8001f24:	1dfb      	adds	r3, r7, #7
 8001f26:	781b      	ldrb	r3, [r3, #0]
 8001f28:	330f      	adds	r3, #15
 8001f2a:	b2d8      	uxtb	r0, r3
 8001f2c:	1dbb      	adds	r3, r7, #6
 8001f2e:	781b      	ldrb	r3, [r3, #0]
 8001f30:	3b06      	subs	r3, #6
 8001f32:	b2db      	uxtb	r3, r3
 8001f34:	22ff      	movs	r2, #255	; 0xff
 8001f36:	0019      	movs	r1, r3
 8001f38:	f002 fba4 	bl	8004684 <oled_set_pix>
 8001f3c:	1dfb      	adds	r3, r7, #7
 8001f3e:	781b      	ldrb	r3, [r3, #0]
 8001f40:	330f      	adds	r3, #15
 8001f42:	b2d8      	uxtb	r0, r3
 8001f44:	1dbb      	adds	r3, r7, #6
 8001f46:	781b      	ldrb	r3, [r3, #0]
 8001f48:	3b07      	subs	r3, #7
 8001f4a:	b2db      	uxtb	r3, r3
 8001f4c:	22ff      	movs	r2, #255	; 0xff
 8001f4e:	0019      	movs	r1, r3
 8001f50:	f002 fb98 	bl	8004684 <oled_set_pix>
 8001f54:	1dfb      	adds	r3, r7, #7
 8001f56:	781b      	ldrb	r3, [r3, #0]
 8001f58:	330f      	adds	r3, #15
 8001f5a:	b2d8      	uxtb	r0, r3
 8001f5c:	1dbb      	adds	r3, r7, #6
 8001f5e:	781b      	ldrb	r3, [r3, #0]
 8001f60:	3b08      	subs	r3, #8
 8001f62:	b2db      	uxtb	r3, r3
 8001f64:	22ff      	movs	r2, #255	; 0xff
 8001f66:	0019      	movs	r1, r3
 8001f68:	f002 fb8c 	bl	8004684 <oled_set_pix>
 8001f6c:	1dfb      	adds	r3, r7, #7
 8001f6e:	781b      	ldrb	r3, [r3, #0]
 8001f70:	330f      	adds	r3, #15
 8001f72:	b2d8      	uxtb	r0, r3
 8001f74:	1dbb      	adds	r3, r7, #6
 8001f76:	781b      	ldrb	r3, [r3, #0]
 8001f78:	3b09      	subs	r3, #9
 8001f7a:	b2db      	uxtb	r3, r3
 8001f7c:	22ff      	movs	r2, #255	; 0xff
 8001f7e:	0019      	movs	r1, r3
 8001f80:	f002 fb80 	bl	8004684 <oled_set_pix>
 8001f84:	1dfb      	adds	r3, r7, #7
 8001f86:	781b      	ldrb	r3, [r3, #0]
 8001f88:	330f      	adds	r3, #15
 8001f8a:	b2d8      	uxtb	r0, r3
 8001f8c:	1dbb      	adds	r3, r7, #6
 8001f8e:	781b      	ldrb	r3, [r3, #0]
 8001f90:	3b0c      	subs	r3, #12
 8001f92:	b2db      	uxtb	r3, r3
 8001f94:	22ff      	movs	r2, #255	; 0xff
 8001f96:	0019      	movs	r1, r3
 8001f98:	f002 fb74 	bl	8004684 <oled_set_pix>
 8001f9c:	1dfb      	adds	r3, r7, #7
 8001f9e:	781b      	ldrb	r3, [r3, #0]
 8001fa0:	330f      	adds	r3, #15
 8001fa2:	b2d8      	uxtb	r0, r3
 8001fa4:	1dbb      	adds	r3, r7, #6
 8001fa6:	781b      	ldrb	r3, [r3, #0]
 8001fa8:	3b0e      	subs	r3, #14
 8001faa:	b2db      	uxtb	r3, r3
 8001fac:	22ff      	movs	r2, #255	; 0xff
 8001fae:	0019      	movs	r1, r3
 8001fb0:	f002 fb68 	bl	8004684 <oled_set_pix>
 8001fb4:	1dfb      	adds	r3, r7, #7
 8001fb6:	781b      	ldrb	r3, [r3, #0]
 8001fb8:	330f      	adds	r3, #15
 8001fba:	b2d8      	uxtb	r0, r3
 8001fbc:	1dbb      	adds	r3, r7, #6
 8001fbe:	781b      	ldrb	r3, [r3, #0]
 8001fc0:	3b0f      	subs	r3, #15
 8001fc2:	b2db      	uxtb	r3, r3
 8001fc4:	22ff      	movs	r2, #255	; 0xff
 8001fc6:	0019      	movs	r1, r3
 8001fc8:	f002 fb5c 	bl	8004684 <oled_set_pix>
 8001fcc:	1dfb      	adds	r3, r7, #7
 8001fce:	781b      	ldrb	r3, [r3, #0]
 8001fd0:	330f      	adds	r3, #15
 8001fd2:	b2d8      	uxtb	r0, r3
 8001fd4:	1dbb      	adds	r3, r7, #6
 8001fd6:	781b      	ldrb	r3, [r3, #0]
 8001fd8:	3b10      	subs	r3, #16
 8001fda:	b2db      	uxtb	r3, r3
 8001fdc:	22ff      	movs	r2, #255	; 0xff
 8001fde:	0019      	movs	r1, r3
 8001fe0:	f002 fb50 	bl	8004684 <oled_set_pix>
 8001fe4:	1dfb      	adds	r3, r7, #7
 8001fe6:	781b      	ldrb	r3, [r3, #0]
 8001fe8:	330f      	adds	r3, #15
 8001fea:	b2d8      	uxtb	r0, r3
 8001fec:	1dbb      	adds	r3, r7, #6
 8001fee:	781b      	ldrb	r3, [r3, #0]
 8001ff0:	3b11      	subs	r3, #17
 8001ff2:	b2db      	uxtb	r3, r3
 8001ff4:	22ff      	movs	r2, #255	; 0xff
 8001ff6:	0019      	movs	r1, r3
 8001ff8:	f002 fb44 	bl	8004684 <oled_set_pix>
 8001ffc:	1dfb      	adds	r3, r7, #7
 8001ffe:	781b      	ldrb	r3, [r3, #0]
 8002000:	330f      	adds	r3, #15
 8002002:	b2d8      	uxtb	r0, r3
 8002004:	1dbb      	adds	r3, r7, #6
 8002006:	781b      	ldrb	r3, [r3, #0]
 8002008:	3b12      	subs	r3, #18
 800200a:	b2db      	uxtb	r3, r3
 800200c:	22ff      	movs	r2, #255	; 0xff
 800200e:	0019      	movs	r1, r3
 8002010:	f002 fb38 	bl	8004684 <oled_set_pix>
 8002014:	1dfb      	adds	r3, r7, #7
 8002016:	781b      	ldrb	r3, [r3, #0]
 8002018:	330f      	adds	r3, #15
 800201a:	b2d8      	uxtb	r0, r3
 800201c:	1dbb      	adds	r3, r7, #6
 800201e:	781b      	ldrb	r3, [r3, #0]
 8002020:	3b13      	subs	r3, #19
 8002022:	b2db      	uxtb	r3, r3
 8002024:	22ff      	movs	r2, #255	; 0xff
 8002026:	0019      	movs	r1, r3
 8002028:	f002 fb2c 	bl	8004684 <oled_set_pix>
 800202c:	1dfb      	adds	r3, r7, #7
 800202e:	781b      	ldrb	r3, [r3, #0]
 8002030:	330f      	adds	r3, #15
 8002032:	b2d8      	uxtb	r0, r3
 8002034:	1dbb      	adds	r3, r7, #6
 8002036:	781b      	ldrb	r3, [r3, #0]
 8002038:	3b14      	subs	r3, #20
 800203a:	b2db      	uxtb	r3, r3
 800203c:	22ff      	movs	r2, #255	; 0xff
 800203e:	0019      	movs	r1, r3
 8002040:	f002 fb20 	bl	8004684 <oled_set_pix>
 8002044:	1dfb      	adds	r3, r7, #7
 8002046:	781b      	ldrb	r3, [r3, #0]
 8002048:	330f      	adds	r3, #15
 800204a:	b2d8      	uxtb	r0, r3
 800204c:	1dbb      	adds	r3, r7, #6
 800204e:	781b      	ldrb	r3, [r3, #0]
 8002050:	3b15      	subs	r3, #21
 8002052:	b2db      	uxtb	r3, r3
 8002054:	22ff      	movs	r2, #255	; 0xff
 8002056:	0019      	movs	r1, r3
 8002058:	f002 fb14 	bl	8004684 <oled_set_pix>
 800205c:	1dfb      	adds	r3, r7, #7
 800205e:	781b      	ldrb	r3, [r3, #0]
 8002060:	3310      	adds	r3, #16
 8002062:	b2d8      	uxtb	r0, r3
 8002064:	1dbb      	adds	r3, r7, #6
 8002066:	781b      	ldrb	r3, [r3, #0]
 8002068:	3b03      	subs	r3, #3
 800206a:	b2db      	uxtb	r3, r3
 800206c:	22ff      	movs	r2, #255	; 0xff
 800206e:	0019      	movs	r1, r3
 8002070:	f002 fb08 	bl	8004684 <oled_set_pix>
 8002074:	1dfb      	adds	r3, r7, #7
 8002076:	781b      	ldrb	r3, [r3, #0]
 8002078:	3310      	adds	r3, #16
 800207a:	b2d8      	uxtb	r0, r3
 800207c:	1dbb      	adds	r3, r7, #6
 800207e:	781b      	ldrb	r3, [r3, #0]
 8002080:	3b04      	subs	r3, #4
 8002082:	b2db      	uxtb	r3, r3
 8002084:	22ff      	movs	r2, #255	; 0xff
 8002086:	0019      	movs	r1, r3
 8002088:	f002 fafc 	bl	8004684 <oled_set_pix>
 800208c:	1dfb      	adds	r3, r7, #7
 800208e:	781b      	ldrb	r3, [r3, #0]
 8002090:	3310      	adds	r3, #16
 8002092:	b2d8      	uxtb	r0, r3
 8002094:	1dbb      	adds	r3, r7, #6
 8002096:	781b      	ldrb	r3, [r3, #0]
 8002098:	3b08      	subs	r3, #8
 800209a:	b2db      	uxtb	r3, r3
 800209c:	22ff      	movs	r2, #255	; 0xff
 800209e:	0019      	movs	r1, r3
 80020a0:	f002 faf0 	bl	8004684 <oled_set_pix>
 80020a4:	1dfb      	adds	r3, r7, #7
 80020a6:	781b      	ldrb	r3, [r3, #0]
 80020a8:	3310      	adds	r3, #16
 80020aa:	b2d8      	uxtb	r0, r3
 80020ac:	1dbb      	adds	r3, r7, #6
 80020ae:	781b      	ldrb	r3, [r3, #0]
 80020b0:	3b09      	subs	r3, #9
 80020b2:	b2db      	uxtb	r3, r3
 80020b4:	22ff      	movs	r2, #255	; 0xff
 80020b6:	0019      	movs	r1, r3
 80020b8:	f002 fae4 	bl	8004684 <oled_set_pix>
 80020bc:	1dfb      	adds	r3, r7, #7
 80020be:	781b      	ldrb	r3, [r3, #0]
 80020c0:	3310      	adds	r3, #16
 80020c2:	b2d8      	uxtb	r0, r3
 80020c4:	1dbb      	adds	r3, r7, #6
 80020c6:	781b      	ldrb	r3, [r3, #0]
 80020c8:	3b0c      	subs	r3, #12
 80020ca:	b2db      	uxtb	r3, r3
 80020cc:	22ff      	movs	r2, #255	; 0xff
 80020ce:	0019      	movs	r1, r3
 80020d0:	f002 fad8 	bl	8004684 <oled_set_pix>
 80020d4:	1dfb      	adds	r3, r7, #7
 80020d6:	781b      	ldrb	r3, [r3, #0]
 80020d8:	3310      	adds	r3, #16
 80020da:	b2d8      	uxtb	r0, r3
 80020dc:	1dbb      	adds	r3, r7, #6
 80020de:	781b      	ldrb	r3, [r3, #0]
 80020e0:	3b0e      	subs	r3, #14
 80020e2:	b2db      	uxtb	r3, r3
 80020e4:	22ff      	movs	r2, #255	; 0xff
 80020e6:	0019      	movs	r1, r3
 80020e8:	f002 facc 	bl	8004684 <oled_set_pix>
 80020ec:	1dfb      	adds	r3, r7, #7
 80020ee:	781b      	ldrb	r3, [r3, #0]
 80020f0:	3310      	adds	r3, #16
 80020f2:	b2d8      	uxtb	r0, r3
 80020f4:	1dbb      	adds	r3, r7, #6
 80020f6:	781b      	ldrb	r3, [r3, #0]
 80020f8:	3b0f      	subs	r3, #15
 80020fa:	b2db      	uxtb	r3, r3
 80020fc:	22ff      	movs	r2, #255	; 0xff
 80020fe:	0019      	movs	r1, r3
 8002100:	f002 fac0 	bl	8004684 <oled_set_pix>
 8002104:	1dfb      	adds	r3, r7, #7
 8002106:	781b      	ldrb	r3, [r3, #0]
 8002108:	3310      	adds	r3, #16
 800210a:	b2d8      	uxtb	r0, r3
 800210c:	1dbb      	adds	r3, r7, #6
 800210e:	781b      	ldrb	r3, [r3, #0]
 8002110:	3b13      	subs	r3, #19
 8002112:	b2db      	uxtb	r3, r3
 8002114:	22ff      	movs	r2, #255	; 0xff
 8002116:	0019      	movs	r1, r3
 8002118:	f002 fab4 	bl	8004684 <oled_set_pix>
 800211c:	1dfb      	adds	r3, r7, #7
 800211e:	781b      	ldrb	r3, [r3, #0]
 8002120:	3310      	adds	r3, #16
 8002122:	b2d8      	uxtb	r0, r3
 8002124:	1dbb      	adds	r3, r7, #6
 8002126:	781b      	ldrb	r3, [r3, #0]
 8002128:	3b14      	subs	r3, #20
 800212a:	b2db      	uxtb	r3, r3
 800212c:	22ff      	movs	r2, #255	; 0xff
 800212e:	0019      	movs	r1, r3
 8002130:	f002 faa8 	bl	8004684 <oled_set_pix>
 8002134:	1dfb      	adds	r3, r7, #7
 8002136:	781b      	ldrb	r3, [r3, #0]
 8002138:	3310      	adds	r3, #16
 800213a:	b2d8      	uxtb	r0, r3
 800213c:	1dbb      	adds	r3, r7, #6
 800213e:	781b      	ldrb	r3, [r3, #0]
 8002140:	3b15      	subs	r3, #21
 8002142:	b2db      	uxtb	r3, r3
 8002144:	22ff      	movs	r2, #255	; 0xff
 8002146:	0019      	movs	r1, r3
 8002148:	f002 fa9c 	bl	8004684 <oled_set_pix>
 800214c:	1dfb      	adds	r3, r7, #7
 800214e:	781b      	ldrb	r3, [r3, #0]
 8002150:	3311      	adds	r3, #17
 8002152:	b2d8      	uxtb	r0, r3
 8002154:	1dbb      	adds	r3, r7, #6
 8002156:	781b      	ldrb	r3, [r3, #0]
 8002158:	3b04      	subs	r3, #4
 800215a:	b2db      	uxtb	r3, r3
 800215c:	22ff      	movs	r2, #255	; 0xff
 800215e:	0019      	movs	r1, r3
 8002160:	f002 fa90 	bl	8004684 <oled_set_pix>
 8002164:	1dfb      	adds	r3, r7, #7
 8002166:	781b      	ldrb	r3, [r3, #0]
 8002168:	3311      	adds	r3, #17
 800216a:	b2d8      	uxtb	r0, r3
 800216c:	1dbb      	adds	r3, r7, #6
 800216e:	781b      	ldrb	r3, [r3, #0]
 8002170:	3b05      	subs	r3, #5
 8002172:	b2db      	uxtb	r3, r3
 8002174:	22ff      	movs	r2, #255	; 0xff
 8002176:	0019      	movs	r1, r3
 8002178:	f002 fa84 	bl	8004684 <oled_set_pix>
 800217c:	1dfb      	adds	r3, r7, #7
 800217e:	781b      	ldrb	r3, [r3, #0]
 8002180:	3311      	adds	r3, #17
 8002182:	b2d8      	uxtb	r0, r3
 8002184:	1dbb      	adds	r3, r7, #6
 8002186:	781b      	ldrb	r3, [r3, #0]
 8002188:	3b06      	subs	r3, #6
 800218a:	b2db      	uxtb	r3, r3
 800218c:	22ff      	movs	r2, #255	; 0xff
 800218e:	0019      	movs	r1, r3
 8002190:	f002 fa78 	bl	8004684 <oled_set_pix>
 8002194:	1dfb      	adds	r3, r7, #7
 8002196:	781b      	ldrb	r3, [r3, #0]
 8002198:	3311      	adds	r3, #17
 800219a:	b2d8      	uxtb	r0, r3
 800219c:	1dbb      	adds	r3, r7, #6
 800219e:	781b      	ldrb	r3, [r3, #0]
 80021a0:	3b07      	subs	r3, #7
 80021a2:	b2db      	uxtb	r3, r3
 80021a4:	22ff      	movs	r2, #255	; 0xff
 80021a6:	0019      	movs	r1, r3
 80021a8:	f002 fa6c 	bl	8004684 <oled_set_pix>
 80021ac:	1dfb      	adds	r3, r7, #7
 80021ae:	781b      	ldrb	r3, [r3, #0]
 80021b0:	3311      	adds	r3, #17
 80021b2:	b2d8      	uxtb	r0, r3
 80021b4:	1dbb      	adds	r3, r7, #6
 80021b6:	781b      	ldrb	r3, [r3, #0]
 80021b8:	3b08      	subs	r3, #8
 80021ba:	b2db      	uxtb	r3, r3
 80021bc:	22ff      	movs	r2, #255	; 0xff
 80021be:	0019      	movs	r1, r3
 80021c0:	f002 fa60 	bl	8004684 <oled_set_pix>
 80021c4:	1dfb      	adds	r3, r7, #7
 80021c6:	781b      	ldrb	r3, [r3, #0]
 80021c8:	3311      	adds	r3, #17
 80021ca:	b2d8      	uxtb	r0, r3
 80021cc:	1dbb      	adds	r3, r7, #6
 80021ce:	781b      	ldrb	r3, [r3, #0]
 80021d0:	3b09      	subs	r3, #9
 80021d2:	b2db      	uxtb	r3, r3
 80021d4:	22ff      	movs	r2, #255	; 0xff
 80021d6:	0019      	movs	r1, r3
 80021d8:	f002 fa54 	bl	8004684 <oled_set_pix>
 80021dc:	1dfb      	adds	r3, r7, #7
 80021de:	781b      	ldrb	r3, [r3, #0]
 80021e0:	3311      	adds	r3, #17
 80021e2:	b2d8      	uxtb	r0, r3
 80021e4:	1dbb      	adds	r3, r7, #6
 80021e6:	781b      	ldrb	r3, [r3, #0]
 80021e8:	3b0a      	subs	r3, #10
 80021ea:	b2db      	uxtb	r3, r3
 80021ec:	22ff      	movs	r2, #255	; 0xff
 80021ee:	0019      	movs	r1, r3
 80021f0:	f002 fa48 	bl	8004684 <oled_set_pix>
 80021f4:	1dfb      	adds	r3, r7, #7
 80021f6:	781b      	ldrb	r3, [r3, #0]
 80021f8:	3311      	adds	r3, #17
 80021fa:	b2d8      	uxtb	r0, r3
 80021fc:	1dbb      	adds	r3, r7, #6
 80021fe:	781b      	ldrb	r3, [r3, #0]
 8002200:	3b0b      	subs	r3, #11
 8002202:	b2db      	uxtb	r3, r3
 8002204:	22ff      	movs	r2, #255	; 0xff
 8002206:	0019      	movs	r1, r3
 8002208:	f002 fa3c 	bl	8004684 <oled_set_pix>
 800220c:	1dfb      	adds	r3, r7, #7
 800220e:	781b      	ldrb	r3, [r3, #0]
 8002210:	3311      	adds	r3, #17
 8002212:	b2d8      	uxtb	r0, r3
 8002214:	1dbb      	adds	r3, r7, #6
 8002216:	781b      	ldrb	r3, [r3, #0]
 8002218:	3b0c      	subs	r3, #12
 800221a:	b2db      	uxtb	r3, r3
 800221c:	22ff      	movs	r2, #255	; 0xff
 800221e:	0019      	movs	r1, r3
 8002220:	f002 fa30 	bl	8004684 <oled_set_pix>
 8002224:	1dfb      	adds	r3, r7, #7
 8002226:	781b      	ldrb	r3, [r3, #0]
 8002228:	3311      	adds	r3, #17
 800222a:	b2d8      	uxtb	r0, r3
 800222c:	1dbb      	adds	r3, r7, #6
 800222e:	781b      	ldrb	r3, [r3, #0]
 8002230:	3b0e      	subs	r3, #14
 8002232:	b2db      	uxtb	r3, r3
 8002234:	22ff      	movs	r2, #255	; 0xff
 8002236:	0019      	movs	r1, r3
 8002238:	f002 fa24 	bl	8004684 <oled_set_pix>
 800223c:	1dfb      	adds	r3, r7, #7
 800223e:	781b      	ldrb	r3, [r3, #0]
 8002240:	3311      	adds	r3, #17
 8002242:	b2d8      	uxtb	r0, r3
 8002244:	1dbb      	adds	r3, r7, #6
 8002246:	781b      	ldrb	r3, [r3, #0]
 8002248:	3b0f      	subs	r3, #15
 800224a:	b2db      	uxtb	r3, r3
 800224c:	22ff      	movs	r2, #255	; 0xff
 800224e:	0019      	movs	r1, r3
 8002250:	f002 fa18 	bl	8004684 <oled_set_pix>
 8002254:	1dfb      	adds	r3, r7, #7
 8002256:	781b      	ldrb	r3, [r3, #0]
 8002258:	3311      	adds	r3, #17
 800225a:	b2d8      	uxtb	r0, r3
 800225c:	1dbb      	adds	r3, r7, #6
 800225e:	781b      	ldrb	r3, [r3, #0]
 8002260:	3b13      	subs	r3, #19
 8002262:	b2db      	uxtb	r3, r3
 8002264:	22ff      	movs	r2, #255	; 0xff
 8002266:	0019      	movs	r1, r3
 8002268:	f002 fa0c 	bl	8004684 <oled_set_pix>
 800226c:	1dfb      	adds	r3, r7, #7
 800226e:	781b      	ldrb	r3, [r3, #0]
 8002270:	3311      	adds	r3, #17
 8002272:	b2d8      	uxtb	r0, r3
 8002274:	1dbb      	adds	r3, r7, #6
 8002276:	781b      	ldrb	r3, [r3, #0]
 8002278:	3b14      	subs	r3, #20
 800227a:	b2db      	uxtb	r3, r3
 800227c:	22ff      	movs	r2, #255	; 0xff
 800227e:	0019      	movs	r1, r3
 8002280:	f002 fa00 	bl	8004684 <oled_set_pix>
 8002284:	1dfb      	adds	r3, r7, #7
 8002286:	781b      	ldrb	r3, [r3, #0]
 8002288:	3311      	adds	r3, #17
 800228a:	b2d8      	uxtb	r0, r3
 800228c:	1dbb      	adds	r3, r7, #6
 800228e:	781b      	ldrb	r3, [r3, #0]
 8002290:	3b15      	subs	r3, #21
 8002292:	b2db      	uxtb	r3, r3
 8002294:	22ff      	movs	r2, #255	; 0xff
 8002296:	0019      	movs	r1, r3
 8002298:	f002 f9f4 	bl	8004684 <oled_set_pix>
 800229c:	1dfb      	adds	r3, r7, #7
 800229e:	781b      	ldrb	r3, [r3, #0]
 80022a0:	3311      	adds	r3, #17
 80022a2:	b2d8      	uxtb	r0, r3
 80022a4:	1dbb      	adds	r3, r7, #6
 80022a6:	781b      	ldrb	r3, [r3, #0]
 80022a8:	3b16      	subs	r3, #22
 80022aa:	b2db      	uxtb	r3, r3
 80022ac:	22ff      	movs	r2, #255	; 0xff
 80022ae:	0019      	movs	r1, r3
 80022b0:	f002 f9e8 	bl	8004684 <oled_set_pix>
 80022b4:	1dfb      	adds	r3, r7, #7
 80022b6:	781b      	ldrb	r3, [r3, #0]
 80022b8:	3312      	adds	r3, #18
 80022ba:	b2d8      	uxtb	r0, r3
 80022bc:	1dbb      	adds	r3, r7, #6
 80022be:	781b      	ldrb	r3, [r3, #0]
 80022c0:	3b08      	subs	r3, #8
 80022c2:	b2db      	uxtb	r3, r3
 80022c4:	22ff      	movs	r2, #255	; 0xff
 80022c6:	0019      	movs	r1, r3
 80022c8:	f002 f9dc 	bl	8004684 <oled_set_pix>
 80022cc:	1dfb      	adds	r3, r7, #7
 80022ce:	781b      	ldrb	r3, [r3, #0]
 80022d0:	3312      	adds	r3, #18
 80022d2:	b2d8      	uxtb	r0, r3
 80022d4:	1dbb      	adds	r3, r7, #6
 80022d6:	781b      	ldrb	r3, [r3, #0]
 80022d8:	3b09      	subs	r3, #9
 80022da:	b2db      	uxtb	r3, r3
 80022dc:	22ff      	movs	r2, #255	; 0xff
 80022de:	0019      	movs	r1, r3
 80022e0:	f002 f9d0 	bl	8004684 <oled_set_pix>
 80022e4:	1dfb      	adds	r3, r7, #7
 80022e6:	781b      	ldrb	r3, [r3, #0]
 80022e8:	3312      	adds	r3, #18
 80022ea:	b2d8      	uxtb	r0, r3
 80022ec:	1dbb      	adds	r3, r7, #6
 80022ee:	781b      	ldrb	r3, [r3, #0]
 80022f0:	3b0a      	subs	r3, #10
 80022f2:	b2db      	uxtb	r3, r3
 80022f4:	22ff      	movs	r2, #255	; 0xff
 80022f6:	0019      	movs	r1, r3
 80022f8:	f002 f9c4 	bl	8004684 <oled_set_pix>
 80022fc:	1dfb      	adds	r3, r7, #7
 80022fe:	781b      	ldrb	r3, [r3, #0]
 8002300:	3312      	adds	r3, #18
 8002302:	b2d8      	uxtb	r0, r3
 8002304:	1dbb      	adds	r3, r7, #6
 8002306:	781b      	ldrb	r3, [r3, #0]
 8002308:	3b0b      	subs	r3, #11
 800230a:	b2db      	uxtb	r3, r3
 800230c:	22ff      	movs	r2, #255	; 0xff
 800230e:	0019      	movs	r1, r3
 8002310:	f002 f9b8 	bl	8004684 <oled_set_pix>
 8002314:	1dfb      	adds	r3, r7, #7
 8002316:	781b      	ldrb	r3, [r3, #0]
 8002318:	3312      	adds	r3, #18
 800231a:	b2d8      	uxtb	r0, r3
 800231c:	1dbb      	adds	r3, r7, #6
 800231e:	781b      	ldrb	r3, [r3, #0]
 8002320:	3b0c      	subs	r3, #12
 8002322:	b2db      	uxtb	r3, r3
 8002324:	22ff      	movs	r2, #255	; 0xff
 8002326:	0019      	movs	r1, r3
 8002328:	f002 f9ac 	bl	8004684 <oled_set_pix>
 800232c:	1dfb      	adds	r3, r7, #7
 800232e:	781b      	ldrb	r3, [r3, #0]
 8002330:	3312      	adds	r3, #18
 8002332:	b2d8      	uxtb	r0, r3
 8002334:	1dbb      	adds	r3, r7, #6
 8002336:	781b      	ldrb	r3, [r3, #0]
 8002338:	3b0e      	subs	r3, #14
 800233a:	b2db      	uxtb	r3, r3
 800233c:	22ff      	movs	r2, #255	; 0xff
 800233e:	0019      	movs	r1, r3
 8002340:	f002 f9a0 	bl	8004684 <oled_set_pix>
 8002344:	1dfb      	adds	r3, r7, #7
 8002346:	781b      	ldrb	r3, [r3, #0]
 8002348:	3312      	adds	r3, #18
 800234a:	b2d8      	uxtb	r0, r3
 800234c:	1dbb      	adds	r3, r7, #6
 800234e:	781b      	ldrb	r3, [r3, #0]
 8002350:	3b0f      	subs	r3, #15
 8002352:	b2db      	uxtb	r3, r3
 8002354:	22ff      	movs	r2, #255	; 0xff
 8002356:	0019      	movs	r1, r3
 8002358:	f002 f994 	bl	8004684 <oled_set_pix>
 800235c:	1dfb      	adds	r3, r7, #7
 800235e:	781b      	ldrb	r3, [r3, #0]
 8002360:	3312      	adds	r3, #18
 8002362:	b2d8      	uxtb	r0, r3
 8002364:	1dbb      	adds	r3, r7, #6
 8002366:	781b      	ldrb	r3, [r3, #0]
 8002368:	3b13      	subs	r3, #19
 800236a:	b2db      	uxtb	r3, r3
 800236c:	22ff      	movs	r2, #255	; 0xff
 800236e:	0019      	movs	r1, r3
 8002370:	f002 f988 	bl	8004684 <oled_set_pix>
 8002374:	1dfb      	adds	r3, r7, #7
 8002376:	781b      	ldrb	r3, [r3, #0]
 8002378:	3312      	adds	r3, #18
 800237a:	b2d8      	uxtb	r0, r3
 800237c:	1dbb      	adds	r3, r7, #6
 800237e:	781b      	ldrb	r3, [r3, #0]
 8002380:	3b14      	subs	r3, #20
 8002382:	b2db      	uxtb	r3, r3
 8002384:	22ff      	movs	r2, #255	; 0xff
 8002386:	0019      	movs	r1, r3
 8002388:	f002 f97c 	bl	8004684 <oled_set_pix>
 800238c:	1dfb      	adds	r3, r7, #7
 800238e:	781b      	ldrb	r3, [r3, #0]
 8002390:	3312      	adds	r3, #18
 8002392:	b2d8      	uxtb	r0, r3
 8002394:	1dbb      	adds	r3, r7, #6
 8002396:	781b      	ldrb	r3, [r3, #0]
 8002398:	3b15      	subs	r3, #21
 800239a:	b2db      	uxtb	r3, r3
 800239c:	22ff      	movs	r2, #255	; 0xff
 800239e:	0019      	movs	r1, r3
 80023a0:	f002 f970 	bl	8004684 <oled_set_pix>
 80023a4:	1dfb      	adds	r3, r7, #7
 80023a6:	781b      	ldrb	r3, [r3, #0]
 80023a8:	3312      	adds	r3, #18
 80023aa:	b2d8      	uxtb	r0, r3
 80023ac:	1dbb      	adds	r3, r7, #6
 80023ae:	781b      	ldrb	r3, [r3, #0]
 80023b0:	3b16      	subs	r3, #22
 80023b2:	b2db      	uxtb	r3, r3
 80023b4:	22ff      	movs	r2, #255	; 0xff
 80023b6:	0019      	movs	r1, r3
 80023b8:	f002 f964 	bl	8004684 <oled_set_pix>
 80023bc:	1dfb      	adds	r3, r7, #7
 80023be:	781b      	ldrb	r3, [r3, #0]
 80023c0:	3312      	adds	r3, #18
 80023c2:	b2d8      	uxtb	r0, r3
 80023c4:	1dbb      	adds	r3, r7, #6
 80023c6:	781b      	ldrb	r3, [r3, #0]
 80023c8:	3b17      	subs	r3, #23
 80023ca:	b2db      	uxtb	r3, r3
 80023cc:	22ff      	movs	r2, #255	; 0xff
 80023ce:	0019      	movs	r1, r3
 80023d0:	f002 f958 	bl	8004684 <oled_set_pix>
 80023d4:	1dfb      	adds	r3, r7, #7
 80023d6:	781b      	ldrb	r3, [r3, #0]
 80023d8:	3313      	adds	r3, #19
 80023da:	b2d8      	uxtb	r0, r3
 80023dc:	1dbb      	adds	r3, r7, #6
 80023de:	781b      	ldrb	r3, [r3, #0]
 80023e0:	3b04      	subs	r3, #4
 80023e2:	b2db      	uxtb	r3, r3
 80023e4:	22ff      	movs	r2, #255	; 0xff
 80023e6:	0019      	movs	r1, r3
 80023e8:	f002 f94c 	bl	8004684 <oled_set_pix>
 80023ec:	1dfb      	adds	r3, r7, #7
 80023ee:	781b      	ldrb	r3, [r3, #0]
 80023f0:	3313      	adds	r3, #19
 80023f2:	b2d8      	uxtb	r0, r3
 80023f4:	1dbb      	adds	r3, r7, #6
 80023f6:	781b      	ldrb	r3, [r3, #0]
 80023f8:	3b05      	subs	r3, #5
 80023fa:	b2db      	uxtb	r3, r3
 80023fc:	22ff      	movs	r2, #255	; 0xff
 80023fe:	0019      	movs	r1, r3
 8002400:	f002 f940 	bl	8004684 <oled_set_pix>
 8002404:	1dfb      	adds	r3, r7, #7
 8002406:	781b      	ldrb	r3, [r3, #0]
 8002408:	3313      	adds	r3, #19
 800240a:	b2d8      	uxtb	r0, r3
 800240c:	1dbb      	adds	r3, r7, #6
 800240e:	781b      	ldrb	r3, [r3, #0]
 8002410:	3b06      	subs	r3, #6
 8002412:	b2db      	uxtb	r3, r3
 8002414:	22ff      	movs	r2, #255	; 0xff
 8002416:	0019      	movs	r1, r3
 8002418:	f002 f934 	bl	8004684 <oled_set_pix>
 800241c:	1dfb      	adds	r3, r7, #7
 800241e:	781b      	ldrb	r3, [r3, #0]
 8002420:	3313      	adds	r3, #19
 8002422:	b2d8      	uxtb	r0, r3
 8002424:	1dbb      	adds	r3, r7, #6
 8002426:	781b      	ldrb	r3, [r3, #0]
 8002428:	3b07      	subs	r3, #7
 800242a:	b2db      	uxtb	r3, r3
 800242c:	22ff      	movs	r2, #255	; 0xff
 800242e:	0019      	movs	r1, r3
 8002430:	f002 f928 	bl	8004684 <oled_set_pix>
 8002434:	1dfb      	adds	r3, r7, #7
 8002436:	781b      	ldrb	r3, [r3, #0]
 8002438:	3313      	adds	r3, #19
 800243a:	b2d8      	uxtb	r0, r3
 800243c:	1dbb      	adds	r3, r7, #6
 800243e:	781b      	ldrb	r3, [r3, #0]
 8002440:	3b08      	subs	r3, #8
 8002442:	b2db      	uxtb	r3, r3
 8002444:	22ff      	movs	r2, #255	; 0xff
 8002446:	0019      	movs	r1, r3
 8002448:	f002 f91c 	bl	8004684 <oled_set_pix>
 800244c:	1dfb      	adds	r3, r7, #7
 800244e:	781b      	ldrb	r3, [r3, #0]
 8002450:	3313      	adds	r3, #19
 8002452:	b2d8      	uxtb	r0, r3
 8002454:	1dbb      	adds	r3, r7, #6
 8002456:	781b      	ldrb	r3, [r3, #0]
 8002458:	3b09      	subs	r3, #9
 800245a:	b2db      	uxtb	r3, r3
 800245c:	22ff      	movs	r2, #255	; 0xff
 800245e:	0019      	movs	r1, r3
 8002460:	f002 f910 	bl	8004684 <oled_set_pix>
 8002464:	1dfb      	adds	r3, r7, #7
 8002466:	781b      	ldrb	r3, [r3, #0]
 8002468:	3313      	adds	r3, #19
 800246a:	b2d8      	uxtb	r0, r3
 800246c:	1dbb      	adds	r3, r7, #6
 800246e:	781b      	ldrb	r3, [r3, #0]
 8002470:	3b0a      	subs	r3, #10
 8002472:	b2db      	uxtb	r3, r3
 8002474:	22ff      	movs	r2, #255	; 0xff
 8002476:	0019      	movs	r1, r3
 8002478:	f002 f904 	bl	8004684 <oled_set_pix>
 800247c:	1dfb      	adds	r3, r7, #7
 800247e:	781b      	ldrb	r3, [r3, #0]
 8002480:	3313      	adds	r3, #19
 8002482:	b2d8      	uxtb	r0, r3
 8002484:	1dbb      	adds	r3, r7, #6
 8002486:	781b      	ldrb	r3, [r3, #0]
 8002488:	3b0b      	subs	r3, #11
 800248a:	b2db      	uxtb	r3, r3
 800248c:	22ff      	movs	r2, #255	; 0xff
 800248e:	0019      	movs	r1, r3
 8002490:	f002 f8f8 	bl	8004684 <oled_set_pix>
 8002494:	1dfb      	adds	r3, r7, #7
 8002496:	781b      	ldrb	r3, [r3, #0]
 8002498:	3313      	adds	r3, #19
 800249a:	b2d8      	uxtb	r0, r3
 800249c:	1dbb      	adds	r3, r7, #6
 800249e:	781b      	ldrb	r3, [r3, #0]
 80024a0:	3b0c      	subs	r3, #12
 80024a2:	b2db      	uxtb	r3, r3
 80024a4:	22ff      	movs	r2, #255	; 0xff
 80024a6:	0019      	movs	r1, r3
 80024a8:	f002 f8ec 	bl	8004684 <oled_set_pix>
 80024ac:	1dfb      	adds	r3, r7, #7
 80024ae:	781b      	ldrb	r3, [r3, #0]
 80024b0:	3313      	adds	r3, #19
 80024b2:	b2d8      	uxtb	r0, r3
 80024b4:	1dbb      	adds	r3, r7, #6
 80024b6:	781b      	ldrb	r3, [r3, #0]
 80024b8:	3b0e      	subs	r3, #14
 80024ba:	b2db      	uxtb	r3, r3
 80024bc:	22ff      	movs	r2, #255	; 0xff
 80024be:	0019      	movs	r1, r3
 80024c0:	f002 f8e0 	bl	8004684 <oled_set_pix>
 80024c4:	1dfb      	adds	r3, r7, #7
 80024c6:	781b      	ldrb	r3, [r3, #0]
 80024c8:	3313      	adds	r3, #19
 80024ca:	b2d8      	uxtb	r0, r3
 80024cc:	1dbb      	adds	r3, r7, #6
 80024ce:	781b      	ldrb	r3, [r3, #0]
 80024d0:	3b0f      	subs	r3, #15
 80024d2:	b2db      	uxtb	r3, r3
 80024d4:	22ff      	movs	r2, #255	; 0xff
 80024d6:	0019      	movs	r1, r3
 80024d8:	f002 f8d4 	bl	8004684 <oled_set_pix>
 80024dc:	1dfb      	adds	r3, r7, #7
 80024de:	781b      	ldrb	r3, [r3, #0]
 80024e0:	3313      	adds	r3, #19
 80024e2:	b2d8      	uxtb	r0, r3
 80024e4:	1dbb      	adds	r3, r7, #6
 80024e6:	781b      	ldrb	r3, [r3, #0]
 80024e8:	3b10      	subs	r3, #16
 80024ea:	b2db      	uxtb	r3, r3
 80024ec:	22ff      	movs	r2, #255	; 0xff
 80024ee:	0019      	movs	r1, r3
 80024f0:	f002 f8c8 	bl	8004684 <oled_set_pix>
 80024f4:	1dfb      	adds	r3, r7, #7
 80024f6:	781b      	ldrb	r3, [r3, #0]
 80024f8:	3313      	adds	r3, #19
 80024fa:	b2d8      	uxtb	r0, r3
 80024fc:	1dbb      	adds	r3, r7, #6
 80024fe:	781b      	ldrb	r3, [r3, #0]
 8002500:	3b14      	subs	r3, #20
 8002502:	b2db      	uxtb	r3, r3
 8002504:	22ff      	movs	r2, #255	; 0xff
 8002506:	0019      	movs	r1, r3
 8002508:	f002 f8bc 	bl	8004684 <oled_set_pix>
 800250c:	1dfb      	adds	r3, r7, #7
 800250e:	781b      	ldrb	r3, [r3, #0]
 8002510:	3313      	adds	r3, #19
 8002512:	b2d8      	uxtb	r0, r3
 8002514:	1dbb      	adds	r3, r7, #6
 8002516:	781b      	ldrb	r3, [r3, #0]
 8002518:	3b15      	subs	r3, #21
 800251a:	b2db      	uxtb	r3, r3
 800251c:	22ff      	movs	r2, #255	; 0xff
 800251e:	0019      	movs	r1, r3
 8002520:	f002 f8b0 	bl	8004684 <oled_set_pix>
 8002524:	1dfb      	adds	r3, r7, #7
 8002526:	781b      	ldrb	r3, [r3, #0]
 8002528:	3313      	adds	r3, #19
 800252a:	b2d8      	uxtb	r0, r3
 800252c:	1dbb      	adds	r3, r7, #6
 800252e:	781b      	ldrb	r3, [r3, #0]
 8002530:	3b16      	subs	r3, #22
 8002532:	b2db      	uxtb	r3, r3
 8002534:	22ff      	movs	r2, #255	; 0xff
 8002536:	0019      	movs	r1, r3
 8002538:	f002 f8a4 	bl	8004684 <oled_set_pix>
 800253c:	1dfb      	adds	r3, r7, #7
 800253e:	781b      	ldrb	r3, [r3, #0]
 8002540:	3313      	adds	r3, #19
 8002542:	b2d8      	uxtb	r0, r3
 8002544:	1dbb      	adds	r3, r7, #6
 8002546:	781b      	ldrb	r3, [r3, #0]
 8002548:	3b17      	subs	r3, #23
 800254a:	b2db      	uxtb	r3, r3
 800254c:	22ff      	movs	r2, #255	; 0xff
 800254e:	0019      	movs	r1, r3
 8002550:	f002 f898 	bl	8004684 <oled_set_pix>
 8002554:	1dfb      	adds	r3, r7, #7
 8002556:	781b      	ldrb	r3, [r3, #0]
 8002558:	3313      	adds	r3, #19
 800255a:	b2d8      	uxtb	r0, r3
 800255c:	1dbb      	adds	r3, r7, #6
 800255e:	781b      	ldrb	r3, [r3, #0]
 8002560:	3b18      	subs	r3, #24
 8002562:	b2db      	uxtb	r3, r3
 8002564:	22ff      	movs	r2, #255	; 0xff
 8002566:	0019      	movs	r1, r3
 8002568:	f002 f88c 	bl	8004684 <oled_set_pix>
 800256c:	1dfb      	adds	r3, r7, #7
 800256e:	781b      	ldrb	r3, [r3, #0]
 8002570:	3314      	adds	r3, #20
 8002572:	b2d8      	uxtb	r0, r3
 8002574:	1dbb      	adds	r3, r7, #6
 8002576:	781b      	ldrb	r3, [r3, #0]
 8002578:	3b03      	subs	r3, #3
 800257a:	b2db      	uxtb	r3, r3
 800257c:	22ff      	movs	r2, #255	; 0xff
 800257e:	0019      	movs	r1, r3
 8002580:	f002 f880 	bl	8004684 <oled_set_pix>
 8002584:	1dfb      	adds	r3, r7, #7
 8002586:	781b      	ldrb	r3, [r3, #0]
 8002588:	3314      	adds	r3, #20
 800258a:	b2d8      	uxtb	r0, r3
 800258c:	1dbb      	adds	r3, r7, #6
 800258e:	781b      	ldrb	r3, [r3, #0]
 8002590:	3b04      	subs	r3, #4
 8002592:	b2db      	uxtb	r3, r3
 8002594:	22ff      	movs	r2, #255	; 0xff
 8002596:	0019      	movs	r1, r3
 8002598:	f002 f874 	bl	8004684 <oled_set_pix>
 800259c:	1dfb      	adds	r3, r7, #7
 800259e:	781b      	ldrb	r3, [r3, #0]
 80025a0:	3314      	adds	r3, #20
 80025a2:	b2d8      	uxtb	r0, r3
 80025a4:	1dbb      	adds	r3, r7, #6
 80025a6:	781b      	ldrb	r3, [r3, #0]
 80025a8:	3b08      	subs	r3, #8
 80025aa:	b2db      	uxtb	r3, r3
 80025ac:	22ff      	movs	r2, #255	; 0xff
 80025ae:	0019      	movs	r1, r3
 80025b0:	f002 f868 	bl	8004684 <oled_set_pix>
 80025b4:	1dfb      	adds	r3, r7, #7
 80025b6:	781b      	ldrb	r3, [r3, #0]
 80025b8:	3314      	adds	r3, #20
 80025ba:	b2d8      	uxtb	r0, r3
 80025bc:	1dbb      	adds	r3, r7, #6
 80025be:	781b      	ldrb	r3, [r3, #0]
 80025c0:	3b09      	subs	r3, #9
 80025c2:	b2db      	uxtb	r3, r3
 80025c4:	22ff      	movs	r2, #255	; 0xff
 80025c6:	0019      	movs	r1, r3
 80025c8:	f002 f85c 	bl	8004684 <oled_set_pix>
 80025cc:	1dfb      	adds	r3, r7, #7
 80025ce:	781b      	ldrb	r3, [r3, #0]
 80025d0:	3314      	adds	r3, #20
 80025d2:	b2d8      	uxtb	r0, r3
 80025d4:	1dbb      	adds	r3, r7, #6
 80025d6:	781b      	ldrb	r3, [r3, #0]
 80025d8:	3b0c      	subs	r3, #12
 80025da:	b2db      	uxtb	r3, r3
 80025dc:	22ff      	movs	r2, #255	; 0xff
 80025de:	0019      	movs	r1, r3
 80025e0:	f002 f850 	bl	8004684 <oled_set_pix>
 80025e4:	1dfb      	adds	r3, r7, #7
 80025e6:	781b      	ldrb	r3, [r3, #0]
 80025e8:	3314      	adds	r3, #20
 80025ea:	b2d8      	uxtb	r0, r3
 80025ec:	1dbb      	adds	r3, r7, #6
 80025ee:	781b      	ldrb	r3, [r3, #0]
 80025f0:	3b0d      	subs	r3, #13
 80025f2:	b2db      	uxtb	r3, r3
 80025f4:	22ff      	movs	r2, #255	; 0xff
 80025f6:	0019      	movs	r1, r3
 80025f8:	f002 f844 	bl	8004684 <oled_set_pix>
 80025fc:	1dfb      	adds	r3, r7, #7
 80025fe:	781b      	ldrb	r3, [r3, #0]
 8002600:	3314      	adds	r3, #20
 8002602:	b2d8      	uxtb	r0, r3
 8002604:	1dbb      	adds	r3, r7, #6
 8002606:	781b      	ldrb	r3, [r3, #0]
 8002608:	3b0f      	subs	r3, #15
 800260a:	b2db      	uxtb	r3, r3
 800260c:	22ff      	movs	r2, #255	; 0xff
 800260e:	0019      	movs	r1, r3
 8002610:	f002 f838 	bl	8004684 <oled_set_pix>
 8002614:	1dfb      	adds	r3, r7, #7
 8002616:	781b      	ldrb	r3, [r3, #0]
 8002618:	3314      	adds	r3, #20
 800261a:	b2d8      	uxtb	r0, r3
 800261c:	1dbb      	adds	r3, r7, #6
 800261e:	781b      	ldrb	r3, [r3, #0]
 8002620:	3b10      	subs	r3, #16
 8002622:	b2db      	uxtb	r3, r3
 8002624:	22ff      	movs	r2, #255	; 0xff
 8002626:	0019      	movs	r1, r3
 8002628:	f002 f82c 	bl	8004684 <oled_set_pix>
 800262c:	1dfb      	adds	r3, r7, #7
 800262e:	781b      	ldrb	r3, [r3, #0]
 8002630:	3314      	adds	r3, #20
 8002632:	b2d8      	uxtb	r0, r3
 8002634:	1dbb      	adds	r3, r7, #6
 8002636:	781b      	ldrb	r3, [r3, #0]
 8002638:	3b13      	subs	r3, #19
 800263a:	b2db      	uxtb	r3, r3
 800263c:	22ff      	movs	r2, #255	; 0xff
 800263e:	0019      	movs	r1, r3
 8002640:	f002 f820 	bl	8004684 <oled_set_pix>
 8002644:	1dfb      	adds	r3, r7, #7
 8002646:	781b      	ldrb	r3, [r3, #0]
 8002648:	3314      	adds	r3, #20
 800264a:	b2d8      	uxtb	r0, r3
 800264c:	1dbb      	adds	r3, r7, #6
 800264e:	781b      	ldrb	r3, [r3, #0]
 8002650:	3b14      	subs	r3, #20
 8002652:	b2db      	uxtb	r3, r3
 8002654:	22ff      	movs	r2, #255	; 0xff
 8002656:	0019      	movs	r1, r3
 8002658:	f002 f814 	bl	8004684 <oled_set_pix>
 800265c:	1dfb      	adds	r3, r7, #7
 800265e:	781b      	ldrb	r3, [r3, #0]
 8002660:	3314      	adds	r3, #20
 8002662:	b2d8      	uxtb	r0, r3
 8002664:	1dbb      	adds	r3, r7, #6
 8002666:	781b      	ldrb	r3, [r3, #0]
 8002668:	3b15      	subs	r3, #21
 800266a:	b2db      	uxtb	r3, r3
 800266c:	22ff      	movs	r2, #255	; 0xff
 800266e:	0019      	movs	r1, r3
 8002670:	f002 f808 	bl	8004684 <oled_set_pix>
 8002674:	1dfb      	adds	r3, r7, #7
 8002676:	781b      	ldrb	r3, [r3, #0]
 8002678:	3314      	adds	r3, #20
 800267a:	b2d8      	uxtb	r0, r3
 800267c:	1dbb      	adds	r3, r7, #6
 800267e:	781b      	ldrb	r3, [r3, #0]
 8002680:	3b16      	subs	r3, #22
 8002682:	b2db      	uxtb	r3, r3
 8002684:	22ff      	movs	r2, #255	; 0xff
 8002686:	0019      	movs	r1, r3
 8002688:	f001 fffc 	bl	8004684 <oled_set_pix>
 800268c:	1dfb      	adds	r3, r7, #7
 800268e:	781b      	ldrb	r3, [r3, #0]
 8002690:	3314      	adds	r3, #20
 8002692:	b2d8      	uxtb	r0, r3
 8002694:	1dbb      	adds	r3, r7, #6
 8002696:	781b      	ldrb	r3, [r3, #0]
 8002698:	3b17      	subs	r3, #23
 800269a:	b2db      	uxtb	r3, r3
 800269c:	22ff      	movs	r2, #255	; 0xff
 800269e:	0019      	movs	r1, r3
 80026a0:	f001 fff0 	bl	8004684 <oled_set_pix>
 80026a4:	1dfb      	adds	r3, r7, #7
 80026a6:	781b      	ldrb	r3, [r3, #0]
 80026a8:	3314      	adds	r3, #20
 80026aa:	b2d8      	uxtb	r0, r3
 80026ac:	1dbb      	adds	r3, r7, #6
 80026ae:	781b      	ldrb	r3, [r3, #0]
 80026b0:	3b18      	subs	r3, #24
 80026b2:	b2db      	uxtb	r3, r3
 80026b4:	22ff      	movs	r2, #255	; 0xff
 80026b6:	0019      	movs	r1, r3
 80026b8:	f001 ffe4 	bl	8004684 <oled_set_pix>
 80026bc:	1dfb      	adds	r3, r7, #7
 80026be:	781b      	ldrb	r3, [r3, #0]
 80026c0:	3315      	adds	r3, #21
 80026c2:	b2d8      	uxtb	r0, r3
 80026c4:	1dbb      	adds	r3, r7, #6
 80026c6:	781b      	ldrb	r3, [r3, #0]
 80026c8:	3b06      	subs	r3, #6
 80026ca:	b2db      	uxtb	r3, r3
 80026cc:	22ff      	movs	r2, #255	; 0xff
 80026ce:	0019      	movs	r1, r3
 80026d0:	f001 ffd8 	bl	8004684 <oled_set_pix>
 80026d4:	1dfb      	adds	r3, r7, #7
 80026d6:	781b      	ldrb	r3, [r3, #0]
 80026d8:	3315      	adds	r3, #21
 80026da:	b2d8      	uxtb	r0, r3
 80026dc:	1dbb      	adds	r3, r7, #6
 80026de:	781b      	ldrb	r3, [r3, #0]
 80026e0:	3b07      	subs	r3, #7
 80026e2:	b2db      	uxtb	r3, r3
 80026e4:	22ff      	movs	r2, #255	; 0xff
 80026e6:	0019      	movs	r1, r3
 80026e8:	f001 ffcc 	bl	8004684 <oled_set_pix>
 80026ec:	1dfb      	adds	r3, r7, #7
 80026ee:	781b      	ldrb	r3, [r3, #0]
 80026f0:	3315      	adds	r3, #21
 80026f2:	b2d8      	uxtb	r0, r3
 80026f4:	1dbb      	adds	r3, r7, #6
 80026f6:	781b      	ldrb	r3, [r3, #0]
 80026f8:	3b08      	subs	r3, #8
 80026fa:	b2db      	uxtb	r3, r3
 80026fc:	22ff      	movs	r2, #255	; 0xff
 80026fe:	0019      	movs	r1, r3
 8002700:	f001 ffc0 	bl	8004684 <oled_set_pix>
 8002704:	1dfb      	adds	r3, r7, #7
 8002706:	781b      	ldrb	r3, [r3, #0]
 8002708:	3315      	adds	r3, #21
 800270a:	b2d8      	uxtb	r0, r3
 800270c:	1dbb      	adds	r3, r7, #6
 800270e:	781b      	ldrb	r3, [r3, #0]
 8002710:	3b0c      	subs	r3, #12
 8002712:	b2db      	uxtb	r3, r3
 8002714:	22ff      	movs	r2, #255	; 0xff
 8002716:	0019      	movs	r1, r3
 8002718:	f001 ffb4 	bl	8004684 <oled_set_pix>
 800271c:	1dfb      	adds	r3, r7, #7
 800271e:	781b      	ldrb	r3, [r3, #0]
 8002720:	3315      	adds	r3, #21
 8002722:	b2d8      	uxtb	r0, r3
 8002724:	1dbb      	adds	r3, r7, #6
 8002726:	781b      	ldrb	r3, [r3, #0]
 8002728:	3b0d      	subs	r3, #13
 800272a:	b2db      	uxtb	r3, r3
 800272c:	22ff      	movs	r2, #255	; 0xff
 800272e:	0019      	movs	r1, r3
 8002730:	f001 ffa8 	bl	8004684 <oled_set_pix>
 8002734:	1dfb      	adds	r3, r7, #7
 8002736:	781b      	ldrb	r3, [r3, #0]
 8002738:	3315      	adds	r3, #21
 800273a:	b2d8      	uxtb	r0, r3
 800273c:	1dbb      	adds	r3, r7, #6
 800273e:	781b      	ldrb	r3, [r3, #0]
 8002740:	3b0e      	subs	r3, #14
 8002742:	b2db      	uxtb	r3, r3
 8002744:	22ff      	movs	r2, #255	; 0xff
 8002746:	0019      	movs	r1, r3
 8002748:	f001 ff9c 	bl	8004684 <oled_set_pix>
 800274c:	1dfb      	adds	r3, r7, #7
 800274e:	781b      	ldrb	r3, [r3, #0]
 8002750:	3315      	adds	r3, #21
 8002752:	b2d8      	uxtb	r0, r3
 8002754:	1dbb      	adds	r3, r7, #6
 8002756:	781b      	ldrb	r3, [r3, #0]
 8002758:	3b13      	subs	r3, #19
 800275a:	b2db      	uxtb	r3, r3
 800275c:	22ff      	movs	r2, #255	; 0xff
 800275e:	0019      	movs	r1, r3
 8002760:	f001 ff90 	bl	8004684 <oled_set_pix>
 8002764:	1dfb      	adds	r3, r7, #7
 8002766:	781b      	ldrb	r3, [r3, #0]
 8002768:	3315      	adds	r3, #21
 800276a:	b2d8      	uxtb	r0, r3
 800276c:	1dbb      	adds	r3, r7, #6
 800276e:	781b      	ldrb	r3, [r3, #0]
 8002770:	3b14      	subs	r3, #20
 8002772:	b2db      	uxtb	r3, r3
 8002774:	22ff      	movs	r2, #255	; 0xff
 8002776:	0019      	movs	r1, r3
 8002778:	f001 ff84 	bl	8004684 <oled_set_pix>
 800277c:	1dfb      	adds	r3, r7, #7
 800277e:	781b      	ldrb	r3, [r3, #0]
 8002780:	3315      	adds	r3, #21
 8002782:	b2d8      	uxtb	r0, r3
 8002784:	1dbb      	adds	r3, r7, #6
 8002786:	781b      	ldrb	r3, [r3, #0]
 8002788:	3b15      	subs	r3, #21
 800278a:	b2db      	uxtb	r3, r3
 800278c:	22ff      	movs	r2, #255	; 0xff
 800278e:	0019      	movs	r1, r3
 8002790:	f001 ff78 	bl	8004684 <oled_set_pix>
 8002794:	1dfb      	adds	r3, r7, #7
 8002796:	781b      	ldrb	r3, [r3, #0]
 8002798:	3315      	adds	r3, #21
 800279a:	b2d8      	uxtb	r0, r3
 800279c:	1dbb      	adds	r3, r7, #6
 800279e:	781b      	ldrb	r3, [r3, #0]
 80027a0:	3b17      	subs	r3, #23
 80027a2:	b2db      	uxtb	r3, r3
 80027a4:	22ff      	movs	r2, #255	; 0xff
 80027a6:	0019      	movs	r1, r3
 80027a8:	f001 ff6c 	bl	8004684 <oled_set_pix>
 80027ac:	1dfb      	adds	r3, r7, #7
 80027ae:	781b      	ldrb	r3, [r3, #0]
 80027b0:	3315      	adds	r3, #21
 80027b2:	b2d8      	uxtb	r0, r3
 80027b4:	1dbb      	adds	r3, r7, #6
 80027b6:	781b      	ldrb	r3, [r3, #0]
 80027b8:	3b18      	subs	r3, #24
 80027ba:	b2db      	uxtb	r3, r3
 80027bc:	22ff      	movs	r2, #255	; 0xff
 80027be:	0019      	movs	r1, r3
 80027c0:	f001 ff60 	bl	8004684 <oled_set_pix>
 80027c4:	1dfb      	adds	r3, r7, #7
 80027c6:	781b      	ldrb	r3, [r3, #0]
 80027c8:	3315      	adds	r3, #21
 80027ca:	b2d8      	uxtb	r0, r3
 80027cc:	1dbb      	adds	r3, r7, #6
 80027ce:	781b      	ldrb	r3, [r3, #0]
 80027d0:	3b19      	subs	r3, #25
 80027d2:	b2db      	uxtb	r3, r3
 80027d4:	22ff      	movs	r2, #255	; 0xff
 80027d6:	0019      	movs	r1, r3
 80027d8:	f001 ff54 	bl	8004684 <oled_set_pix>
 80027dc:	1dfb      	adds	r3, r7, #7
 80027de:	781b      	ldrb	r3, [r3, #0]
 80027e0:	3315      	adds	r3, #21
 80027e2:	b2d8      	uxtb	r0, r3
 80027e4:	1dbb      	adds	r3, r7, #6
 80027e6:	781b      	ldrb	r3, [r3, #0]
 80027e8:	3b1c      	subs	r3, #28
 80027ea:	b2db      	uxtb	r3, r3
 80027ec:	22ff      	movs	r2, #255	; 0xff
 80027ee:	0019      	movs	r1, r3
 80027f0:	f001 ff48 	bl	8004684 <oled_set_pix>
 80027f4:	1dfb      	adds	r3, r7, #7
 80027f6:	781b      	ldrb	r3, [r3, #0]
 80027f8:	3316      	adds	r3, #22
 80027fa:	b2d8      	uxtb	r0, r3
 80027fc:	1dbb      	adds	r3, r7, #6
 80027fe:	781b      	ldrb	r3, [r3, #0]
 8002800:	3b06      	subs	r3, #6
 8002802:	b2db      	uxtb	r3, r3
 8002804:	22ff      	movs	r2, #255	; 0xff
 8002806:	0019      	movs	r1, r3
 8002808:	f001 ff3c 	bl	8004684 <oled_set_pix>
 800280c:	1dfb      	adds	r3, r7, #7
 800280e:	781b      	ldrb	r3, [r3, #0]
 8002810:	3316      	adds	r3, #22
 8002812:	b2d8      	uxtb	r0, r3
 8002814:	1dbb      	adds	r3, r7, #6
 8002816:	781b      	ldrb	r3, [r3, #0]
 8002818:	3b08      	subs	r3, #8
 800281a:	b2db      	uxtb	r3, r3
 800281c:	22ff      	movs	r2, #255	; 0xff
 800281e:	0019      	movs	r1, r3
 8002820:	f001 ff30 	bl	8004684 <oled_set_pix>
 8002824:	1dfb      	adds	r3, r7, #7
 8002826:	781b      	ldrb	r3, [r3, #0]
 8002828:	3316      	adds	r3, #22
 800282a:	b2d8      	uxtb	r0, r3
 800282c:	1dbb      	adds	r3, r7, #6
 800282e:	781b      	ldrb	r3, [r3, #0]
 8002830:	3b09      	subs	r3, #9
 8002832:	b2db      	uxtb	r3, r3
 8002834:	22ff      	movs	r2, #255	; 0xff
 8002836:	0019      	movs	r1, r3
 8002838:	f001 ff24 	bl	8004684 <oled_set_pix>
 800283c:	1dfb      	adds	r3, r7, #7
 800283e:	781b      	ldrb	r3, [r3, #0]
 8002840:	3316      	adds	r3, #22
 8002842:	b2d8      	uxtb	r0, r3
 8002844:	1dbb      	adds	r3, r7, #6
 8002846:	781b      	ldrb	r3, [r3, #0]
 8002848:	3b0e      	subs	r3, #14
 800284a:	b2db      	uxtb	r3, r3
 800284c:	22ff      	movs	r2, #255	; 0xff
 800284e:	0019      	movs	r1, r3
 8002850:	f001 ff18 	bl	8004684 <oled_set_pix>
 8002854:	1dfb      	adds	r3, r7, #7
 8002856:	781b      	ldrb	r3, [r3, #0]
 8002858:	3316      	adds	r3, #22
 800285a:	b2d8      	uxtb	r0, r3
 800285c:	1dbb      	adds	r3, r7, #6
 800285e:	781b      	ldrb	r3, [r3, #0]
 8002860:	3b0f      	subs	r3, #15
 8002862:	b2db      	uxtb	r3, r3
 8002864:	22ff      	movs	r2, #255	; 0xff
 8002866:	0019      	movs	r1, r3
 8002868:	f001 ff0c 	bl	8004684 <oled_set_pix>
 800286c:	1dfb      	adds	r3, r7, #7
 800286e:	781b      	ldrb	r3, [r3, #0]
 8002870:	3316      	adds	r3, #22
 8002872:	b2d8      	uxtb	r0, r3
 8002874:	1dbb      	adds	r3, r7, #6
 8002876:	781b      	ldrb	r3, [r3, #0]
 8002878:	3b10      	subs	r3, #16
 800287a:	b2db      	uxtb	r3, r3
 800287c:	22ff      	movs	r2, #255	; 0xff
 800287e:	0019      	movs	r1, r3
 8002880:	f001 ff00 	bl	8004684 <oled_set_pix>
 8002884:	1dfb      	adds	r3, r7, #7
 8002886:	781b      	ldrb	r3, [r3, #0]
 8002888:	3316      	adds	r3, #22
 800288a:	b2d8      	uxtb	r0, r3
 800288c:	1dbb      	adds	r3, r7, #6
 800288e:	781b      	ldrb	r3, [r3, #0]
 8002890:	3b11      	subs	r3, #17
 8002892:	b2db      	uxtb	r3, r3
 8002894:	22ff      	movs	r2, #255	; 0xff
 8002896:	0019      	movs	r1, r3
 8002898:	f001 fef4 	bl	8004684 <oled_set_pix>
 800289c:	1dfb      	adds	r3, r7, #7
 800289e:	781b      	ldrb	r3, [r3, #0]
 80028a0:	3316      	adds	r3, #22
 80028a2:	b2d8      	uxtb	r0, r3
 80028a4:	1dbb      	adds	r3, r7, #6
 80028a6:	781b      	ldrb	r3, [r3, #0]
 80028a8:	3b13      	subs	r3, #19
 80028aa:	b2db      	uxtb	r3, r3
 80028ac:	22ff      	movs	r2, #255	; 0xff
 80028ae:	0019      	movs	r1, r3
 80028b0:	f001 fee8 	bl	8004684 <oled_set_pix>
 80028b4:	1dfb      	adds	r3, r7, #7
 80028b6:	781b      	ldrb	r3, [r3, #0]
 80028b8:	3316      	adds	r3, #22
 80028ba:	b2d8      	uxtb	r0, r3
 80028bc:	1dbb      	adds	r3, r7, #6
 80028be:	781b      	ldrb	r3, [r3, #0]
 80028c0:	3b14      	subs	r3, #20
 80028c2:	b2db      	uxtb	r3, r3
 80028c4:	22ff      	movs	r2, #255	; 0xff
 80028c6:	0019      	movs	r1, r3
 80028c8:	f001 fedc 	bl	8004684 <oled_set_pix>
 80028cc:	1dfb      	adds	r3, r7, #7
 80028ce:	781b      	ldrb	r3, [r3, #0]
 80028d0:	3316      	adds	r3, #22
 80028d2:	b2d8      	uxtb	r0, r3
 80028d4:	1dbb      	adds	r3, r7, #6
 80028d6:	781b      	ldrb	r3, [r3, #0]
 80028d8:	3b15      	subs	r3, #21
 80028da:	b2db      	uxtb	r3, r3
 80028dc:	22ff      	movs	r2, #255	; 0xff
 80028de:	0019      	movs	r1, r3
 80028e0:	f001 fed0 	bl	8004684 <oled_set_pix>
 80028e4:	1dfb      	adds	r3, r7, #7
 80028e6:	781b      	ldrb	r3, [r3, #0]
 80028e8:	3316      	adds	r3, #22
 80028ea:	b2d8      	uxtb	r0, r3
 80028ec:	1dbb      	adds	r3, r7, #6
 80028ee:	781b      	ldrb	r3, [r3, #0]
 80028f0:	3b18      	subs	r3, #24
 80028f2:	b2db      	uxtb	r3, r3
 80028f4:	22ff      	movs	r2, #255	; 0xff
 80028f6:	0019      	movs	r1, r3
 80028f8:	f001 fec4 	bl	8004684 <oled_set_pix>
 80028fc:	1dfb      	adds	r3, r7, #7
 80028fe:	781b      	ldrb	r3, [r3, #0]
 8002900:	3316      	adds	r3, #22
 8002902:	b2d8      	uxtb	r0, r3
 8002904:	1dbb      	adds	r3, r7, #6
 8002906:	781b      	ldrb	r3, [r3, #0]
 8002908:	3b19      	subs	r3, #25
 800290a:	b2db      	uxtb	r3, r3
 800290c:	22ff      	movs	r2, #255	; 0xff
 800290e:	0019      	movs	r1, r3
 8002910:	f001 feb8 	bl	8004684 <oled_set_pix>
 8002914:	1dfb      	adds	r3, r7, #7
 8002916:	781b      	ldrb	r3, [r3, #0]
 8002918:	3316      	adds	r3, #22
 800291a:	b2d8      	uxtb	r0, r3
 800291c:	1dbb      	adds	r3, r7, #6
 800291e:	781b      	ldrb	r3, [r3, #0]
 8002920:	3b1b      	subs	r3, #27
 8002922:	b2db      	uxtb	r3, r3
 8002924:	22ff      	movs	r2, #255	; 0xff
 8002926:	0019      	movs	r1, r3
 8002928:	f001 feac 	bl	8004684 <oled_set_pix>
 800292c:	1dfb      	adds	r3, r7, #7
 800292e:	781b      	ldrb	r3, [r3, #0]
 8002930:	3316      	adds	r3, #22
 8002932:	b2d8      	uxtb	r0, r3
 8002934:	1dbb      	adds	r3, r7, #6
 8002936:	781b      	ldrb	r3, [r3, #0]
 8002938:	3b1c      	subs	r3, #28
 800293a:	b2db      	uxtb	r3, r3
 800293c:	22ff      	movs	r2, #255	; 0xff
 800293e:	0019      	movs	r1, r3
 8002940:	f001 fea0 	bl	8004684 <oled_set_pix>
 8002944:	1dfb      	adds	r3, r7, #7
 8002946:	781b      	ldrb	r3, [r3, #0]
 8002948:	3316      	adds	r3, #22
 800294a:	b2d8      	uxtb	r0, r3
 800294c:	1dbb      	adds	r3, r7, #6
 800294e:	781b      	ldrb	r3, [r3, #0]
 8002950:	3b1d      	subs	r3, #29
 8002952:	b2db      	uxtb	r3, r3
 8002954:	22ff      	movs	r2, #255	; 0xff
 8002956:	0019      	movs	r1, r3
 8002958:	f001 fe94 	bl	8004684 <oled_set_pix>
 800295c:	1dfb      	adds	r3, r7, #7
 800295e:	781b      	ldrb	r3, [r3, #0]
 8002960:	3317      	adds	r3, #23
 8002962:	b2d8      	uxtb	r0, r3
 8002964:	1dbb      	adds	r3, r7, #6
 8002966:	781b      	ldrb	r3, [r3, #0]
 8002968:	3b05      	subs	r3, #5
 800296a:	b2db      	uxtb	r3, r3
 800296c:	22ff      	movs	r2, #255	; 0xff
 800296e:	0019      	movs	r1, r3
 8002970:	f001 fe88 	bl	8004684 <oled_set_pix>
 8002974:	1dfb      	adds	r3, r7, #7
 8002976:	781b      	ldrb	r3, [r3, #0]
 8002978:	3317      	adds	r3, #23
 800297a:	b2d8      	uxtb	r0, r3
 800297c:	1dbb      	adds	r3, r7, #6
 800297e:	781b      	ldrb	r3, [r3, #0]
 8002980:	3b06      	subs	r3, #6
 8002982:	b2db      	uxtb	r3, r3
 8002984:	22ff      	movs	r2, #255	; 0xff
 8002986:	0019      	movs	r1, r3
 8002988:	f001 fe7c 	bl	8004684 <oled_set_pix>
 800298c:	1dfb      	adds	r3, r7, #7
 800298e:	781b      	ldrb	r3, [r3, #0]
 8002990:	3317      	adds	r3, #23
 8002992:	b2d8      	uxtb	r0, r3
 8002994:	1dbb      	adds	r3, r7, #6
 8002996:	781b      	ldrb	r3, [r3, #0]
 8002998:	3b09      	subs	r3, #9
 800299a:	b2db      	uxtb	r3, r3
 800299c:	22ff      	movs	r2, #255	; 0xff
 800299e:	0019      	movs	r1, r3
 80029a0:	f001 fe70 	bl	8004684 <oled_set_pix>
 80029a4:	1dfb      	adds	r3, r7, #7
 80029a6:	781b      	ldrb	r3, [r3, #0]
 80029a8:	3317      	adds	r3, #23
 80029aa:	b2d8      	uxtb	r0, r3
 80029ac:	1dbb      	adds	r3, r7, #6
 80029ae:	781b      	ldrb	r3, [r3, #0]
 80029b0:	3b0a      	subs	r3, #10
 80029b2:	b2db      	uxtb	r3, r3
 80029b4:	22ff      	movs	r2, #255	; 0xff
 80029b6:	0019      	movs	r1, r3
 80029b8:	f001 fe64 	bl	8004684 <oled_set_pix>
 80029bc:	1dfb      	adds	r3, r7, #7
 80029be:	781b      	ldrb	r3, [r3, #0]
 80029c0:	3317      	adds	r3, #23
 80029c2:	b2d8      	uxtb	r0, r3
 80029c4:	1dbb      	adds	r3, r7, #6
 80029c6:	781b      	ldrb	r3, [r3, #0]
 80029c8:	3b10      	subs	r3, #16
 80029ca:	b2db      	uxtb	r3, r3
 80029cc:	22ff      	movs	r2, #255	; 0xff
 80029ce:	0019      	movs	r1, r3
 80029d0:	f001 fe58 	bl	8004684 <oled_set_pix>
 80029d4:	1dfb      	adds	r3, r7, #7
 80029d6:	781b      	ldrb	r3, [r3, #0]
 80029d8:	3317      	adds	r3, #23
 80029da:	b2d8      	uxtb	r0, r3
 80029dc:	1dbb      	adds	r3, r7, #6
 80029de:	781b      	ldrb	r3, [r3, #0]
 80029e0:	3b11      	subs	r3, #17
 80029e2:	b2db      	uxtb	r3, r3
 80029e4:	22ff      	movs	r2, #255	; 0xff
 80029e6:	0019      	movs	r1, r3
 80029e8:	f001 fe4c 	bl	8004684 <oled_set_pix>
 80029ec:	1dfb      	adds	r3, r7, #7
 80029ee:	781b      	ldrb	r3, [r3, #0]
 80029f0:	3317      	adds	r3, #23
 80029f2:	b2d8      	uxtb	r0, r3
 80029f4:	1dbb      	adds	r3, r7, #6
 80029f6:	781b      	ldrb	r3, [r3, #0]
 80029f8:	3b13      	subs	r3, #19
 80029fa:	b2db      	uxtb	r3, r3
 80029fc:	22ff      	movs	r2, #255	; 0xff
 80029fe:	0019      	movs	r1, r3
 8002a00:	f001 fe40 	bl	8004684 <oled_set_pix>
 8002a04:	1dfb      	adds	r3, r7, #7
 8002a06:	781b      	ldrb	r3, [r3, #0]
 8002a08:	3317      	adds	r3, #23
 8002a0a:	b2d8      	uxtb	r0, r3
 8002a0c:	1dbb      	adds	r3, r7, #6
 8002a0e:	781b      	ldrb	r3, [r3, #0]
 8002a10:	3b14      	subs	r3, #20
 8002a12:	b2db      	uxtb	r3, r3
 8002a14:	22ff      	movs	r2, #255	; 0xff
 8002a16:	0019      	movs	r1, r3
 8002a18:	f001 fe34 	bl	8004684 <oled_set_pix>
 8002a1c:	1dfb      	adds	r3, r7, #7
 8002a1e:	781b      	ldrb	r3, [r3, #0]
 8002a20:	3317      	adds	r3, #23
 8002a22:	b2d8      	uxtb	r0, r3
 8002a24:	1dbb      	adds	r3, r7, #6
 8002a26:	781b      	ldrb	r3, [r3, #0]
 8002a28:	3b17      	subs	r3, #23
 8002a2a:	b2db      	uxtb	r3, r3
 8002a2c:	22ff      	movs	r2, #255	; 0xff
 8002a2e:	0019      	movs	r1, r3
 8002a30:	f001 fe28 	bl	8004684 <oled_set_pix>
 8002a34:	1dfb      	adds	r3, r7, #7
 8002a36:	781b      	ldrb	r3, [r3, #0]
 8002a38:	3317      	adds	r3, #23
 8002a3a:	b2d8      	uxtb	r0, r3
 8002a3c:	1dbb      	adds	r3, r7, #6
 8002a3e:	781b      	ldrb	r3, [r3, #0]
 8002a40:	3b18      	subs	r3, #24
 8002a42:	b2db      	uxtb	r3, r3
 8002a44:	22ff      	movs	r2, #255	; 0xff
 8002a46:	0019      	movs	r1, r3
 8002a48:	f001 fe1c 	bl	8004684 <oled_set_pix>
 8002a4c:	1dfb      	adds	r3, r7, #7
 8002a4e:	781b      	ldrb	r3, [r3, #0]
 8002a50:	3317      	adds	r3, #23
 8002a52:	b2d8      	uxtb	r0, r3
 8002a54:	1dbb      	adds	r3, r7, #6
 8002a56:	781b      	ldrb	r3, [r3, #0]
 8002a58:	3b19      	subs	r3, #25
 8002a5a:	b2db      	uxtb	r3, r3
 8002a5c:	22ff      	movs	r2, #255	; 0xff
 8002a5e:	0019      	movs	r1, r3
 8002a60:	f001 fe10 	bl	8004684 <oled_set_pix>
 8002a64:	1dfb      	adds	r3, r7, #7
 8002a66:	781b      	ldrb	r3, [r3, #0]
 8002a68:	3317      	adds	r3, #23
 8002a6a:	b2d8      	uxtb	r0, r3
 8002a6c:	1dbb      	adds	r3, r7, #6
 8002a6e:	781b      	ldrb	r3, [r3, #0]
 8002a70:	3b1a      	subs	r3, #26
 8002a72:	b2db      	uxtb	r3, r3
 8002a74:	22ff      	movs	r2, #255	; 0xff
 8002a76:	0019      	movs	r1, r3
 8002a78:	f001 fe04 	bl	8004684 <oled_set_pix>
 8002a7c:	1dfb      	adds	r3, r7, #7
 8002a7e:	781b      	ldrb	r3, [r3, #0]
 8002a80:	3317      	adds	r3, #23
 8002a82:	b2d8      	uxtb	r0, r3
 8002a84:	1dbb      	adds	r3, r7, #6
 8002a86:	781b      	ldrb	r3, [r3, #0]
 8002a88:	3b1b      	subs	r3, #27
 8002a8a:	b2db      	uxtb	r3, r3
 8002a8c:	22ff      	movs	r2, #255	; 0xff
 8002a8e:	0019      	movs	r1, r3
 8002a90:	f001 fdf8 	bl	8004684 <oled_set_pix>
 8002a94:	1dfb      	adds	r3, r7, #7
 8002a96:	781b      	ldrb	r3, [r3, #0]
 8002a98:	3317      	adds	r3, #23
 8002a9a:	b2d8      	uxtb	r0, r3
 8002a9c:	1dbb      	adds	r3, r7, #6
 8002a9e:	781b      	ldrb	r3, [r3, #0]
 8002aa0:	3b1d      	subs	r3, #29
 8002aa2:	b2db      	uxtb	r3, r3
 8002aa4:	22ff      	movs	r2, #255	; 0xff
 8002aa6:	0019      	movs	r1, r3
 8002aa8:	f001 fdec 	bl	8004684 <oled_set_pix>
 8002aac:	1dfb      	adds	r3, r7, #7
 8002aae:	781b      	ldrb	r3, [r3, #0]
 8002ab0:	3317      	adds	r3, #23
 8002ab2:	b2d8      	uxtb	r0, r3
 8002ab4:	1dbb      	adds	r3, r7, #6
 8002ab6:	781b      	ldrb	r3, [r3, #0]
 8002ab8:	3b1e      	subs	r3, #30
 8002aba:	b2db      	uxtb	r3, r3
 8002abc:	22ff      	movs	r2, #255	; 0xff
 8002abe:	0019      	movs	r1, r3
 8002ac0:	f001 fde0 	bl	8004684 <oled_set_pix>
 8002ac4:	1dfb      	adds	r3, r7, #7
 8002ac6:	781b      	ldrb	r3, [r3, #0]
 8002ac8:	3318      	adds	r3, #24
 8002aca:	b2d8      	uxtb	r0, r3
 8002acc:	1dbb      	adds	r3, r7, #6
 8002ace:	781b      	ldrb	r3, [r3, #0]
 8002ad0:	3b03      	subs	r3, #3
 8002ad2:	b2db      	uxtb	r3, r3
 8002ad4:	22ff      	movs	r2, #255	; 0xff
 8002ad6:	0019      	movs	r1, r3
 8002ad8:	f001 fdd4 	bl	8004684 <oled_set_pix>
 8002adc:	1dfb      	adds	r3, r7, #7
 8002ade:	781b      	ldrb	r3, [r3, #0]
 8002ae0:	3318      	adds	r3, #24
 8002ae2:	b2d8      	uxtb	r0, r3
 8002ae4:	1dbb      	adds	r3, r7, #6
 8002ae6:	781b      	ldrb	r3, [r3, #0]
 8002ae8:	3b04      	subs	r3, #4
 8002aea:	b2db      	uxtb	r3, r3
 8002aec:	22ff      	movs	r2, #255	; 0xff
 8002aee:	0019      	movs	r1, r3
 8002af0:	f001 fdc8 	bl	8004684 <oled_set_pix>
 8002af4:	1dfb      	adds	r3, r7, #7
 8002af6:	781b      	ldrb	r3, [r3, #0]
 8002af8:	3318      	adds	r3, #24
 8002afa:	b2d8      	uxtb	r0, r3
 8002afc:	1dbb      	adds	r3, r7, #6
 8002afe:	781b      	ldrb	r3, [r3, #0]
 8002b00:	3b05      	subs	r3, #5
 8002b02:	b2db      	uxtb	r3, r3
 8002b04:	22ff      	movs	r2, #255	; 0xff
 8002b06:	0019      	movs	r1, r3
 8002b08:	f001 fdbc 	bl	8004684 <oled_set_pix>
 8002b0c:	1dfb      	adds	r3, r7, #7
 8002b0e:	781b      	ldrb	r3, [r3, #0]
 8002b10:	3318      	adds	r3, #24
 8002b12:	b2d8      	uxtb	r0, r3
 8002b14:	1dbb      	adds	r3, r7, #6
 8002b16:	781b      	ldrb	r3, [r3, #0]
 8002b18:	3b0a      	subs	r3, #10
 8002b1a:	b2db      	uxtb	r3, r3
 8002b1c:	22ff      	movs	r2, #255	; 0xff
 8002b1e:	0019      	movs	r1, r3
 8002b20:	f001 fdb0 	bl	8004684 <oled_set_pix>
 8002b24:	1dfb      	adds	r3, r7, #7
 8002b26:	781b      	ldrb	r3, [r3, #0]
 8002b28:	3318      	adds	r3, #24
 8002b2a:	b2d8      	uxtb	r0, r3
 8002b2c:	1dbb      	adds	r3, r7, #6
 8002b2e:	781b      	ldrb	r3, [r3, #0]
 8002b30:	3b0b      	subs	r3, #11
 8002b32:	b2db      	uxtb	r3, r3
 8002b34:	22ff      	movs	r2, #255	; 0xff
 8002b36:	0019      	movs	r1, r3
 8002b38:	f001 fda4 	bl	8004684 <oled_set_pix>
 8002b3c:	1dfb      	adds	r3, r7, #7
 8002b3e:	781b      	ldrb	r3, [r3, #0]
 8002b40:	3318      	adds	r3, #24
 8002b42:	b2d8      	uxtb	r0, r3
 8002b44:	1dbb      	adds	r3, r7, #6
 8002b46:	781b      	ldrb	r3, [r3, #0]
 8002b48:	3b0c      	subs	r3, #12
 8002b4a:	b2db      	uxtb	r3, r3
 8002b4c:	22ff      	movs	r2, #255	; 0xff
 8002b4e:	0019      	movs	r1, r3
 8002b50:	f001 fd98 	bl	8004684 <oled_set_pix>
 8002b54:	1dfb      	adds	r3, r7, #7
 8002b56:	781b      	ldrb	r3, [r3, #0]
 8002b58:	3318      	adds	r3, #24
 8002b5a:	b2d8      	uxtb	r0, r3
 8002b5c:	1dbb      	adds	r3, r7, #6
 8002b5e:	781b      	ldrb	r3, [r3, #0]
 8002b60:	3b10      	subs	r3, #16
 8002b62:	b2db      	uxtb	r3, r3
 8002b64:	22ff      	movs	r2, #255	; 0xff
 8002b66:	0019      	movs	r1, r3
 8002b68:	f001 fd8c 	bl	8004684 <oled_set_pix>
 8002b6c:	1dfb      	adds	r3, r7, #7
 8002b6e:	781b      	ldrb	r3, [r3, #0]
 8002b70:	3318      	adds	r3, #24
 8002b72:	b2d8      	uxtb	r0, r3
 8002b74:	1dbb      	adds	r3, r7, #6
 8002b76:	781b      	ldrb	r3, [r3, #0]
 8002b78:	3b11      	subs	r3, #17
 8002b7a:	b2db      	uxtb	r3, r3
 8002b7c:	22ff      	movs	r2, #255	; 0xff
 8002b7e:	0019      	movs	r1, r3
 8002b80:	f001 fd80 	bl	8004684 <oled_set_pix>
 8002b84:	1dfb      	adds	r3, r7, #7
 8002b86:	781b      	ldrb	r3, [r3, #0]
 8002b88:	3318      	adds	r3, #24
 8002b8a:	b2d8      	uxtb	r0, r3
 8002b8c:	1dbb      	adds	r3, r7, #6
 8002b8e:	781b      	ldrb	r3, [r3, #0]
 8002b90:	3b13      	subs	r3, #19
 8002b92:	b2db      	uxtb	r3, r3
 8002b94:	22ff      	movs	r2, #255	; 0xff
 8002b96:	0019      	movs	r1, r3
 8002b98:	f001 fd74 	bl	8004684 <oled_set_pix>
 8002b9c:	1dfb      	adds	r3, r7, #7
 8002b9e:	781b      	ldrb	r3, [r3, #0]
 8002ba0:	3318      	adds	r3, #24
 8002ba2:	b2d8      	uxtb	r0, r3
 8002ba4:	1dbb      	adds	r3, r7, #6
 8002ba6:	781b      	ldrb	r3, [r3, #0]
 8002ba8:	3b14      	subs	r3, #20
 8002baa:	b2db      	uxtb	r3, r3
 8002bac:	22ff      	movs	r2, #255	; 0xff
 8002bae:	0019      	movs	r1, r3
 8002bb0:	f001 fd68 	bl	8004684 <oled_set_pix>
 8002bb4:	1dfb      	adds	r3, r7, #7
 8002bb6:	781b      	ldrb	r3, [r3, #0]
 8002bb8:	3318      	adds	r3, #24
 8002bba:	b2d8      	uxtb	r0, r3
 8002bbc:	1dbb      	adds	r3, r7, #6
 8002bbe:	781b      	ldrb	r3, [r3, #0]
 8002bc0:	3b16      	subs	r3, #22
 8002bc2:	b2db      	uxtb	r3, r3
 8002bc4:	22ff      	movs	r2, #255	; 0xff
 8002bc6:	0019      	movs	r1, r3
 8002bc8:	f001 fd5c 	bl	8004684 <oled_set_pix>
 8002bcc:	1dfb      	adds	r3, r7, #7
 8002bce:	781b      	ldrb	r3, [r3, #0]
 8002bd0:	3318      	adds	r3, #24
 8002bd2:	b2d8      	uxtb	r0, r3
 8002bd4:	1dbb      	adds	r3, r7, #6
 8002bd6:	781b      	ldrb	r3, [r3, #0]
 8002bd8:	3b19      	subs	r3, #25
 8002bda:	b2db      	uxtb	r3, r3
 8002bdc:	22ff      	movs	r2, #255	; 0xff
 8002bde:	0019      	movs	r1, r3
 8002be0:	f001 fd50 	bl	8004684 <oled_set_pix>
 8002be4:	1dfb      	adds	r3, r7, #7
 8002be6:	781b      	ldrb	r3, [r3, #0]
 8002be8:	3318      	adds	r3, #24
 8002bea:	b2d8      	uxtb	r0, r3
 8002bec:	1dbb      	adds	r3, r7, #6
 8002bee:	781b      	ldrb	r3, [r3, #0]
 8002bf0:	3b1a      	subs	r3, #26
 8002bf2:	b2db      	uxtb	r3, r3
 8002bf4:	22ff      	movs	r2, #255	; 0xff
 8002bf6:	0019      	movs	r1, r3
 8002bf8:	f001 fd44 	bl	8004684 <oled_set_pix>
 8002bfc:	1dfb      	adds	r3, r7, #7
 8002bfe:	781b      	ldrb	r3, [r3, #0]
 8002c00:	3318      	adds	r3, #24
 8002c02:	b2d8      	uxtb	r0, r3
 8002c04:	1dbb      	adds	r3, r7, #6
 8002c06:	781b      	ldrb	r3, [r3, #0]
 8002c08:	3b1c      	subs	r3, #28
 8002c0a:	b2db      	uxtb	r3, r3
 8002c0c:	22ff      	movs	r2, #255	; 0xff
 8002c0e:	0019      	movs	r1, r3
 8002c10:	f001 fd38 	bl	8004684 <oled_set_pix>
 8002c14:	1dfb      	adds	r3, r7, #7
 8002c16:	781b      	ldrb	r3, [r3, #0]
 8002c18:	3318      	adds	r3, #24
 8002c1a:	b2d8      	uxtb	r0, r3
 8002c1c:	1dbb      	adds	r3, r7, #6
 8002c1e:	781b      	ldrb	r3, [r3, #0]
 8002c20:	3b1d      	subs	r3, #29
 8002c22:	b2db      	uxtb	r3, r3
 8002c24:	22ff      	movs	r2, #255	; 0xff
 8002c26:	0019      	movs	r1, r3
 8002c28:	f001 fd2c 	bl	8004684 <oled_set_pix>
 8002c2c:	1dfb      	adds	r3, r7, #7
 8002c2e:	781b      	ldrb	r3, [r3, #0]
 8002c30:	3319      	adds	r3, #25
 8002c32:	b2d8      	uxtb	r0, r3
 8002c34:	1dbb      	adds	r3, r7, #6
 8002c36:	781b      	ldrb	r3, [r3, #0]
 8002c38:	3b0c      	subs	r3, #12
 8002c3a:	b2db      	uxtb	r3, r3
 8002c3c:	22ff      	movs	r2, #255	; 0xff
 8002c3e:	0019      	movs	r1, r3
 8002c40:	f001 fd20 	bl	8004684 <oled_set_pix>
 8002c44:	1dfb      	adds	r3, r7, #7
 8002c46:	781b      	ldrb	r3, [r3, #0]
 8002c48:	3319      	adds	r3, #25
 8002c4a:	b2d8      	uxtb	r0, r3
 8002c4c:	1dbb      	adds	r3, r7, #6
 8002c4e:	781b      	ldrb	r3, [r3, #0]
 8002c50:	3b0d      	subs	r3, #13
 8002c52:	b2db      	uxtb	r3, r3
 8002c54:	22ff      	movs	r2, #255	; 0xff
 8002c56:	0019      	movs	r1, r3
 8002c58:	f001 fd14 	bl	8004684 <oled_set_pix>
 8002c5c:	1dfb      	adds	r3, r7, #7
 8002c5e:	781b      	ldrb	r3, [r3, #0]
 8002c60:	3319      	adds	r3, #25
 8002c62:	b2d8      	uxtb	r0, r3
 8002c64:	1dbb      	adds	r3, r7, #6
 8002c66:	781b      	ldrb	r3, [r3, #0]
 8002c68:	3b0f      	subs	r3, #15
 8002c6a:	b2db      	uxtb	r3, r3
 8002c6c:	22ff      	movs	r2, #255	; 0xff
 8002c6e:	0019      	movs	r1, r3
 8002c70:	f001 fd08 	bl	8004684 <oled_set_pix>
 8002c74:	1dfb      	adds	r3, r7, #7
 8002c76:	781b      	ldrb	r3, [r3, #0]
 8002c78:	3319      	adds	r3, #25
 8002c7a:	b2d8      	uxtb	r0, r3
 8002c7c:	1dbb      	adds	r3, r7, #6
 8002c7e:	781b      	ldrb	r3, [r3, #0]
 8002c80:	3b10      	subs	r3, #16
 8002c82:	b2db      	uxtb	r3, r3
 8002c84:	22ff      	movs	r2, #255	; 0xff
 8002c86:	0019      	movs	r1, r3
 8002c88:	f001 fcfc 	bl	8004684 <oled_set_pix>
 8002c8c:	1dfb      	adds	r3, r7, #7
 8002c8e:	781b      	ldrb	r3, [r3, #0]
 8002c90:	3319      	adds	r3, #25
 8002c92:	b2d8      	uxtb	r0, r3
 8002c94:	1dbb      	adds	r3, r7, #6
 8002c96:	781b      	ldrb	r3, [r3, #0]
 8002c98:	3b11      	subs	r3, #17
 8002c9a:	b2db      	uxtb	r3, r3
 8002c9c:	22ff      	movs	r2, #255	; 0xff
 8002c9e:	0019      	movs	r1, r3
 8002ca0:	f001 fcf0 	bl	8004684 <oled_set_pix>
 8002ca4:	1dfb      	adds	r3, r7, #7
 8002ca6:	781b      	ldrb	r3, [r3, #0]
 8002ca8:	3319      	adds	r3, #25
 8002caa:	b2d8      	uxtb	r0, r3
 8002cac:	1dbb      	adds	r3, r7, #6
 8002cae:	781b      	ldrb	r3, [r3, #0]
 8002cb0:	3b13      	subs	r3, #19
 8002cb2:	b2db      	uxtb	r3, r3
 8002cb4:	22ff      	movs	r2, #255	; 0xff
 8002cb6:	0019      	movs	r1, r3
 8002cb8:	f001 fce4 	bl	8004684 <oled_set_pix>
 8002cbc:	1dfb      	adds	r3, r7, #7
 8002cbe:	781b      	ldrb	r3, [r3, #0]
 8002cc0:	3319      	adds	r3, #25
 8002cc2:	b2d8      	uxtb	r0, r3
 8002cc4:	1dbb      	adds	r3, r7, #6
 8002cc6:	781b      	ldrb	r3, [r3, #0]
 8002cc8:	3b17      	subs	r3, #23
 8002cca:	b2db      	uxtb	r3, r3
 8002ccc:	22ff      	movs	r2, #255	; 0xff
 8002cce:	0019      	movs	r1, r3
 8002cd0:	f001 fcd8 	bl	8004684 <oled_set_pix>
 8002cd4:	1dfb      	adds	r3, r7, #7
 8002cd6:	781b      	ldrb	r3, [r3, #0]
 8002cd8:	3319      	adds	r3, #25
 8002cda:	b2d8      	uxtb	r0, r3
 8002cdc:	1dbb      	adds	r3, r7, #6
 8002cde:	781b      	ldrb	r3, [r3, #0]
 8002ce0:	3b18      	subs	r3, #24
 8002ce2:	b2db      	uxtb	r3, r3
 8002ce4:	22ff      	movs	r2, #255	; 0xff
 8002ce6:	0019      	movs	r1, r3
 8002ce8:	f001 fccc 	bl	8004684 <oled_set_pix>
 8002cec:	1dfb      	adds	r3, r7, #7
 8002cee:	781b      	ldrb	r3, [r3, #0]
 8002cf0:	3319      	adds	r3, #25
 8002cf2:	b2d8      	uxtb	r0, r3
 8002cf4:	1dbb      	adds	r3, r7, #6
 8002cf6:	781b      	ldrb	r3, [r3, #0]
 8002cf8:	3b19      	subs	r3, #25
 8002cfa:	b2db      	uxtb	r3, r3
 8002cfc:	22ff      	movs	r2, #255	; 0xff
 8002cfe:	0019      	movs	r1, r3
 8002d00:	f001 fcc0 	bl	8004684 <oled_set_pix>
 8002d04:	1dfb      	adds	r3, r7, #7
 8002d06:	781b      	ldrb	r3, [r3, #0]
 8002d08:	3319      	adds	r3, #25
 8002d0a:	b2d8      	uxtb	r0, r3
 8002d0c:	1dbb      	adds	r3, r7, #6
 8002d0e:	781b      	ldrb	r3, [r3, #0]
 8002d10:	3b1a      	subs	r3, #26
 8002d12:	b2db      	uxtb	r3, r3
 8002d14:	22ff      	movs	r2, #255	; 0xff
 8002d16:	0019      	movs	r1, r3
 8002d18:	f001 fcb4 	bl	8004684 <oled_set_pix>
 8002d1c:	1dfb      	adds	r3, r7, #7
 8002d1e:	781b      	ldrb	r3, [r3, #0]
 8002d20:	3319      	adds	r3, #25
 8002d22:	b2d8      	uxtb	r0, r3
 8002d24:	1dbb      	adds	r3, r7, #6
 8002d26:	781b      	ldrb	r3, [r3, #0]
 8002d28:	3b1b      	subs	r3, #27
 8002d2a:	b2db      	uxtb	r3, r3
 8002d2c:	22ff      	movs	r2, #255	; 0xff
 8002d2e:	0019      	movs	r1, r3
 8002d30:	f001 fca8 	bl	8004684 <oled_set_pix>
 8002d34:	1dfb      	adds	r3, r7, #7
 8002d36:	781b      	ldrb	r3, [r3, #0]
 8002d38:	3319      	adds	r3, #25
 8002d3a:	b2d8      	uxtb	r0, r3
 8002d3c:	1dbb      	adds	r3, r7, #6
 8002d3e:	781b      	ldrb	r3, [r3, #0]
 8002d40:	3b1c      	subs	r3, #28
 8002d42:	b2db      	uxtb	r3, r3
 8002d44:	22ff      	movs	r2, #255	; 0xff
 8002d46:	0019      	movs	r1, r3
 8002d48:	f001 fc9c 	bl	8004684 <oled_set_pix>
 8002d4c:	1dfb      	adds	r3, r7, #7
 8002d4e:	781b      	ldrb	r3, [r3, #0]
 8002d50:	331a      	adds	r3, #26
 8002d52:	b2d8      	uxtb	r0, r3
 8002d54:	1dbb      	adds	r3, r7, #6
 8002d56:	781b      	ldrb	r3, [r3, #0]
 8002d58:	3b04      	subs	r3, #4
 8002d5a:	b2db      	uxtb	r3, r3
 8002d5c:	22ff      	movs	r2, #255	; 0xff
 8002d5e:	0019      	movs	r1, r3
 8002d60:	f001 fc90 	bl	8004684 <oled_set_pix>
 8002d64:	1dfb      	adds	r3, r7, #7
 8002d66:	781b      	ldrb	r3, [r3, #0]
 8002d68:	331a      	adds	r3, #26
 8002d6a:	b2d8      	uxtb	r0, r3
 8002d6c:	1dbb      	adds	r3, r7, #6
 8002d6e:	781b      	ldrb	r3, [r3, #0]
 8002d70:	3b05      	subs	r3, #5
 8002d72:	b2db      	uxtb	r3, r3
 8002d74:	22ff      	movs	r2, #255	; 0xff
 8002d76:	0019      	movs	r1, r3
 8002d78:	f001 fc84 	bl	8004684 <oled_set_pix>
 8002d7c:	1dfb      	adds	r3, r7, #7
 8002d7e:	781b      	ldrb	r3, [r3, #0]
 8002d80:	331a      	adds	r3, #26
 8002d82:	b2d8      	uxtb	r0, r3
 8002d84:	1dbb      	adds	r3, r7, #6
 8002d86:	781b      	ldrb	r3, [r3, #0]
 8002d88:	3b06      	subs	r3, #6
 8002d8a:	b2db      	uxtb	r3, r3
 8002d8c:	22ff      	movs	r2, #255	; 0xff
 8002d8e:	0019      	movs	r1, r3
 8002d90:	f001 fc78 	bl	8004684 <oled_set_pix>
 8002d94:	1dfb      	adds	r3, r7, #7
 8002d96:	781b      	ldrb	r3, [r3, #0]
 8002d98:	331a      	adds	r3, #26
 8002d9a:	b2d8      	uxtb	r0, r3
 8002d9c:	1dbb      	adds	r3, r7, #6
 8002d9e:	781b      	ldrb	r3, [r3, #0]
 8002da0:	3b0c      	subs	r3, #12
 8002da2:	b2db      	uxtb	r3, r3
 8002da4:	22ff      	movs	r2, #255	; 0xff
 8002da6:	0019      	movs	r1, r3
 8002da8:	f001 fc6c 	bl	8004684 <oled_set_pix>
 8002dac:	1dfb      	adds	r3, r7, #7
 8002dae:	781b      	ldrb	r3, [r3, #0]
 8002db0:	331a      	adds	r3, #26
 8002db2:	b2d8      	uxtb	r0, r3
 8002db4:	1dbb      	adds	r3, r7, #6
 8002db6:	781b      	ldrb	r3, [r3, #0]
 8002db8:	3b0d      	subs	r3, #13
 8002dba:	b2db      	uxtb	r3, r3
 8002dbc:	22ff      	movs	r2, #255	; 0xff
 8002dbe:	0019      	movs	r1, r3
 8002dc0:	f001 fc60 	bl	8004684 <oled_set_pix>
 8002dc4:	1dfb      	adds	r3, r7, #7
 8002dc6:	781b      	ldrb	r3, [r3, #0]
 8002dc8:	331a      	adds	r3, #26
 8002dca:	b2d8      	uxtb	r0, r3
 8002dcc:	1dbb      	adds	r3, r7, #6
 8002dce:	781b      	ldrb	r3, [r3, #0]
 8002dd0:	3b10      	subs	r3, #16
 8002dd2:	b2db      	uxtb	r3, r3
 8002dd4:	22ff      	movs	r2, #255	; 0xff
 8002dd6:	0019      	movs	r1, r3
 8002dd8:	f001 fc54 	bl	8004684 <oled_set_pix>
 8002ddc:	1dfb      	adds	r3, r7, #7
 8002dde:	781b      	ldrb	r3, [r3, #0]
 8002de0:	331a      	adds	r3, #26
 8002de2:	b2d8      	uxtb	r0, r3
 8002de4:	1dbb      	adds	r3, r7, #6
 8002de6:	781b      	ldrb	r3, [r3, #0]
 8002de8:	3b11      	subs	r3, #17
 8002dea:	b2db      	uxtb	r3, r3
 8002dec:	22ff      	movs	r2, #255	; 0xff
 8002dee:	0019      	movs	r1, r3
 8002df0:	f001 fc48 	bl	8004684 <oled_set_pix>
 8002df4:	1dfb      	adds	r3, r7, #7
 8002df6:	781b      	ldrb	r3, [r3, #0]
 8002df8:	331a      	adds	r3, #26
 8002dfa:	b2d8      	uxtb	r0, r3
 8002dfc:	1dbb      	adds	r3, r7, #6
 8002dfe:	781b      	ldrb	r3, [r3, #0]
 8002e00:	3b16      	subs	r3, #22
 8002e02:	b2db      	uxtb	r3, r3
 8002e04:	22ff      	movs	r2, #255	; 0xff
 8002e06:	0019      	movs	r1, r3
 8002e08:	f001 fc3c 	bl	8004684 <oled_set_pix>
 8002e0c:	1dfb      	adds	r3, r7, #7
 8002e0e:	781b      	ldrb	r3, [r3, #0]
 8002e10:	331a      	adds	r3, #26
 8002e12:	b2d8      	uxtb	r0, r3
 8002e14:	1dbb      	adds	r3, r7, #6
 8002e16:	781b      	ldrb	r3, [r3, #0]
 8002e18:	3b19      	subs	r3, #25
 8002e1a:	b2db      	uxtb	r3, r3
 8002e1c:	22ff      	movs	r2, #255	; 0xff
 8002e1e:	0019      	movs	r1, r3
 8002e20:	f001 fc30 	bl	8004684 <oled_set_pix>
 8002e24:	1dfb      	adds	r3, r7, #7
 8002e26:	781b      	ldrb	r3, [r3, #0]
 8002e28:	331a      	adds	r3, #26
 8002e2a:	b2d8      	uxtb	r0, r3
 8002e2c:	1dbb      	adds	r3, r7, #6
 8002e2e:	781b      	ldrb	r3, [r3, #0]
 8002e30:	3b1a      	subs	r3, #26
 8002e32:	b2db      	uxtb	r3, r3
 8002e34:	22ff      	movs	r2, #255	; 0xff
 8002e36:	0019      	movs	r1, r3
 8002e38:	f001 fc24 	bl	8004684 <oled_set_pix>
 8002e3c:	1dfb      	adds	r3, r7, #7
 8002e3e:	781b      	ldrb	r3, [r3, #0]
 8002e40:	331a      	adds	r3, #26
 8002e42:	b2d8      	uxtb	r0, r3
 8002e44:	1dbb      	adds	r3, r7, #6
 8002e46:	781b      	ldrb	r3, [r3, #0]
 8002e48:	3b1c      	subs	r3, #28
 8002e4a:	b2db      	uxtb	r3, r3
 8002e4c:	22ff      	movs	r2, #255	; 0xff
 8002e4e:	0019      	movs	r1, r3
 8002e50:	f001 fc18 	bl	8004684 <oled_set_pix>
 8002e54:	1dfb      	adds	r3, r7, #7
 8002e56:	781b      	ldrb	r3, [r3, #0]
 8002e58:	331a      	adds	r3, #26
 8002e5a:	b2d8      	uxtb	r0, r3
 8002e5c:	1dbb      	adds	r3, r7, #6
 8002e5e:	781b      	ldrb	r3, [r3, #0]
 8002e60:	3b1d      	subs	r3, #29
 8002e62:	b2db      	uxtb	r3, r3
 8002e64:	22ff      	movs	r2, #255	; 0xff
 8002e66:	0019      	movs	r1, r3
 8002e68:	f001 fc0c 	bl	8004684 <oled_set_pix>
 8002e6c:	1dfb      	adds	r3, r7, #7
 8002e6e:	781b      	ldrb	r3, [r3, #0]
 8002e70:	331b      	adds	r3, #27
 8002e72:	b2d8      	uxtb	r0, r3
 8002e74:	1dbb      	adds	r3, r7, #6
 8002e76:	781b      	ldrb	r3, [r3, #0]
 8002e78:	3b02      	subs	r3, #2
 8002e7a:	b2db      	uxtb	r3, r3
 8002e7c:	22ff      	movs	r2, #255	; 0xff
 8002e7e:	0019      	movs	r1, r3
 8002e80:	f001 fc00 	bl	8004684 <oled_set_pix>
 8002e84:	1dfb      	adds	r3, r7, #7
 8002e86:	781b      	ldrb	r3, [r3, #0]
 8002e88:	331b      	adds	r3, #27
 8002e8a:	b2d8      	uxtb	r0, r3
 8002e8c:	1dbb      	adds	r3, r7, #6
 8002e8e:	781b      	ldrb	r3, [r3, #0]
 8002e90:	3b03      	subs	r3, #3
 8002e92:	b2db      	uxtb	r3, r3
 8002e94:	22ff      	movs	r2, #255	; 0xff
 8002e96:	0019      	movs	r1, r3
 8002e98:	f001 fbf4 	bl	8004684 <oled_set_pix>
 8002e9c:	1dfb      	adds	r3, r7, #7
 8002e9e:	781b      	ldrb	r3, [r3, #0]
 8002ea0:	331b      	adds	r3, #27
 8002ea2:	b2d8      	uxtb	r0, r3
 8002ea4:	1dbb      	adds	r3, r7, #6
 8002ea6:	781b      	ldrb	r3, [r3, #0]
 8002ea8:	3b04      	subs	r3, #4
 8002eaa:	b2db      	uxtb	r3, r3
 8002eac:	22ff      	movs	r2, #255	; 0xff
 8002eae:	0019      	movs	r1, r3
 8002eb0:	f001 fbe8 	bl	8004684 <oled_set_pix>
 8002eb4:	1dfb      	adds	r3, r7, #7
 8002eb6:	781b      	ldrb	r3, [r3, #0]
 8002eb8:	331b      	adds	r3, #27
 8002eba:	b2d8      	uxtb	r0, r3
 8002ebc:	1dbb      	adds	r3, r7, #6
 8002ebe:	781b      	ldrb	r3, [r3, #0]
 8002ec0:	3b06      	subs	r3, #6
 8002ec2:	b2db      	uxtb	r3, r3
 8002ec4:	22ff      	movs	r2, #255	; 0xff
 8002ec6:	0019      	movs	r1, r3
 8002ec8:	f001 fbdc 	bl	8004684 <oled_set_pix>
 8002ecc:	1dfb      	adds	r3, r7, #7
 8002ece:	781b      	ldrb	r3, [r3, #0]
 8002ed0:	331b      	adds	r3, #27
 8002ed2:	b2d8      	uxtb	r0, r3
 8002ed4:	1dbb      	adds	r3, r7, #6
 8002ed6:	781b      	ldrb	r3, [r3, #0]
 8002ed8:	3b09      	subs	r3, #9
 8002eda:	b2db      	uxtb	r3, r3
 8002edc:	22ff      	movs	r2, #255	; 0xff
 8002ede:	0019      	movs	r1, r3
 8002ee0:	f001 fbd0 	bl	8004684 <oled_set_pix>
 8002ee4:	1dfb      	adds	r3, r7, #7
 8002ee6:	781b      	ldrb	r3, [r3, #0]
 8002ee8:	331b      	adds	r3, #27
 8002eea:	b2d8      	uxtb	r0, r3
 8002eec:	1dbb      	adds	r3, r7, #6
 8002eee:	781b      	ldrb	r3, [r3, #0]
 8002ef0:	3b0a      	subs	r3, #10
 8002ef2:	b2db      	uxtb	r3, r3
 8002ef4:	22ff      	movs	r2, #255	; 0xff
 8002ef6:	0019      	movs	r1, r3
 8002ef8:	f001 fbc4 	bl	8004684 <oled_set_pix>
 8002efc:	1dfb      	adds	r3, r7, #7
 8002efe:	781b      	ldrb	r3, [r3, #0]
 8002f00:	331b      	adds	r3, #27
 8002f02:	b2d8      	uxtb	r0, r3
 8002f04:	1dbb      	adds	r3, r7, #6
 8002f06:	781b      	ldrb	r3, [r3, #0]
 8002f08:	3b0b      	subs	r3, #11
 8002f0a:	b2db      	uxtb	r3, r3
 8002f0c:	22ff      	movs	r2, #255	; 0xff
 8002f0e:	0019      	movs	r1, r3
 8002f10:	f001 fbb8 	bl	8004684 <oled_set_pix>
 8002f14:	1dfb      	adds	r3, r7, #7
 8002f16:	781b      	ldrb	r3, [r3, #0]
 8002f18:	331b      	adds	r3, #27
 8002f1a:	b2d8      	uxtb	r0, r3
 8002f1c:	1dbb      	adds	r3, r7, #6
 8002f1e:	781b      	ldrb	r3, [r3, #0]
 8002f20:	3b0c      	subs	r3, #12
 8002f22:	b2db      	uxtb	r3, r3
 8002f24:	22ff      	movs	r2, #255	; 0xff
 8002f26:	0019      	movs	r1, r3
 8002f28:	f001 fbac 	bl	8004684 <oled_set_pix>
 8002f2c:	1dfb      	adds	r3, r7, #7
 8002f2e:	781b      	ldrb	r3, [r3, #0]
 8002f30:	331b      	adds	r3, #27
 8002f32:	b2d8      	uxtb	r0, r3
 8002f34:	1dbb      	adds	r3, r7, #6
 8002f36:	781b      	ldrb	r3, [r3, #0]
 8002f38:	3b11      	subs	r3, #17
 8002f3a:	b2db      	uxtb	r3, r3
 8002f3c:	22ff      	movs	r2, #255	; 0xff
 8002f3e:	0019      	movs	r1, r3
 8002f40:	f001 fba0 	bl	8004684 <oled_set_pix>
 8002f44:	1dfb      	adds	r3, r7, #7
 8002f46:	781b      	ldrb	r3, [r3, #0]
 8002f48:	331b      	adds	r3, #27
 8002f4a:	b2d8      	uxtb	r0, r3
 8002f4c:	1dbb      	adds	r3, r7, #6
 8002f4e:	781b      	ldrb	r3, [r3, #0]
 8002f50:	3b12      	subs	r3, #18
 8002f52:	b2db      	uxtb	r3, r3
 8002f54:	22ff      	movs	r2, #255	; 0xff
 8002f56:	0019      	movs	r1, r3
 8002f58:	f001 fb94 	bl	8004684 <oled_set_pix>
 8002f5c:	1dfb      	adds	r3, r7, #7
 8002f5e:	781b      	ldrb	r3, [r3, #0]
 8002f60:	331b      	adds	r3, #27
 8002f62:	b2d8      	uxtb	r0, r3
 8002f64:	1dbb      	adds	r3, r7, #6
 8002f66:	781b      	ldrb	r3, [r3, #0]
 8002f68:	3b17      	subs	r3, #23
 8002f6a:	b2db      	uxtb	r3, r3
 8002f6c:	22ff      	movs	r2, #255	; 0xff
 8002f6e:	0019      	movs	r1, r3
 8002f70:	f001 fb88 	bl	8004684 <oled_set_pix>
 8002f74:	1dfb      	adds	r3, r7, #7
 8002f76:	781b      	ldrb	r3, [r3, #0]
 8002f78:	331b      	adds	r3, #27
 8002f7a:	b2d8      	uxtb	r0, r3
 8002f7c:	1dbb      	adds	r3, r7, #6
 8002f7e:	781b      	ldrb	r3, [r3, #0]
 8002f80:	3b18      	subs	r3, #24
 8002f82:	b2db      	uxtb	r3, r3
 8002f84:	22ff      	movs	r2, #255	; 0xff
 8002f86:	0019      	movs	r1, r3
 8002f88:	f001 fb7c 	bl	8004684 <oled_set_pix>
 8002f8c:	1dfb      	adds	r3, r7, #7
 8002f8e:	781b      	ldrb	r3, [r3, #0]
 8002f90:	331b      	adds	r3, #27
 8002f92:	b2d8      	uxtb	r0, r3
 8002f94:	1dbb      	adds	r3, r7, #6
 8002f96:	781b      	ldrb	r3, [r3, #0]
 8002f98:	3b19      	subs	r3, #25
 8002f9a:	b2db      	uxtb	r3, r3
 8002f9c:	22ff      	movs	r2, #255	; 0xff
 8002f9e:	0019      	movs	r1, r3
 8002fa0:	f001 fb70 	bl	8004684 <oled_set_pix>
 8002fa4:	1dfb      	adds	r3, r7, #7
 8002fa6:	781b      	ldrb	r3, [r3, #0]
 8002fa8:	331b      	adds	r3, #27
 8002faa:	b2d8      	uxtb	r0, r3
 8002fac:	1dbb      	adds	r3, r7, #6
 8002fae:	781b      	ldrb	r3, [r3, #0]
 8002fb0:	3b1a      	subs	r3, #26
 8002fb2:	b2db      	uxtb	r3, r3
 8002fb4:	22ff      	movs	r2, #255	; 0xff
 8002fb6:	0019      	movs	r1, r3
 8002fb8:	f001 fb64 	bl	8004684 <oled_set_pix>
 8002fbc:	1dfb      	adds	r3, r7, #7
 8002fbe:	781b      	ldrb	r3, [r3, #0]
 8002fc0:	331b      	adds	r3, #27
 8002fc2:	b2d8      	uxtb	r0, r3
 8002fc4:	1dbb      	adds	r3, r7, #6
 8002fc6:	781b      	ldrb	r3, [r3, #0]
 8002fc8:	3b1b      	subs	r3, #27
 8002fca:	b2db      	uxtb	r3, r3
 8002fcc:	22ff      	movs	r2, #255	; 0xff
 8002fce:	0019      	movs	r1, r3
 8002fd0:	f001 fb58 	bl	8004684 <oled_set_pix>
 8002fd4:	1dfb      	adds	r3, r7, #7
 8002fd6:	781b      	ldrb	r3, [r3, #0]
 8002fd8:	331b      	adds	r3, #27
 8002fda:	b2d8      	uxtb	r0, r3
 8002fdc:	1dbb      	adds	r3, r7, #6
 8002fde:	781b      	ldrb	r3, [r3, #0]
 8002fe0:	3b1d      	subs	r3, #29
 8002fe2:	b2db      	uxtb	r3, r3
 8002fe4:	22ff      	movs	r2, #255	; 0xff
 8002fe6:	0019      	movs	r1, r3
 8002fe8:	f001 fb4c 	bl	8004684 <oled_set_pix>
 8002fec:	1dfb      	adds	r3, r7, #7
 8002fee:	781b      	ldrb	r3, [r3, #0]
 8002ff0:	331b      	adds	r3, #27
 8002ff2:	b2d8      	uxtb	r0, r3
 8002ff4:	1dbb      	adds	r3, r7, #6
 8002ff6:	781b      	ldrb	r3, [r3, #0]
 8002ff8:	3b1e      	subs	r3, #30
 8002ffa:	b2db      	uxtb	r3, r3
 8002ffc:	22ff      	movs	r2, #255	; 0xff
 8002ffe:	0019      	movs	r1, r3
 8003000:	f001 fb40 	bl	8004684 <oled_set_pix>
 8003004:	1dfb      	adds	r3, r7, #7
 8003006:	781b      	ldrb	r3, [r3, #0]
 8003008:	331c      	adds	r3, #28
 800300a:	b2d8      	uxtb	r0, r3
 800300c:	1dbb      	adds	r3, r7, #6
 800300e:	781b      	ldrb	r3, [r3, #0]
 8003010:	3b02      	subs	r3, #2
 8003012:	b2db      	uxtb	r3, r3
 8003014:	22ff      	movs	r2, #255	; 0xff
 8003016:	0019      	movs	r1, r3
 8003018:	f001 fb34 	bl	8004684 <oled_set_pix>
 800301c:	1dfb      	adds	r3, r7, #7
 800301e:	781b      	ldrb	r3, [r3, #0]
 8003020:	331c      	adds	r3, #28
 8003022:	b2d8      	uxtb	r0, r3
 8003024:	1dbb      	adds	r3, r7, #6
 8003026:	781b      	ldrb	r3, [r3, #0]
 8003028:	3b03      	subs	r3, #3
 800302a:	b2db      	uxtb	r3, r3
 800302c:	22ff      	movs	r2, #255	; 0xff
 800302e:	0019      	movs	r1, r3
 8003030:	f001 fb28 	bl	8004684 <oled_set_pix>
 8003034:	1dfb      	adds	r3, r7, #7
 8003036:	781b      	ldrb	r3, [r3, #0]
 8003038:	331c      	adds	r3, #28
 800303a:	b2d8      	uxtb	r0, r3
 800303c:	1dbb      	adds	r3, r7, #6
 800303e:	781b      	ldrb	r3, [r3, #0]
 8003040:	3b04      	subs	r3, #4
 8003042:	b2db      	uxtb	r3, r3
 8003044:	22ff      	movs	r2, #255	; 0xff
 8003046:	0019      	movs	r1, r3
 8003048:	f001 fb1c 	bl	8004684 <oled_set_pix>
 800304c:	1dfb      	adds	r3, r7, #7
 800304e:	781b      	ldrb	r3, [r3, #0]
 8003050:	331c      	adds	r3, #28
 8003052:	b2d8      	uxtb	r0, r3
 8003054:	1dbb      	adds	r3, r7, #6
 8003056:	781b      	ldrb	r3, [r3, #0]
 8003058:	3b05      	subs	r3, #5
 800305a:	b2db      	uxtb	r3, r3
 800305c:	22ff      	movs	r2, #255	; 0xff
 800305e:	0019      	movs	r1, r3
 8003060:	f001 fb10 	bl	8004684 <oled_set_pix>
 8003064:	1dfb      	adds	r3, r7, #7
 8003066:	781b      	ldrb	r3, [r3, #0]
 8003068:	331c      	adds	r3, #28
 800306a:	b2d8      	uxtb	r0, r3
 800306c:	1dbb      	adds	r3, r7, #6
 800306e:	781b      	ldrb	r3, [r3, #0]
 8003070:	3b06      	subs	r3, #6
 8003072:	b2db      	uxtb	r3, r3
 8003074:	22ff      	movs	r2, #255	; 0xff
 8003076:	0019      	movs	r1, r3
 8003078:	f001 fb04 	bl	8004684 <oled_set_pix>
 800307c:	1dfb      	adds	r3, r7, #7
 800307e:	781b      	ldrb	r3, [r3, #0]
 8003080:	331c      	adds	r3, #28
 8003082:	b2d8      	uxtb	r0, r3
 8003084:	1dbb      	adds	r3, r7, #6
 8003086:	781b      	ldrb	r3, [r3, #0]
 8003088:	3b07      	subs	r3, #7
 800308a:	b2db      	uxtb	r3, r3
 800308c:	22ff      	movs	r2, #255	; 0xff
 800308e:	0019      	movs	r1, r3
 8003090:	f001 faf8 	bl	8004684 <oled_set_pix>
 8003094:	1dfb      	adds	r3, r7, #7
 8003096:	781b      	ldrb	r3, [r3, #0]
 8003098:	331c      	adds	r3, #28
 800309a:	b2d8      	uxtb	r0, r3
 800309c:	1dbb      	adds	r3, r7, #6
 800309e:	781b      	ldrb	r3, [r3, #0]
 80030a0:	3b08      	subs	r3, #8
 80030a2:	b2db      	uxtb	r3, r3
 80030a4:	22ff      	movs	r2, #255	; 0xff
 80030a6:	0019      	movs	r1, r3
 80030a8:	f001 faec 	bl	8004684 <oled_set_pix>
 80030ac:	1dfb      	adds	r3, r7, #7
 80030ae:	781b      	ldrb	r3, [r3, #0]
 80030b0:	331c      	adds	r3, #28
 80030b2:	b2d8      	uxtb	r0, r3
 80030b4:	1dbb      	adds	r3, r7, #6
 80030b6:	781b      	ldrb	r3, [r3, #0]
 80030b8:	3b09      	subs	r3, #9
 80030ba:	b2db      	uxtb	r3, r3
 80030bc:	22ff      	movs	r2, #255	; 0xff
 80030be:	0019      	movs	r1, r3
 80030c0:	f001 fae0 	bl	8004684 <oled_set_pix>
 80030c4:	1dfb      	adds	r3, r7, #7
 80030c6:	781b      	ldrb	r3, [r3, #0]
 80030c8:	331c      	adds	r3, #28
 80030ca:	b2d8      	uxtb	r0, r3
 80030cc:	1dbb      	adds	r3, r7, #6
 80030ce:	781b      	ldrb	r3, [r3, #0]
 80030d0:	3b12      	subs	r3, #18
 80030d2:	b2db      	uxtb	r3, r3
 80030d4:	22ff      	movs	r2, #255	; 0xff
 80030d6:	0019      	movs	r1, r3
 80030d8:	f001 fad4 	bl	8004684 <oled_set_pix>
 80030dc:	1dfb      	adds	r3, r7, #7
 80030de:	781b      	ldrb	r3, [r3, #0]
 80030e0:	331c      	adds	r3, #28
 80030e2:	b2d8      	uxtb	r0, r3
 80030e4:	1dbb      	adds	r3, r7, #6
 80030e6:	781b      	ldrb	r3, [r3, #0]
 80030e8:	3b1b      	subs	r3, #27
 80030ea:	b2db      	uxtb	r3, r3
 80030ec:	22ff      	movs	r2, #255	; 0xff
 80030ee:	0019      	movs	r1, r3
 80030f0:	f001 fac8 	bl	8004684 <oled_set_pix>
 80030f4:	1dfb      	adds	r3, r7, #7
 80030f6:	781b      	ldrb	r3, [r3, #0]
 80030f8:	331c      	adds	r3, #28
 80030fa:	b2d8      	uxtb	r0, r3
 80030fc:	1dbb      	adds	r3, r7, #6
 80030fe:	781b      	ldrb	r3, [r3, #0]
 8003100:	3b1c      	subs	r3, #28
 8003102:	b2db      	uxtb	r3, r3
 8003104:	22ff      	movs	r2, #255	; 0xff
 8003106:	0019      	movs	r1, r3
 8003108:	f001 fabc 	bl	8004684 <oled_set_pix>
 800310c:	1dfb      	adds	r3, r7, #7
 800310e:	781b      	ldrb	r3, [r3, #0]
 8003110:	331c      	adds	r3, #28
 8003112:	b2d8      	uxtb	r0, r3
 8003114:	1dbb      	adds	r3, r7, #6
 8003116:	781b      	ldrb	r3, [r3, #0]
 8003118:	3b1d      	subs	r3, #29
 800311a:	b2db      	uxtb	r3, r3
 800311c:	22ff      	movs	r2, #255	; 0xff
 800311e:	0019      	movs	r1, r3
 8003120:	f001 fab0 	bl	8004684 <oled_set_pix>
 8003124:	1dfb      	adds	r3, r7, #7
 8003126:	781b      	ldrb	r3, [r3, #0]
 8003128:	331d      	adds	r3, #29
 800312a:	b2d8      	uxtb	r0, r3
 800312c:	1dbb      	adds	r3, r7, #6
 800312e:	781b      	ldrb	r3, [r3, #0]
 8003130:	3b02      	subs	r3, #2
 8003132:	b2db      	uxtb	r3, r3
 8003134:	22ff      	movs	r2, #255	; 0xff
 8003136:	0019      	movs	r1, r3
 8003138:	f001 faa4 	bl	8004684 <oled_set_pix>
 800313c:	1dfb      	adds	r3, r7, #7
 800313e:	781b      	ldrb	r3, [r3, #0]
 8003140:	331d      	adds	r3, #29
 8003142:	b2d8      	uxtb	r0, r3
 8003144:	1dbb      	adds	r3, r7, #6
 8003146:	781b      	ldrb	r3, [r3, #0]
 8003148:	3b03      	subs	r3, #3
 800314a:	b2db      	uxtb	r3, r3
 800314c:	22ff      	movs	r2, #255	; 0xff
 800314e:	0019      	movs	r1, r3
 8003150:	f001 fa98 	bl	8004684 <oled_set_pix>
 8003154:	1dfb      	adds	r3, r7, #7
 8003156:	781b      	ldrb	r3, [r3, #0]
 8003158:	331d      	adds	r3, #29
 800315a:	b2d8      	uxtb	r0, r3
 800315c:	1dbb      	adds	r3, r7, #6
 800315e:	781b      	ldrb	r3, [r3, #0]
 8003160:	3b04      	subs	r3, #4
 8003162:	b2db      	uxtb	r3, r3
 8003164:	22ff      	movs	r2, #255	; 0xff
 8003166:	0019      	movs	r1, r3
 8003168:	f001 fa8c 	bl	8004684 <oled_set_pix>
 800316c:	1dfb      	adds	r3, r7, #7
 800316e:	781b      	ldrb	r3, [r3, #0]
 8003170:	331d      	adds	r3, #29
 8003172:	b2d8      	uxtb	r0, r3
 8003174:	1dbb      	adds	r3, r7, #6
 8003176:	781b      	ldrb	r3, [r3, #0]
 8003178:	3b06      	subs	r3, #6
 800317a:	b2db      	uxtb	r3, r3
 800317c:	22ff      	movs	r2, #255	; 0xff
 800317e:	0019      	movs	r1, r3
 8003180:	f001 fa80 	bl	8004684 <oled_set_pix>
 8003184:	1dfb      	adds	r3, r7, #7
 8003186:	781b      	ldrb	r3, [r3, #0]
 8003188:	331d      	adds	r3, #29
 800318a:	b2d8      	uxtb	r0, r3
 800318c:	1dbb      	adds	r3, r7, #6
 800318e:	781b      	ldrb	r3, [r3, #0]
 8003190:	3b1c      	subs	r3, #28
 8003192:	b2db      	uxtb	r3, r3
 8003194:	22ff      	movs	r2, #255	; 0xff
 8003196:	0019      	movs	r1, r3
 8003198:	f001 fa74 	bl	8004684 <oled_set_pix>
 800319c:	1dfb      	adds	r3, r7, #7
 800319e:	781b      	ldrb	r3, [r3, #0]
 80031a0:	331e      	adds	r3, #30
 80031a2:	b2d8      	uxtb	r0, r3
 80031a4:	1dbb      	adds	r3, r7, #6
 80031a6:	781b      	ldrb	r3, [r3, #0]
 80031a8:	3b04      	subs	r3, #4
 80031aa:	b2db      	uxtb	r3, r3
 80031ac:	22ff      	movs	r2, #255	; 0xff
 80031ae:	0019      	movs	r1, r3
 80031b0:	f001 fa68 	bl	8004684 <oled_set_pix>
 80031b4:	1dfb      	adds	r3, r7, #7
 80031b6:	781b      	ldrb	r3, [r3, #0]
 80031b8:	331e      	adds	r3, #30
 80031ba:	b2d8      	uxtb	r0, r3
 80031bc:	1dbb      	adds	r3, r7, #6
 80031be:	781b      	ldrb	r3, [r3, #0]
 80031c0:	3b05      	subs	r3, #5
 80031c2:	b2db      	uxtb	r3, r3
 80031c4:	22ff      	movs	r2, #255	; 0xff
 80031c6:	0019      	movs	r1, r3
 80031c8:	f001 fa5c 	bl	8004684 <oled_set_pix>
 80031cc:	1dfb      	adds	r3, r7, #7
 80031ce:	781b      	ldrb	r3, [r3, #0]
 80031d0:	331e      	adds	r3, #30
 80031d2:	b2d8      	uxtb	r0, r3
 80031d4:	1dbb      	adds	r3, r7, #6
 80031d6:	781b      	ldrb	r3, [r3, #0]
 80031d8:	3b06      	subs	r3, #6
 80031da:	b2db      	uxtb	r3, r3
 80031dc:	22ff      	movs	r2, #255	; 0xff
 80031de:	0019      	movs	r1, r3
 80031e0:	f001 fa50 	bl	8004684 <oled_set_pix>
 80031e4:	46c0      	nop			; (mov r8, r8)
 80031e6:	46bd      	mov	sp, r7
 80031e8:	b002      	add	sp, #8
 80031ea:	bd80      	pop	{r7, pc}

080031ec <draw_enemy_projectile>:
 80031ec:	b580      	push	{r7, lr}
 80031ee:	b082      	sub	sp, #8
 80031f0:	af00      	add	r7, sp, #0
 80031f2:	0002      	movs	r2, r0
 80031f4:	1dfb      	adds	r3, r7, #7
 80031f6:	701a      	strb	r2, [r3, #0]
 80031f8:	1dbb      	adds	r3, r7, #6
 80031fa:	1c0a      	adds	r2, r1, #0
 80031fc:	701a      	strb	r2, [r3, #0]
 80031fe:	1dbb      	adds	r3, r7, #6
 8003200:	7819      	ldrb	r1, [r3, #0]
 8003202:	1dfb      	adds	r3, r7, #7
 8003204:	781b      	ldrb	r3, [r3, #0]
 8003206:	22ff      	movs	r2, #255	; 0xff
 8003208:	0018      	movs	r0, r3
 800320a:	f001 fa3b 	bl	8004684 <oled_set_pix>
 800320e:	1dbb      	adds	r3, r7, #6
 8003210:	781b      	ldrb	r3, [r3, #0]
 8003212:	3301      	adds	r3, #1
 8003214:	b2d9      	uxtb	r1, r3
 8003216:	1dfb      	adds	r3, r7, #7
 8003218:	781b      	ldrb	r3, [r3, #0]
 800321a:	22ff      	movs	r2, #255	; 0xff
 800321c:	0018      	movs	r0, r3
 800321e:	f001 fa31 	bl	8004684 <oled_set_pix>
 8003222:	1dbb      	adds	r3, r7, #6
 8003224:	781b      	ldrb	r3, [r3, #0]
 8003226:	3b01      	subs	r3, #1
 8003228:	b2d9      	uxtb	r1, r3
 800322a:	1dfb      	adds	r3, r7, #7
 800322c:	781b      	ldrb	r3, [r3, #0]
 800322e:	22ff      	movs	r2, #255	; 0xff
 8003230:	0018      	movs	r0, r3
 8003232:	f001 fa27 	bl	8004684 <oled_set_pix>
 8003236:	1dfb      	adds	r3, r7, #7
 8003238:	781b      	ldrb	r3, [r3, #0]
 800323a:	3301      	adds	r3, #1
 800323c:	b2d8      	uxtb	r0, r3
 800323e:	1dbb      	adds	r3, r7, #6
 8003240:	781b      	ldrb	r3, [r3, #0]
 8003242:	3301      	adds	r3, #1
 8003244:	b2db      	uxtb	r3, r3
 8003246:	22ff      	movs	r2, #255	; 0xff
 8003248:	0019      	movs	r1, r3
 800324a:	f001 fa1b 	bl	8004684 <oled_set_pix>
 800324e:	1dfb      	adds	r3, r7, #7
 8003250:	781b      	ldrb	r3, [r3, #0]
 8003252:	3301      	adds	r3, #1
 8003254:	b2d8      	uxtb	r0, r3
 8003256:	1dbb      	adds	r3, r7, #6
 8003258:	781b      	ldrb	r3, [r3, #0]
 800325a:	3b01      	subs	r3, #1
 800325c:	b2db      	uxtb	r3, r3
 800325e:	22ff      	movs	r2, #255	; 0xff
 8003260:	0019      	movs	r1, r3
 8003262:	f001 fa0f 	bl	8004684 <oled_set_pix>
 8003266:	1dfb      	adds	r3, r7, #7
 8003268:	781b      	ldrb	r3, [r3, #0]
 800326a:	3b01      	subs	r3, #1
 800326c:	b2d8      	uxtb	r0, r3
 800326e:	1dbb      	adds	r3, r7, #6
 8003270:	781b      	ldrb	r3, [r3, #0]
 8003272:	3301      	adds	r3, #1
 8003274:	b2db      	uxtb	r3, r3
 8003276:	22ff      	movs	r2, #255	; 0xff
 8003278:	0019      	movs	r1, r3
 800327a:	f001 fa03 	bl	8004684 <oled_set_pix>
 800327e:	1dfb      	adds	r3, r7, #7
 8003280:	781b      	ldrb	r3, [r3, #0]
 8003282:	3b01      	subs	r3, #1
 8003284:	b2d8      	uxtb	r0, r3
 8003286:	1dbb      	adds	r3, r7, #6
 8003288:	781b      	ldrb	r3, [r3, #0]
 800328a:	3b01      	subs	r3, #1
 800328c:	b2db      	uxtb	r3, r3
 800328e:	22ff      	movs	r2, #255	; 0xff
 8003290:	0019      	movs	r1, r3
 8003292:	f001 f9f7 	bl	8004684 <oled_set_pix>
 8003296:	1dfb      	adds	r3, r7, #7
 8003298:	781b      	ldrb	r3, [r3, #0]
 800329a:	3301      	adds	r3, #1
 800329c:	b2d8      	uxtb	r0, r3
 800329e:	1dbb      	adds	r3, r7, #6
 80032a0:	781b      	ldrb	r3, [r3, #0]
 80032a2:	22ff      	movs	r2, #255	; 0xff
 80032a4:	0019      	movs	r1, r3
 80032a6:	f001 f9ed 	bl	8004684 <oled_set_pix>
 80032aa:	1dfb      	adds	r3, r7, #7
 80032ac:	781b      	ldrb	r3, [r3, #0]
 80032ae:	3b01      	subs	r3, #1
 80032b0:	b2d8      	uxtb	r0, r3
 80032b2:	1dbb      	adds	r3, r7, #6
 80032b4:	781b      	ldrb	r3, [r3, #0]
 80032b6:	22ff      	movs	r2, #255	; 0xff
 80032b8:	0019      	movs	r1, r3
 80032ba:	f001 f9e3 	bl	8004684 <oled_set_pix>
 80032be:	46c0      	nop			; (mov r8, r8)
 80032c0:	46bd      	mov	sp, r7
 80032c2:	b002      	add	sp, #8
 80032c4:	bd80      	pop	{r7, pc}

080032c6 <draw_player_ship>:
 80032c6:	b580      	push	{r7, lr}
 80032c8:	b082      	sub	sp, #8
 80032ca:	af00      	add	r7, sp, #0
 80032cc:	0002      	movs	r2, r0
 80032ce:	1dfb      	adds	r3, r7, #7
 80032d0:	701a      	strb	r2, [r3, #0]
 80032d2:	1dbb      	adds	r3, r7, #6
 80032d4:	1c0a      	adds	r2, r1, #0
 80032d6:	701a      	strb	r2, [r3, #0]
 80032d8:	1dbb      	adds	r3, r7, #6
 80032da:	7819      	ldrb	r1, [r3, #0]
 80032dc:	1dfb      	adds	r3, r7, #7
 80032de:	781b      	ldrb	r3, [r3, #0]
 80032e0:	22ff      	movs	r2, #255	; 0xff
 80032e2:	0018      	movs	r0, r3
 80032e4:	f001 f9ce 	bl	8004684 <oled_set_pix>
 80032e8:	1dbb      	adds	r3, r7, #6
 80032ea:	781b      	ldrb	r3, [r3, #0]
 80032ec:	3301      	adds	r3, #1
 80032ee:	b2d9      	uxtb	r1, r3
 80032f0:	1dfb      	adds	r3, r7, #7
 80032f2:	781b      	ldrb	r3, [r3, #0]
 80032f4:	22ff      	movs	r2, #255	; 0xff
 80032f6:	0018      	movs	r0, r3
 80032f8:	f001 f9c4 	bl	8004684 <oled_set_pix>
 80032fc:	1dbb      	adds	r3, r7, #6
 80032fe:	781b      	ldrb	r3, [r3, #0]
 8003300:	3302      	adds	r3, #2
 8003302:	b2d9      	uxtb	r1, r3
 8003304:	1dfb      	adds	r3, r7, #7
 8003306:	781b      	ldrb	r3, [r3, #0]
 8003308:	22ff      	movs	r2, #255	; 0xff
 800330a:	0018      	movs	r0, r3
 800330c:	f001 f9ba 	bl	8004684 <oled_set_pix>
 8003310:	1dbb      	adds	r3, r7, #6
 8003312:	781b      	ldrb	r3, [r3, #0]
 8003314:	3304      	adds	r3, #4
 8003316:	b2d9      	uxtb	r1, r3
 8003318:	1dfb      	adds	r3, r7, #7
 800331a:	781b      	ldrb	r3, [r3, #0]
 800331c:	22ff      	movs	r2, #255	; 0xff
 800331e:	0018      	movs	r0, r3
 8003320:	f001 f9b0 	bl	8004684 <oled_set_pix>
 8003324:	1dbb      	adds	r3, r7, #6
 8003326:	781b      	ldrb	r3, [r3, #0]
 8003328:	3b01      	subs	r3, #1
 800332a:	b2d9      	uxtb	r1, r3
 800332c:	1dfb      	adds	r3, r7, #7
 800332e:	781b      	ldrb	r3, [r3, #0]
 8003330:	22ff      	movs	r2, #255	; 0xff
 8003332:	0018      	movs	r0, r3
 8003334:	f001 f9a6 	bl	8004684 <oled_set_pix>
 8003338:	1dbb      	adds	r3, r7, #6
 800333a:	781b      	ldrb	r3, [r3, #0]
 800333c:	3b02      	subs	r3, #2
 800333e:	b2d9      	uxtb	r1, r3
 8003340:	1dfb      	adds	r3, r7, #7
 8003342:	781b      	ldrb	r3, [r3, #0]
 8003344:	22ff      	movs	r2, #255	; 0xff
 8003346:	0018      	movs	r0, r3
 8003348:	f001 f99c 	bl	8004684 <oled_set_pix>
 800334c:	1dbb      	adds	r3, r7, #6
 800334e:	781b      	ldrb	r3, [r3, #0]
 8003350:	3b03      	subs	r3, #3
 8003352:	b2d9      	uxtb	r1, r3
 8003354:	1dfb      	adds	r3, r7, #7
 8003356:	781b      	ldrb	r3, [r3, #0]
 8003358:	22ff      	movs	r2, #255	; 0xff
 800335a:	0018      	movs	r0, r3
 800335c:	f001 f992 	bl	8004684 <oled_set_pix>
 8003360:	1dfb      	adds	r3, r7, #7
 8003362:	781b      	ldrb	r3, [r3, #0]
 8003364:	3302      	adds	r3, #2
 8003366:	b2d8      	uxtb	r0, r3
 8003368:	1dbb      	adds	r3, r7, #6
 800336a:	781b      	ldrb	r3, [r3, #0]
 800336c:	22ff      	movs	r2, #255	; 0xff
 800336e:	0019      	movs	r1, r3
 8003370:	f001 f988 	bl	8004684 <oled_set_pix>
 8003374:	1dfb      	adds	r3, r7, #7
 8003376:	781b      	ldrb	r3, [r3, #0]
 8003378:	3b02      	subs	r3, #2
 800337a:	b2d8      	uxtb	r0, r3
 800337c:	1dbb      	adds	r3, r7, #6
 800337e:	781b      	ldrb	r3, [r3, #0]
 8003380:	22ff      	movs	r2, #255	; 0xff
 8003382:	0019      	movs	r1, r3
 8003384:	f001 f97e 	bl	8004684 <oled_set_pix>
 8003388:	1dfb      	adds	r3, r7, #7
 800338a:	781b      	ldrb	r3, [r3, #0]
 800338c:	3b01      	subs	r3, #1
 800338e:	b2d8      	uxtb	r0, r3
 8003390:	1dbb      	adds	r3, r7, #6
 8003392:	781b      	ldrb	r3, [r3, #0]
 8003394:	3b01      	subs	r3, #1
 8003396:	b2db      	uxtb	r3, r3
 8003398:	22ff      	movs	r2, #255	; 0xff
 800339a:	0019      	movs	r1, r3
 800339c:	f001 f972 	bl	8004684 <oled_set_pix>
 80033a0:	1dfb      	adds	r3, r7, #7
 80033a2:	781b      	ldrb	r3, [r3, #0]
 80033a4:	3b02      	subs	r3, #2
 80033a6:	b2d8      	uxtb	r0, r3
 80033a8:	1dbb      	adds	r3, r7, #6
 80033aa:	781b      	ldrb	r3, [r3, #0]
 80033ac:	3b01      	subs	r3, #1
 80033ae:	b2db      	uxtb	r3, r3
 80033b0:	22ff      	movs	r2, #255	; 0xff
 80033b2:	0019      	movs	r1, r3
 80033b4:	f001 f966 	bl	8004684 <oled_set_pix>
 80033b8:	1dfb      	adds	r3, r7, #7
 80033ba:	781b      	ldrb	r3, [r3, #0]
 80033bc:	3301      	adds	r3, #1
 80033be:	b2d8      	uxtb	r0, r3
 80033c0:	1dbb      	adds	r3, r7, #6
 80033c2:	781b      	ldrb	r3, [r3, #0]
 80033c4:	3b01      	subs	r3, #1
 80033c6:	b2db      	uxtb	r3, r3
 80033c8:	22ff      	movs	r2, #255	; 0xff
 80033ca:	0019      	movs	r1, r3
 80033cc:	f001 f95a 	bl	8004684 <oled_set_pix>
 80033d0:	1dfb      	adds	r3, r7, #7
 80033d2:	781b      	ldrb	r3, [r3, #0]
 80033d4:	3302      	adds	r3, #2
 80033d6:	b2d8      	uxtb	r0, r3
 80033d8:	1dbb      	adds	r3, r7, #6
 80033da:	781b      	ldrb	r3, [r3, #0]
 80033dc:	3b01      	subs	r3, #1
 80033de:	b2db      	uxtb	r3, r3
 80033e0:	22ff      	movs	r2, #255	; 0xff
 80033e2:	0019      	movs	r1, r3
 80033e4:	f001 f94e 	bl	8004684 <oled_set_pix>
 80033e8:	1dfb      	adds	r3, r7, #7
 80033ea:	781b      	ldrb	r3, [r3, #0]
 80033ec:	3b01      	subs	r3, #1
 80033ee:	b2d8      	uxtb	r0, r3
 80033f0:	1dbb      	adds	r3, r7, #6
 80033f2:	781b      	ldrb	r3, [r3, #0]
 80033f4:	3b02      	subs	r3, #2
 80033f6:	b2db      	uxtb	r3, r3
 80033f8:	22ff      	movs	r2, #255	; 0xff
 80033fa:	0019      	movs	r1, r3
 80033fc:	f001 f942 	bl	8004684 <oled_set_pix>
 8003400:	1dfb      	adds	r3, r7, #7
 8003402:	781b      	ldrb	r3, [r3, #0]
 8003404:	3b02      	subs	r3, #2
 8003406:	b2d8      	uxtb	r0, r3
 8003408:	1dbb      	adds	r3, r7, #6
 800340a:	781b      	ldrb	r3, [r3, #0]
 800340c:	3b02      	subs	r3, #2
 800340e:	b2db      	uxtb	r3, r3
 8003410:	22ff      	movs	r2, #255	; 0xff
 8003412:	0019      	movs	r1, r3
 8003414:	f001 f936 	bl	8004684 <oled_set_pix>
 8003418:	1dfb      	adds	r3, r7, #7
 800341a:	781b      	ldrb	r3, [r3, #0]
 800341c:	3301      	adds	r3, #1
 800341e:	b2d8      	uxtb	r0, r3
 8003420:	1dbb      	adds	r3, r7, #6
 8003422:	781b      	ldrb	r3, [r3, #0]
 8003424:	3b02      	subs	r3, #2
 8003426:	b2db      	uxtb	r3, r3
 8003428:	22ff      	movs	r2, #255	; 0xff
 800342a:	0019      	movs	r1, r3
 800342c:	f001 f92a 	bl	8004684 <oled_set_pix>
 8003430:	1dfb      	adds	r3, r7, #7
 8003432:	781b      	ldrb	r3, [r3, #0]
 8003434:	3302      	adds	r3, #2
 8003436:	b2d8      	uxtb	r0, r3
 8003438:	1dbb      	adds	r3, r7, #6
 800343a:	781b      	ldrb	r3, [r3, #0]
 800343c:	3b02      	subs	r3, #2
 800343e:	b2db      	uxtb	r3, r3
 8003440:	22ff      	movs	r2, #255	; 0xff
 8003442:	0019      	movs	r1, r3
 8003444:	f001 f91e 	bl	8004684 <oled_set_pix>
 8003448:	1dfb      	adds	r3, r7, #7
 800344a:	781b      	ldrb	r3, [r3, #0]
 800344c:	3b01      	subs	r3, #1
 800344e:	b2d8      	uxtb	r0, r3
 8003450:	1dbb      	adds	r3, r7, #6
 8003452:	781b      	ldrb	r3, [r3, #0]
 8003454:	3b03      	subs	r3, #3
 8003456:	b2db      	uxtb	r3, r3
 8003458:	22ff      	movs	r2, #255	; 0xff
 800345a:	0019      	movs	r1, r3
 800345c:	f001 f912 	bl	8004684 <oled_set_pix>
 8003460:	1dfb      	adds	r3, r7, #7
 8003462:	781b      	ldrb	r3, [r3, #0]
 8003464:	3301      	adds	r3, #1
 8003466:	b2d8      	uxtb	r0, r3
 8003468:	1dbb      	adds	r3, r7, #6
 800346a:	781b      	ldrb	r3, [r3, #0]
 800346c:	3b03      	subs	r3, #3
 800346e:	b2db      	uxtb	r3, r3
 8003470:	22ff      	movs	r2, #255	; 0xff
 8003472:	0019      	movs	r1, r3
 8003474:	f001 f906 	bl	8004684 <oled_set_pix>
 8003478:	1dfb      	adds	r3, r7, #7
 800347a:	781b      	ldrb	r3, [r3, #0]
 800347c:	3301      	adds	r3, #1
 800347e:	b2d8      	uxtb	r0, r3
 8003480:	1dbb      	adds	r3, r7, #6
 8003482:	781b      	ldrb	r3, [r3, #0]
 8003484:	3304      	adds	r3, #4
 8003486:	b2db      	uxtb	r3, r3
 8003488:	22ff      	movs	r2, #255	; 0xff
 800348a:	0019      	movs	r1, r3
 800348c:	f001 f8fa 	bl	8004684 <oled_set_pix>
 8003490:	1dfb      	adds	r3, r7, #7
 8003492:	781b      	ldrb	r3, [r3, #0]
 8003494:	3b01      	subs	r3, #1
 8003496:	b2d8      	uxtb	r0, r3
 8003498:	1dbb      	adds	r3, r7, #6
 800349a:	781b      	ldrb	r3, [r3, #0]
 800349c:	3304      	adds	r3, #4
 800349e:	b2db      	uxtb	r3, r3
 80034a0:	22ff      	movs	r2, #255	; 0xff
 80034a2:	0019      	movs	r1, r3
 80034a4:	f001 f8ee 	bl	8004684 <oled_set_pix>
 80034a8:	1dfb      	adds	r3, r7, #7
 80034aa:	781b      	ldrb	r3, [r3, #0]
 80034ac:	3302      	adds	r3, #2
 80034ae:	b2d8      	uxtb	r0, r3
 80034b0:	1dbb      	adds	r3, r7, #6
 80034b2:	781b      	ldrb	r3, [r3, #0]
 80034b4:	3304      	adds	r3, #4
 80034b6:	b2db      	uxtb	r3, r3
 80034b8:	22ff      	movs	r2, #255	; 0xff
 80034ba:	0019      	movs	r1, r3
 80034bc:	f001 f8e2 	bl	8004684 <oled_set_pix>
 80034c0:	1dfb      	adds	r3, r7, #7
 80034c2:	781b      	ldrb	r3, [r3, #0]
 80034c4:	3302      	adds	r3, #2
 80034c6:	b2d8      	uxtb	r0, r3
 80034c8:	1dbb      	adds	r3, r7, #6
 80034ca:	781b      	ldrb	r3, [r3, #0]
 80034cc:	3303      	adds	r3, #3
 80034ce:	b2db      	uxtb	r3, r3
 80034d0:	22ff      	movs	r2, #255	; 0xff
 80034d2:	0019      	movs	r1, r3
 80034d4:	f001 f8d6 	bl	8004684 <oled_set_pix>
 80034d8:	1dfb      	adds	r3, r7, #7
 80034da:	781b      	ldrb	r3, [r3, #0]
 80034dc:	3302      	adds	r3, #2
 80034de:	b2d8      	uxtb	r0, r3
 80034e0:	1dbb      	adds	r3, r7, #6
 80034e2:	781b      	ldrb	r3, [r3, #0]
 80034e4:	3302      	adds	r3, #2
 80034e6:	b2db      	uxtb	r3, r3
 80034e8:	22ff      	movs	r2, #255	; 0xff
 80034ea:	0019      	movs	r1, r3
 80034ec:	f001 f8ca 	bl	8004684 <oled_set_pix>
 80034f0:	1dfb      	adds	r3, r7, #7
 80034f2:	781b      	ldrb	r3, [r3, #0]
 80034f4:	3b02      	subs	r3, #2
 80034f6:	b2d8      	uxtb	r0, r3
 80034f8:	1dbb      	adds	r3, r7, #6
 80034fa:	781b      	ldrb	r3, [r3, #0]
 80034fc:	3304      	adds	r3, #4
 80034fe:	b2db      	uxtb	r3, r3
 8003500:	22ff      	movs	r2, #255	; 0xff
 8003502:	0019      	movs	r1, r3
 8003504:	f001 f8be 	bl	8004684 <oled_set_pix>
 8003508:	1dfb      	adds	r3, r7, #7
 800350a:	781b      	ldrb	r3, [r3, #0]
 800350c:	3b02      	subs	r3, #2
 800350e:	b2d8      	uxtb	r0, r3
 8003510:	1dbb      	adds	r3, r7, #6
 8003512:	781b      	ldrb	r3, [r3, #0]
 8003514:	3303      	adds	r3, #3
 8003516:	b2db      	uxtb	r3, r3
 8003518:	22ff      	movs	r2, #255	; 0xff
 800351a:	0019      	movs	r1, r3
 800351c:	f001 f8b2 	bl	8004684 <oled_set_pix>
 8003520:	1dfb      	adds	r3, r7, #7
 8003522:	781b      	ldrb	r3, [r3, #0]
 8003524:	3b02      	subs	r3, #2
 8003526:	b2d8      	uxtb	r0, r3
 8003528:	1dbb      	adds	r3, r7, #6
 800352a:	781b      	ldrb	r3, [r3, #0]
 800352c:	3302      	adds	r3, #2
 800352e:	b2db      	uxtb	r3, r3
 8003530:	22ff      	movs	r2, #255	; 0xff
 8003532:	0019      	movs	r1, r3
 8003534:	f001 f8a6 	bl	8004684 <oled_set_pix>
 8003538:	1dfb      	adds	r3, r7, #7
 800353a:	781b      	ldrb	r3, [r3, #0]
 800353c:	3303      	adds	r3, #3
 800353e:	b2d8      	uxtb	r0, r3
 8003540:	1dbb      	adds	r3, r7, #6
 8003542:	781b      	ldrb	r3, [r3, #0]
 8003544:	3b04      	subs	r3, #4
 8003546:	b2db      	uxtb	r3, r3
 8003548:	22ff      	movs	r2, #255	; 0xff
 800354a:	0019      	movs	r1, r3
 800354c:	f001 f89a 	bl	8004684 <oled_set_pix>
 8003550:	1dfb      	adds	r3, r7, #7
 8003552:	781b      	ldrb	r3, [r3, #0]
 8003554:	3303      	adds	r3, #3
 8003556:	b2d8      	uxtb	r0, r3
 8003558:	1dbb      	adds	r3, r7, #6
 800355a:	781b      	ldrb	r3, [r3, #0]
 800355c:	3302      	adds	r3, #2
 800355e:	b2db      	uxtb	r3, r3
 8003560:	22ff      	movs	r2, #255	; 0xff
 8003562:	0019      	movs	r1, r3
 8003564:	f001 f88e 	bl	8004684 <oled_set_pix>
 8003568:	1dfb      	adds	r3, r7, #7
 800356a:	781b      	ldrb	r3, [r3, #0]
 800356c:	3303      	adds	r3, #3
 800356e:	b2d8      	uxtb	r0, r3
 8003570:	1dbb      	adds	r3, r7, #6
 8003572:	781b      	ldrb	r3, [r3, #0]
 8003574:	3303      	adds	r3, #3
 8003576:	b2db      	uxtb	r3, r3
 8003578:	22ff      	movs	r2, #255	; 0xff
 800357a:	0019      	movs	r1, r3
 800357c:	f001 f882 	bl	8004684 <oled_set_pix>
 8003580:	1dfb      	adds	r3, r7, #7
 8003582:	781b      	ldrb	r3, [r3, #0]
 8003584:	3b03      	subs	r3, #3
 8003586:	b2d8      	uxtb	r0, r3
 8003588:	1dbb      	adds	r3, r7, #6
 800358a:	781b      	ldrb	r3, [r3, #0]
 800358c:	3b04      	subs	r3, #4
 800358e:	b2db      	uxtb	r3, r3
 8003590:	22ff      	movs	r2, #255	; 0xff
 8003592:	0019      	movs	r1, r3
 8003594:	f001 f876 	bl	8004684 <oled_set_pix>
 8003598:	1dfb      	adds	r3, r7, #7
 800359a:	781b      	ldrb	r3, [r3, #0]
 800359c:	3b03      	subs	r3, #3
 800359e:	b2d8      	uxtb	r0, r3
 80035a0:	1dbb      	adds	r3, r7, #6
 80035a2:	781b      	ldrb	r3, [r3, #0]
 80035a4:	3302      	adds	r3, #2
 80035a6:	b2db      	uxtb	r3, r3
 80035a8:	22ff      	movs	r2, #255	; 0xff
 80035aa:	0019      	movs	r1, r3
 80035ac:	f001 f86a 	bl	8004684 <oled_set_pix>
 80035b0:	1dfb      	adds	r3, r7, #7
 80035b2:	781b      	ldrb	r3, [r3, #0]
 80035b4:	3b03      	subs	r3, #3
 80035b6:	b2d8      	uxtb	r0, r3
 80035b8:	1dbb      	adds	r3, r7, #6
 80035ba:	781b      	ldrb	r3, [r3, #0]
 80035bc:	3303      	adds	r3, #3
 80035be:	b2db      	uxtb	r3, r3
 80035c0:	22ff      	movs	r2, #255	; 0xff
 80035c2:	0019      	movs	r1, r3
 80035c4:	f001 f85e 	bl	8004684 <oled_set_pix>
 80035c8:	1dfb      	adds	r3, r7, #7
 80035ca:	781b      	ldrb	r3, [r3, #0]
 80035cc:	3304      	adds	r3, #4
 80035ce:	b2d8      	uxtb	r0, r3
 80035d0:	1dbb      	adds	r3, r7, #6
 80035d2:	781b      	ldrb	r3, [r3, #0]
 80035d4:	3301      	adds	r3, #1
 80035d6:	b2db      	uxtb	r3, r3
 80035d8:	22ff      	movs	r2, #255	; 0xff
 80035da:	0019      	movs	r1, r3
 80035dc:	f001 f852 	bl	8004684 <oled_set_pix>
 80035e0:	1dfb      	adds	r3, r7, #7
 80035e2:	781b      	ldrb	r3, [r3, #0]
 80035e4:	3304      	adds	r3, #4
 80035e6:	b2d8      	uxtb	r0, r3
 80035e8:	1dbb      	adds	r3, r7, #6
 80035ea:	781b      	ldrb	r3, [r3, #0]
 80035ec:	22ff      	movs	r2, #255	; 0xff
 80035ee:	0019      	movs	r1, r3
 80035f0:	f001 f848 	bl	8004684 <oled_set_pix>
 80035f4:	1dfb      	adds	r3, r7, #7
 80035f6:	781b      	ldrb	r3, [r3, #0]
 80035f8:	3304      	adds	r3, #4
 80035fa:	b2d8      	uxtb	r0, r3
 80035fc:	1dbb      	adds	r3, r7, #6
 80035fe:	781b      	ldrb	r3, [r3, #0]
 8003600:	3b01      	subs	r3, #1
 8003602:	b2db      	uxtb	r3, r3
 8003604:	22ff      	movs	r2, #255	; 0xff
 8003606:	0019      	movs	r1, r3
 8003608:	f001 f83c 	bl	8004684 <oled_set_pix>
 800360c:	1dfb      	adds	r3, r7, #7
 800360e:	781b      	ldrb	r3, [r3, #0]
 8003610:	3304      	adds	r3, #4
 8003612:	b2d8      	uxtb	r0, r3
 8003614:	1dbb      	adds	r3, r7, #6
 8003616:	781b      	ldrb	r3, [r3, #0]
 8003618:	3b02      	subs	r3, #2
 800361a:	b2db      	uxtb	r3, r3
 800361c:	22ff      	movs	r2, #255	; 0xff
 800361e:	0019      	movs	r1, r3
 8003620:	f001 f830 	bl	8004684 <oled_set_pix>
 8003624:	1dfb      	adds	r3, r7, #7
 8003626:	781b      	ldrb	r3, [r3, #0]
 8003628:	3304      	adds	r3, #4
 800362a:	b2d8      	uxtb	r0, r3
 800362c:	1dbb      	adds	r3, r7, #6
 800362e:	781b      	ldrb	r3, [r3, #0]
 8003630:	3b03      	subs	r3, #3
 8003632:	b2db      	uxtb	r3, r3
 8003634:	22ff      	movs	r2, #255	; 0xff
 8003636:	0019      	movs	r1, r3
 8003638:	f001 f824 	bl	8004684 <oled_set_pix>
 800363c:	1dfb      	adds	r3, r7, #7
 800363e:	781b      	ldrb	r3, [r3, #0]
 8003640:	3304      	adds	r3, #4
 8003642:	b2d8      	uxtb	r0, r3
 8003644:	1dbb      	adds	r3, r7, #6
 8003646:	781b      	ldrb	r3, [r3, #0]
 8003648:	3b04      	subs	r3, #4
 800364a:	b2db      	uxtb	r3, r3
 800364c:	22ff      	movs	r2, #255	; 0xff
 800364e:	0019      	movs	r1, r3
 8003650:	f001 f818 	bl	8004684 <oled_set_pix>
 8003654:	1dfb      	adds	r3, r7, #7
 8003656:	781b      	ldrb	r3, [r3, #0]
 8003658:	3b04      	subs	r3, #4
 800365a:	b2d8      	uxtb	r0, r3
 800365c:	1dbb      	adds	r3, r7, #6
 800365e:	781b      	ldrb	r3, [r3, #0]
 8003660:	3301      	adds	r3, #1
 8003662:	b2db      	uxtb	r3, r3
 8003664:	22ff      	movs	r2, #255	; 0xff
 8003666:	0019      	movs	r1, r3
 8003668:	f001 f80c 	bl	8004684 <oled_set_pix>
 800366c:	1dfb      	adds	r3, r7, #7
 800366e:	781b      	ldrb	r3, [r3, #0]
 8003670:	3b04      	subs	r3, #4
 8003672:	b2d8      	uxtb	r0, r3
 8003674:	1dbb      	adds	r3, r7, #6
 8003676:	781b      	ldrb	r3, [r3, #0]
 8003678:	22ff      	movs	r2, #255	; 0xff
 800367a:	0019      	movs	r1, r3
 800367c:	f001 f802 	bl	8004684 <oled_set_pix>
 8003680:	1dfb      	adds	r3, r7, #7
 8003682:	781b      	ldrb	r3, [r3, #0]
 8003684:	3b04      	subs	r3, #4
 8003686:	b2d8      	uxtb	r0, r3
 8003688:	1dbb      	adds	r3, r7, #6
 800368a:	781b      	ldrb	r3, [r3, #0]
 800368c:	3b01      	subs	r3, #1
 800368e:	b2db      	uxtb	r3, r3
 8003690:	22ff      	movs	r2, #255	; 0xff
 8003692:	0019      	movs	r1, r3
 8003694:	f000 fff6 	bl	8004684 <oled_set_pix>
 8003698:	1dfb      	adds	r3, r7, #7
 800369a:	781b      	ldrb	r3, [r3, #0]
 800369c:	3b04      	subs	r3, #4
 800369e:	b2d8      	uxtb	r0, r3
 80036a0:	1dbb      	adds	r3, r7, #6
 80036a2:	781b      	ldrb	r3, [r3, #0]
 80036a4:	3b02      	subs	r3, #2
 80036a6:	b2db      	uxtb	r3, r3
 80036a8:	22ff      	movs	r2, #255	; 0xff
 80036aa:	0019      	movs	r1, r3
 80036ac:	f000 ffea 	bl	8004684 <oled_set_pix>
 80036b0:	1dfb      	adds	r3, r7, #7
 80036b2:	781b      	ldrb	r3, [r3, #0]
 80036b4:	3b04      	subs	r3, #4
 80036b6:	b2d8      	uxtb	r0, r3
 80036b8:	1dbb      	adds	r3, r7, #6
 80036ba:	781b      	ldrb	r3, [r3, #0]
 80036bc:	3b03      	subs	r3, #3
 80036be:	b2db      	uxtb	r3, r3
 80036c0:	22ff      	movs	r2, #255	; 0xff
 80036c2:	0019      	movs	r1, r3
 80036c4:	f000 ffde 	bl	8004684 <oled_set_pix>
 80036c8:	1dfb      	adds	r3, r7, #7
 80036ca:	781b      	ldrb	r3, [r3, #0]
 80036cc:	3b04      	subs	r3, #4
 80036ce:	b2d8      	uxtb	r0, r3
 80036d0:	1dbb      	adds	r3, r7, #6
 80036d2:	781b      	ldrb	r3, [r3, #0]
 80036d4:	3b04      	subs	r3, #4
 80036d6:	b2db      	uxtb	r3, r3
 80036d8:	22ff      	movs	r2, #255	; 0xff
 80036da:	0019      	movs	r1, r3
 80036dc:	f000 ffd2 	bl	8004684 <oled_set_pix>
 80036e0:	1dfb      	adds	r3, r7, #7
 80036e2:	781b      	ldrb	r3, [r3, #0]
 80036e4:	3305      	adds	r3, #5
 80036e6:	b2d8      	uxtb	r0, r3
 80036e8:	1dbb      	adds	r3, r7, #6
 80036ea:	781b      	ldrb	r3, [r3, #0]
 80036ec:	3b03      	subs	r3, #3
 80036ee:	b2db      	uxtb	r3, r3
 80036f0:	22ff      	movs	r2, #255	; 0xff
 80036f2:	0019      	movs	r1, r3
 80036f4:	f000 ffc6 	bl	8004684 <oled_set_pix>
 80036f8:	1dfb      	adds	r3, r7, #7
 80036fa:	781b      	ldrb	r3, [r3, #0]
 80036fc:	3b05      	subs	r3, #5
 80036fe:	b2d8      	uxtb	r0, r3
 8003700:	1dbb      	adds	r3, r7, #6
 8003702:	781b      	ldrb	r3, [r3, #0]
 8003704:	3b03      	subs	r3, #3
 8003706:	b2db      	uxtb	r3, r3
 8003708:	22ff      	movs	r2, #255	; 0xff
 800370a:	0019      	movs	r1, r3
 800370c:	f000 ffba 	bl	8004684 <oled_set_pix>
 8003710:	1dfb      	adds	r3, r7, #7
 8003712:	781b      	ldrb	r3, [r3, #0]
 8003714:	3306      	adds	r3, #6
 8003716:	b2d8      	uxtb	r0, r3
 8003718:	1dbb      	adds	r3, r7, #6
 800371a:	781b      	ldrb	r3, [r3, #0]
 800371c:	3301      	adds	r3, #1
 800371e:	b2db      	uxtb	r3, r3
 8003720:	22ff      	movs	r2, #255	; 0xff
 8003722:	0019      	movs	r1, r3
 8003724:	f000 ffae 	bl	8004684 <oled_set_pix>
 8003728:	1dfb      	adds	r3, r7, #7
 800372a:	781b      	ldrb	r3, [r3, #0]
 800372c:	3306      	adds	r3, #6
 800372e:	b2d8      	uxtb	r0, r3
 8003730:	1dbb      	adds	r3, r7, #6
 8003732:	781b      	ldrb	r3, [r3, #0]
 8003734:	22ff      	movs	r2, #255	; 0xff
 8003736:	0019      	movs	r1, r3
 8003738:	f000 ffa4 	bl	8004684 <oled_set_pix>
 800373c:	1dfb      	adds	r3, r7, #7
 800373e:	781b      	ldrb	r3, [r3, #0]
 8003740:	3306      	adds	r3, #6
 8003742:	b2d8      	uxtb	r0, r3
 8003744:	1dbb      	adds	r3, r7, #6
 8003746:	781b      	ldrb	r3, [r3, #0]
 8003748:	3b01      	subs	r3, #1
 800374a:	b2db      	uxtb	r3, r3
 800374c:	22ff      	movs	r2, #255	; 0xff
 800374e:	0019      	movs	r1, r3
 8003750:	f000 ff98 	bl	8004684 <oled_set_pix>
 8003754:	1dfb      	adds	r3, r7, #7
 8003756:	781b      	ldrb	r3, [r3, #0]
 8003758:	3306      	adds	r3, #6
 800375a:	b2d8      	uxtb	r0, r3
 800375c:	1dbb      	adds	r3, r7, #6
 800375e:	781b      	ldrb	r3, [r3, #0]
 8003760:	3b02      	subs	r3, #2
 8003762:	b2db      	uxtb	r3, r3
 8003764:	22ff      	movs	r2, #255	; 0xff
 8003766:	0019      	movs	r1, r3
 8003768:	f000 ff8c 	bl	8004684 <oled_set_pix>
 800376c:	1dfb      	adds	r3, r7, #7
 800376e:	781b      	ldrb	r3, [r3, #0]
 8003770:	3306      	adds	r3, #6
 8003772:	b2d8      	uxtb	r0, r3
 8003774:	1dbb      	adds	r3, r7, #6
 8003776:	781b      	ldrb	r3, [r3, #0]
 8003778:	3b03      	subs	r3, #3
 800377a:	b2db      	uxtb	r3, r3
 800377c:	22ff      	movs	r2, #255	; 0xff
 800377e:	0019      	movs	r1, r3
 8003780:	f000 ff80 	bl	8004684 <oled_set_pix>
 8003784:	1dfb      	adds	r3, r7, #7
 8003786:	781b      	ldrb	r3, [r3, #0]
 8003788:	3b06      	subs	r3, #6
 800378a:	b2d8      	uxtb	r0, r3
 800378c:	1dbb      	adds	r3, r7, #6
 800378e:	781b      	ldrb	r3, [r3, #0]
 8003790:	3301      	adds	r3, #1
 8003792:	b2db      	uxtb	r3, r3
 8003794:	22ff      	movs	r2, #255	; 0xff
 8003796:	0019      	movs	r1, r3
 8003798:	f000 ff74 	bl	8004684 <oled_set_pix>
 800379c:	1dfb      	adds	r3, r7, #7
 800379e:	781b      	ldrb	r3, [r3, #0]
 80037a0:	3b06      	subs	r3, #6
 80037a2:	b2d8      	uxtb	r0, r3
 80037a4:	1dbb      	adds	r3, r7, #6
 80037a6:	781b      	ldrb	r3, [r3, #0]
 80037a8:	22ff      	movs	r2, #255	; 0xff
 80037aa:	0019      	movs	r1, r3
 80037ac:	f000 ff6a 	bl	8004684 <oled_set_pix>
 80037b0:	1dfb      	adds	r3, r7, #7
 80037b2:	781b      	ldrb	r3, [r3, #0]
 80037b4:	3b06      	subs	r3, #6
 80037b6:	b2d8      	uxtb	r0, r3
 80037b8:	1dbb      	adds	r3, r7, #6
 80037ba:	781b      	ldrb	r3, [r3, #0]
 80037bc:	3b01      	subs	r3, #1
 80037be:	b2db      	uxtb	r3, r3
 80037c0:	22ff      	movs	r2, #255	; 0xff
 80037c2:	0019      	movs	r1, r3
 80037c4:	f000 ff5e 	bl	8004684 <oled_set_pix>
 80037c8:	1dfb      	adds	r3, r7, #7
 80037ca:	781b      	ldrb	r3, [r3, #0]
 80037cc:	3b06      	subs	r3, #6
 80037ce:	b2d8      	uxtb	r0, r3
 80037d0:	1dbb      	adds	r3, r7, #6
 80037d2:	781b      	ldrb	r3, [r3, #0]
 80037d4:	3b02      	subs	r3, #2
 80037d6:	b2db      	uxtb	r3, r3
 80037d8:	22ff      	movs	r2, #255	; 0xff
 80037da:	0019      	movs	r1, r3
 80037dc:	f000 ff52 	bl	8004684 <oled_set_pix>
 80037e0:	1dfb      	adds	r3, r7, #7
 80037e2:	781b      	ldrb	r3, [r3, #0]
 80037e4:	3b06      	subs	r3, #6
 80037e6:	b2d8      	uxtb	r0, r3
 80037e8:	1dbb      	adds	r3, r7, #6
 80037ea:	781b      	ldrb	r3, [r3, #0]
 80037ec:	3b03      	subs	r3, #3
 80037ee:	b2db      	uxtb	r3, r3
 80037f0:	22ff      	movs	r2, #255	; 0xff
 80037f2:	0019      	movs	r1, r3
 80037f4:	f000 ff46 	bl	8004684 <oled_set_pix>
 80037f8:	1dfb      	adds	r3, r7, #7
 80037fa:	781b      	ldrb	r3, [r3, #0]
 80037fc:	3307      	adds	r3, #7
 80037fe:	b2d8      	uxtb	r0, r3
 8003800:	1dbb      	adds	r3, r7, #6
 8003802:	781b      	ldrb	r3, [r3, #0]
 8003804:	22ff      	movs	r2, #255	; 0xff
 8003806:	0019      	movs	r1, r3
 8003808:	f000 ff3c 	bl	8004684 <oled_set_pix>
 800380c:	1dfb      	adds	r3, r7, #7
 800380e:	781b      	ldrb	r3, [r3, #0]
 8003810:	3307      	adds	r3, #7
 8003812:	b2d8      	uxtb	r0, r3
 8003814:	1dbb      	adds	r3, r7, #6
 8003816:	781b      	ldrb	r3, [r3, #0]
 8003818:	3b01      	subs	r3, #1
 800381a:	b2db      	uxtb	r3, r3
 800381c:	22ff      	movs	r2, #255	; 0xff
 800381e:	0019      	movs	r1, r3
 8003820:	f000 ff30 	bl	8004684 <oled_set_pix>
 8003824:	1dfb      	adds	r3, r7, #7
 8003826:	781b      	ldrb	r3, [r3, #0]
 8003828:	3307      	adds	r3, #7
 800382a:	b2d8      	uxtb	r0, r3
 800382c:	1dbb      	adds	r3, r7, #6
 800382e:	781b      	ldrb	r3, [r3, #0]
 8003830:	3b02      	subs	r3, #2
 8003832:	b2db      	uxtb	r3, r3
 8003834:	22ff      	movs	r2, #255	; 0xff
 8003836:	0019      	movs	r1, r3
 8003838:	f000 ff24 	bl	8004684 <oled_set_pix>
 800383c:	1dfb      	adds	r3, r7, #7
 800383e:	781b      	ldrb	r3, [r3, #0]
 8003840:	3307      	adds	r3, #7
 8003842:	b2d8      	uxtb	r0, r3
 8003844:	1dbb      	adds	r3, r7, #6
 8003846:	781b      	ldrb	r3, [r3, #0]
 8003848:	3b03      	subs	r3, #3
 800384a:	b2db      	uxtb	r3, r3
 800384c:	22ff      	movs	r2, #255	; 0xff
 800384e:	0019      	movs	r1, r3
 8003850:	f000 ff18 	bl	8004684 <oled_set_pix>
 8003854:	1dfb      	adds	r3, r7, #7
 8003856:	781b      	ldrb	r3, [r3, #0]
 8003858:	3307      	adds	r3, #7
 800385a:	b2d8      	uxtb	r0, r3
 800385c:	1dbb      	adds	r3, r7, #6
 800385e:	781b      	ldrb	r3, [r3, #0]
 8003860:	3b04      	subs	r3, #4
 8003862:	b2db      	uxtb	r3, r3
 8003864:	22ff      	movs	r2, #255	; 0xff
 8003866:	0019      	movs	r1, r3
 8003868:	f000 ff0c 	bl	8004684 <oled_set_pix>
 800386c:	1dfb      	adds	r3, r7, #7
 800386e:	781b      	ldrb	r3, [r3, #0]
 8003870:	3b07      	subs	r3, #7
 8003872:	b2d8      	uxtb	r0, r3
 8003874:	1dbb      	adds	r3, r7, #6
 8003876:	781b      	ldrb	r3, [r3, #0]
 8003878:	22ff      	movs	r2, #255	; 0xff
 800387a:	0019      	movs	r1, r3
 800387c:	f000 ff02 	bl	8004684 <oled_set_pix>
 8003880:	1dfb      	adds	r3, r7, #7
 8003882:	781b      	ldrb	r3, [r3, #0]
 8003884:	3b07      	subs	r3, #7
 8003886:	b2d8      	uxtb	r0, r3
 8003888:	1dbb      	adds	r3, r7, #6
 800388a:	781b      	ldrb	r3, [r3, #0]
 800388c:	3b01      	subs	r3, #1
 800388e:	b2db      	uxtb	r3, r3
 8003890:	22ff      	movs	r2, #255	; 0xff
 8003892:	0019      	movs	r1, r3
 8003894:	f000 fef6 	bl	8004684 <oled_set_pix>
 8003898:	1dfb      	adds	r3, r7, #7
 800389a:	781b      	ldrb	r3, [r3, #0]
 800389c:	3b07      	subs	r3, #7
 800389e:	b2d8      	uxtb	r0, r3
 80038a0:	1dbb      	adds	r3, r7, #6
 80038a2:	781b      	ldrb	r3, [r3, #0]
 80038a4:	3b02      	subs	r3, #2
 80038a6:	b2db      	uxtb	r3, r3
 80038a8:	22ff      	movs	r2, #255	; 0xff
 80038aa:	0019      	movs	r1, r3
 80038ac:	f000 feea 	bl	8004684 <oled_set_pix>
 80038b0:	1dfb      	adds	r3, r7, #7
 80038b2:	781b      	ldrb	r3, [r3, #0]
 80038b4:	3b07      	subs	r3, #7
 80038b6:	b2d8      	uxtb	r0, r3
 80038b8:	1dbb      	adds	r3, r7, #6
 80038ba:	781b      	ldrb	r3, [r3, #0]
 80038bc:	3b03      	subs	r3, #3
 80038be:	b2db      	uxtb	r3, r3
 80038c0:	22ff      	movs	r2, #255	; 0xff
 80038c2:	0019      	movs	r1, r3
 80038c4:	f000 fede 	bl	8004684 <oled_set_pix>
 80038c8:	1dfb      	adds	r3, r7, #7
 80038ca:	781b      	ldrb	r3, [r3, #0]
 80038cc:	3b07      	subs	r3, #7
 80038ce:	b2d8      	uxtb	r0, r3
 80038d0:	1dbb      	adds	r3, r7, #6
 80038d2:	781b      	ldrb	r3, [r3, #0]
 80038d4:	3b04      	subs	r3, #4
 80038d6:	b2db      	uxtb	r3, r3
 80038d8:	22ff      	movs	r2, #255	; 0xff
 80038da:	0019      	movs	r1, r3
 80038dc:	f000 fed2 	bl	8004684 <oled_set_pix>
 80038e0:	1dfb      	adds	r3, r7, #7
 80038e2:	781b      	ldrb	r3, [r3, #0]
 80038e4:	3308      	adds	r3, #8
 80038e6:	b2d8      	uxtb	r0, r3
 80038e8:	1dbb      	adds	r3, r7, #6
 80038ea:	781b      	ldrb	r3, [r3, #0]
 80038ec:	3301      	adds	r3, #1
 80038ee:	b2db      	uxtb	r3, r3
 80038f0:	22ff      	movs	r2, #255	; 0xff
 80038f2:	0019      	movs	r1, r3
 80038f4:	f000 fec6 	bl	8004684 <oled_set_pix>
 80038f8:	1dfb      	adds	r3, r7, #7
 80038fa:	781b      	ldrb	r3, [r3, #0]
 80038fc:	3308      	adds	r3, #8
 80038fe:	b2d8      	uxtb	r0, r3
 8003900:	1dbb      	adds	r3, r7, #6
 8003902:	781b      	ldrb	r3, [r3, #0]
 8003904:	22ff      	movs	r2, #255	; 0xff
 8003906:	0019      	movs	r1, r3
 8003908:	f000 febc 	bl	8004684 <oled_set_pix>
 800390c:	1dfb      	adds	r3, r7, #7
 800390e:	781b      	ldrb	r3, [r3, #0]
 8003910:	3308      	adds	r3, #8
 8003912:	b2d8      	uxtb	r0, r3
 8003914:	1dbb      	adds	r3, r7, #6
 8003916:	781b      	ldrb	r3, [r3, #0]
 8003918:	3b01      	subs	r3, #1
 800391a:	b2db      	uxtb	r3, r3
 800391c:	22ff      	movs	r2, #255	; 0xff
 800391e:	0019      	movs	r1, r3
 8003920:	f000 feb0 	bl	8004684 <oled_set_pix>
 8003924:	1dfb      	adds	r3, r7, #7
 8003926:	781b      	ldrb	r3, [r3, #0]
 8003928:	3308      	adds	r3, #8
 800392a:	b2d8      	uxtb	r0, r3
 800392c:	1dbb      	adds	r3, r7, #6
 800392e:	781b      	ldrb	r3, [r3, #0]
 8003930:	3b02      	subs	r3, #2
 8003932:	b2db      	uxtb	r3, r3
 8003934:	22ff      	movs	r2, #255	; 0xff
 8003936:	0019      	movs	r1, r3
 8003938:	f000 fea4 	bl	8004684 <oled_set_pix>
 800393c:	1dfb      	adds	r3, r7, #7
 800393e:	781b      	ldrb	r3, [r3, #0]
 8003940:	3308      	adds	r3, #8
 8003942:	b2d8      	uxtb	r0, r3
 8003944:	1dbb      	adds	r3, r7, #6
 8003946:	781b      	ldrb	r3, [r3, #0]
 8003948:	3b03      	subs	r3, #3
 800394a:	b2db      	uxtb	r3, r3
 800394c:	22ff      	movs	r2, #255	; 0xff
 800394e:	0019      	movs	r1, r3
 8003950:	f000 fe98 	bl	8004684 <oled_set_pix>
 8003954:	1dfb      	adds	r3, r7, #7
 8003956:	781b      	ldrb	r3, [r3, #0]
 8003958:	3b08      	subs	r3, #8
 800395a:	b2d8      	uxtb	r0, r3
 800395c:	1dbb      	adds	r3, r7, #6
 800395e:	781b      	ldrb	r3, [r3, #0]
 8003960:	3301      	adds	r3, #1
 8003962:	b2db      	uxtb	r3, r3
 8003964:	22ff      	movs	r2, #255	; 0xff
 8003966:	0019      	movs	r1, r3
 8003968:	f000 fe8c 	bl	8004684 <oled_set_pix>
 800396c:	1dfb      	adds	r3, r7, #7
 800396e:	781b      	ldrb	r3, [r3, #0]
 8003970:	3b08      	subs	r3, #8
 8003972:	b2d8      	uxtb	r0, r3
 8003974:	1dbb      	adds	r3, r7, #6
 8003976:	781b      	ldrb	r3, [r3, #0]
 8003978:	22ff      	movs	r2, #255	; 0xff
 800397a:	0019      	movs	r1, r3
 800397c:	f000 fe82 	bl	8004684 <oled_set_pix>
 8003980:	1dfb      	adds	r3, r7, #7
 8003982:	781b      	ldrb	r3, [r3, #0]
 8003984:	3b08      	subs	r3, #8
 8003986:	b2d8      	uxtb	r0, r3
 8003988:	1dbb      	adds	r3, r7, #6
 800398a:	781b      	ldrb	r3, [r3, #0]
 800398c:	3b01      	subs	r3, #1
 800398e:	b2db      	uxtb	r3, r3
 8003990:	22ff      	movs	r2, #255	; 0xff
 8003992:	0019      	movs	r1, r3
 8003994:	f000 fe76 	bl	8004684 <oled_set_pix>
 8003998:	1dfb      	adds	r3, r7, #7
 800399a:	781b      	ldrb	r3, [r3, #0]
 800399c:	3b08      	subs	r3, #8
 800399e:	b2d8      	uxtb	r0, r3
 80039a0:	1dbb      	adds	r3, r7, #6
 80039a2:	781b      	ldrb	r3, [r3, #0]
 80039a4:	3b02      	subs	r3, #2
 80039a6:	b2db      	uxtb	r3, r3
 80039a8:	22ff      	movs	r2, #255	; 0xff
 80039aa:	0019      	movs	r1, r3
 80039ac:	f000 fe6a 	bl	8004684 <oled_set_pix>
 80039b0:	1dfb      	adds	r3, r7, #7
 80039b2:	781b      	ldrb	r3, [r3, #0]
 80039b4:	3b08      	subs	r3, #8
 80039b6:	b2d8      	uxtb	r0, r3
 80039b8:	1dbb      	adds	r3, r7, #6
 80039ba:	781b      	ldrb	r3, [r3, #0]
 80039bc:	3b03      	subs	r3, #3
 80039be:	b2db      	uxtb	r3, r3
 80039c0:	22ff      	movs	r2, #255	; 0xff
 80039c2:	0019      	movs	r1, r3
 80039c4:	f000 fe5e 	bl	8004684 <oled_set_pix>
 80039c8:	46c0      	nop			; (mov r8, r8)
 80039ca:	46bd      	mov	sp, r7
 80039cc:	b002      	add	sp, #8
 80039ce:	bd80      	pop	{r7, pc}

080039d0 <draw_player_projectile>:
 80039d0:	b580      	push	{r7, lr}
 80039d2:	b082      	sub	sp, #8
 80039d4:	af00      	add	r7, sp, #0
 80039d6:	0002      	movs	r2, r0
 80039d8:	1dfb      	adds	r3, r7, #7
 80039da:	701a      	strb	r2, [r3, #0]
 80039dc:	1dbb      	adds	r3, r7, #6
 80039de:	1c0a      	adds	r2, r1, #0
 80039e0:	701a      	strb	r2, [r3, #0]
 80039e2:	1dbb      	adds	r3, r7, #6
 80039e4:	781b      	ldrb	r3, [r3, #0]
 80039e6:	3302      	adds	r3, #2
 80039e8:	b2d9      	uxtb	r1, r3
 80039ea:	1dfb      	adds	r3, r7, #7
 80039ec:	781b      	ldrb	r3, [r3, #0]
 80039ee:	22ff      	movs	r2, #255	; 0xff
 80039f0:	0018      	movs	r0, r3
 80039f2:	f000 fe47 	bl	8004684 <oled_set_pix>
 80039f6:	1dbb      	adds	r3, r7, #6
 80039f8:	781b      	ldrb	r3, [r3, #0]
 80039fa:	3301      	adds	r3, #1
 80039fc:	b2d9      	uxtb	r1, r3
 80039fe:	1dfb      	adds	r3, r7, #7
 8003a00:	781b      	ldrb	r3, [r3, #0]
 8003a02:	22ff      	movs	r2, #255	; 0xff
 8003a04:	0018      	movs	r0, r3
 8003a06:	f000 fe3d 	bl	8004684 <oled_set_pix>
 8003a0a:	1dbb      	adds	r3, r7, #6
 8003a0c:	7819      	ldrb	r1, [r3, #0]
 8003a0e:	1dfb      	adds	r3, r7, #7
 8003a10:	781b      	ldrb	r3, [r3, #0]
 8003a12:	22ff      	movs	r2, #255	; 0xff
 8003a14:	0018      	movs	r0, r3
 8003a16:	f000 fe35 	bl	8004684 <oled_set_pix>
 8003a1a:	1dbb      	adds	r3, r7, #6
 8003a1c:	781b      	ldrb	r3, [r3, #0]
 8003a1e:	3b01      	subs	r3, #1
 8003a20:	b2d9      	uxtb	r1, r3
 8003a22:	1dfb      	adds	r3, r7, #7
 8003a24:	781b      	ldrb	r3, [r3, #0]
 8003a26:	22ff      	movs	r2, #255	; 0xff
 8003a28:	0018      	movs	r0, r3
 8003a2a:	f000 fe2b 	bl	8004684 <oled_set_pix>
 8003a2e:	1dbb      	adds	r3, r7, #6
 8003a30:	781b      	ldrb	r3, [r3, #0]
 8003a32:	3b02      	subs	r3, #2
 8003a34:	b2d9      	uxtb	r1, r3
 8003a36:	1dfb      	adds	r3, r7, #7
 8003a38:	781b      	ldrb	r3, [r3, #0]
 8003a3a:	22ff      	movs	r2, #255	; 0xff
 8003a3c:	0018      	movs	r0, r3
 8003a3e:	f000 fe21 	bl	8004684 <oled_set_pix>
 8003a42:	46c0      	nop			; (mov r8, r8)
 8003a44:	46bd      	mov	sp, r7
 8003a46:	b002      	add	sp, #8
 8003a48:	bd80      	pop	{r7, pc}
	...

08003a4c <draw_battlefield>:
 8003a4c:	b580      	push	{r7, lr}
 8003a4e:	b084      	sub	sp, #16
 8003a50:	af00      	add	r7, sp, #0
 8003a52:	6078      	str	r0, [r7, #4]
 8003a54:	230f      	movs	r3, #15
 8003a56:	18fb      	adds	r3, r7, r3
 8003a58:	2200      	movs	r2, #0
 8003a5a:	701a      	strb	r2, [r3, #0]
 8003a5c:	e0cd      	b.n	8003bfa <draw_battlefield+0x1ae>
 8003a5e:	210f      	movs	r1, #15
 8003a60:	187b      	adds	r3, r7, r1
 8003a62:	781a      	ldrb	r2, [r3, #0]
 8003a64:	0013      	movs	r3, r2
 8003a66:	00db      	lsls	r3, r3, #3
 8003a68:	189b      	adds	r3, r3, r2
 8003a6a:	009b      	lsls	r3, r3, #2
 8003a6c:	001a      	movs	r2, r3
 8003a6e:	687b      	ldr	r3, [r7, #4]
 8003a70:	189b      	adds	r3, r3, r2
 8003a72:	7e1b      	ldrb	r3, [r3, #24]
 8003a74:	2b65      	cmp	r3, #101	; 0x65
 8003a76:	d124      	bne.n	8003ac2 <draw_battlefield+0x76>
 8003a78:	187b      	adds	r3, r7, r1
 8003a7a:	781a      	ldrb	r2, [r3, #0]
 8003a7c:	0013      	movs	r3, r2
 8003a7e:	00db      	lsls	r3, r3, #3
 8003a80:	189b      	adds	r3, r3, r2
 8003a82:	009b      	lsls	r3, r3, #2
 8003a84:	001a      	movs	r2, r3
 8003a86:	687b      	ldr	r3, [r7, #4]
 8003a88:	189b      	adds	r3, r3, r2
 8003a8a:	7e5b      	ldrb	r3, [r3, #25]
 8003a8c:	2b70      	cmp	r3, #112	; 0x70
 8003a8e:	d118      	bne.n	8003ac2 <draw_battlefield+0x76>
 8003a90:	187b      	adds	r3, r7, r1
 8003a92:	781a      	ldrb	r2, [r3, #0]
 8003a94:	0013      	movs	r3, r2
 8003a96:	00db      	lsls	r3, r3, #3
 8003a98:	189b      	adds	r3, r3, r2
 8003a9a:	009b      	lsls	r3, r3, #2
 8003a9c:	001a      	movs	r2, r3
 8003a9e:	687b      	ldr	r3, [r7, #4]
 8003aa0:	189b      	adds	r3, r3, r2
 8003aa2:	689b      	ldr	r3, [r3, #8]
 8003aa4:	b2d8      	uxtb	r0, r3
 8003aa6:	187b      	adds	r3, r7, r1
 8003aa8:	781a      	ldrb	r2, [r3, #0]
 8003aaa:	0013      	movs	r3, r2
 8003aac:	00db      	lsls	r3, r3, #3
 8003aae:	189b      	adds	r3, r3, r2
 8003ab0:	009b      	lsls	r3, r3, #2
 8003ab2:	001a      	movs	r2, r3
 8003ab4:	687b      	ldr	r3, [r7, #4]
 8003ab6:	189b      	adds	r3, r3, r2
 8003ab8:	685b      	ldr	r3, [r3, #4]
 8003aba:	b2db      	uxtb	r3, r3
 8003abc:	0019      	movs	r1, r3
 8003abe:	f7ff fb95 	bl	80031ec <draw_enemy_projectile>
 8003ac2:	210f      	movs	r1, #15
 8003ac4:	187b      	adds	r3, r7, r1
 8003ac6:	781a      	ldrb	r2, [r3, #0]
 8003ac8:	0013      	movs	r3, r2
 8003aca:	00db      	lsls	r3, r3, #3
 8003acc:	189b      	adds	r3, r3, r2
 8003ace:	009b      	lsls	r3, r3, #2
 8003ad0:	001a      	movs	r2, r3
 8003ad2:	687b      	ldr	r3, [r7, #4]
 8003ad4:	189b      	adds	r3, r3, r2
 8003ad6:	7e1b      	ldrb	r3, [r3, #24]
 8003ad8:	2b65      	cmp	r3, #101	; 0x65
 8003ada:	d124      	bne.n	8003b26 <draw_battlefield+0xda>
 8003adc:	187b      	adds	r3, r7, r1
 8003ade:	781a      	ldrb	r2, [r3, #0]
 8003ae0:	0013      	movs	r3, r2
 8003ae2:	00db      	lsls	r3, r3, #3
 8003ae4:	189b      	adds	r3, r3, r2
 8003ae6:	009b      	lsls	r3, r3, #2
 8003ae8:	001a      	movs	r2, r3
 8003aea:	687b      	ldr	r3, [r7, #4]
 8003aec:	189b      	adds	r3, r3, r2
 8003aee:	7e5b      	ldrb	r3, [r3, #25]
 8003af0:	2b73      	cmp	r3, #115	; 0x73
 8003af2:	d118      	bne.n	8003b26 <draw_battlefield+0xda>
 8003af4:	187b      	adds	r3, r7, r1
 8003af6:	781a      	ldrb	r2, [r3, #0]
 8003af8:	0013      	movs	r3, r2
 8003afa:	00db      	lsls	r3, r3, #3
 8003afc:	189b      	adds	r3, r3, r2
 8003afe:	009b      	lsls	r3, r3, #2
 8003b00:	001a      	movs	r2, r3
 8003b02:	687b      	ldr	r3, [r7, #4]
 8003b04:	189b      	adds	r3, r3, r2
 8003b06:	689b      	ldr	r3, [r3, #8]
 8003b08:	b2d8      	uxtb	r0, r3
 8003b0a:	187b      	adds	r3, r7, r1
 8003b0c:	781a      	ldrb	r2, [r3, #0]
 8003b0e:	0013      	movs	r3, r2
 8003b10:	00db      	lsls	r3, r3, #3
 8003b12:	189b      	adds	r3, r3, r2
 8003b14:	009b      	lsls	r3, r3, #2
 8003b16:	001a      	movs	r2, r3
 8003b18:	687b      	ldr	r3, [r7, #4]
 8003b1a:	189b      	adds	r3, r3, r2
 8003b1c:	685b      	ldr	r3, [r3, #4]
 8003b1e:	b2db      	uxtb	r3, r3
 8003b20:	0019      	movs	r1, r3
 8003b22:	f7fd fd73 	bl	800160c <draw_corvette>
 8003b26:	210f      	movs	r1, #15
 8003b28:	187b      	adds	r3, r7, r1
 8003b2a:	781a      	ldrb	r2, [r3, #0]
 8003b2c:	0013      	movs	r3, r2
 8003b2e:	00db      	lsls	r3, r3, #3
 8003b30:	189b      	adds	r3, r3, r2
 8003b32:	009b      	lsls	r3, r3, #2
 8003b34:	001a      	movs	r2, r3
 8003b36:	687b      	ldr	r3, [r7, #4]
 8003b38:	189b      	adds	r3, r3, r2
 8003b3a:	7e1b      	ldrb	r3, [r3, #24]
 8003b3c:	2b66      	cmp	r3, #102	; 0x66
 8003b3e:	d124      	bne.n	8003b8a <draw_battlefield+0x13e>
 8003b40:	187b      	adds	r3, r7, r1
 8003b42:	781a      	ldrb	r2, [r3, #0]
 8003b44:	0013      	movs	r3, r2
 8003b46:	00db      	lsls	r3, r3, #3
 8003b48:	189b      	adds	r3, r3, r2
 8003b4a:	009b      	lsls	r3, r3, #2
 8003b4c:	001a      	movs	r2, r3
 8003b4e:	687b      	ldr	r3, [r7, #4]
 8003b50:	189b      	adds	r3, r3, r2
 8003b52:	7e5b      	ldrb	r3, [r3, #25]
 8003b54:	2b70      	cmp	r3, #112	; 0x70
 8003b56:	d118      	bne.n	8003b8a <draw_battlefield+0x13e>
 8003b58:	187b      	adds	r3, r7, r1
 8003b5a:	781a      	ldrb	r2, [r3, #0]
 8003b5c:	0013      	movs	r3, r2
 8003b5e:	00db      	lsls	r3, r3, #3
 8003b60:	189b      	adds	r3, r3, r2
 8003b62:	009b      	lsls	r3, r3, #2
 8003b64:	001a      	movs	r2, r3
 8003b66:	687b      	ldr	r3, [r7, #4]
 8003b68:	189b      	adds	r3, r3, r2
 8003b6a:	689b      	ldr	r3, [r3, #8]
 8003b6c:	b2d8      	uxtb	r0, r3
 8003b6e:	187b      	adds	r3, r7, r1
 8003b70:	781a      	ldrb	r2, [r3, #0]
 8003b72:	0013      	movs	r3, r2
 8003b74:	00db      	lsls	r3, r3, #3
 8003b76:	189b      	adds	r3, r3, r2
 8003b78:	009b      	lsls	r3, r3, #2
 8003b7a:	001a      	movs	r2, r3
 8003b7c:	687b      	ldr	r3, [r7, #4]
 8003b7e:	189b      	adds	r3, r3, r2
 8003b80:	685b      	ldr	r3, [r3, #4]
 8003b82:	b2db      	uxtb	r3, r3
 8003b84:	0019      	movs	r1, r3
 8003b86:	f7ff ff23 	bl	80039d0 <draw_player_projectile>
 8003b8a:	210f      	movs	r1, #15
 8003b8c:	187b      	adds	r3, r7, r1
 8003b8e:	781a      	ldrb	r2, [r3, #0]
 8003b90:	0013      	movs	r3, r2
 8003b92:	00db      	lsls	r3, r3, #3
 8003b94:	189b      	adds	r3, r3, r2
 8003b96:	009b      	lsls	r3, r3, #2
 8003b98:	001a      	movs	r2, r3
 8003b9a:	687b      	ldr	r3, [r7, #4]
 8003b9c:	189b      	adds	r3, r3, r2
 8003b9e:	7e1b      	ldrb	r3, [r3, #24]
 8003ba0:	2b66      	cmp	r3, #102	; 0x66
 8003ba2:	d124      	bne.n	8003bee <draw_battlefield+0x1a2>
 8003ba4:	187b      	adds	r3, r7, r1
 8003ba6:	781a      	ldrb	r2, [r3, #0]
 8003ba8:	0013      	movs	r3, r2
 8003baa:	00db      	lsls	r3, r3, #3
 8003bac:	189b      	adds	r3, r3, r2
 8003bae:	009b      	lsls	r3, r3, #2
 8003bb0:	001a      	movs	r2, r3
 8003bb2:	687b      	ldr	r3, [r7, #4]
 8003bb4:	189b      	adds	r3, r3, r2
 8003bb6:	7e5b      	ldrb	r3, [r3, #25]
 8003bb8:	2b73      	cmp	r3, #115	; 0x73
 8003bba:	d118      	bne.n	8003bee <draw_battlefield+0x1a2>
 8003bbc:	187b      	adds	r3, r7, r1
 8003bbe:	781a      	ldrb	r2, [r3, #0]
 8003bc0:	0013      	movs	r3, r2
 8003bc2:	00db      	lsls	r3, r3, #3
 8003bc4:	189b      	adds	r3, r3, r2
 8003bc6:	009b      	lsls	r3, r3, #2
 8003bc8:	001a      	movs	r2, r3
 8003bca:	687b      	ldr	r3, [r7, #4]
 8003bcc:	189b      	adds	r3, r3, r2
 8003bce:	689b      	ldr	r3, [r3, #8]
 8003bd0:	b2d8      	uxtb	r0, r3
 8003bd2:	187b      	adds	r3, r7, r1
 8003bd4:	781a      	ldrb	r2, [r3, #0]
 8003bd6:	0013      	movs	r3, r2
 8003bd8:	00db      	lsls	r3, r3, #3
 8003bda:	189b      	adds	r3, r3, r2
 8003bdc:	009b      	lsls	r3, r3, #2
 8003bde:	001a      	movs	r2, r3
 8003be0:	687b      	ldr	r3, [r7, #4]
 8003be2:	189b      	adds	r3, r3, r2
 8003be4:	685b      	ldr	r3, [r3, #4]
 8003be6:	b2db      	uxtb	r3, r3
 8003be8:	0019      	movs	r1, r3
 8003bea:	f7ff fb6c 	bl	80032c6 <draw_player_ship>
 8003bee:	210f      	movs	r1, #15
 8003bf0:	187b      	adds	r3, r7, r1
 8003bf2:	781a      	ldrb	r2, [r3, #0]
 8003bf4:	187b      	adds	r3, r7, r1
 8003bf6:	3201      	adds	r2, #1
 8003bf8:	701a      	strb	r2, [r3, #0]
 8003bfa:	4b06      	ldr	r3, [pc, #24]	; (8003c14 <draw_battlefield+0x1c8>)
 8003bfc:	781b      	ldrb	r3, [r3, #0]
 8003bfe:	220f      	movs	r2, #15
 8003c00:	18ba      	adds	r2, r7, r2
 8003c02:	7812      	ldrb	r2, [r2, #0]
 8003c04:	429a      	cmp	r2, r3
 8003c06:	d200      	bcs.n	8003c0a <draw_battlefield+0x1be>
 8003c08:	e729      	b.n	8003a5e <draw_battlefield+0x12>
 8003c0a:	46c0      	nop			; (mov r8, r8)
 8003c0c:	46c0      	nop			; (mov r8, r8)
 8003c0e:	46bd      	mov	sp, r7
 8003c10:	b004      	add	sp, #16
 8003c12:	bd80      	pop	{r7, pc}
 8003c14:	2000052e 	.word	0x2000052e

08003c18 <SystemInit>:
 8003c18:	b580      	push	{r7, lr}
 8003c1a:	af00      	add	r7, sp, #0
 8003c1c:	4b1a      	ldr	r3, [pc, #104]	; (8003c88 <SystemInit+0x70>)
 8003c1e:	681a      	ldr	r2, [r3, #0]
 8003c20:	4b19      	ldr	r3, [pc, #100]	; (8003c88 <SystemInit+0x70>)
 8003c22:	2101      	movs	r1, #1
 8003c24:	430a      	orrs	r2, r1
 8003c26:	601a      	str	r2, [r3, #0]
 8003c28:	4b17      	ldr	r3, [pc, #92]	; (8003c88 <SystemInit+0x70>)
 8003c2a:	685a      	ldr	r2, [r3, #4]
 8003c2c:	4b16      	ldr	r3, [pc, #88]	; (8003c88 <SystemInit+0x70>)
 8003c2e:	4917      	ldr	r1, [pc, #92]	; (8003c8c <SystemInit+0x74>)
 8003c30:	400a      	ands	r2, r1
 8003c32:	605a      	str	r2, [r3, #4]
 8003c34:	4b14      	ldr	r3, [pc, #80]	; (8003c88 <SystemInit+0x70>)
 8003c36:	681a      	ldr	r2, [r3, #0]
 8003c38:	4b13      	ldr	r3, [pc, #76]	; (8003c88 <SystemInit+0x70>)
 8003c3a:	4915      	ldr	r1, [pc, #84]	; (8003c90 <SystemInit+0x78>)
 8003c3c:	400a      	ands	r2, r1
 8003c3e:	601a      	str	r2, [r3, #0]
 8003c40:	4b11      	ldr	r3, [pc, #68]	; (8003c88 <SystemInit+0x70>)
 8003c42:	681a      	ldr	r2, [r3, #0]
 8003c44:	4b10      	ldr	r3, [pc, #64]	; (8003c88 <SystemInit+0x70>)
 8003c46:	4913      	ldr	r1, [pc, #76]	; (8003c94 <SystemInit+0x7c>)
 8003c48:	400a      	ands	r2, r1
 8003c4a:	601a      	str	r2, [r3, #0]
 8003c4c:	4b0e      	ldr	r3, [pc, #56]	; (8003c88 <SystemInit+0x70>)
 8003c4e:	685a      	ldr	r2, [r3, #4]
 8003c50:	4b0d      	ldr	r3, [pc, #52]	; (8003c88 <SystemInit+0x70>)
 8003c52:	4911      	ldr	r1, [pc, #68]	; (8003c98 <SystemInit+0x80>)
 8003c54:	400a      	ands	r2, r1
 8003c56:	605a      	str	r2, [r3, #4]
 8003c58:	4b0b      	ldr	r3, [pc, #44]	; (8003c88 <SystemInit+0x70>)
 8003c5a:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8003c5c:	4b0a      	ldr	r3, [pc, #40]	; (8003c88 <SystemInit+0x70>)
 8003c5e:	210f      	movs	r1, #15
 8003c60:	438a      	bics	r2, r1
 8003c62:	62da      	str	r2, [r3, #44]	; 0x2c
 8003c64:	4b08      	ldr	r3, [pc, #32]	; (8003c88 <SystemInit+0x70>)
 8003c66:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8003c68:	4b07      	ldr	r3, [pc, #28]	; (8003c88 <SystemInit+0x70>)
 8003c6a:	490c      	ldr	r1, [pc, #48]	; (8003c9c <SystemInit+0x84>)
 8003c6c:	400a      	ands	r2, r1
 8003c6e:	631a      	str	r2, [r3, #48]	; 0x30
 8003c70:	4b05      	ldr	r3, [pc, #20]	; (8003c88 <SystemInit+0x70>)
 8003c72:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8003c74:	4b04      	ldr	r3, [pc, #16]	; (8003c88 <SystemInit+0x70>)
 8003c76:	2101      	movs	r1, #1
 8003c78:	438a      	bics	r2, r1
 8003c7a:	635a      	str	r2, [r3, #52]	; 0x34
 8003c7c:	4b02      	ldr	r3, [pc, #8]	; (8003c88 <SystemInit+0x70>)
 8003c7e:	2200      	movs	r2, #0
 8003c80:	609a      	str	r2, [r3, #8]
 8003c82:	46c0      	nop			; (mov r8, r8)
 8003c84:	46bd      	mov	sp, r7
 8003c86:	bd80      	pop	{r7, pc}
 8003c88:	40021000 	.word	0x40021000
 8003c8c:	f8ffb80c 	.word	0xf8ffb80c
 8003c90:	fef6ffff 	.word	0xfef6ffff
 8003c94:	fffbffff 	.word	0xfffbffff
 8003c98:	ffc0ffff 	.word	0xffc0ffff
 8003c9c:	fffffeac 	.word	0xfffffeac

08003ca0 <xputc>:
 8003ca0:	b580      	push	{r7, lr}
 8003ca2:	b082      	sub	sp, #8
 8003ca4:	af00      	add	r7, sp, #0
 8003ca6:	0002      	movs	r2, r0
 8003ca8:	1dfb      	adds	r3, r7, #7
 8003caa:	701a      	strb	r2, [r3, #0]
 8003cac:	1dfb      	adds	r3, r7, #7
 8003cae:	781b      	ldrb	r3, [r3, #0]
 8003cb0:	2b0a      	cmp	r3, #10
 8003cb2:	d102      	bne.n	8003cba <xputc+0x1a>
 8003cb4:	200d      	movs	r0, #13
 8003cb6:	f7ff fff3 	bl	8003ca0 <xputc>
 8003cba:	4b0d      	ldr	r3, [pc, #52]	; (8003cf0 <xputc+0x50>)
 8003cbc:	681b      	ldr	r3, [r3, #0]
 8003cbe:	2b00      	cmp	r3, #0
 8003cc0:	d008      	beq.n	8003cd4 <xputc+0x34>
 8003cc2:	4b0b      	ldr	r3, [pc, #44]	; (8003cf0 <xputc+0x50>)
 8003cc4:	681b      	ldr	r3, [r3, #0]
 8003cc6:	1c59      	adds	r1, r3, #1
 8003cc8:	4a09      	ldr	r2, [pc, #36]	; (8003cf0 <xputc+0x50>)
 8003cca:	6011      	str	r1, [r2, #0]
 8003ccc:	1dfa      	adds	r2, r7, #7
 8003cce:	7812      	ldrb	r2, [r2, #0]
 8003cd0:	701a      	strb	r2, [r3, #0]
 8003cd2:	e009      	b.n	8003ce8 <xputc+0x48>
 8003cd4:	4b07      	ldr	r3, [pc, #28]	; (8003cf4 <xputc+0x54>)
 8003cd6:	681b      	ldr	r3, [r3, #0]
 8003cd8:	2b00      	cmp	r3, #0
 8003cda:	d005      	beq.n	8003ce8 <xputc+0x48>
 8003cdc:	4b05      	ldr	r3, [pc, #20]	; (8003cf4 <xputc+0x54>)
 8003cde:	681b      	ldr	r3, [r3, #0]
 8003ce0:	1dfa      	adds	r2, r7, #7
 8003ce2:	7812      	ldrb	r2, [r2, #0]
 8003ce4:	0010      	movs	r0, r2
 8003ce6:	4798      	blx	r3
 8003ce8:	46bd      	mov	sp, r7
 8003cea:	b002      	add	sp, #8
 8003cec:	bd80      	pop	{r7, pc}
 8003cee:	46c0      	nop			; (mov r8, r8)
 8003cf0:	20000530 	.word	0x20000530
 8003cf4:	2000174c 	.word	0x2000174c

08003cf8 <xputs>:
 8003cf8:	b580      	push	{r7, lr}
 8003cfa:	b082      	sub	sp, #8
 8003cfc:	af00      	add	r7, sp, #0
 8003cfe:	6078      	str	r0, [r7, #4]
 8003d00:	e006      	b.n	8003d10 <xputs+0x18>
 8003d02:	687b      	ldr	r3, [r7, #4]
 8003d04:	1c5a      	adds	r2, r3, #1
 8003d06:	607a      	str	r2, [r7, #4]
 8003d08:	781b      	ldrb	r3, [r3, #0]
 8003d0a:	0018      	movs	r0, r3
 8003d0c:	f7ff ffc8 	bl	8003ca0 <xputc>
 8003d10:	687b      	ldr	r3, [r7, #4]
 8003d12:	781b      	ldrb	r3, [r3, #0]
 8003d14:	2b00      	cmp	r3, #0
 8003d16:	d1f4      	bne.n	8003d02 <xputs+0xa>
 8003d18:	46c0      	nop			; (mov r8, r8)
 8003d1a:	46c0      	nop			; (mov r8, r8)
 8003d1c:	46bd      	mov	sp, r7
 8003d1e:	b002      	add	sp, #8
 8003d20:	bd80      	pop	{r7, pc}
	...

08003d24 <xvprintf>:
 8003d24:	b590      	push	{r4, r7, lr}
 8003d26:	b093      	sub	sp, #76	; 0x4c
 8003d28:	af00      	add	r7, sp, #0
 8003d2a:	6078      	str	r0, [r7, #4]
 8003d2c:	6039      	str	r1, [r7, #0]
 8003d2e:	687b      	ldr	r3, [r7, #4]
 8003d30:	1c5a      	adds	r2, r3, #1
 8003d32:	607a      	str	r2, [r7, #4]
 8003d34:	2133      	movs	r1, #51	; 0x33
 8003d36:	187a      	adds	r2, r7, r1
 8003d38:	781b      	ldrb	r3, [r3, #0]
 8003d3a:	7013      	strb	r3, [r2, #0]
 8003d3c:	000a      	movs	r2, r1
 8003d3e:	18bb      	adds	r3, r7, r2
 8003d40:	781b      	ldrb	r3, [r3, #0]
 8003d42:	2b00      	cmp	r3, #0
 8003d44:	d100      	bne.n	8003d48 <xvprintf+0x24>
 8003d46:	e167      	b.n	8004018 <xvprintf+0x2f4>
 8003d48:	18bb      	adds	r3, r7, r2
 8003d4a:	781b      	ldrb	r3, [r3, #0]
 8003d4c:	2b25      	cmp	r3, #37	; 0x25
 8003d4e:	d005      	beq.n	8003d5c <xvprintf+0x38>
 8003d50:	18bb      	adds	r3, r7, r2
 8003d52:	781b      	ldrb	r3, [r3, #0]
 8003d54:	0018      	movs	r0, r3
 8003d56:	f7ff ffa3 	bl	8003ca0 <xputc>
 8003d5a:	e15c      	b.n	8004016 <xvprintf+0x2f2>
 8003d5c:	2300      	movs	r3, #0
 8003d5e:	637b      	str	r3, [r7, #52]	; 0x34
 8003d60:	687b      	ldr	r3, [r7, #4]
 8003d62:	1c5a      	adds	r2, r3, #1
 8003d64:	607a      	str	r2, [r7, #4]
 8003d66:	2133      	movs	r1, #51	; 0x33
 8003d68:	187a      	adds	r2, r7, r1
 8003d6a:	781b      	ldrb	r3, [r3, #0]
 8003d6c:	7013      	strb	r3, [r2, #0]
 8003d6e:	187b      	adds	r3, r7, r1
 8003d70:	781b      	ldrb	r3, [r3, #0]
 8003d72:	2b30      	cmp	r3, #48	; 0x30
 8003d74:	d108      	bne.n	8003d88 <xvprintf+0x64>
 8003d76:	2301      	movs	r3, #1
 8003d78:	637b      	str	r3, [r7, #52]	; 0x34
 8003d7a:	687b      	ldr	r3, [r7, #4]
 8003d7c:	1c5a      	adds	r2, r3, #1
 8003d7e:	607a      	str	r2, [r7, #4]
 8003d80:	187a      	adds	r2, r7, r1
 8003d82:	781b      	ldrb	r3, [r3, #0]
 8003d84:	7013      	strb	r3, [r2, #0]
 8003d86:	e00c      	b.n	8003da2 <xvprintf+0x7e>
 8003d88:	2133      	movs	r1, #51	; 0x33
 8003d8a:	187b      	adds	r3, r7, r1
 8003d8c:	781b      	ldrb	r3, [r3, #0]
 8003d8e:	2b2d      	cmp	r3, #45	; 0x2d
 8003d90:	d107      	bne.n	8003da2 <xvprintf+0x7e>
 8003d92:	2302      	movs	r3, #2
 8003d94:	637b      	str	r3, [r7, #52]	; 0x34
 8003d96:	687b      	ldr	r3, [r7, #4]
 8003d98:	1c5a      	adds	r2, r3, #1
 8003d9a:	607a      	str	r2, [r7, #4]
 8003d9c:	187a      	adds	r2, r7, r1
 8003d9e:	781b      	ldrb	r3, [r3, #0]
 8003da0:	7013      	strb	r3, [r2, #0]
 8003da2:	2300      	movs	r3, #0
 8003da4:	63bb      	str	r3, [r7, #56]	; 0x38
 8003da6:	e011      	b.n	8003dcc <xvprintf+0xa8>
 8003da8:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8003daa:	0013      	movs	r3, r2
 8003dac:	009b      	lsls	r3, r3, #2
 8003dae:	189b      	adds	r3, r3, r2
 8003db0:	005b      	lsls	r3, r3, #1
 8003db2:	001a      	movs	r2, r3
 8003db4:	2133      	movs	r1, #51	; 0x33
 8003db6:	187b      	adds	r3, r7, r1
 8003db8:	781b      	ldrb	r3, [r3, #0]
 8003dba:	18d3      	adds	r3, r2, r3
 8003dbc:	3b30      	subs	r3, #48	; 0x30
 8003dbe:	63bb      	str	r3, [r7, #56]	; 0x38
 8003dc0:	687b      	ldr	r3, [r7, #4]
 8003dc2:	1c5a      	adds	r2, r3, #1
 8003dc4:	607a      	str	r2, [r7, #4]
 8003dc6:	187a      	adds	r2, r7, r1
 8003dc8:	781b      	ldrb	r3, [r3, #0]
 8003dca:	7013      	strb	r3, [r2, #0]
 8003dcc:	2233      	movs	r2, #51	; 0x33
 8003dce:	18bb      	adds	r3, r7, r2
 8003dd0:	781b      	ldrb	r3, [r3, #0]
 8003dd2:	2b2f      	cmp	r3, #47	; 0x2f
 8003dd4:	d903      	bls.n	8003dde <xvprintf+0xba>
 8003dd6:	18bb      	adds	r3, r7, r2
 8003dd8:	781b      	ldrb	r3, [r3, #0]
 8003dda:	2b39      	cmp	r3, #57	; 0x39
 8003ddc:	d9e4      	bls.n	8003da8 <xvprintf+0x84>
 8003dde:	2233      	movs	r2, #51	; 0x33
 8003de0:	18bb      	adds	r3, r7, r2
 8003de2:	781b      	ldrb	r3, [r3, #0]
 8003de4:	2b6c      	cmp	r3, #108	; 0x6c
 8003de6:	d003      	beq.n	8003df0 <xvprintf+0xcc>
 8003de8:	18bb      	adds	r3, r7, r2
 8003dea:	781b      	ldrb	r3, [r3, #0]
 8003dec:	2b4c      	cmp	r3, #76	; 0x4c
 8003dee:	d10a      	bne.n	8003e06 <xvprintf+0xe2>
 8003df0:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8003df2:	2204      	movs	r2, #4
 8003df4:	4313      	orrs	r3, r2
 8003df6:	637b      	str	r3, [r7, #52]	; 0x34
 8003df8:	687b      	ldr	r3, [r7, #4]
 8003dfa:	1c5a      	adds	r2, r3, #1
 8003dfc:	607a      	str	r2, [r7, #4]
 8003dfe:	2233      	movs	r2, #51	; 0x33
 8003e00:	18ba      	adds	r2, r7, r2
 8003e02:	781b      	ldrb	r3, [r3, #0]
 8003e04:	7013      	strb	r3, [r2, #0]
 8003e06:	2233      	movs	r2, #51	; 0x33
 8003e08:	18bb      	adds	r3, r7, r2
 8003e0a:	781b      	ldrb	r3, [r3, #0]
 8003e0c:	2b00      	cmp	r3, #0
 8003e0e:	d100      	bne.n	8003e12 <xvprintf+0xee>
 8003e10:	e104      	b.n	800401c <xvprintf+0x2f8>
 8003e12:	2132      	movs	r1, #50	; 0x32
 8003e14:	187b      	adds	r3, r7, r1
 8003e16:	18ba      	adds	r2, r7, r2
 8003e18:	7812      	ldrb	r2, [r2, #0]
 8003e1a:	701a      	strb	r2, [r3, #0]
 8003e1c:	187b      	adds	r3, r7, r1
 8003e1e:	781b      	ldrb	r3, [r3, #0]
 8003e20:	2b60      	cmp	r3, #96	; 0x60
 8003e22:	d904      	bls.n	8003e2e <xvprintf+0x10a>
 8003e24:	187b      	adds	r3, r7, r1
 8003e26:	187a      	adds	r2, r7, r1
 8003e28:	7812      	ldrb	r2, [r2, #0]
 8003e2a:	3a20      	subs	r2, #32
 8003e2c:	701a      	strb	r2, [r3, #0]
 8003e2e:	2332      	movs	r3, #50	; 0x32
 8003e30:	18fb      	adds	r3, r7, r3
 8003e32:	781b      	ldrb	r3, [r3, #0]
 8003e34:	3b42      	subs	r3, #66	; 0x42
 8003e36:	2b16      	cmp	r3, #22
 8003e38:	d847      	bhi.n	8003eca <xvprintf+0x1a6>
 8003e3a:	009a      	lsls	r2, r3, #2
 8003e3c:	4b7a      	ldr	r3, [pc, #488]	; (8004028 <xvprintf+0x304>)
 8003e3e:	18d3      	adds	r3, r2, r3
 8003e40:	681b      	ldr	r3, [r3, #0]
 8003e42:	469f      	mov	pc, r3
 8003e44:	683b      	ldr	r3, [r7, #0]
 8003e46:	1d1a      	adds	r2, r3, #4
 8003e48:	603a      	str	r2, [r7, #0]
 8003e4a:	681b      	ldr	r3, [r3, #0]
 8003e4c:	627b      	str	r3, [r7, #36]	; 0x24
 8003e4e:	2300      	movs	r3, #0
 8003e50:	63fb      	str	r3, [r7, #60]	; 0x3c
 8003e52:	e002      	b.n	8003e5a <xvprintf+0x136>
 8003e54:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8003e56:	3301      	adds	r3, #1
 8003e58:	63fb      	str	r3, [r7, #60]	; 0x3c
 8003e5a:	6a7a      	ldr	r2, [r7, #36]	; 0x24
 8003e5c:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8003e5e:	18d3      	adds	r3, r2, r3
 8003e60:	781b      	ldrb	r3, [r3, #0]
 8003e62:	2b00      	cmp	r3, #0
 8003e64:	d1f6      	bne.n	8003e54 <xvprintf+0x130>
 8003e66:	e002      	b.n	8003e6e <xvprintf+0x14a>
 8003e68:	2020      	movs	r0, #32
 8003e6a:	f7ff ff19 	bl	8003ca0 <xputc>
 8003e6e:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8003e70:	2202      	movs	r2, #2
 8003e72:	4013      	ands	r3, r2
 8003e74:	d105      	bne.n	8003e82 <xvprintf+0x15e>
 8003e76:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8003e78:	1c5a      	adds	r2, r3, #1
 8003e7a:	63fa      	str	r2, [r7, #60]	; 0x3c
 8003e7c:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8003e7e:	429a      	cmp	r2, r3
 8003e80:	d8f2      	bhi.n	8003e68 <xvprintf+0x144>
 8003e82:	6a7b      	ldr	r3, [r7, #36]	; 0x24
 8003e84:	0018      	movs	r0, r3
 8003e86:	f7ff ff37 	bl	8003cf8 <xputs>
 8003e8a:	e002      	b.n	8003e92 <xvprintf+0x16e>
 8003e8c:	2020      	movs	r0, #32
 8003e8e:	f7ff ff07 	bl	8003ca0 <xputc>
 8003e92:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8003e94:	1c5a      	adds	r2, r3, #1
 8003e96:	63fa      	str	r2, [r7, #60]	; 0x3c
 8003e98:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8003e9a:	429a      	cmp	r2, r3
 8003e9c:	d8f6      	bhi.n	8003e8c <xvprintf+0x168>
 8003e9e:	e0ba      	b.n	8004016 <xvprintf+0x2f2>
 8003ea0:	683b      	ldr	r3, [r7, #0]
 8003ea2:	1d1a      	adds	r2, r3, #4
 8003ea4:	603a      	str	r2, [r7, #0]
 8003ea6:	681b      	ldr	r3, [r3, #0]
 8003ea8:	b2db      	uxtb	r3, r3
 8003eaa:	0018      	movs	r0, r3
 8003eac:	f7ff fef8 	bl	8003ca0 <xputc>
 8003eb0:	e0b1      	b.n	8004016 <xvprintf+0x2f2>
 8003eb2:	2302      	movs	r3, #2
 8003eb4:	647b      	str	r3, [r7, #68]	; 0x44
 8003eb6:	e00f      	b.n	8003ed8 <xvprintf+0x1b4>
 8003eb8:	2308      	movs	r3, #8
 8003eba:	647b      	str	r3, [r7, #68]	; 0x44
 8003ebc:	e00c      	b.n	8003ed8 <xvprintf+0x1b4>
 8003ebe:	230a      	movs	r3, #10
 8003ec0:	647b      	str	r3, [r7, #68]	; 0x44
 8003ec2:	e009      	b.n	8003ed8 <xvprintf+0x1b4>
 8003ec4:	2310      	movs	r3, #16
 8003ec6:	647b      	str	r3, [r7, #68]	; 0x44
 8003ec8:	e006      	b.n	8003ed8 <xvprintf+0x1b4>
 8003eca:	2333      	movs	r3, #51	; 0x33
 8003ecc:	18fb      	adds	r3, r7, r3
 8003ece:	781b      	ldrb	r3, [r3, #0]
 8003ed0:	0018      	movs	r0, r3
 8003ed2:	f7ff fee5 	bl	8003ca0 <xputc>
 8003ed6:	e09e      	b.n	8004016 <xvprintf+0x2f2>
 8003ed8:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8003eda:	2204      	movs	r2, #4
 8003edc:	4013      	ands	r3, r2
 8003ede:	d005      	beq.n	8003eec <xvprintf+0x1c8>
 8003ee0:	683b      	ldr	r3, [r7, #0]
 8003ee2:	1d1a      	adds	r2, r3, #4
 8003ee4:	603a      	str	r2, [r7, #0]
 8003ee6:	681b      	ldr	r3, [r3, #0]
 8003ee8:	62fb      	str	r3, [r7, #44]	; 0x2c
 8003eea:	e00e      	b.n	8003f0a <xvprintf+0x1e6>
 8003eec:	2332      	movs	r3, #50	; 0x32
 8003eee:	18fb      	adds	r3, r7, r3
 8003ef0:	781b      	ldrb	r3, [r3, #0]
 8003ef2:	2b44      	cmp	r3, #68	; 0x44
 8003ef4:	d104      	bne.n	8003f00 <xvprintf+0x1dc>
 8003ef6:	683b      	ldr	r3, [r7, #0]
 8003ef8:	1d1a      	adds	r2, r3, #4
 8003efa:	603a      	str	r2, [r7, #0]
 8003efc:	681b      	ldr	r3, [r3, #0]
 8003efe:	e003      	b.n	8003f08 <xvprintf+0x1e4>
 8003f00:	683b      	ldr	r3, [r7, #0]
 8003f02:	1d1a      	adds	r2, r3, #4
 8003f04:	603a      	str	r2, [r7, #0]
 8003f06:	681b      	ldr	r3, [r3, #0]
 8003f08:	62fb      	str	r3, [r7, #44]	; 0x2c
 8003f0a:	2332      	movs	r3, #50	; 0x32
 8003f0c:	18fb      	adds	r3, r7, r3
 8003f0e:	781b      	ldrb	r3, [r3, #0]
 8003f10:	2b44      	cmp	r3, #68	; 0x44
 8003f12:	d109      	bne.n	8003f28 <xvprintf+0x204>
 8003f14:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8003f16:	2b00      	cmp	r3, #0
 8003f18:	da06      	bge.n	8003f28 <xvprintf+0x204>
 8003f1a:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8003f1c:	425b      	negs	r3, r3
 8003f1e:	62fb      	str	r3, [r7, #44]	; 0x2c
 8003f20:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8003f22:	2210      	movs	r2, #16
 8003f24:	4313      	orrs	r3, r2
 8003f26:	637b      	str	r3, [r7, #52]	; 0x34
 8003f28:	2300      	movs	r3, #0
 8003f2a:	643b      	str	r3, [r7, #64]	; 0x40
 8003f2c:	6afb      	ldr	r3, [r7, #44]	; 0x2c
 8003f2e:	62bb      	str	r3, [r7, #40]	; 0x28
 8003f30:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8003f32:	6c79      	ldr	r1, [r7, #68]	; 0x44
 8003f34:	0018      	movs	r0, r3
 8003f36:	f7fc f8ff 	bl	8000138 <__aeabi_uidivmod>
 8003f3a:	000b      	movs	r3, r1
 8003f3c:	001a      	movs	r2, r3
 8003f3e:	2432      	movs	r4, #50	; 0x32
 8003f40:	193b      	adds	r3, r7, r4
 8003f42:	701a      	strb	r2, [r3, #0]
 8003f44:	6c79      	ldr	r1, [r7, #68]	; 0x44
 8003f46:	6ab8      	ldr	r0, [r7, #40]	; 0x28
 8003f48:	f7fc f8ba 	bl	80000c0 <__udivsi3>
 8003f4c:	0003      	movs	r3, r0
 8003f4e:	62bb      	str	r3, [r7, #40]	; 0x28
 8003f50:	193b      	adds	r3, r7, r4
 8003f52:	781b      	ldrb	r3, [r3, #0]
 8003f54:	2b09      	cmp	r3, #9
 8003f56:	d90d      	bls.n	8003f74 <xvprintf+0x250>
 8003f58:	2333      	movs	r3, #51	; 0x33
 8003f5a:	18fb      	adds	r3, r7, r3
 8003f5c:	781b      	ldrb	r3, [r3, #0]
 8003f5e:	2b78      	cmp	r3, #120	; 0x78
 8003f60:	d101      	bne.n	8003f66 <xvprintf+0x242>
 8003f62:	2327      	movs	r3, #39	; 0x27
 8003f64:	e000      	b.n	8003f68 <xvprintf+0x244>
 8003f66:	2307      	movs	r3, #7
 8003f68:	2132      	movs	r1, #50	; 0x32
 8003f6a:	187a      	adds	r2, r7, r1
 8003f6c:	1879      	adds	r1, r7, r1
 8003f6e:	7809      	ldrb	r1, [r1, #0]
 8003f70:	185b      	adds	r3, r3, r1
 8003f72:	7013      	strb	r3, [r2, #0]
 8003f74:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8003f76:	1c5a      	adds	r2, r3, #1
 8003f78:	643a      	str	r2, [r7, #64]	; 0x40
 8003f7a:	2232      	movs	r2, #50	; 0x32
 8003f7c:	18ba      	adds	r2, r7, r2
 8003f7e:	7812      	ldrb	r2, [r2, #0]
 8003f80:	3230      	adds	r2, #48	; 0x30
 8003f82:	b2d1      	uxtb	r1, r2
 8003f84:	220c      	movs	r2, #12
 8003f86:	18ba      	adds	r2, r7, r2
 8003f88:	54d1      	strb	r1, [r2, r3]
 8003f8a:	6abb      	ldr	r3, [r7, #40]	; 0x28
 8003f8c:	2b00      	cmp	r3, #0
 8003f8e:	d002      	beq.n	8003f96 <xvprintf+0x272>
 8003f90:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8003f92:	2b17      	cmp	r3, #23
 8003f94:	d9cc      	bls.n	8003f30 <xvprintf+0x20c>
 8003f96:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8003f98:	2210      	movs	r2, #16
 8003f9a:	4013      	ands	r3, r2
 8003f9c:	d006      	beq.n	8003fac <xvprintf+0x288>
 8003f9e:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8003fa0:	1c5a      	adds	r2, r3, #1
 8003fa2:	643a      	str	r2, [r7, #64]	; 0x40
 8003fa4:	220c      	movs	r2, #12
 8003fa6:	18ba      	adds	r2, r7, r2
 8003fa8:	212d      	movs	r1, #45	; 0x2d
 8003faa:	54d1      	strb	r1, [r2, r3]
 8003fac:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8003fae:	63fb      	str	r3, [r7, #60]	; 0x3c
 8003fb0:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8003fb2:	2201      	movs	r2, #1
 8003fb4:	4013      	ands	r3, r2
 8003fb6:	d001      	beq.n	8003fbc <xvprintf+0x298>
 8003fb8:	2230      	movs	r2, #48	; 0x30
 8003fba:	e000      	b.n	8003fbe <xvprintf+0x29a>
 8003fbc:	2220      	movs	r2, #32
 8003fbe:	2332      	movs	r3, #50	; 0x32
 8003fc0:	18fb      	adds	r3, r7, r3
 8003fc2:	701a      	strb	r2, [r3, #0]
 8003fc4:	e005      	b.n	8003fd2 <xvprintf+0x2ae>
 8003fc6:	2332      	movs	r3, #50	; 0x32
 8003fc8:	18fb      	adds	r3, r7, r3
 8003fca:	781b      	ldrb	r3, [r3, #0]
 8003fcc:	0018      	movs	r0, r3
 8003fce:	f7ff fe67 	bl	8003ca0 <xputc>
 8003fd2:	6b7b      	ldr	r3, [r7, #52]	; 0x34
 8003fd4:	2202      	movs	r2, #2
 8003fd6:	4013      	ands	r3, r2
 8003fd8:	d105      	bne.n	8003fe6 <xvprintf+0x2c2>
 8003fda:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 8003fdc:	1c5a      	adds	r2, r3, #1
 8003fde:	63fa      	str	r2, [r7, #60]	; 0x3c
 8003fe0:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8003fe2:	429a      	cmp	r2, r3
 8003fe4:	d8ef      	bhi.n	8003fc6 <xvprintf+0x2a2>
 8003fe6:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8003fe8:	3b01      	subs	r3, #1
 8003fea:	643b      	str	r3, [r7, #64]	; 0x40
 8003fec:	230c      	movs	r3, #12
 8003fee:	18fa      	adds	r2, r7, r3
 8003ff0:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8003ff2:	18d3      	adds	r3, r2, r3
 8003ff4:	781b      	ldrb	r3, [r3, #0]
 8003ff6:	0018      	movs	r0, r3
 8003ff8:	f7ff fe52 	bl	8003ca0 <xputc>
 8003ffc:	6c3b      	ldr	r3, [r7, #64]	; 0x40
 8003ffe:	2b00      	cmp	r3, #0
 8004000:	d1f1      	bne.n	8003fe6 <xvprintf+0x2c2>
 8004002:	e002      	b.n	800400a <xvprintf+0x2e6>
 8004004:	2020      	movs	r0, #32
 8004006:	f7ff fe4b 	bl	8003ca0 <xputc>
 800400a:	6bfb      	ldr	r3, [r7, #60]	; 0x3c
 800400c:	1c5a      	adds	r2, r3, #1
 800400e:	63fa      	str	r2, [r7, #60]	; 0x3c
 8004010:	6bba      	ldr	r2, [r7, #56]	; 0x38
 8004012:	429a      	cmp	r2, r3
 8004014:	d8f6      	bhi.n	8004004 <xvprintf+0x2e0>
 8004016:	e68a      	b.n	8003d2e <xvprintf+0xa>
 8004018:	46c0      	nop			; (mov r8, r8)
 800401a:	e000      	b.n	800401e <xvprintf+0x2fa>
 800401c:	46c0      	nop			; (mov r8, r8)
 800401e:	46c0      	nop			; (mov r8, r8)
 8004020:	46bd      	mov	sp, r7
 8004022:	b013      	add	sp, #76	; 0x4c
 8004024:	bd90      	pop	{r4, r7, pc}
 8004026:	46c0      	nop			; (mov r8, r8)
 8004028:	08004ba4 	.word	0x08004ba4

0800402c <xprintf>:
 800402c:	b40f      	push	{r0, r1, r2, r3}
 800402e:	b580      	push	{r7, lr}
 8004030:	b082      	sub	sp, #8
 8004032:	af00      	add	r7, sp, #0
 8004034:	2314      	movs	r3, #20
 8004036:	18fb      	adds	r3, r7, r3
 8004038:	607b      	str	r3, [r7, #4]
 800403a:	687a      	ldr	r2, [r7, #4]
 800403c:	693b      	ldr	r3, [r7, #16]
 800403e:	0011      	movs	r1, r2
 8004040:	0018      	movs	r0, r3
 8004042:	f7ff fe6f 	bl	8003d24 <xvprintf>
 8004046:	46c0      	nop			; (mov r8, r8)
 8004048:	46bd      	mov	sp, r7
 800404a:	b002      	add	sp, #8
 800404c:	bc80      	pop	{r7}
 800404e:	bc08      	pop	{r3}
 8004050:	b004      	add	sp, #16
 8004052:	4718      	bx	r3

08004054 <LL_AHB1_GRP1_EnableClock>:
 8004054:	b580      	push	{r7, lr}
 8004056:	b084      	sub	sp, #16
 8004058:	af00      	add	r7, sp, #0
 800405a:	6078      	str	r0, [r7, #4]
 800405c:	4b07      	ldr	r3, [pc, #28]	; (800407c <LL_AHB1_GRP1_EnableClock+0x28>)
 800405e:	6959      	ldr	r1, [r3, #20]
 8004060:	4b06      	ldr	r3, [pc, #24]	; (800407c <LL_AHB1_GRP1_EnableClock+0x28>)
 8004062:	687a      	ldr	r2, [r7, #4]
 8004064:	430a      	orrs	r2, r1
 8004066:	615a      	str	r2, [r3, #20]
 8004068:	4b04      	ldr	r3, [pc, #16]	; (800407c <LL_AHB1_GRP1_EnableClock+0x28>)
 800406a:	695b      	ldr	r3, [r3, #20]
 800406c:	687a      	ldr	r2, [r7, #4]
 800406e:	4013      	ands	r3, r2
 8004070:	60fb      	str	r3, [r7, #12]
 8004072:	68fb      	ldr	r3, [r7, #12]
 8004074:	46c0      	nop			; (mov r8, r8)
 8004076:	46bd      	mov	sp, r7
 8004078:	b004      	add	sp, #16
 800407a:	bd80      	pop	{r7, pc}
 800407c:	40021000 	.word	0x40021000

08004080 <LL_APB1_GRP1_EnableClock>:
 8004080:	b580      	push	{r7, lr}
 8004082:	b084      	sub	sp, #16
 8004084:	af00      	add	r7, sp, #0
 8004086:	6078      	str	r0, [r7, #4]
 8004088:	4b07      	ldr	r3, [pc, #28]	; (80040a8 <LL_APB1_GRP1_EnableClock+0x28>)
 800408a:	69d9      	ldr	r1, [r3, #28]
 800408c:	4b06      	ldr	r3, [pc, #24]	; (80040a8 <LL_APB1_GRP1_EnableClock+0x28>)
 800408e:	687a      	ldr	r2, [r7, #4]
 8004090:	430a      	orrs	r2, r1
 8004092:	61da      	str	r2, [r3, #28]
 8004094:	4b04      	ldr	r3, [pc, #16]	; (80040a8 <LL_APB1_GRP1_EnableClock+0x28>)
 8004096:	69db      	ldr	r3, [r3, #28]
 8004098:	687a      	ldr	r2, [r7, #4]
 800409a:	4013      	ands	r3, r2
 800409c:	60fb      	str	r3, [r7, #12]
 800409e:	68fb      	ldr	r3, [r7, #12]
 80040a0:	46c0      	nop			; (mov r8, r8)
 80040a2:	46bd      	mov	sp, r7
 80040a4:	b004      	add	sp, #16
 80040a6:	bd80      	pop	{r7, pc}
 80040a8:	40021000 	.word	0x40021000

080040ac <LL_GPIO_SetPinMode>:
 80040ac:	b580      	push	{r7, lr}
 80040ae:	b084      	sub	sp, #16
 80040b0:	af00      	add	r7, sp, #0
 80040b2:	60f8      	str	r0, [r7, #12]
 80040b4:	60b9      	str	r1, [r7, #8]
 80040b6:	607a      	str	r2, [r7, #4]
 80040b8:	68fb      	ldr	r3, [r7, #12]
 80040ba:	6819      	ldr	r1, [r3, #0]
 80040bc:	68bb      	ldr	r3, [r7, #8]
 80040be:	435b      	muls	r3, r3
 80040c0:	001a      	movs	r2, r3
 80040c2:	0013      	movs	r3, r2
 80040c4:	005b      	lsls	r3, r3, #1
 80040c6:	189b      	adds	r3, r3, r2
 80040c8:	43db      	mvns	r3, r3
 80040ca:	400b      	ands	r3, r1
 80040cc:	001a      	movs	r2, r3
 80040ce:	68bb      	ldr	r3, [r7, #8]
 80040d0:	435b      	muls	r3, r3
 80040d2:	6879      	ldr	r1, [r7, #4]
 80040d4:	434b      	muls	r3, r1
 80040d6:	431a      	orrs	r2, r3
 80040d8:	68fb      	ldr	r3, [r7, #12]
 80040da:	601a      	str	r2, [r3, #0]
 80040dc:	46c0      	nop			; (mov r8, r8)
 80040de:	46bd      	mov	sp, r7
 80040e0:	b004      	add	sp, #16
 80040e2:	bd80      	pop	{r7, pc}

080040e4 <LL_GPIO_SetPinOutputType>:
 80040e4:	b580      	push	{r7, lr}
 80040e6:	b084      	sub	sp, #16
 80040e8:	af00      	add	r7, sp, #0
 80040ea:	60f8      	str	r0, [r7, #12]
 80040ec:	60b9      	str	r1, [r7, #8]
 80040ee:	607a      	str	r2, [r7, #4]
 80040f0:	68fb      	ldr	r3, [r7, #12]
 80040f2:	685b      	ldr	r3, [r3, #4]
 80040f4:	68ba      	ldr	r2, [r7, #8]
 80040f6:	43d2      	mvns	r2, r2
 80040f8:	401a      	ands	r2, r3
 80040fa:	68bb      	ldr	r3, [r7, #8]
 80040fc:	6879      	ldr	r1, [r7, #4]
 80040fe:	434b      	muls	r3, r1
 8004100:	431a      	orrs	r2, r3
 8004102:	68fb      	ldr	r3, [r7, #12]
 8004104:	605a      	str	r2, [r3, #4]
 8004106:	46c0      	nop			; (mov r8, r8)
 8004108:	46bd      	mov	sp, r7
 800410a:	b004      	add	sp, #16
 800410c:	bd80      	pop	{r7, pc}

0800410e <LL_GPIO_SetPinSpeed>:
 800410e:	b580      	push	{r7, lr}
 8004110:	b084      	sub	sp, #16
 8004112:	af00      	add	r7, sp, #0
 8004114:	60f8      	str	r0, [r7, #12]
 8004116:	60b9      	str	r1, [r7, #8]
 8004118:	607a      	str	r2, [r7, #4]
 800411a:	68fb      	ldr	r3, [r7, #12]
 800411c:	6899      	ldr	r1, [r3, #8]
 800411e:	68bb      	ldr	r3, [r7, #8]
 8004120:	435b      	muls	r3, r3
 8004122:	001a      	movs	r2, r3
 8004124:	0013      	movs	r3, r2
 8004126:	005b      	lsls	r3, r3, #1
 8004128:	189b      	adds	r3, r3, r2
 800412a:	43db      	mvns	r3, r3
 800412c:	400b      	ands	r3, r1
 800412e:	001a      	movs	r2, r3
 8004130:	68bb      	ldr	r3, [r7, #8]
 8004132:	435b      	muls	r3, r3
 8004134:	6879      	ldr	r1, [r7, #4]
 8004136:	434b      	muls	r3, r1
 8004138:	431a      	orrs	r2, r3
 800413a:	68fb      	ldr	r3, [r7, #12]
 800413c:	609a      	str	r2, [r3, #8]
 800413e:	46c0      	nop			; (mov r8, r8)
 8004140:	46bd      	mov	sp, r7
 8004142:	b004      	add	sp, #16
 8004144:	bd80      	pop	{r7, pc}

08004146 <LL_GPIO_SetAFPin_0_7>:
 8004146:	b580      	push	{r7, lr}
 8004148:	b084      	sub	sp, #16
 800414a:	af00      	add	r7, sp, #0
 800414c:	60f8      	str	r0, [r7, #12]
 800414e:	60b9      	str	r1, [r7, #8]
 8004150:	607a      	str	r2, [r7, #4]
 8004152:	68fb      	ldr	r3, [r7, #12]
 8004154:	6a19      	ldr	r1, [r3, #32]
 8004156:	68bb      	ldr	r3, [r7, #8]
 8004158:	435b      	muls	r3, r3
 800415a:	68ba      	ldr	r2, [r7, #8]
 800415c:	4353      	muls	r3, r2
 800415e:	68ba      	ldr	r2, [r7, #8]
 8004160:	435a      	muls	r2, r3
 8004162:	0013      	movs	r3, r2
 8004164:	011b      	lsls	r3, r3, #4
 8004166:	1a9b      	subs	r3, r3, r2
 8004168:	43db      	mvns	r3, r3
 800416a:	400b      	ands	r3, r1
 800416c:	001a      	movs	r2, r3
 800416e:	68bb      	ldr	r3, [r7, #8]
 8004170:	435b      	muls	r3, r3
 8004172:	68b9      	ldr	r1, [r7, #8]
 8004174:	434b      	muls	r3, r1
 8004176:	68b9      	ldr	r1, [r7, #8]
 8004178:	434b      	muls	r3, r1
 800417a:	6879      	ldr	r1, [r7, #4]
 800417c:	434b      	muls	r3, r1
 800417e:	431a      	orrs	r2, r3
 8004180:	68fb      	ldr	r3, [r7, #12]
 8004182:	621a      	str	r2, [r3, #32]
 8004184:	46c0      	nop			; (mov r8, r8)
 8004186:	46bd      	mov	sp, r7
 8004188:	b004      	add	sp, #16
 800418a:	bd80      	pop	{r7, pc}

0800418c <LL_RCC_SetI2CClockSource>:
 800418c:	b580      	push	{r7, lr}
 800418e:	b082      	sub	sp, #8
 8004190:	af00      	add	r7, sp, #0
 8004192:	6078      	str	r0, [r7, #4]
 8004194:	4b06      	ldr	r3, [pc, #24]	; (80041b0 <LL_RCC_SetI2CClockSource+0x24>)
 8004196:	6b1b      	ldr	r3, [r3, #48]	; 0x30
 8004198:	2210      	movs	r2, #16
 800419a:	4393      	bics	r3, r2
 800419c:	0019      	movs	r1, r3
 800419e:	4b04      	ldr	r3, [pc, #16]	; (80041b0 <LL_RCC_SetI2CClockSource+0x24>)
 80041a0:	687a      	ldr	r2, [r7, #4]
 80041a2:	430a      	orrs	r2, r1
 80041a4:	631a      	str	r2, [r3, #48]	; 0x30
 80041a6:	46c0      	nop			; (mov r8, r8)
 80041a8:	46bd      	mov	sp, r7
 80041aa:	b002      	add	sp, #8
 80041ac:	bd80      	pop	{r7, pc}
 80041ae:	46c0      	nop			; (mov r8, r8)
 80041b0:	40021000 	.word	0x40021000

080041b4 <LL_I2C_Enable>:
 80041b4:	b580      	push	{r7, lr}
 80041b6:	b082      	sub	sp, #8
 80041b8:	af00      	add	r7, sp, #0
 80041ba:	6078      	str	r0, [r7, #4]
 80041bc:	687b      	ldr	r3, [r7, #4]
 80041be:	681b      	ldr	r3, [r3, #0]
 80041c0:	2201      	movs	r2, #1
 80041c2:	431a      	orrs	r2, r3
 80041c4:	687b      	ldr	r3, [r7, #4]
 80041c6:	601a      	str	r2, [r3, #0]
 80041c8:	46c0      	nop			; (mov r8, r8)
 80041ca:	46bd      	mov	sp, r7
 80041cc:	b002      	add	sp, #8
 80041ce:	bd80      	pop	{r7, pc}

080041d0 <LL_I2C_Disable>:
 80041d0:	b580      	push	{r7, lr}
 80041d2:	b082      	sub	sp, #8
 80041d4:	af00      	add	r7, sp, #0
 80041d6:	6078      	str	r0, [r7, #4]
 80041d8:	687b      	ldr	r3, [r7, #4]
 80041da:	681b      	ldr	r3, [r3, #0]
 80041dc:	2201      	movs	r2, #1
 80041de:	4393      	bics	r3, r2
 80041e0:	001a      	movs	r2, r3
 80041e2:	687b      	ldr	r3, [r7, #4]
 80041e4:	601a      	str	r2, [r3, #0]
 80041e6:	46c0      	nop			; (mov r8, r8)
 80041e8:	46bd      	mov	sp, r7
 80041ea:	b002      	add	sp, #8
 80041ec:	bd80      	pop	{r7, pc}
	...

080041f0 <LL_I2C_SetDigitalFilter>:
 80041f0:	b580      	push	{r7, lr}
 80041f2:	b082      	sub	sp, #8
 80041f4:	af00      	add	r7, sp, #0
 80041f6:	6078      	str	r0, [r7, #4]
 80041f8:	6039      	str	r1, [r7, #0]
 80041fa:	687b      	ldr	r3, [r7, #4]
 80041fc:	681b      	ldr	r3, [r3, #0]
 80041fe:	4a05      	ldr	r2, [pc, #20]	; (8004214 <LL_I2C_SetDigitalFilter+0x24>)
 8004200:	401a      	ands	r2, r3
 8004202:	683b      	ldr	r3, [r7, #0]
 8004204:	021b      	lsls	r3, r3, #8
 8004206:	431a      	orrs	r2, r3
 8004208:	687b      	ldr	r3, [r7, #4]
 800420a:	601a      	str	r2, [r3, #0]
 800420c:	46c0      	nop			; (mov r8, r8)
 800420e:	46bd      	mov	sp, r7
 8004210:	b002      	add	sp, #8
 8004212:	bd80      	pop	{r7, pc}
 8004214:	fffff0ff 	.word	0xfffff0ff

08004218 <LL_I2C_DisableAnalogFilter>:
 8004218:	b580      	push	{r7, lr}
 800421a:	b082      	sub	sp, #8
 800421c:	af00      	add	r7, sp, #0
 800421e:	6078      	str	r0, [r7, #4]
 8004220:	687b      	ldr	r3, [r7, #4]
 8004222:	681b      	ldr	r3, [r3, #0]
 8004224:	2280      	movs	r2, #128	; 0x80
 8004226:	0152      	lsls	r2, r2, #5
 8004228:	431a      	orrs	r2, r3
 800422a:	687b      	ldr	r3, [r7, #4]
 800422c:	601a      	str	r2, [r3, #0]
 800422e:	46c0      	nop			; (mov r8, r8)
 8004230:	46bd      	mov	sp, r7
 8004232:	b002      	add	sp, #8
 8004234:	bd80      	pop	{r7, pc}

08004236 <LL_I2C_DisableClockStretching>:
 8004236:	b580      	push	{r7, lr}
 8004238:	b082      	sub	sp, #8
 800423a:	af00      	add	r7, sp, #0
 800423c:	6078      	str	r0, [r7, #4]
 800423e:	687b      	ldr	r3, [r7, #4]
 8004240:	681b      	ldr	r3, [r3, #0]
 8004242:	2280      	movs	r2, #128	; 0x80
 8004244:	0292      	lsls	r2, r2, #10
 8004246:	431a      	orrs	r2, r3
 8004248:	687b      	ldr	r3, [r7, #4]
 800424a:	601a      	str	r2, [r3, #0]
 800424c:	46c0      	nop			; (mov r8, r8)
 800424e:	46bd      	mov	sp, r7
 8004250:	b002      	add	sp, #8
 8004252:	bd80      	pop	{r7, pc}

08004254 <LL_I2C_SetMasterAddressingMode>:
 8004254:	b580      	push	{r7, lr}
 8004256:	b082      	sub	sp, #8
 8004258:	af00      	add	r7, sp, #0
 800425a:	6078      	str	r0, [r7, #4]
 800425c:	6039      	str	r1, [r7, #0]
 800425e:	687b      	ldr	r3, [r7, #4]
 8004260:	685b      	ldr	r3, [r3, #4]
 8004262:	4a05      	ldr	r2, [pc, #20]	; (8004278 <LL_I2C_SetMasterAddressingMode+0x24>)
 8004264:	401a      	ands	r2, r3
 8004266:	683b      	ldr	r3, [r7, #0]
 8004268:	431a      	orrs	r2, r3
 800426a:	687b      	ldr	r3, [r7, #4]
 800426c:	605a      	str	r2, [r3, #4]
 800426e:	46c0      	nop			; (mov r8, r8)
 8004270:	46bd      	mov	sp, r7
 8004272:	b002      	add	sp, #8
 8004274:	bd80      	pop	{r7, pc}
 8004276:	46c0      	nop			; (mov r8, r8)
 8004278:	fffff7ff 	.word	0xfffff7ff

0800427c <LL_I2C_SetTiming>:
 800427c:	b580      	push	{r7, lr}
 800427e:	b082      	sub	sp, #8
 8004280:	af00      	add	r7, sp, #0
 8004282:	6078      	str	r0, [r7, #4]
 8004284:	6039      	str	r1, [r7, #0]
 8004286:	687b      	ldr	r3, [r7, #4]
 8004288:	683a      	ldr	r2, [r7, #0]
 800428a:	611a      	str	r2, [r3, #16]
 800428c:	46c0      	nop			; (mov r8, r8)
 800428e:	46bd      	mov	sp, r7
 8004290:	b002      	add	sp, #8
 8004292:	bd80      	pop	{r7, pc}

08004294 <LL_I2C_SetMode>:
 8004294:	b580      	push	{r7, lr}
 8004296:	b082      	sub	sp, #8
 8004298:	af00      	add	r7, sp, #0
 800429a:	6078      	str	r0, [r7, #4]
 800429c:	6039      	str	r1, [r7, #0]
 800429e:	687b      	ldr	r3, [r7, #4]
 80042a0:	681b      	ldr	r3, [r3, #0]
 80042a2:	4a05      	ldr	r2, [pc, #20]	; (80042b8 <LL_I2C_SetMode+0x24>)
 80042a4:	401a      	ands	r2, r3
 80042a6:	683b      	ldr	r3, [r7, #0]
 80042a8:	431a      	orrs	r2, r3
 80042aa:	687b      	ldr	r3, [r7, #4]
 80042ac:	601a      	str	r2, [r3, #0]
 80042ae:	46c0      	nop			; (mov r8, r8)
 80042b0:	46bd      	mov	sp, r7
 80042b2:	b002      	add	sp, #8
 80042b4:	bd80      	pop	{r7, pc}
 80042b6:	46c0      	nop			; (mov r8, r8)
 80042b8:	ffcfffff 	.word	0xffcfffff

080042bc <LL_I2C_IsActiveFlag_TXIS>:
 80042bc:	b580      	push	{r7, lr}
 80042be:	b082      	sub	sp, #8
 80042c0:	af00      	add	r7, sp, #0
 80042c2:	6078      	str	r0, [r7, #4]
 80042c4:	687b      	ldr	r3, [r7, #4]
 80042c6:	699b      	ldr	r3, [r3, #24]
 80042c8:	2202      	movs	r2, #2
 80042ca:	4013      	ands	r3, r2
 80042cc:	3b02      	subs	r3, #2
 80042ce:	425a      	negs	r2, r3
 80042d0:	4153      	adcs	r3, r2
 80042d2:	b2db      	uxtb	r3, r3
 80042d4:	0018      	movs	r0, r3
 80042d6:	46bd      	mov	sp, r7
 80042d8:	b002      	add	sp, #8
 80042da:	bd80      	pop	{r7, pc}

080042dc <LL_I2C_IsActiveFlag_TC>:
 80042dc:	b580      	push	{r7, lr}
 80042de:	b082      	sub	sp, #8
 80042e0:	af00      	add	r7, sp, #0
 80042e2:	6078      	str	r0, [r7, #4]
 80042e4:	687b      	ldr	r3, [r7, #4]
 80042e6:	699b      	ldr	r3, [r3, #24]
 80042e8:	2240      	movs	r2, #64	; 0x40
 80042ea:	4013      	ands	r3, r2
 80042ec:	3b40      	subs	r3, #64	; 0x40
 80042ee:	425a      	negs	r2, r3
 80042f0:	4153      	adcs	r3, r2
 80042f2:	b2db      	uxtb	r3, r3
 80042f4:	0018      	movs	r0, r3
 80042f6:	46bd      	mov	sp, r7
 80042f8:	b002      	add	sp, #8
 80042fa:	bd80      	pop	{r7, pc}

080042fc <LL_I2C_HandleTransfer>:
 80042fc:	b580      	push	{r7, lr}
 80042fe:	b084      	sub	sp, #16
 8004300:	af00      	add	r7, sp, #0
 8004302:	60f8      	str	r0, [r7, #12]
 8004304:	60b9      	str	r1, [r7, #8]
 8004306:	607a      	str	r2, [r7, #4]
 8004308:	603b      	str	r3, [r7, #0]
 800430a:	68fb      	ldr	r3, [r7, #12]
 800430c:	685b      	ldr	r3, [r3, #4]
 800430e:	4a09      	ldr	r2, [pc, #36]	; (8004334 <LL_I2C_HandleTransfer+0x38>)
 8004310:	401a      	ands	r2, r3
 8004312:	68b9      	ldr	r1, [r7, #8]
 8004314:	687b      	ldr	r3, [r7, #4]
 8004316:	4319      	orrs	r1, r3
 8004318:	683b      	ldr	r3, [r7, #0]
 800431a:	041b      	lsls	r3, r3, #16
 800431c:	4319      	orrs	r1, r3
 800431e:	69bb      	ldr	r3, [r7, #24]
 8004320:	4319      	orrs	r1, r3
 8004322:	69fb      	ldr	r3, [r7, #28]
 8004324:	430b      	orrs	r3, r1
 8004326:	431a      	orrs	r2, r3
 8004328:	68fb      	ldr	r3, [r7, #12]
 800432a:	605a      	str	r2, [r3, #4]
 800432c:	46c0      	nop			; (mov r8, r8)
 800432e:	46bd      	mov	sp, r7
 8004330:	b004      	add	sp, #16
 8004332:	bd80      	pop	{r7, pc}
 8004334:	fc008000 	.word	0xfc008000

08004338 <LL_I2C_TransmitData8>:
 8004338:	b580      	push	{r7, lr}
 800433a:	b082      	sub	sp, #8
 800433c:	af00      	add	r7, sp, #0
 800433e:	6078      	str	r0, [r7, #4]
 8004340:	000a      	movs	r2, r1
 8004342:	1cfb      	adds	r3, r7, #3
 8004344:	701a      	strb	r2, [r3, #0]
 8004346:	1cfb      	adds	r3, r7, #3
 8004348:	781a      	ldrb	r2, [r3, #0]
 800434a:	687b      	ldr	r3, [r7, #4]
 800434c:	629a      	str	r2, [r3, #40]	; 0x28
 800434e:	46c0      	nop			; (mov r8, r8)
 8004350:	46bd      	mov	sp, r7
 8004352:	b002      	add	sp, #8
 8004354:	bd80      	pop	{r7, pc}
	...

08004358 <oled_hw_config>:
 8004358:	b580      	push	{r7, lr}
 800435a:	af00      	add	r7, sp, #0
 800435c:	2380      	movs	r3, #128	; 0x80
 800435e:	02db      	lsls	r3, r3, #11
 8004360:	0018      	movs	r0, r3
 8004362:	f7ff fe77 	bl	8004054 <LL_AHB1_GRP1_EnableClock>
 8004366:	4b30      	ldr	r3, [pc, #192]	; (8004428 <oled_hw_config+0xd0>)
 8004368:	2202      	movs	r2, #2
 800436a:	2140      	movs	r1, #64	; 0x40
 800436c:	0018      	movs	r0, r3
 800436e:	f7ff fe9d 	bl	80040ac <LL_GPIO_SetPinMode>
 8004372:	4b2d      	ldr	r3, [pc, #180]	; (8004428 <oled_hw_config+0xd0>)
 8004374:	2201      	movs	r2, #1
 8004376:	2140      	movs	r1, #64	; 0x40
 8004378:	0018      	movs	r0, r3
 800437a:	f7ff feb3 	bl	80040e4 <LL_GPIO_SetPinOutputType>
 800437e:	4b2a      	ldr	r3, [pc, #168]	; (8004428 <oled_hw_config+0xd0>)
 8004380:	2201      	movs	r2, #1
 8004382:	2140      	movs	r1, #64	; 0x40
 8004384:	0018      	movs	r0, r3
 8004386:	f7ff fede 	bl	8004146 <LL_GPIO_SetAFPin_0_7>
 800438a:	4b27      	ldr	r3, [pc, #156]	; (8004428 <oled_hw_config+0xd0>)
 800438c:	2203      	movs	r2, #3
 800438e:	2140      	movs	r1, #64	; 0x40
 8004390:	0018      	movs	r0, r3
 8004392:	f7ff febc 	bl	800410e <LL_GPIO_SetPinSpeed>
 8004396:	4b24      	ldr	r3, [pc, #144]	; (8004428 <oled_hw_config+0xd0>)
 8004398:	2202      	movs	r2, #2
 800439a:	2180      	movs	r1, #128	; 0x80
 800439c:	0018      	movs	r0, r3
 800439e:	f7ff fe85 	bl	80040ac <LL_GPIO_SetPinMode>
 80043a2:	4b21      	ldr	r3, [pc, #132]	; (8004428 <oled_hw_config+0xd0>)
 80043a4:	2201      	movs	r2, #1
 80043a6:	2180      	movs	r1, #128	; 0x80
 80043a8:	0018      	movs	r0, r3
 80043aa:	f7ff fe9b 	bl	80040e4 <LL_GPIO_SetPinOutputType>
 80043ae:	4b1e      	ldr	r3, [pc, #120]	; (8004428 <oled_hw_config+0xd0>)
 80043b0:	2201      	movs	r2, #1
 80043b2:	2180      	movs	r1, #128	; 0x80
 80043b4:	0018      	movs	r0, r3
 80043b6:	f7ff fec6 	bl	8004146 <LL_GPIO_SetAFPin_0_7>
 80043ba:	4b1b      	ldr	r3, [pc, #108]	; (8004428 <oled_hw_config+0xd0>)
 80043bc:	2203      	movs	r2, #3
 80043be:	2180      	movs	r1, #128	; 0x80
 80043c0:	0018      	movs	r0, r3
 80043c2:	f7ff fea4 	bl	800410e <LL_GPIO_SetPinSpeed>
 80043c6:	2010      	movs	r0, #16
 80043c8:	f7ff fee0 	bl	800418c <LL_RCC_SetI2CClockSource>
 80043cc:	4b17      	ldr	r3, [pc, #92]	; (800442c <oled_hw_config+0xd4>)
 80043ce:	0018      	movs	r0, r3
 80043d0:	f7ff fefe 	bl	80041d0 <LL_I2C_Disable>
 80043d4:	2380      	movs	r3, #128	; 0x80
 80043d6:	039b      	lsls	r3, r3, #14
 80043d8:	0018      	movs	r0, r3
 80043da:	f7ff fe51 	bl	8004080 <LL_APB1_GRP1_EnableClock>
 80043de:	4b13      	ldr	r3, [pc, #76]	; (800442c <oled_hw_config+0xd4>)
 80043e0:	0018      	movs	r0, r3
 80043e2:	f7ff ff19 	bl	8004218 <LL_I2C_DisableAnalogFilter>
 80043e6:	4b11      	ldr	r3, [pc, #68]	; (800442c <oled_hw_config+0xd4>)
 80043e8:	2101      	movs	r1, #1
 80043ea:	0018      	movs	r0, r3
 80043ec:	f7ff ff00 	bl	80041f0 <LL_I2C_SetDigitalFilter>
 80043f0:	4a0f      	ldr	r2, [pc, #60]	; (8004430 <oled_hw_config+0xd8>)
 80043f2:	4b0e      	ldr	r3, [pc, #56]	; (800442c <oled_hw_config+0xd4>)
 80043f4:	0011      	movs	r1, r2
 80043f6:	0018      	movs	r0, r3
 80043f8:	f7ff ff40 	bl	800427c <LL_I2C_SetTiming>
 80043fc:	4b0b      	ldr	r3, [pc, #44]	; (800442c <oled_hw_config+0xd4>)
 80043fe:	0018      	movs	r0, r3
 8004400:	f7ff ff19 	bl	8004236 <LL_I2C_DisableClockStretching>
 8004404:	4b09      	ldr	r3, [pc, #36]	; (800442c <oled_hw_config+0xd4>)
 8004406:	2100      	movs	r1, #0
 8004408:	0018      	movs	r0, r3
 800440a:	f7ff ff23 	bl	8004254 <LL_I2C_SetMasterAddressingMode>
 800440e:	4b07      	ldr	r3, [pc, #28]	; (800442c <oled_hw_config+0xd4>)
 8004410:	2100      	movs	r1, #0
 8004412:	0018      	movs	r0, r3
 8004414:	f7ff ff3e 	bl	8004294 <LL_I2C_SetMode>
 8004418:	4b04      	ldr	r3, [pc, #16]	; (800442c <oled_hw_config+0xd4>)
 800441a:	0018      	movs	r0, r3
 800441c:	f7ff feca 	bl	80041b4 <LL_I2C_Enable>
 8004420:	46c0      	nop			; (mov r8, r8)
 8004422:	46bd      	mov	sp, r7
 8004424:	bd80      	pop	{r7, pc}
 8004426:	46c0      	nop			; (mov r8, r8)
 8004428:	48000400 	.word	0x48000400
 800442c:	40005400 	.word	0x40005400
 8004430:	50330309 	.word	0x50330309

08004434 <oled_cmd_send>:
 8004434:	b580      	push	{r7, lr}
 8004436:	b084      	sub	sp, #16
 8004438:	af02      	add	r7, sp, #8
 800443a:	0002      	movs	r2, r0
 800443c:	1dfb      	adds	r3, r7, #7
 800443e:	701a      	strb	r2, [r3, #0]
 8004440:	4818      	ldr	r0, [pc, #96]	; (80044a4 <oled_cmd_send+0x70>)
 8004442:	2380      	movs	r3, #128	; 0x80
 8004444:	019b      	lsls	r3, r3, #6
 8004446:	9301      	str	r3, [sp, #4]
 8004448:	2380      	movs	r3, #128	; 0x80
 800444a:	049b      	lsls	r3, r3, #18
 800444c:	9300      	str	r3, [sp, #0]
 800444e:	2302      	movs	r3, #2
 8004450:	2200      	movs	r2, #0
 8004452:	2178      	movs	r1, #120	; 0x78
 8004454:	f7ff ff52 	bl	80042fc <LL_I2C_HandleTransfer>
 8004458:	46c0      	nop			; (mov r8, r8)
 800445a:	4b12      	ldr	r3, [pc, #72]	; (80044a4 <oled_cmd_send+0x70>)
 800445c:	0018      	movs	r0, r3
 800445e:	f7ff ff2d 	bl	80042bc <LL_I2C_IsActiveFlag_TXIS>
 8004462:	1e03      	subs	r3, r0, #0
 8004464:	d0f9      	beq.n	800445a <oled_cmd_send+0x26>
 8004466:	4b0f      	ldr	r3, [pc, #60]	; (80044a4 <oled_cmd_send+0x70>)
 8004468:	2100      	movs	r1, #0
 800446a:	0018      	movs	r0, r3
 800446c:	f7ff ff64 	bl	8004338 <LL_I2C_TransmitData8>
 8004470:	46c0      	nop			; (mov r8, r8)
 8004472:	4b0c      	ldr	r3, [pc, #48]	; (80044a4 <oled_cmd_send+0x70>)
 8004474:	0018      	movs	r0, r3
 8004476:	f7ff ff21 	bl	80042bc <LL_I2C_IsActiveFlag_TXIS>
 800447a:	1e03      	subs	r3, r0, #0
 800447c:	d0f9      	beq.n	8004472 <oled_cmd_send+0x3e>
 800447e:	1dfb      	adds	r3, r7, #7
 8004480:	781b      	ldrb	r3, [r3, #0]
 8004482:	4a08      	ldr	r2, [pc, #32]	; (80044a4 <oled_cmd_send+0x70>)
 8004484:	0019      	movs	r1, r3
 8004486:	0010      	movs	r0, r2
 8004488:	f7ff ff56 	bl	8004338 <LL_I2C_TransmitData8>
 800448c:	46c0      	nop			; (mov r8, r8)
 800448e:	4b05      	ldr	r3, [pc, #20]	; (80044a4 <oled_cmd_send+0x70>)
 8004490:	0018      	movs	r0, r3
 8004492:	f7ff ff23 	bl	80042dc <LL_I2C_IsActiveFlag_TC>
 8004496:	1e03      	subs	r3, r0, #0
 8004498:	d1f9      	bne.n	800448e <oled_cmd_send+0x5a>
 800449a:	2300      	movs	r3, #0
 800449c:	0018      	movs	r0, r3
 800449e:	46bd      	mov	sp, r7
 80044a0:	b002      	add	sp, #8
 80044a2:	bd80      	pop	{r7, pc}
 80044a4:	40005400 	.word	0x40005400

080044a8 <oled_data_send>:
 80044a8:	b590      	push	{r4, r7, lr}
 80044aa:	b087      	sub	sp, #28
 80044ac:	af02      	add	r7, sp, #8
 80044ae:	6078      	str	r0, [r7, #4]
 80044b0:	000a      	movs	r2, r1
 80044b2:	1cfb      	adds	r3, r7, #3
 80044b4:	701a      	strb	r2, [r3, #0]
 80044b6:	1cfb      	adds	r3, r7, #3
 80044b8:	781b      	ldrb	r3, [r3, #0]
 80044ba:	3301      	adds	r3, #1
 80044bc:	001a      	movs	r2, r3
 80044be:	4823      	ldr	r0, [pc, #140]	; (800454c <oled_data_send+0xa4>)
 80044c0:	2380      	movs	r3, #128	; 0x80
 80044c2:	019b      	lsls	r3, r3, #6
 80044c4:	9301      	str	r3, [sp, #4]
 80044c6:	2380      	movs	r3, #128	; 0x80
 80044c8:	049b      	lsls	r3, r3, #18
 80044ca:	9300      	str	r3, [sp, #0]
 80044cc:	0013      	movs	r3, r2
 80044ce:	2200      	movs	r2, #0
 80044d0:	2178      	movs	r1, #120	; 0x78
 80044d2:	f7ff ff13 	bl	80042fc <LL_I2C_HandleTransfer>
 80044d6:	46c0      	nop			; (mov r8, r8)
 80044d8:	4b1c      	ldr	r3, [pc, #112]	; (800454c <oled_data_send+0xa4>)
 80044da:	0018      	movs	r0, r3
 80044dc:	f7ff feee 	bl	80042bc <LL_I2C_IsActiveFlag_TXIS>
 80044e0:	1e03      	subs	r3, r0, #0
 80044e2:	d0f9      	beq.n	80044d8 <oled_data_send+0x30>
 80044e4:	4b19      	ldr	r3, [pc, #100]	; (800454c <oled_data_send+0xa4>)
 80044e6:	2140      	movs	r1, #64	; 0x40
 80044e8:	0018      	movs	r0, r3
 80044ea:	f7ff ff25 	bl	8004338 <LL_I2C_TransmitData8>
 80044ee:	230f      	movs	r3, #15
 80044f0:	18fb      	adds	r3, r7, r3
 80044f2:	2200      	movs	r2, #0
 80044f4:	701a      	strb	r2, [r3, #0]
 80044f6:	e016      	b.n	8004526 <oled_data_send+0x7e>
 80044f8:	46c0      	nop			; (mov r8, r8)
 80044fa:	4b14      	ldr	r3, [pc, #80]	; (800454c <oled_data_send+0xa4>)
 80044fc:	0018      	movs	r0, r3
 80044fe:	f7ff fedd 	bl	80042bc <LL_I2C_IsActiveFlag_TXIS>
 8004502:	1e03      	subs	r3, r0, #0
 8004504:	d0f9      	beq.n	80044fa <oled_data_send+0x52>
 8004506:	240f      	movs	r4, #15
 8004508:	193b      	adds	r3, r7, r4
 800450a:	781b      	ldrb	r3, [r3, #0]
 800450c:	687a      	ldr	r2, [r7, #4]
 800450e:	18d3      	adds	r3, r2, r3
 8004510:	781b      	ldrb	r3, [r3, #0]
 8004512:	4a0e      	ldr	r2, [pc, #56]	; (800454c <oled_data_send+0xa4>)
 8004514:	0019      	movs	r1, r3
 8004516:	0010      	movs	r0, r2
 8004518:	f7ff ff0e 	bl	8004338 <LL_I2C_TransmitData8>
 800451c:	193b      	adds	r3, r7, r4
 800451e:	781a      	ldrb	r2, [r3, #0]
 8004520:	193b      	adds	r3, r7, r4
 8004522:	3201      	adds	r2, #1
 8004524:	701a      	strb	r2, [r3, #0]
 8004526:	230f      	movs	r3, #15
 8004528:	18fa      	adds	r2, r7, r3
 800452a:	1cfb      	adds	r3, r7, #3
 800452c:	7812      	ldrb	r2, [r2, #0]
 800452e:	781b      	ldrb	r3, [r3, #0]
 8004530:	429a      	cmp	r2, r3
 8004532:	d3e1      	bcc.n	80044f8 <oled_data_send+0x50>
 8004534:	46c0      	nop			; (mov r8, r8)
 8004536:	4b05      	ldr	r3, [pc, #20]	; (800454c <oled_data_send+0xa4>)
 8004538:	0018      	movs	r0, r3
 800453a:	f7ff fecf 	bl	80042dc <LL_I2C_IsActiveFlag_TC>
 800453e:	1e03      	subs	r3, r0, #0
 8004540:	d1f9      	bne.n	8004536 <oled_data_send+0x8e>
 8004542:	2300      	movs	r3, #0
 8004544:	0018      	movs	r0, r3
 8004546:	46bd      	mov	sp, r7
 8004548:	b005      	add	sp, #20
 800454a:	bd90      	pop	{r4, r7, pc}
 800454c:	40005400 	.word	0x40005400

08004550 <oled_clr>:
 8004550:	b580      	push	{r7, lr}
 8004552:	b082      	sub	sp, #8
 8004554:	af00      	add	r7, sp, #0
 8004556:	0002      	movs	r2, r0
 8004558:	1dfb      	adds	r3, r7, #7
 800455a:	701a      	strb	r2, [r3, #0]
 800455c:	1dfb      	adds	r3, r7, #7
 800455e:	7819      	ldrb	r1, [r3, #0]
 8004560:	2380      	movs	r3, #128	; 0x80
 8004562:	00da      	lsls	r2, r3, #3
 8004564:	4b03      	ldr	r3, [pc, #12]	; (8004574 <oled_clr+0x24>)
 8004566:	0018      	movs	r0, r3
 8004568:	f000 f9fe 	bl	8004968 <memset>
 800456c:	46c0      	nop			; (mov r8, r8)
 800456e:	46bd      	mov	sp, r7
 8004570:	b002      	add	sp, #8
 8004572:	bd80      	pop	{r7, pc}
 8004574:	20000534 	.word	0x20000534

08004578 <oled_update>:
 8004578:	b580      	push	{r7, lr}
 800457a:	b082      	sub	sp, #8
 800457c:	af00      	add	r7, sp, #0
 800457e:	1dfb      	adds	r3, r7, #7
 8004580:	2200      	movs	r2, #0
 8004582:	701a      	strb	r2, [r3, #0]
 8004584:	e01a      	b.n	80045bc <oled_update+0x44>
 8004586:	1dfb      	adds	r3, r7, #7
 8004588:	781b      	ldrb	r3, [r3, #0]
 800458a:	3b50      	subs	r3, #80	; 0x50
 800458c:	b2db      	uxtb	r3, r3
 800458e:	0018      	movs	r0, r3
 8004590:	f7ff ff50 	bl	8004434 <oled_cmd_send>
 8004594:	2000      	movs	r0, #0
 8004596:	f7ff ff4d 	bl	8004434 <oled_cmd_send>
 800459a:	2010      	movs	r0, #16
 800459c:	f7ff ff4a 	bl	8004434 <oled_cmd_send>
 80045a0:	1dfb      	adds	r3, r7, #7
 80045a2:	781b      	ldrb	r3, [r3, #0]
 80045a4:	01da      	lsls	r2, r3, #7
 80045a6:	4b0a      	ldr	r3, [pc, #40]	; (80045d0 <oled_update+0x58>)
 80045a8:	18d3      	adds	r3, r2, r3
 80045aa:	2180      	movs	r1, #128	; 0x80
 80045ac:	0018      	movs	r0, r3
 80045ae:	f7ff ff7b 	bl	80044a8 <oled_data_send>
 80045b2:	1dfb      	adds	r3, r7, #7
 80045b4:	781a      	ldrb	r2, [r3, #0]
 80045b6:	1dfb      	adds	r3, r7, #7
 80045b8:	3201      	adds	r2, #1
 80045ba:	701a      	strb	r2, [r3, #0]
 80045bc:	1dfb      	adds	r3, r7, #7
 80045be:	781b      	ldrb	r3, [r3, #0]
 80045c0:	2b07      	cmp	r3, #7
 80045c2:	d9e0      	bls.n	8004586 <oled_update+0xe>
 80045c4:	46c0      	nop			; (mov r8, r8)
 80045c6:	46c0      	nop			; (mov r8, r8)
 80045c8:	46bd      	mov	sp, r7
 80045ca:	b002      	add	sp, #8
 80045cc:	bd80      	pop	{r7, pc}
 80045ce:	46c0      	nop			; (mov r8, r8)
 80045d0:	20000534 	.word	0x20000534

080045d4 <oled_config>:
 80045d4:	b580      	push	{r7, lr}
 80045d6:	b082      	sub	sp, #8
 80045d8:	af00      	add	r7, sp, #0
 80045da:	4b29      	ldr	r3, [pc, #164]	; (8004680 <oled_config+0xac>)
 80045dc:	607b      	str	r3, [r7, #4]
 80045de:	f7ff febb 	bl	8004358 <oled_hw_config>
 80045e2:	46c0      	nop			; (mov r8, r8)
 80045e4:	687b      	ldr	r3, [r7, #4]
 80045e6:	1e5a      	subs	r2, r3, #1
 80045e8:	607a      	str	r2, [r7, #4]
 80045ea:	2b00      	cmp	r3, #0
 80045ec:	d1fa      	bne.n	80045e4 <oled_config+0x10>
 80045ee:	20ae      	movs	r0, #174	; 0xae
 80045f0:	f7ff ff20 	bl	8004434 <oled_cmd_send>
 80045f4:	2020      	movs	r0, #32
 80045f6:	f7ff ff1d 	bl	8004434 <oled_cmd_send>
 80045fa:	2010      	movs	r0, #16
 80045fc:	f7ff ff1a 	bl	8004434 <oled_cmd_send>
 8004600:	20c8      	movs	r0, #200	; 0xc8
 8004602:	f7ff ff17 	bl	8004434 <oled_cmd_send>
 8004606:	2040      	movs	r0, #64	; 0x40
 8004608:	f7ff ff14 	bl	8004434 <oled_cmd_send>
 800460c:	2081      	movs	r0, #129	; 0x81
 800460e:	f7ff ff11 	bl	8004434 <oled_cmd_send>
 8004612:	20ff      	movs	r0, #255	; 0xff
 8004614:	f7ff ff0e 	bl	8004434 <oled_cmd_send>
 8004618:	20a1      	movs	r0, #161	; 0xa1
 800461a:	f7ff ff0b 	bl	8004434 <oled_cmd_send>
 800461e:	20a6      	movs	r0, #166	; 0xa6
 8004620:	f7ff ff08 	bl	8004434 <oled_cmd_send>
 8004624:	20a8      	movs	r0, #168	; 0xa8
 8004626:	f7ff ff05 	bl	8004434 <oled_cmd_send>
 800462a:	203f      	movs	r0, #63	; 0x3f
 800462c:	f7ff ff02 	bl	8004434 <oled_cmd_send>
 8004630:	20a4      	movs	r0, #164	; 0xa4
 8004632:	f7ff feff 	bl	8004434 <oled_cmd_send>
 8004636:	20d3      	movs	r0, #211	; 0xd3
 8004638:	f7ff fefc 	bl	8004434 <oled_cmd_send>
 800463c:	2000      	movs	r0, #0
 800463e:	f7ff fef9 	bl	8004434 <oled_cmd_send>
 8004642:	20d5      	movs	r0, #213	; 0xd5
 8004644:	f7ff fef6 	bl	8004434 <oled_cmd_send>
 8004648:	20f0      	movs	r0, #240	; 0xf0
 800464a:	f7ff fef3 	bl	8004434 <oled_cmd_send>
 800464e:	20da      	movs	r0, #218	; 0xda
 8004650:	f7ff fef0 	bl	8004434 <oled_cmd_send>
 8004654:	2012      	movs	r0, #18
 8004656:	f7ff feed 	bl	8004434 <oled_cmd_send>
 800465a:	208d      	movs	r0, #141	; 0x8d
 800465c:	f7ff feea 	bl	8004434 <oled_cmd_send>
 8004660:	2014      	movs	r0, #20
 8004662:	f7ff fee7 	bl	8004434 <oled_cmd_send>
 8004666:	20af      	movs	r0, #175	; 0xaf
 8004668:	f7ff fee4 	bl	8004434 <oled_cmd_send>
 800466c:	2000      	movs	r0, #0
 800466e:	f7ff ff6f 	bl	8004550 <oled_clr>
 8004672:	f7ff ff81 	bl	8004578 <oled_update>
 8004676:	46c0      	nop			; (mov r8, r8)
 8004678:	46bd      	mov	sp, r7
 800467a:	b002      	add	sp, #8
 800467c:	bd80      	pop	{r7, pc}
 800467e:	46c0      	nop			; (mov r8, r8)
 8004680:	001e8480 	.word	0x001e8480

08004684 <oled_set_pix>:
 8004684:	b590      	push	{r4, r7, lr}
 8004686:	b083      	sub	sp, #12
 8004688:	af00      	add	r7, sp, #0
 800468a:	0004      	movs	r4, r0
 800468c:	0008      	movs	r0, r1
 800468e:	0011      	movs	r1, r2
 8004690:	1dfb      	adds	r3, r7, #7
 8004692:	1c22      	adds	r2, r4, #0
 8004694:	701a      	strb	r2, [r3, #0]
 8004696:	1dbb      	adds	r3, r7, #6
 8004698:	1c02      	adds	r2, r0, #0
 800469a:	701a      	strb	r2, [r3, #0]
 800469c:	1d7b      	adds	r3, r7, #5
 800469e:	1c0a      	adds	r2, r1, #0
 80046a0:	701a      	strb	r2, [r3, #0]
 80046a2:	1dfb      	adds	r3, r7, #7
 80046a4:	781b      	ldrb	r3, [r3, #0]
 80046a6:	b25b      	sxtb	r3, r3
 80046a8:	2b00      	cmp	r3, #0
 80046aa:	db47      	blt.n	800473c <oled_set_pix+0xb8>
 80046ac:	1dbb      	adds	r3, r7, #6
 80046ae:	781b      	ldrb	r3, [r3, #0]
 80046b0:	2b3f      	cmp	r3, #63	; 0x3f
 80046b2:	d843      	bhi.n	800473c <oled_set_pix+0xb8>
 80046b4:	1d7b      	adds	r3, r7, #5
 80046b6:	781b      	ldrb	r3, [r3, #0]
 80046b8:	2b00      	cmp	r3, #0
 80046ba:	d01e      	beq.n	80046fa <oled_set_pix+0x76>
 80046bc:	1dbb      	adds	r3, r7, #6
 80046be:	781b      	ldrb	r3, [r3, #0]
 80046c0:	08db      	lsrs	r3, r3, #3
 80046c2:	b2d8      	uxtb	r0, r3
 80046c4:	0003      	movs	r3, r0
 80046c6:	01da      	lsls	r2, r3, #7
 80046c8:	1dfb      	adds	r3, r7, #7
 80046ca:	781b      	ldrb	r3, [r3, #0]
 80046cc:	18d3      	adds	r3, r2, r3
 80046ce:	4a1d      	ldr	r2, [pc, #116]	; (8004744 <oled_set_pix+0xc0>)
 80046d0:	5cd3      	ldrb	r3, [r2, r3]
 80046d2:	b25a      	sxtb	r2, r3
 80046d4:	1dbb      	adds	r3, r7, #6
 80046d6:	781b      	ldrb	r3, [r3, #0]
 80046d8:	2107      	movs	r1, #7
 80046da:	400b      	ands	r3, r1
 80046dc:	2101      	movs	r1, #1
 80046de:	4099      	lsls	r1, r3
 80046e0:	000b      	movs	r3, r1
 80046e2:	b25b      	sxtb	r3, r3
 80046e4:	4313      	orrs	r3, r2
 80046e6:	b259      	sxtb	r1, r3
 80046e8:	0003      	movs	r3, r0
 80046ea:	01da      	lsls	r2, r3, #7
 80046ec:	1dfb      	adds	r3, r7, #7
 80046ee:	781b      	ldrb	r3, [r3, #0]
 80046f0:	18d3      	adds	r3, r2, r3
 80046f2:	b2c9      	uxtb	r1, r1
 80046f4:	4a13      	ldr	r2, [pc, #76]	; (8004744 <oled_set_pix+0xc0>)
 80046f6:	54d1      	strb	r1, [r2, r3]
 80046f8:	e021      	b.n	800473e <oled_set_pix+0xba>
 80046fa:	1dbb      	adds	r3, r7, #6
 80046fc:	781b      	ldrb	r3, [r3, #0]
 80046fe:	08db      	lsrs	r3, r3, #3
 8004700:	b2d8      	uxtb	r0, r3
 8004702:	0003      	movs	r3, r0
 8004704:	01da      	lsls	r2, r3, #7
 8004706:	1dfb      	adds	r3, r7, #7
 8004708:	781b      	ldrb	r3, [r3, #0]
 800470a:	18d3      	adds	r3, r2, r3
 800470c:	4a0d      	ldr	r2, [pc, #52]	; (8004744 <oled_set_pix+0xc0>)
 800470e:	5cd3      	ldrb	r3, [r2, r3]
 8004710:	b25b      	sxtb	r3, r3
 8004712:	1dba      	adds	r2, r7, #6
 8004714:	7812      	ldrb	r2, [r2, #0]
 8004716:	2107      	movs	r1, #7
 8004718:	400a      	ands	r2, r1
 800471a:	2101      	movs	r1, #1
 800471c:	4091      	lsls	r1, r2
 800471e:	000a      	movs	r2, r1
 8004720:	b252      	sxtb	r2, r2
 8004722:	43d2      	mvns	r2, r2
 8004724:	b252      	sxtb	r2, r2
 8004726:	4013      	ands	r3, r2
 8004728:	b259      	sxtb	r1, r3
 800472a:	0003      	movs	r3, r0
 800472c:	01da      	lsls	r2, r3, #7
 800472e:	1dfb      	adds	r3, r7, #7
 8004730:	781b      	ldrb	r3, [r3, #0]
 8004732:	18d3      	adds	r3, r2, r3
 8004734:	b2c9      	uxtb	r1, r1
 8004736:	4a03      	ldr	r2, [pc, #12]	; (8004744 <oled_set_pix+0xc0>)
 8004738:	54d1      	strb	r1, [r2, r3]
 800473a:	e000      	b.n	800473e <oled_set_pix+0xba>
 800473c:	46c0      	nop			; (mov r8, r8)
 800473e:	46bd      	mov	sp, r7
 8004740:	b003      	add	sp, #12
 8004742:	bd90      	pop	{r4, r7, pc}
 8004744:	20000534 	.word	0x20000534

08004748 <oled_set_cursor>:
 8004748:	b580      	push	{r7, lr}
 800474a:	b082      	sub	sp, #8
 800474c:	af00      	add	r7, sp, #0
 800474e:	0002      	movs	r2, r0
 8004750:	1dfb      	adds	r3, r7, #7
 8004752:	701a      	strb	r2, [r3, #0]
 8004754:	1dbb      	adds	r3, r7, #6
 8004756:	1c0a      	adds	r2, r1, #0
 8004758:	701a      	strb	r2, [r3, #0]
 800475a:	4b06      	ldr	r3, [pc, #24]	; (8004774 <oled_set_cursor+0x2c>)
 800475c:	1dfa      	adds	r2, r7, #7
 800475e:	7812      	ldrb	r2, [r2, #0]
 8004760:	701a      	strb	r2, [r3, #0]
 8004762:	4b05      	ldr	r3, [pc, #20]	; (8004778 <oled_set_cursor+0x30>)
 8004764:	1dba      	adds	r2, r7, #6
 8004766:	7812      	ldrb	r2, [r2, #0]
 8004768:	701a      	strb	r2, [r3, #0]
 800476a:	46c0      	nop			; (mov r8, r8)
 800476c:	46bd      	mov	sp, r7
 800476e:	b002      	add	sp, #8
 8004770:	bd80      	pop	{r7, pc}
 8004772:	46c0      	nop			; (mov r8, r8)
 8004774:	20000934 	.word	0x20000934
 8004778:	20000935 	.word	0x20000935

0800477c <oled_putc>:
 800477c:	b5f0      	push	{r4, r5, r6, r7, lr}
 800477e:	b085      	sub	sp, #20
 8004780:	af00      	add	r7, sp, #0
 8004782:	0002      	movs	r2, r0
 8004784:	1dfb      	adds	r3, r7, #7
 8004786:	701a      	strb	r2, [r3, #0]
 8004788:	1dfb      	adds	r3, r7, #7
 800478a:	781b      	ldrb	r3, [r3, #0]
 800478c:	2b0a      	cmp	r3, #10
 800478e:	d106      	bne.n	800479e <oled_putc+0x22>
 8004790:	4b35      	ldr	r3, [pc, #212]	; (8004868 <oled_putc+0xec>)
 8004792:	781b      	ldrb	r3, [r3, #0]
 8004794:	3301      	adds	r3, #1
 8004796:	b2da      	uxtb	r2, r3
 8004798:	4b33      	ldr	r3, [pc, #204]	; (8004868 <oled_putc+0xec>)
 800479a:	701a      	strb	r2, [r3, #0]
 800479c:	e061      	b.n	8004862 <oled_putc+0xe6>
 800479e:	1dfb      	adds	r3, r7, #7
 80047a0:	781b      	ldrb	r3, [r3, #0]
 80047a2:	2b0d      	cmp	r3, #13
 80047a4:	d103      	bne.n	80047ae <oled_putc+0x32>
 80047a6:	4b31      	ldr	r3, [pc, #196]	; (800486c <oled_putc+0xf0>)
 80047a8:	2200      	movs	r2, #0
 80047aa:	701a      	strb	r2, [r3, #0]
 80047ac:	e059      	b.n	8004862 <oled_putc+0xe6>
 80047ae:	230e      	movs	r3, #14
 80047b0:	18fb      	adds	r3, r7, r3
 80047b2:	2200      	movs	r2, #0
 80047b4:	701a      	strb	r2, [r3, #0]
 80047b6:	e046      	b.n	8004846 <oled_putc+0xca>
 80047b8:	230f      	movs	r3, #15
 80047ba:	18fb      	adds	r3, r7, r3
 80047bc:	2200      	movs	r2, #0
 80047be:	701a      	strb	r2, [r3, #0]
 80047c0:	e034      	b.n	800482c <oled_putc+0xb0>
 80047c2:	4b2b      	ldr	r3, [pc, #172]	; (8004870 <oled_putc+0xf4>)
 80047c4:	689b      	ldr	r3, [r3, #8]
 80047c6:	220d      	movs	r2, #13
 80047c8:	18bc      	adds	r4, r7, r2
 80047ca:	210e      	movs	r1, #14
 80047cc:	187a      	adds	r2, r7, r1
 80047ce:	7815      	ldrb	r5, [r2, #0]
 80047d0:	260f      	movs	r6, #15
 80047d2:	19ba      	adds	r2, r7, r6
 80047d4:	7811      	ldrb	r1, [r2, #0]
 80047d6:	1dfa      	adds	r2, r7, #7
 80047d8:	7810      	ldrb	r0, [r2, #0]
 80047da:	002a      	movs	r2, r5
 80047dc:	4798      	blx	r3
 80047de:	0003      	movs	r3, r0
 80047e0:	7023      	strb	r3, [r4, #0]
 80047e2:	4b23      	ldr	r3, [pc, #140]	; (8004870 <oled_putc+0xf4>)
 80047e4:	791b      	ldrb	r3, [r3, #4]
 80047e6:	3301      	adds	r3, #1
 80047e8:	b2db      	uxtb	r3, r3
 80047ea:	4a20      	ldr	r2, [pc, #128]	; (800486c <oled_putc+0xf0>)
 80047ec:	7812      	ldrb	r2, [r2, #0]
 80047ee:	4353      	muls	r3, r2
 80047f0:	b2da      	uxtb	r2, r3
 80047f2:	0034      	movs	r4, r6
 80047f4:	193b      	adds	r3, r7, r4
 80047f6:	781b      	ldrb	r3, [r3, #0]
 80047f8:	18d3      	adds	r3, r2, r3
 80047fa:	b2d8      	uxtb	r0, r3
 80047fc:	4b1c      	ldr	r3, [pc, #112]	; (8004870 <oled_putc+0xf4>)
 80047fe:	795b      	ldrb	r3, [r3, #5]
 8004800:	3302      	adds	r3, #2
 8004802:	b2db      	uxtb	r3, r3
 8004804:	4a18      	ldr	r2, [pc, #96]	; (8004868 <oled_putc+0xec>)
 8004806:	7812      	ldrb	r2, [r2, #0]
 8004808:	4353      	muls	r3, r2
 800480a:	b2da      	uxtb	r2, r3
 800480c:	210e      	movs	r1, #14
 800480e:	187b      	adds	r3, r7, r1
 8004810:	781b      	ldrb	r3, [r3, #0]
 8004812:	18d3      	adds	r3, r2, r3
 8004814:	b2d9      	uxtb	r1, r3
 8004816:	220d      	movs	r2, #13
 8004818:	18bb      	adds	r3, r7, r2
 800481a:	781b      	ldrb	r3, [r3, #0]
 800481c:	001a      	movs	r2, r3
 800481e:	f7ff ff31 	bl	8004684 <oled_set_pix>
 8004822:	193b      	adds	r3, r7, r4
 8004824:	781a      	ldrb	r2, [r3, #0]
 8004826:	193b      	adds	r3, r7, r4
 8004828:	3201      	adds	r2, #1
 800482a:	701a      	strb	r2, [r3, #0]
 800482c:	4b10      	ldr	r3, [pc, #64]	; (8004870 <oled_putc+0xf4>)
 800482e:	791b      	ldrb	r3, [r3, #4]
 8004830:	220f      	movs	r2, #15
 8004832:	18ba      	adds	r2, r7, r2
 8004834:	7812      	ldrb	r2, [r2, #0]
 8004836:	429a      	cmp	r2, r3
 8004838:	d3c3      	bcc.n	80047c2 <oled_putc+0x46>
 800483a:	210e      	movs	r1, #14
 800483c:	187b      	adds	r3, r7, r1
 800483e:	781a      	ldrb	r2, [r3, #0]
 8004840:	187b      	adds	r3, r7, r1
 8004842:	3201      	adds	r2, #1
 8004844:	701a      	strb	r2, [r3, #0]
 8004846:	4b0a      	ldr	r3, [pc, #40]	; (8004870 <oled_putc+0xf4>)
 8004848:	795b      	ldrb	r3, [r3, #5]
 800484a:	220e      	movs	r2, #14
 800484c:	18ba      	adds	r2, r7, r2
 800484e:	7812      	ldrb	r2, [r2, #0]
 8004850:	429a      	cmp	r2, r3
 8004852:	d3b1      	bcc.n	80047b8 <oled_putc+0x3c>
 8004854:	4b05      	ldr	r3, [pc, #20]	; (800486c <oled_putc+0xf0>)
 8004856:	781b      	ldrb	r3, [r3, #0]
 8004858:	3301      	adds	r3, #1
 800485a:	b2da      	uxtb	r2, r3
 800485c:	4b03      	ldr	r3, [pc, #12]	; (800486c <oled_putc+0xf0>)
 800485e:	701a      	strb	r2, [r3, #0]
 8004860:	46c0      	nop			; (mov r8, r8)
 8004862:	46bd      	mov	sp, r7
 8004864:	b005      	add	sp, #20
 8004866:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8004868:	20000935 	.word	0x20000935
 800486c:	20000934 	.word	0x20000934
 8004870:	200000d0 	.word	0x200000d0

08004874 <get_pix>:
 8004874:	b590      	push	{r4, r7, lr}
 8004876:	b083      	sub	sp, #12
 8004878:	af00      	add	r7, sp, #0
 800487a:	0004      	movs	r4, r0
 800487c:	0008      	movs	r0, r1
 800487e:	0011      	movs	r1, r2
 8004880:	1dfb      	adds	r3, r7, #7
 8004882:	1c22      	adds	r2, r4, #0
 8004884:	701a      	strb	r2, [r3, #0]
 8004886:	1dbb      	adds	r3, r7, #6
 8004888:	1c02      	adds	r2, r0, #0
 800488a:	701a      	strb	r2, [r3, #0]
 800488c:	1d7b      	adds	r3, r7, #5
 800488e:	1c0a      	adds	r2, r1, #0
 8004890:	701a      	strb	r2, [r3, #0]
 8004892:	1dfb      	adds	r3, r7, #7
 8004894:	781a      	ldrb	r2, [r3, #0]
 8004896:	0013      	movs	r3, r2
 8004898:	009b      	lsls	r3, r3, #2
 800489a:	189a      	adds	r2, r3, r2
 800489c:	1dbb      	adds	r3, r7, #6
 800489e:	781b      	ldrb	r3, [r3, #0]
 80048a0:	18d3      	adds	r3, r2, r3
 80048a2:	4a08      	ldr	r2, [pc, #32]	; (80048c4 <get_pix+0x50>)
 80048a4:	5cd3      	ldrb	r3, [r2, r3]
 80048a6:	001a      	movs	r2, r3
 80048a8:	1d7b      	adds	r3, r7, #5
 80048aa:	781b      	ldrb	r3, [r3, #0]
 80048ac:	411a      	asrs	r2, r3
 80048ae:	0013      	movs	r3, r2
 80048b0:	2201      	movs	r2, #1
 80048b2:	4013      	ands	r3, r2
 80048b4:	1e5a      	subs	r2, r3, #1
 80048b6:	4193      	sbcs	r3, r2
 80048b8:	b2db      	uxtb	r3, r3
 80048ba:	0018      	movs	r0, r3
 80048bc:	46bd      	mov	sp, r7
 80048be:	b003      	add	sp, #12
 80048c0:	bd90      	pop	{r4, r7, pc}
 80048c2:	46c0      	nop			; (mov r8, r8)
 80048c4:	08004c00 	.word	0x08004c00

080048c8 <NMI_Handler>:
 80048c8:	b580      	push	{r7, lr}
 80048ca:	af00      	add	r7, sp, #0
 80048cc:	46c0      	nop			; (mov r8, r8)
 80048ce:	46bd      	mov	sp, r7
 80048d0:	bd80      	pop	{r7, pc}

080048d2 <HardFault_Handler>:
 80048d2:	b580      	push	{r7, lr}
 80048d4:	af00      	add	r7, sp, #0
 80048d6:	e7fe      	b.n	80048d6 <HardFault_Handler+0x4>

080048d8 <SVC_Handler>:
 80048d8:	b580      	push	{r7, lr}
 80048da:	af00      	add	r7, sp, #0
 80048dc:	46c0      	nop			; (mov r8, r8)
 80048de:	46bd      	mov	sp, r7
 80048e0:	bd80      	pop	{r7, pc}

080048e2 <PendSV_Handler>:
 80048e2:	b580      	push	{r7, lr}
 80048e4:	af00      	add	r7, sp, #0
 80048e6:	46c0      	nop			; (mov r8, r8)
 80048e8:	46bd      	mov	sp, r7
 80048ea:	bd80      	pop	{r7, pc}

080048ec <atexit>:
 80048ec:	b510      	push	{r4, lr}
 80048ee:	0001      	movs	r1, r0
 80048f0:	2300      	movs	r3, #0
 80048f2:	2200      	movs	r2, #0
 80048f4:	2000      	movs	r0, #0
 80048f6:	f000 f88b 	bl	8004a10 <__register_exitproc>
 80048fa:	bd10      	pop	{r4, pc}

080048fc <__libc_fini_array>:
 80048fc:	b570      	push	{r4, r5, r6, lr}
 80048fe:	4d07      	ldr	r5, [pc, #28]	; (800491c <__libc_fini_array+0x20>)
 8004900:	4c07      	ldr	r4, [pc, #28]	; (8004920 <__libc_fini_array+0x24>)
 8004902:	1b64      	subs	r4, r4, r5
 8004904:	10a4      	asrs	r4, r4, #2
 8004906:	d005      	beq.n	8004914 <__libc_fini_array+0x18>
 8004908:	3c01      	subs	r4, #1
 800490a:	00a3      	lsls	r3, r4, #2
 800490c:	58eb      	ldr	r3, [r5, r3]
 800490e:	4798      	blx	r3
 8004910:	2c00      	cmp	r4, #0
 8004912:	d1f9      	bne.n	8004908 <__libc_fini_array+0xc>
 8004914:	f000 f8d2 	bl	8004abc <_fini>
 8004918:	bd70      	pop	{r4, r5, r6, pc}
 800491a:	46c0      	nop			; (mov r8, r8)
 800491c:	08005108 	.word	0x08005108
 8004920:	0800510c 	.word	0x0800510c

08004924 <__libc_init_array>:
 8004924:	b570      	push	{r4, r5, r6, lr}
 8004926:	4d0c      	ldr	r5, [pc, #48]	; (8004958 <__libc_init_array+0x34>)
 8004928:	4e0c      	ldr	r6, [pc, #48]	; (800495c <__libc_init_array+0x38>)
 800492a:	1b76      	subs	r6, r6, r5
 800492c:	10b6      	asrs	r6, r6, #2
 800492e:	d005      	beq.n	800493c <__libc_init_array+0x18>
 8004930:	2400      	movs	r4, #0
 8004932:	cd08      	ldmia	r5!, {r3}
 8004934:	3401      	adds	r4, #1
 8004936:	4798      	blx	r3
 8004938:	42a6      	cmp	r6, r4
 800493a:	d1fa      	bne.n	8004932 <__libc_init_array+0xe>
 800493c:	f000 f8b8 	bl	8004ab0 <_init>
 8004940:	4d07      	ldr	r5, [pc, #28]	; (8004960 <__libc_init_array+0x3c>)
 8004942:	4e08      	ldr	r6, [pc, #32]	; (8004964 <__libc_init_array+0x40>)
 8004944:	1b76      	subs	r6, r6, r5
 8004946:	10b6      	asrs	r6, r6, #2
 8004948:	d005      	beq.n	8004956 <__libc_init_array+0x32>
 800494a:	2400      	movs	r4, #0
 800494c:	cd08      	ldmia	r5!, {r3}
 800494e:	3401      	adds	r4, #1
 8004950:	4798      	blx	r3
 8004952:	42a6      	cmp	r6, r4
 8004954:	d1fa      	bne.n	800494c <__libc_init_array+0x28>
 8004956:	bd70      	pop	{r4, r5, r6, pc}
 8004958:	08005100 	.word	0x08005100
 800495c:	08005100 	.word	0x08005100
 8004960:	08005100 	.word	0x08005100
 8004964:	08005108 	.word	0x08005108

08004968 <memset>:
 8004968:	b5f0      	push	{r4, r5, r6, r7, lr}
 800496a:	0005      	movs	r5, r0
 800496c:	0783      	lsls	r3, r0, #30
 800496e:	d04a      	beq.n	8004a06 <memset+0x9e>
 8004970:	1e54      	subs	r4, r2, #1
 8004972:	2a00      	cmp	r2, #0
 8004974:	d044      	beq.n	8004a00 <memset+0x98>
 8004976:	b2ce      	uxtb	r6, r1
 8004978:	0003      	movs	r3, r0
 800497a:	2203      	movs	r2, #3
 800497c:	e002      	b.n	8004984 <memset+0x1c>
 800497e:	3501      	adds	r5, #1
 8004980:	3c01      	subs	r4, #1
 8004982:	d33d      	bcc.n	8004a00 <memset+0x98>
 8004984:	3301      	adds	r3, #1
 8004986:	702e      	strb	r6, [r5, #0]
 8004988:	4213      	tst	r3, r2
 800498a:	d1f8      	bne.n	800497e <memset+0x16>
 800498c:	2c03      	cmp	r4, #3
 800498e:	d92f      	bls.n	80049f0 <memset+0x88>
 8004990:	22ff      	movs	r2, #255	; 0xff
 8004992:	400a      	ands	r2, r1
 8004994:	0215      	lsls	r5, r2, #8
 8004996:	4315      	orrs	r5, r2
 8004998:	042a      	lsls	r2, r5, #16
 800499a:	4315      	orrs	r5, r2
 800499c:	2c0f      	cmp	r4, #15
 800499e:	d935      	bls.n	8004a0c <memset+0xa4>
 80049a0:	0027      	movs	r7, r4
 80049a2:	3f10      	subs	r7, #16
 80049a4:	093f      	lsrs	r7, r7, #4
 80049a6:	013e      	lsls	r6, r7, #4
 80049a8:	46b4      	mov	ip, r6
 80049aa:	001e      	movs	r6, r3
 80049ac:	001a      	movs	r2, r3
 80049ae:	3610      	adds	r6, #16
 80049b0:	4466      	add	r6, ip
 80049b2:	6015      	str	r5, [r2, #0]
 80049b4:	6055      	str	r5, [r2, #4]
 80049b6:	6095      	str	r5, [r2, #8]
 80049b8:	60d5      	str	r5, [r2, #12]
 80049ba:	3210      	adds	r2, #16
 80049bc:	42b2      	cmp	r2, r6
 80049be:	d1f8      	bne.n	80049b2 <memset+0x4a>
 80049c0:	260f      	movs	r6, #15
 80049c2:	220c      	movs	r2, #12
 80049c4:	3701      	adds	r7, #1
 80049c6:	013f      	lsls	r7, r7, #4
 80049c8:	4026      	ands	r6, r4
 80049ca:	19db      	adds	r3, r3, r7
 80049cc:	0037      	movs	r7, r6
 80049ce:	4222      	tst	r2, r4
 80049d0:	d017      	beq.n	8004a02 <memset+0x9a>
 80049d2:	1f3e      	subs	r6, r7, #4
 80049d4:	08b6      	lsrs	r6, r6, #2
 80049d6:	00b4      	lsls	r4, r6, #2
 80049d8:	46a4      	mov	ip, r4
 80049da:	001a      	movs	r2, r3
 80049dc:	1d1c      	adds	r4, r3, #4
 80049de:	4464      	add	r4, ip
 80049e0:	c220      	stmia	r2!, {r5}
 80049e2:	42a2      	cmp	r2, r4
 80049e4:	d1fc      	bne.n	80049e0 <memset+0x78>
 80049e6:	2403      	movs	r4, #3
 80049e8:	3601      	adds	r6, #1
 80049ea:	00b6      	lsls	r6, r6, #2
 80049ec:	199b      	adds	r3, r3, r6
 80049ee:	403c      	ands	r4, r7
 80049f0:	2c00      	cmp	r4, #0
 80049f2:	d005      	beq.n	8004a00 <memset+0x98>
 80049f4:	b2c9      	uxtb	r1, r1
 80049f6:	191c      	adds	r4, r3, r4
 80049f8:	7019      	strb	r1, [r3, #0]
 80049fa:	3301      	adds	r3, #1
 80049fc:	429c      	cmp	r4, r3
 80049fe:	d1fb      	bne.n	80049f8 <memset+0x90>
 8004a00:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8004a02:	0034      	movs	r4, r6
 8004a04:	e7f4      	b.n	80049f0 <memset+0x88>
 8004a06:	0014      	movs	r4, r2
 8004a08:	0003      	movs	r3, r0
 8004a0a:	e7bf      	b.n	800498c <memset+0x24>
 8004a0c:	0027      	movs	r7, r4
 8004a0e:	e7e0      	b.n	80049d2 <memset+0x6a>

08004a10 <__register_exitproc>:
 8004a10:	b5f0      	push	{r4, r5, r6, r7, lr}
 8004a12:	46c6      	mov	lr, r8
 8004a14:	b500      	push	{lr}
 8004a16:	4c1f      	ldr	r4, [pc, #124]	; (8004a94 <__register_exitproc+0x84>)
 8004a18:	b082      	sub	sp, #8
 8004a1a:	6824      	ldr	r4, [r4, #0]
 8004a1c:	9401      	str	r4, [sp, #4]
 8004a1e:	24a4      	movs	r4, #164	; 0xa4
 8004a20:	9d01      	ldr	r5, [sp, #4]
 8004a22:	0064      	lsls	r4, r4, #1
 8004a24:	592d      	ldr	r5, [r5, r4]
 8004a26:	2d00      	cmp	r5, #0
 8004a28:	d02b      	beq.n	8004a82 <__register_exitproc+0x72>
 8004a2a:	686c      	ldr	r4, [r5, #4]
 8004a2c:	2c1f      	cmp	r4, #31
 8004a2e:	dc2e      	bgt.n	8004a8e <__register_exitproc+0x7e>
 8004a30:	2800      	cmp	r0, #0
 8004a32:	d109      	bne.n	8004a48 <__register_exitproc+0x38>
 8004a34:	2000      	movs	r0, #0
 8004a36:	1c63      	adds	r3, r4, #1
 8004a38:	3402      	adds	r4, #2
 8004a3a:	00a4      	lsls	r4, r4, #2
 8004a3c:	606b      	str	r3, [r5, #4]
 8004a3e:	5161      	str	r1, [r4, r5]
 8004a40:	b002      	add	sp, #8
 8004a42:	bc04      	pop	{r2}
 8004a44:	4690      	mov	r8, r2
 8004a46:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8004a48:	2788      	movs	r7, #136	; 0x88
 8004a4a:	00a6      	lsls	r6, r4, #2
 8004a4c:	19ae      	adds	r6, r5, r6
 8004a4e:	51f2      	str	r2, [r6, r7]
 8004a50:	3701      	adds	r7, #1
 8004a52:	37ff      	adds	r7, #255	; 0xff
 8004a54:	46bc      	mov	ip, r7
 8004a56:	2201      	movs	r2, #1
 8004a58:	44ac      	add	ip, r5
 8004a5a:	4667      	mov	r7, ip
 8004a5c:	40a2      	lsls	r2, r4
 8004a5e:	683f      	ldr	r7, [r7, #0]
 8004a60:	4690      	mov	r8, r2
 8004a62:	4317      	orrs	r7, r2
 8004a64:	4662      	mov	r2, ip
 8004a66:	6017      	str	r7, [r2, #0]
 8004a68:	2784      	movs	r7, #132	; 0x84
 8004a6a:	007f      	lsls	r7, r7, #1
 8004a6c:	51f3      	str	r3, [r6, r7]
 8004a6e:	2802      	cmp	r0, #2
 8004a70:	d1e0      	bne.n	8004a34 <__register_exitproc+0x24>
 8004a72:	002b      	movs	r3, r5
 8004a74:	4640      	mov	r0, r8
 8004a76:	338d      	adds	r3, #141	; 0x8d
 8004a78:	33ff      	adds	r3, #255	; 0xff
 8004a7a:	681a      	ldr	r2, [r3, #0]
 8004a7c:	4310      	orrs	r0, r2
 8004a7e:	6018      	str	r0, [r3, #0]
 8004a80:	e7d8      	b.n	8004a34 <__register_exitproc+0x24>
 8004a82:	9d01      	ldr	r5, [sp, #4]
 8004a84:	9e01      	ldr	r6, [sp, #4]
 8004a86:	354d      	adds	r5, #77	; 0x4d
 8004a88:	35ff      	adds	r5, #255	; 0xff
 8004a8a:	5135      	str	r5, [r6, r4]
 8004a8c:	e7cd      	b.n	8004a2a <__register_exitproc+0x1a>
 8004a8e:	2001      	movs	r0, #1
 8004a90:	4240      	negs	r0, r0
 8004a92:	e7d5      	b.n	8004a40 <__register_exitproc+0x30>
 8004a94:	080050fc 	.word	0x080050fc

08004a98 <register_fini>:
 8004a98:	4b03      	ldr	r3, [pc, #12]	; (8004aa8 <register_fini+0x10>)
 8004a9a:	b510      	push	{r4, lr}
 8004a9c:	2b00      	cmp	r3, #0
 8004a9e:	d002      	beq.n	8004aa6 <register_fini+0xe>
 8004aa0:	4802      	ldr	r0, [pc, #8]	; (8004aac <register_fini+0x14>)
 8004aa2:	f7ff ff23 	bl	80048ec <atexit>
 8004aa6:	bd10      	pop	{r4, pc}
 8004aa8:	00000000 	.word	0x00000000
 8004aac:	080048fd 	.word	0x080048fd

08004ab0 <_init>:
 8004ab0:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8004ab2:	46c0      	nop			; (mov r8, r8)
 8004ab4:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8004ab6:	bc08      	pop	{r3}
 8004ab8:	469e      	mov	lr, r3
 8004aba:	4770      	bx	lr

08004abc <_fini>:
 8004abc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8004abe:	46c0      	nop			; (mov r8, r8)
 8004ac0:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8004ac2:	bc08      	pop	{r3}
 8004ac4:	469e      	mov	lr, r3
 8004ac6:	4770      	bx	lr
