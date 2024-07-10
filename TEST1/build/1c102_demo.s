
1c102_demo.elf:     file format elf32-loongarch
1c102_demo.elf


Disassembly of section .text:

1c000000 <_start>:
_start():
1c000000:	0015000d 	move	$r13,$r0
1c000004:	50002000 	b	32(0x20) # 1c000024 <LoopCopyDataInit>

1c000008 <CopyDataInit>:
CopyDataInit():
1c000008:	1438012f 	lu12i.w	$r15,114697(0x1c009)
1c00000c:	03b821ef 	ori	$r15,$r15,0xe08
1c000010:	001035f0 	add.w	$r16,$r15,$r13
1c000014:	2880020f 	ld.w	$r15,$r16,0
1c000018:	00103590 	add.w	$r16,$r12,$r13
1c00001c:	2980020f 	st.w	$r15,$r16,0
1c000020:	028011ad 	addi.w	$r13,$r13,4(0x4)

1c000024 <LoopCopyDataInit>:
LoopCopyDataInit():
1c000024:	1500002c 	lu12i.w	$r12,-524287(0x80001)
1c000028:	0380018c 	ori	$r12,$r12,0x0
1c00002c:	1500002f 	lu12i.w	$r15,-524287(0x80001)
1c000030:	038141ef 	ori	$r15,$r15,0x50
1c000034:	0010358e 	add.w	$r14,$r12,$r13
1c000038:	5fffd1cf 	bne	$r14,$r15,-48(0x3ffd0) # 1c000008 <CopyDataInit>
1c00003c:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c000040:	0380018c 	ori	$r12,$r12,0x0
1c000044:	1500000d 	lu12i.w	$r13,-524288(0x80000)
1c000048:	038aa1ad 	ori	$r13,$r13,0x2a8
1c00004c:	580011ac 	beq	$r13,$r12,16(0x10) # 1c00005c <cpu_init_start>

1c000050 <LoopFillZerobss>:
LoopFillZerobss():
1c000050:	29800180 	st.w	$r0,$r12,0
1c000054:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c000058:	5ffff9ac 	bne	$r13,$r12,-8(0x3fff8) # 1c000050 <LoopFillZerobss>

1c00005c <cpu_init_start>:
cpu_init_start():
1c00005c:	1438002c 	lu12i.w	$r12,114689(0x1c001)
1c000060:	0400302c 	csrwr	$r12,0xc
1c000064:	0015000c 	move	$r12,$r0
1c000068:	0400102c 	csrwr	$r12,0x4
1c00006c:	1400002c 	lu12i.w	$r12,1(0x1)
1c000070:	03bffd8c 	ori	$r12,$r12,0xfff
1c000074:	0400118c 	csrxchg	$r12,$r12,0x4
1c000078:	15ffe3ec 	lu12i.w	$r12,-225(0xfff1f)
1c00007c:	03bffd8c 	ori	$r12,$r12,0xfff
1c000080:	0406442c 	csrwr	$r12,0x191
1c000084:	14eca06c 	lu12i.w	$r12,484611(0x76503)
1c000088:	0388418c 	ori	$r12,$r12,0x210
1c00008c:	0406402c 	csrwr	$r12,0x190
1c000090:	0380200c 	ori	$r12,$r0,0x8
1c000094:	04000180 	csrxchg	$r0,$r12,0x0
1c000098:	15000023 	lu12i.w	$r3,-524287(0x80001)
1c00009c:	03bdf063 	ori	$r3,$r3,0xf7c
1c0000a0:	54132400 	bl	4900(0x1324) # 1c0013c4 <bsp_init>
1c0000a4:	03400000 	andi	$r0,$r0,0x0
1c0000a8:	4c000020 	jirl	$r0,$r1,0

1c0000ac <cpu_wait>:
cpu_wait():
1c0000ac:	06488000 	idle	0x0
1c0000b0:	4c000020 	jirl	$r0,$r1,0
	...

1c000800 <m4_flash_4k>:
m4_flash_4k():
1c000800:	140007ec 	lu12i.w	$r12,63(0x3f)
1c000804:	03be018c 	ori	$r12,$r12,0xf80
1c000808:	157fcc0d 	lu12i.w	$r13,-262560(0xbfe60)
1c00080c:	0014b08c 	and	$r12,$r4,$r12
1c000810:	038061af 	ori	$r15,$r13,0x18
1c000814:	02804010 	addi.w	$r16,$r0,16(0x10)
1c000818:	1540000e 	lu12i.w	$r14,-393216(0xa0000)
1c00081c:	298001f0 	st.w	$r16,$r15,0
1c000820:	0015398e 	or	$r14,$r12,$r14
1c000824:	298001ae 	st.w	$r14,$r13,0
1c000828:	1480000f 	lu12i.w	$r15,262144(0x40000)
1c00082c:	14b54aae 	lu12i.w	$r14,371285(0x5aa55)
1c000830:	0396a9ce 	ori	$r14,$r14,0x5aa
1c000834:	298001af 	st.w	$r15,$r13,0
1c000838:	15c0000f 	lu12i.w	$r15,-131072(0xe0000)
1c00083c:	2980008e 	st.w	$r14,$r4,0
1c000840:	00153d8c 	or	$r12,$r12,$r15
1c000844:	298001ac 	st.w	$r12,$r13,0
1c000848:	4c000020 	jirl	$r0,$r1,0
	...

1c001000 <DEFAULT_INT_HANDLER>:
DEFAULT_INT_HANDLER():
1c001000:	0400c435 	csrwr	$r21,0x31
1c001004:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c001008:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c00100c:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c001010:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c001014:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c001018:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c00101c:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001020:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001024:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c001028:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c00102c:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001030:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c001034:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001038:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c00103c:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001040:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c001044:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001048:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c00104c:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001050:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c001054:	0400140c 	csrrd	$r12,0x5
1c001058:	036ef18d 	andi	$r13,$r12,0xbbc
1c00105c:	400065a0 	beqz	$r13,100(0x64) # 1c0010c0 <exception_core_check>

1c001060 <exception_pmu>:
exception_pmu():
1c001060:	0340118d 	andi	$r13,$r12,0x4
1c001064:	44002da0 	bnez	$r13,44(0x2c) # 1c001090 <wake_label>
1c001068:	0340218d 	andi	$r13,$r12,0x8
1c00106c:	44002da0 	bnez	$r13,44(0x2c) # 1c001098 <touch_label>
1c001070:	0340418d 	andi	$r13,$r12,0x10
1c001074:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a0 <uart2_label>
1c001078:	0340818d 	andi	$r13,$r12,0x20
1c00107c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010a8 <bcc_label>
1c001080:	0342018d 	andi	$r13,$r12,0x80
1c001084:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b0 <exint_label>
1c001088:	0360018d 	andi	$r13,$r12,0x800
1c00108c:	44002da0 	bnez	$r13,44(0x2c) # 1c0010b8 <timer_label>

1c001090 <wake_label>:
wake_label():
1c001090:	5439ac00 	bl	14764(0x39ac) # 1c004a3c <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	5439f400 	bl	14836(0x39f4) # 1c004a8c <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	543a8000 	bl	14976(0x3a80) # 1c004b20 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	543ab400 	bl	15028(0x3ab4) # 1c004b5c <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	5438d400 	bl	14548(0x38d4) # 1c004984 <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	543da800 	bl	15784(0x3da8) # 1c004e60 <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	543b6c00 	bl	15212(0x3b6c) # 1c004c34 <intc_handler>
1c0010cc:	50000400 	b	4(0x4) # 1c0010d0 <exception_exit>

1c0010d0 <exception_exit>:
exception_exit():
1c0010d0:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0010d4:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0010d8:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0010dc:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0010e0:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0010e4:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0010e8:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0010ec:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0010f0:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0010f4:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0010f8:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0010fc:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c001100:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c001104:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c001108:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c00110c:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c001110:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001114:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001118:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c00111c:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c001120:	0400c415 	csrrd	$r21,0x31
1c001124:	06483800 	ertn

1c001128 <serial_out>:
serial_out():
1c001128:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c00112c:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c001130:	03408108 	andi	$r8,$r8,0x20
1c001134:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c001128 <serial_out>
1c001138:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00113c:	29000184 	st.b	$r4,$r12,0
1c001140:	4c000020 	jirl	$r0,$r1,0

1c001144 <outputaddr>:
outputaddr():
1c001144:	02bff063 	addi.w	$r3,$r3,-4(0xffc)
1c001148:	29800061 	st.w	$r1,$r3,0
1c00114c:	1cc80006 	pcaddu12i	$r6,409600(0x64000)
1c001150:	28bae0c6 	ld.w	$r6,$r6,-328(0xeb8)
1c001154:	15e0000d 	lu12i.w	$r13,-65536(0xf0000)
1c001158:	0380200e 	ori	$r14,$r0,0x8
1c00115c:	0380700f 	ori	$r15,$r0,0x1c
1c001160:	03800085 	ori	$r5,$r4,0x0
1c001164:	58002dc0 	beq	$r14,$r0,44(0x2c) # 1c001190 <outputaddr+0x4c>
1c001168:	0014b4ac 	and	$r12,$r5,$r13
1c00116c:	0017bd8c 	srl.w	$r12,$r12,$r15
1c001170:	0010198c 	add.w	$r12,$r12,$r6
1c001174:	2a000190 	ld.bu	$r16,$r12,0
1c001178:	03800204 	ori	$r4,$r16,0x0
1c00117c:	57ffafff 	bl	-84(0xfffffac) # 1c001128 <serial_out>
1c001180:	004491ad 	srli.w	$r13,$r13,0x4
1c001184:	02bff1ef 	addi.w	$r15,$r15,-4(0xffc)
1c001188:	02bffdce 	addi.w	$r14,$r14,-1(0xfff)
1c00118c:	53ffdbff 	b	-40(0xfffffd8) # 1c001164 <outputaddr+0x20>
1c001190:	03802804 	ori	$r4,$r0,0xa
1c001194:	57ff97ff 	bl	-108(0xfffff94) # 1c001128 <serial_out>
1c001198:	28800061 	ld.w	$r1,$r3,0
1c00119c:	02801063 	addi.w	$r3,$r3,4(0x4)
1c0011a0:	4c000020 	jirl	$r0,$r1,0

1c0011a4 <outputstring>:
outputstring():
1c0011a4:	00150089 	move	$r9,$r4
1c0011a8:	2a00012c 	ld.bu	$r12,$r9,0
1c0011ac:	58002580 	beq	$r12,$r0,36(0x24) # 1c0011d0 <outputstring+0x2c>
1c0011b0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011b4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011b8:	03408108 	andi	$r8,$r8,0x20
1c0011bc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011b0 <outputstring+0xc>
1c0011c0:	157fd007 	lu12i.w	$r7,-262528(0xbfe80)
1c0011c4:	290000ec 	st.b	$r12,$r7,0
1c0011c8:	02800529 	addi.w	$r9,$r9,1(0x1)
1c0011cc:	53ffdfff 	b	-36(0xfffffdc) # 1c0011a8 <outputstring+0x4>
1c0011d0:	157fd008 	lu12i.w	$r8,-262528(0xbfe80)
1c0011d4:	2a001508 	ld.bu	$r8,$r8,5(0x5)
1c0011d8:	03410108 	andi	$r8,$r8,0x40
1c0011dc:	43fff51f 	beqz	$r8,-12(0x7ffff4) # 1c0011d0 <outputstring+0x2c>
1c0011e0:	4c000020 	jirl	$r0,$r1,0

1c0011e4 <cpu_sleep>:
cpu_sleep():
1c0011e4:	0400c435 	csrwr	$r21,0x31
1c0011e8:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c0011ec:	29bff2ac 	st.w	$r12,$r21,-4(0xffc)
1c0011f0:	29bfe2ad 	st.w	$r13,$r21,-8(0xff8)
1c0011f4:	29bfd2ae 	st.w	$r14,$r21,-12(0xff4)
1c0011f8:	29bfc2af 	st.w	$r15,$r21,-16(0xff0)
1c0011fc:	29bfb2b0 	st.w	$r16,$r21,-20(0xfec)
1c001200:	29bfa2b1 	st.w	$r17,$r21,-24(0xfe8)
1c001204:	29bf92b2 	st.w	$r18,$r21,-28(0xfe4)
1c001208:	29bf82b3 	st.w	$r19,$r21,-32(0xfe0)
1c00120c:	29bf72b4 	st.w	$r20,$r21,-36(0xfdc)
1c001210:	29bf62b7 	st.w	$r23,$r21,-40(0xfd8)
1c001214:	29bf52b8 	st.w	$r24,$r21,-44(0xfd4)
1c001218:	29bf42b9 	st.w	$r25,$r21,-48(0xfd0)
1c00121c:	29bf32ba 	st.w	$r26,$r21,-52(0xfcc)
1c001220:	29bf22bb 	st.w	$r27,$r21,-56(0xfc8)
1c001224:	29bf12bc 	st.w	$r28,$r21,-60(0xfc4)
1c001228:	29bf02bd 	st.w	$r29,$r21,-64(0xfc0)
1c00122c:	29bef2be 	st.w	$r30,$r21,-68(0xfbc)
1c001230:	29bee2bf 	st.w	$r31,$r21,-72(0xfb8)
1c001234:	29bed2a4 	st.w	$r4,$r21,-76(0xfb4)
1c001238:	29bec2a5 	st.w	$r5,$r21,-80(0xfb0)
1c00123c:	29beb2a6 	st.w	$r6,$r21,-84(0xfac)
1c001240:	29bea2a7 	st.w	$r7,$r21,-88(0xfa8)
1c001244:	29be92a8 	st.w	$r8,$r21,-92(0xfa4)
1c001248:	29be82a9 	st.w	$r9,$r21,-96(0xfa0)
1c00124c:	29be72aa 	st.w	$r10,$r21,-100(0xf9c)
1c001250:	29be62ab 	st.w	$r11,$r21,-104(0xf98)
1c001254:	29be52a1 	st.w	$r1,$r21,-108(0xf94)
1c001258:	29be42a3 	st.w	$r3,$r21,-112(0xf90)
1c00125c:	29be32a2 	st.w	$r2,$r21,-116(0xf8c)
1c001260:	29be22b6 	st.w	$r22,$r21,-120(0xf88)
1c001264:	028002ac 	addi.w	$r12,$r21,0
1c001268:	0400c415 	csrrd	$r21,0x31
1c00126c:	29be1195 	st.w	$r21,$r12,-124(0xf84)
1c001270:	38720000 	dbar	0x0
1c001274:	157fd60d 	lu12i.w	$r13,-262480(0xbfeb0)
1c001278:	2880f1ac 	ld.w	$r12,$r13,60(0x3c)
1c00127c:	0340058c 	andi	$r12,$r12,0x1
1c001280:	43fff99f 	beqz	$r12,-8(0x7ffff8) # 1c001278 <cpu_sleep+0x94>
1c001284:	2980f1ac 	st.w	$r12,$r13,60(0x3c)
1c001288:	06488000 	idle	0x0

1c00128c <wakeup_reset>:
wakeup_reset():
1c00128c:	1cc80004 	pcaddu12i	$r4,409600(0x64000)
1c001290:	28b68084 	ld.w	$r4,$r4,-608(0xda0)
1c001294:	57ff13ff 	bl	-240(0xfffff10) # 1c0011a4 <outputstring>
1c001298:	15000055 	lu12i.w	$r21,-524286(0x80002)
1c00129c:	28bff2ac 	ld.w	$r12,$r21,-4(0xffc)
1c0012a0:	28bfe2ad 	ld.w	$r13,$r21,-8(0xff8)
1c0012a4:	28bfd2ae 	ld.w	$r14,$r21,-12(0xff4)
1c0012a8:	28bfc2af 	ld.w	$r15,$r21,-16(0xff0)
1c0012ac:	28bfb2b0 	ld.w	$r16,$r21,-20(0xfec)
1c0012b0:	28bfa2b1 	ld.w	$r17,$r21,-24(0xfe8)
1c0012b4:	28bf92b2 	ld.w	$r18,$r21,-28(0xfe4)
1c0012b8:	28bf82b3 	ld.w	$r19,$r21,-32(0xfe0)
1c0012bc:	28bf72b4 	ld.w	$r20,$r21,-36(0xfdc)
1c0012c0:	28bf62b7 	ld.w	$r23,$r21,-40(0xfd8)
1c0012c4:	28bf52b8 	ld.w	$r24,$r21,-44(0xfd4)
1c0012c8:	28bf42b9 	ld.w	$r25,$r21,-48(0xfd0)
1c0012cc:	28bf32ba 	ld.w	$r26,$r21,-52(0xfcc)
1c0012d0:	28bf22bb 	ld.w	$r27,$r21,-56(0xfc8)
1c0012d4:	28bf12bc 	ld.w	$r28,$r21,-60(0xfc4)
1c0012d8:	28bf02bd 	ld.w	$r29,$r21,-64(0xfc0)
1c0012dc:	28bef2be 	ld.w	$r30,$r21,-68(0xfbc)
1c0012e0:	28bee2bf 	ld.w	$r31,$r21,-72(0xfb8)
1c0012e4:	28bed2a4 	ld.w	$r4,$r21,-76(0xfb4)
1c0012e8:	28bec2a5 	ld.w	$r5,$r21,-80(0xfb0)
1c0012ec:	28beb2a6 	ld.w	$r6,$r21,-84(0xfac)
1c0012f0:	28bea2a7 	ld.w	$r7,$r21,-88(0xfa8)
1c0012f4:	28be92a8 	ld.w	$r8,$r21,-92(0xfa4)
1c0012f8:	28be82a9 	ld.w	$r9,$r21,-96(0xfa0)
1c0012fc:	28be72aa 	ld.w	$r10,$r21,-100(0xf9c)
1c001300:	28be62ab 	ld.w	$r11,$r21,-104(0xf98)
1c001304:	28be52a1 	ld.w	$r1,$r21,-108(0xf94)
1c001308:	28be42a3 	ld.w	$r3,$r21,-112(0xf90)
1c00130c:	28be32a2 	ld.w	$r2,$r21,-116(0xf8c)
1c001310:	28be22b6 	ld.w	$r22,$r21,-120(0xf88)
1c001314:	28be12b5 	ld.w	$r21,$r21,-124(0xf84)
1c001318:	0400c42c 	csrwr	$r12,0x31
1c00131c:	0380100c 	ori	$r12,$r0,0x4
1c001320:	0400018c 	csrxchg	$r12,$r12,0x0
1c001324:	0400c40c 	csrrd	$r12,0x31
1c001328:	4c000020 	jirl	$r0,$r1,0

1c00132c <GPIOInit>:
GPIOInit():
1c00132c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c001330:	29803061 	st.w	$r1,$r3,12(0xc)
1c001334:	29802076 	st.w	$r22,$r3,8(0x8)
1c001338:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00133c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001340:	140001ec 	lu12i.w	$r12,15(0xf)
1c001344:	03bffd85 	ori	$r5,$r12,0xfff
1c001348:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00134c:	03804184 	ori	$r4,$r12,0x10
1c001350:	54017000 	bl	368(0x170) # 1c0014c0 <AFIO_RemapConfig>
1c001354:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001358:	140001ec 	lu12i.w	$r12,15(0xf)
1c00135c:	03bffd85 	ori	$r5,$r12,0xfff
1c001360:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001364:	03805184 	ori	$r4,$r12,0x14
1c001368:	54015800 	bl	344(0x158) # 1c0014c0 <AFIO_RemapConfig>
1c00136c:	02800406 	addi.w	$r6,$r0,1(0x1)
1c001370:	140001ec 	lu12i.w	$r12,15(0xf)
1c001374:	03bcfd85 	ori	$r5,$r12,0xf3f
1c001378:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00137c:	03806184 	ori	$r4,$r12,0x18
1c001380:	54014000 	bl	320(0x140) # 1c0014c0 <AFIO_RemapConfig>
1c001384:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001388:	02830005 	addi.w	$r5,$r0,192(0xc0)
1c00138c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001390:	03806184 	ori	$r4,$r12,0x18
1c001394:	54012c00 	bl	300(0x12c) # 1c0014c0 <AFIO_RemapConfig>
1c001398:	02800406 	addi.w	$r6,$r0,1(0x1)
1c00139c:	140001ec 	lu12i.w	$r12,15(0xf)
1c0013a0:	03bffd85 	ori	$r5,$r12,0xfff
1c0013a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0013a8:	03807184 	ori	$r4,$r12,0x1c
1c0013ac:	54011400 	bl	276(0x114) # 1c0014c0 <AFIO_RemapConfig>
1c0013b0:	03400000 	andi	$r0,$r0,0x0
1c0013b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0013b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0013bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0013c0:	4c000020 	jirl	$r0,$r1,0

1c0013c4 <bsp_init>:
bsp_init():
1c0013c4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0013c8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0013cc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0013d0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0013d4:	541de800 	bl	7656(0x1de8) # 1c0031bc <DisableInt>
1c0013d8:	541d4c00 	bl	7500(0x1d4c) # 1c003124 <SystemClockInit>
1c0013dc:	57ff53ff 	bl	-176(0xfffff50) # 1c00132c <GPIOInit>
1c0013e0:	5425b000 	bl	9648(0x25b0) # 1c003990 <WdgInit>
1c0013e4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0013e8:	5424f000 	bl	9456(0x24f0) # 1c0038d8 <WDG_SetWatchDog>
1c0013ec:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013f0:	03880184 	ori	$r4,$r12,0x200
1c0013f4:	54177000 	bl	6000(0x1770) # 1c002b64 <Uart1_init>
1c0013f8:	541fb800 	bl	8120(0x1fb8) # 1c0033b0 <ls1x_logo>
1c0013fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001400:	0380118c 	ori	$r12,$r12,0x4
1c001404:	2880018e 	ld.w	$r14,$r12,0
1c001408:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00140c:	0380118c 	ori	$r12,$r12,0x4
1c001410:	1404000d 	lu12i.w	$r13,8192(0x2000)
1c001414:	001535cd 	or	$r13,$r14,$r13
1c001418:	2980018d 	st.w	$r13,$r12,0
1c00141c:	541dc400 	bl	7620(0x1dc4) # 1c0031e0 <EnableInt>
1c001420:	54205800 	bl	8280(0x2058) # 1c003478 <open_count>
1c001424:	02801804 	addi.w	$r4,$r0,6(0x6)
1c001428:	541e2000 	bl	7712(0x1e20) # 1c003248 <Wake_Set>
1c00142c:	54253800 	bl	9528(0x2538) # 1c003964 <WDG_DogFeed>
1c001430:	541ec400 	bl	7876(0x1ec4) # 1c0032f4 <PMU_GetRstRrc>
1c001434:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001438:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00143c:	44003180 	bnez	$r12,48(0x30) # 1c00146c <bsp_init+0xa8>
1c001440:	1c0000e4 	pcaddu12i	$r4,7(0x7)
1c001444:	02a4f084 	addi.w	$r4,$r4,-1732(0x93c)
1c001448:	54074c00 	bl	1868(0x74c) # 1c001b94 <myprintf>
1c00144c:	541f1400 	bl	7956(0x1f14) # 1c003360 <PMU_GetBootSpiStatus>
1c001450:	0015008c 	move	$r12,$r4
1c001454:	40001180 	beqz	$r12,16(0x10) # 1c001464 <bsp_init+0xa0>
1c001458:	1c0000e4 	pcaddu12i	$r4,7(0x7)
1c00145c:	02a4d084 	addi.w	$r4,$r4,-1740(0x934)
1c001460:	54073400 	bl	1844(0x734) # 1c001b94 <myprintf>
1c001464:	5466b400 	bl	26292(0x66b4) # 1c007b18 <main>
1c001468:	50004000 	b	64(0x40) # 1c0014a8 <bsp_init+0xe4>
1c00146c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001470:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001474:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c00148c <bsp_init+0xc8>
1c001478:	1c0000e4 	pcaddu12i	$r4,7(0x7)
1c00147c:	02a48084 	addi.w	$r4,$r4,-1760(0x920)
1c001480:	54071400 	bl	1812(0x714) # 1c001b94 <myprintf>
1c001484:	54669400 	bl	26260(0x6694) # 1c007b18 <main>
1c001488:	50002000 	b	32(0x20) # 1c0014a8 <bsp_init+0xe4>
1c00148c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001490:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c001494:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0014a8 <bsp_init+0xe4>
1c001498:	1c0000e4 	pcaddu12i	$r4,7(0x7)
1c00149c:	02a44084 	addi.w	$r4,$r4,-1776(0x910)
1c0014a0:	5406f400 	bl	1780(0x6f4) # 1c001b94 <myprintf>
1c0014a4:	57fd43ff 	bl	-704(0xffffd40) # 1c0011e4 <cpu_sleep>
1c0014a8:	0015000c 	move	$r12,$r0
1c0014ac:	00150184 	move	$r4,$r12
1c0014b0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0014b4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0014b8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0014bc:	4c000020 	jirl	$r0,$r1,0

1c0014c0 <AFIO_RemapConfig>:
AFIO_RemapConfig():
1c0014c0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0014c4:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0014c8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0014cc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0014d0:	001500ac 	move	$r12,$r5
1c0014d4:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c0014d8:	297f6acc 	st.h	$r12,$r22,-38(0xfda)
1c0014dc:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0014e0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0014e4:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c0014e8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0014ec:	2880018c 	ld.w	$r12,$r12,0
1c0014f0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0014f4:	293faec0 	st.b	$r0,$r22,-21(0xfeb)
1c0014f8:	50006c00 	b	108(0x6c) # 1c001564 <AFIO_RemapConfig+0xa4>
1c0014fc:	2a7f6acd 	ld.hu	$r13,$r22,-38(0xfda)
1c001500:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001504:	001831ac 	sra.w	$r12,$r13,$r12
1c001508:	0340058c 	andi	$r12,$r12,0x1
1c00150c:	40004d80 	beqz	$r12,76(0x4c) # 1c001558 <AFIO_RemapConfig+0x98>
1c001510:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c001514:	0040858c 	slli.w	$r12,$r12,0x1
1c001518:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00151c:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c001520:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001524:	001731ac 	sll.w	$r12,$r13,$r12
1c001528:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c00152c:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001530:	0014300c 	nor	$r12,$r0,$r12
1c001534:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001538:	0014b1ac 	and	$r12,$r13,$r12
1c00153c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001540:	28bf52cd 	ld.w	$r13,$r22,-44(0xfd4)
1c001544:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001548:	001731ac 	sll.w	$r12,$r13,$r12
1c00154c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001550:	001531ac 	or	$r12,$r13,$r12
1c001554:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001558:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c00155c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001560:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c001564:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c001568:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c00156c:	6fff918d 	bgeu	$r12,$r13,-112(0x3ff90) # 1c0014fc <AFIO_RemapConfig+0x3c>
1c001570:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001574:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001578:	2980018d 	st.w	$r13,$r12,0
1c00157c:	03400000 	andi	$r0,$r0,0x0
1c001580:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001584:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001588:	4c000020 	jirl	$r0,$r1,0

1c00158c <gpio_get_pin>:
gpio_get_pin():
1c00158c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001590:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001594:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001598:	0015008c 	move	$r12,$r4
1c00159c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0015a0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0015a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0015a8:	0382018c 	ori	$r12,$r12,0x80
1c0015ac:	001031ac 	add.w	$r12,$r13,$r12
1c0015b0:	29000180 	st.b	$r0,$r12,0
1c0015b4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0015b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0015bc:	0382018c 	ori	$r12,$r12,0x80
1c0015c0:	001031ac 	add.w	$r12,$r13,$r12
1c0015c4:	2a00018c 	ld.bu	$r12,$r12,0
1c0015c8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0015cc:	00150184 	move	$r4,$r12
1c0015d0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0015d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0015d8:	4c000020 	jirl	$r0,$r1,0

1c0015dc <gpio_write_pin>:
gpio_write_pin():
1c0015dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0015e0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0015e4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0015e8:	0015008c 	move	$r12,$r4
1c0015ec:	001500ad 	move	$r13,$r5
1c0015f0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0015f4:	001501ac 	move	$r12,$r13
1c0015f8:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0015fc:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c001600:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001604:	5c0025ac 	bne	$r13,$r12,36(0x24) # 1c001628 <gpio_write_pin+0x4c>
1c001608:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00160c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001610:	0382018c 	ori	$r12,$r12,0x80
1c001614:	001031ac 	add.w	$r12,$r13,$r12
1c001618:	0015018d 	move	$r13,$r12
1c00161c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c001620:	290001ac 	st.b	$r12,$r13,0
1c001624:	50002000 	b	32(0x20) # 1c001644 <gpio_write_pin+0x68>
1c001628:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00162c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001630:	0382018c 	ori	$r12,$r12,0x80
1c001634:	001031ac 	add.w	$r12,$r13,$r12
1c001638:	0015018d 	move	$r13,$r12
1c00163c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c001640:	290001ac 	st.b	$r12,$r13,0
1c001644:	03400000 	andi	$r0,$r0,0x0
1c001648:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00164c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001650:	4c000020 	jirl	$r0,$r1,0

1c001654 <gpio_pin_remap>:
gpio_pin_remap():
1c001654:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001658:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00165c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001660:	0015008c 	move	$r12,$r4
1c001664:	001500ad 	move	$r13,$r5
1c001668:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c00166c:	001501ac 	move	$r12,$r13
1c001670:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c001674:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001678:	0044918c 	srli.w	$r12,$r12,0x4
1c00167c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001680:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001684:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001688:	03403d8c 	andi	$r12,$r12,0xf
1c00168c:	0040858c 	slli.w	$r12,$r12,0x1
1c001690:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001694:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c001698:	0280fc0c 	addi.w	$r12,$r0,63(0x3f)
1c00169c:	6801b58d 	bltu	$r12,$r13,436(0x1b4) # 1c001850 <gpio_pin_remap+0x1fc>
1c0016a0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016a4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0016a8:	580089ac 	beq	$r13,$r12,136(0x88) # 1c001730 <gpio_pin_remap+0xdc>
1c0016ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0016b0:	40002180 	beqz	$r12,32(0x20) # 1c0016d0 <gpio_pin_remap+0x7c>
1c0016b4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016b8:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0016bc:	5800d5ac 	beq	$r13,$r12,212(0xd4) # 1c001790 <gpio_pin_remap+0x13c>
1c0016c0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0016c4:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0016c8:	580129ac 	beq	$r13,$r12,296(0x128) # 1c0017f0 <gpio_pin_remap+0x19c>
1c0016cc:	50018800 	b	392(0x188) # 1c001854 <gpio_pin_remap+0x200>
1c0016d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016d4:	0380418c 	ori	$r12,$r12,0x10
1c0016d8:	2880018d 	ld.w	$r13,$r12,0
1c0016dc:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0016e0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0016e4:	001731cc 	sll.w	$r12,$r14,$r12
1c0016e8:	0014300c 	nor	$r12,$r0,$r12
1c0016ec:	0015018e 	move	$r14,$r12
1c0016f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0016f4:	0380418c 	ori	$r12,$r12,0x10
1c0016f8:	0014b9ad 	and	$r13,$r13,$r14
1c0016fc:	2980018d 	st.w	$r13,$r12,0
1c001700:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001704:	0380418c 	ori	$r12,$r12,0x10
1c001708:	2880018d 	ld.w	$r13,$r12,0
1c00170c:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001710:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001714:	001731cc 	sll.w	$r12,$r14,$r12
1c001718:	0015018e 	move	$r14,$r12
1c00171c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001720:	0380418c 	ori	$r12,$r12,0x10
1c001724:	001539ad 	or	$r13,$r13,$r14
1c001728:	2980018d 	st.w	$r13,$r12,0
1c00172c:	50012800 	b	296(0x128) # 1c001854 <gpio_pin_remap+0x200>
1c001730:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001734:	0380518c 	ori	$r12,$r12,0x14
1c001738:	2880018d 	ld.w	$r13,$r12,0
1c00173c:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c001740:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001744:	001731cc 	sll.w	$r12,$r14,$r12
1c001748:	0014300c 	nor	$r12,$r0,$r12
1c00174c:	0015018e 	move	$r14,$r12
1c001750:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001754:	0380518c 	ori	$r12,$r12,0x14
1c001758:	0014b9ad 	and	$r13,$r13,$r14
1c00175c:	2980018d 	st.w	$r13,$r12,0
1c001760:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001764:	0380518c 	ori	$r12,$r12,0x14
1c001768:	2880018d 	ld.w	$r13,$r12,0
1c00176c:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001770:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001774:	001731cc 	sll.w	$r12,$r14,$r12
1c001778:	0015018e 	move	$r14,$r12
1c00177c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001780:	0380518c 	ori	$r12,$r12,0x14
1c001784:	001539ad 	or	$r13,$r13,$r14
1c001788:	2980018d 	st.w	$r13,$r12,0
1c00178c:	5000c800 	b	200(0xc8) # 1c001854 <gpio_pin_remap+0x200>
1c001790:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001794:	0380618c 	ori	$r12,$r12,0x18
1c001798:	2880018d 	ld.w	$r13,$r12,0
1c00179c:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c0017a0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017a4:	001731cc 	sll.w	$r12,$r14,$r12
1c0017a8:	0014300c 	nor	$r12,$r0,$r12
1c0017ac:	0015018e 	move	$r14,$r12
1c0017b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017b4:	0380618c 	ori	$r12,$r12,0x18
1c0017b8:	0014b9ad 	and	$r13,$r13,$r14
1c0017bc:	2980018d 	st.w	$r13,$r12,0
1c0017c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017c4:	0380618c 	ori	$r12,$r12,0x18
1c0017c8:	2880018d 	ld.w	$r13,$r12,0
1c0017cc:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0017d0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0017d4:	001731cc 	sll.w	$r12,$r14,$r12
1c0017d8:	0015018e 	move	$r14,$r12
1c0017dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017e0:	0380618c 	ori	$r12,$r12,0x18
1c0017e4:	001539ad 	or	$r13,$r13,$r14
1c0017e8:	2980018d 	st.w	$r13,$r12,0
1c0017ec:	50006800 	b	104(0x68) # 1c001854 <gpio_pin_remap+0x200>
1c0017f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0017f4:	0380718c 	ori	$r12,$r12,0x1c
1c0017f8:	2880018d 	ld.w	$r13,$r12,0
1c0017fc:	02800c0e 	addi.w	$r14,$r0,3(0x3)
1c001800:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001804:	001731cc 	sll.w	$r12,$r14,$r12
1c001808:	0014300c 	nor	$r12,$r0,$r12
1c00180c:	0015018e 	move	$r14,$r12
1c001810:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001814:	0380718c 	ori	$r12,$r12,0x1c
1c001818:	0014b9ad 	and	$r13,$r13,$r14
1c00181c:	2980018d 	st.w	$r13,$r12,0
1c001820:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001824:	0380718c 	ori	$r12,$r12,0x1c
1c001828:	2880018d 	ld.w	$r13,$r12,0
1c00182c:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001830:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001834:	001731cc 	sll.w	$r12,$r14,$r12
1c001838:	0015018e 	move	$r14,$r12
1c00183c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001840:	0380718c 	ori	$r12,$r12,0x1c
1c001844:	001539ad 	or	$r13,$r13,$r14
1c001848:	2980018d 	st.w	$r13,$r12,0
1c00184c:	50000800 	b	8(0x8) # 1c001854 <gpio_pin_remap+0x200>
1c001850:	03400000 	andi	$r0,$r0,0x0
1c001854:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001858:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00185c:	4c000020 	jirl	$r0,$r1,0

1c001860 <gpio_set_direction>:
gpio_set_direction():
1c001860:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001864:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001868:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00186c:	0015008c 	move	$r12,$r4
1c001870:	001500ad 	move	$r13,$r5
1c001874:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c001878:	001501ac 	move	$r12,$r13
1c00187c:	293f7acc 	st.b	$r12,$r22,-34(0xfde)
1c001880:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c001884:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001888:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c00188c:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c001890:	6800658d 	bltu	$r12,$r13,100(0x64) # 1c0018f4 <gpio_set_direction+0x94>
1c001894:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001898:	0381018c 	ori	$r12,$r12,0x40
1c00189c:	2880018d 	ld.w	$r13,$r12,0
1c0018a0:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c0018a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0018a8:	001731cc 	sll.w	$r12,$r14,$r12
1c0018ac:	0014300c 	nor	$r12,$r0,$r12
1c0018b0:	0015018e 	move	$r14,$r12
1c0018b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018b8:	0381018c 	ori	$r12,$r12,0x40
1c0018bc:	0014b9ad 	and	$r13,$r13,$r14
1c0018c0:	2980018d 	st.w	$r13,$r12,0
1c0018c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018c8:	0381018c 	ori	$r12,$r12,0x40
1c0018cc:	2880018d 	ld.w	$r13,$r12,0
1c0018d0:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c0018d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0018d8:	001731cc 	sll.w	$r12,$r14,$r12
1c0018dc:	0015018e 	move	$r14,$r12
1c0018e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0018e4:	0381018c 	ori	$r12,$r12,0x40
1c0018e8:	001539ad 	or	$r13,$r13,$r14
1c0018ec:	2980018d 	st.w	$r13,$r12,0
1c0018f0:	50008c00 	b	140(0x8c) # 1c00197c <gpio_set_direction+0x11c>
1c0018f4:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c0018f8:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c0018fc:	6c007d8d 	bgeu	$r12,$r13,124(0x7c) # 1c001978 <gpio_set_direction+0x118>
1c001900:	2a3f7ecd 	ld.bu	$r13,$r22,-33(0xfdf)
1c001904:	0281000c 	addi.w	$r12,$r0,64(0x40)
1c001908:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c001978 <gpio_set_direction+0x118>
1c00190c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001910:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c001914:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001918:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00191c:	0381418c 	ori	$r12,$r12,0x50
1c001920:	2880018d 	ld.w	$r13,$r12,0
1c001924:	0280040e 	addi.w	$r14,$r0,1(0x1)
1c001928:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00192c:	001731cc 	sll.w	$r12,$r14,$r12
1c001930:	0014300c 	nor	$r12,$r0,$r12
1c001934:	0015018e 	move	$r14,$r12
1c001938:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00193c:	0381418c 	ori	$r12,$r12,0x50
1c001940:	0014b9ad 	and	$r13,$r13,$r14
1c001944:	2980018d 	st.w	$r13,$r12,0
1c001948:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00194c:	0381418c 	ori	$r12,$r12,0x50
1c001950:	2880018d 	ld.w	$r13,$r12,0
1c001954:	2a3f7ace 	ld.bu	$r14,$r22,-34(0xfde)
1c001958:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00195c:	001731cc 	sll.w	$r12,$r14,$r12
1c001960:	0015018e 	move	$r14,$r12
1c001964:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001968:	0381418c 	ori	$r12,$r12,0x50
1c00196c:	001539ad 	or	$r13,$r13,$r14
1c001970:	2980018d 	st.w	$r13,$r12,0
1c001974:	50000800 	b	8(0x8) # 1c00197c <gpio_set_direction+0x11c>
1c001978:	03400000 	andi	$r0,$r0,0x0
1c00197c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c001980:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001984:	4c000020 	jirl	$r0,$r1,0

1c001988 <myputchar>:
myputchar():
1c001988:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00198c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c001990:	29806076 	st.w	$r22,$r3,24(0x18)
1c001994:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001998:	0015008c 	move	$r12,$r4
1c00199c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0019a0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0019a4:	00150185 	move	$r5,$r12
1c0019a8:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c0019ac:	540fe400 	bl	4068(0xfe4) # 1c002990 <UART_SendData>
1c0019b0:	03400000 	andi	$r0,$r0,0x0
1c0019b4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0019b8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0019bc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0019c0:	4c000020 	jirl	$r0,$r1,0

1c0019c4 <printbase>:
printbase():
1c0019c4:	02be4063 	addi.w	$r3,$r3,-112(0xf90)
1c0019c8:	2981b061 	st.w	$r1,$r3,108(0x6c)
1c0019cc:	2981a076 	st.w	$r22,$r3,104(0x68)
1c0019d0:	0281c076 	addi.w	$r22,$r3,112(0x70)
1c0019d4:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c0019d8:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c0019dc:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c0019e0:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c0019e4:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c0019e8:	40002580 	beqz	$r12,36(0x24) # 1c001a0c <printbase+0x48>
1c0019ec:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c0019f0:	64001d80 	bge	$r12,$r0,28(0x1c) # 1c001a0c <printbase+0x48>
1c0019f4:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c0019f8:	0011300c 	sub.w	$r12,$r0,$r12
1c0019fc:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a00:	0280b404 	addi.w	$r4,$r0,45(0x2d)
1c001a04:	57ff87ff 	bl	-124(0xfffff84) # 1c001988 <myputchar>
1c001a08:	50000c00 	b	12(0xc) # 1c001a14 <printbase+0x50>
1c001a0c:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c001a10:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a14:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001a18:	50005000 	b	80(0x50) # 1c001a68 <printbase+0xa4>
1c001a1c:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c001a20:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001a24:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c001a28:	5c000980 	bne	$r12,$r0,8(0x8) # 1c001a30 <printbase+0x6c>
1c001a2c:	002a0007 	break	0x7
1c001a30:	00005dcc 	ext.w.b	$r12,$r14
1c001a34:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001a38:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c001a3c:	001035cd 	add.w	$r13,$r14,$r13
1c001a40:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c001a44:	28be52cd 	ld.w	$r13,$r22,-108(0xf94)
1c001a48:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c001a4c:	002135cc 	div.wu	$r12,$r14,$r13
1c001a50:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c001a58 <printbase+0x94>
1c001a54:	002a0007 	break	0x7
1c001a58:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001a5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a60:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001a64:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001a68:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c001a6c:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c001a1c <printbase+0x58>
1c001a70:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c001a74:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001a78:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c001a7c:	001231ad 	slt	$r13,$r13,$r12
1c001a80:	0013b5ce 	masknez	$r14,$r14,$r13
1c001a84:	0013358c 	maskeqz	$r12,$r12,$r13
1c001a88:	001531cc 	or	$r12,$r14,$r12
1c001a8c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001a90:	50007400 	b	116(0x74) # 1c001b04 <printbase+0x140>
1c001a94:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c001a98:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001a9c:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c001ab8 <printbase+0xf4>
1c001aa0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001aa4:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001aa8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c001aac:	001031ac 	add.w	$r12,$r13,$r12
1c001ab0:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c001ab4:	50000800 	b	8(0x8) # 1c001abc <printbase+0xf8>
1c001ab8:	0015000c 	move	$r12,$r0
1c001abc:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c001ac0:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c001ac4:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c001ac8:	6000198d 	blt	$r12,$r13,24(0x18) # 1c001ae0 <printbase+0x11c>
1c001acc:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001ad0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001ad4:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c001ad8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001adc:	50001400 	b	20(0x14) # 1c001af0 <printbase+0x12c>
1c001ae0:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c001ae4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001ae8:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c001aec:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001af0:	00150184 	move	$r4,$r12
1c001af4:	57fe97ff 	bl	-364(0xffffe94) # 1c001988 <myputchar>
1c001af8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001afc:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c001b00:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001b04:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001b08:	63ff8c0c 	blt	$r0,$r12,-116(0x3ff8c) # 1c001a94 <printbase+0xd0>
1c001b0c:	0015000c 	move	$r12,$r0
1c001b10:	00150184 	move	$r4,$r12
1c001b14:	2881b061 	ld.w	$r1,$r3,108(0x6c)
1c001b18:	2881a076 	ld.w	$r22,$r3,104(0x68)
1c001b1c:	0281c063 	addi.w	$r3,$r3,112(0x70)
1c001b20:	4c000020 	jirl	$r0,$r1,0

1c001b24 <puts>:
puts():
1c001b24:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001b28:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001b2c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001b30:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001b34:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001b38:	50003000 	b	48(0x30) # 1c001b68 <puts+0x44>
1c001b3c:	283fbecd 	ld.b	$r13,$r22,-17(0xfef)
1c001b40:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001b44:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001b50 <puts+0x2c>
1c001b48:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001b4c:	57fe3fff 	bl	-452(0xffffe3c) # 1c001988 <myputchar>
1c001b50:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001b54:	00150184 	move	$r4,$r12
1c001b58:	57fe33ff 	bl	-464(0xffffe30) # 1c001988 <myputchar>
1c001b5c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001b60:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001b64:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001b68:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001b6c:	2a00018c 	ld.bu	$r12,$r12,0
1c001b70:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001b74:	283fbecc 	ld.b	$r12,$r22,-17(0xfef)
1c001b78:	47ffc59f 	bnez	$r12,-60(0x7fffc4) # 1c001b3c <puts+0x18>
1c001b7c:	0015000c 	move	$r12,$r0
1c001b80:	00150184 	move	$r4,$r12
1c001b84:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001b88:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001b8c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001b90:	4c000020 	jirl	$r0,$r1,0

1c001b94 <myprintf>:
myprintf():
1c001b94:	02be8063 	addi.w	$r3,$r3,-96(0xfa0)
1c001b98:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c001b9c:	2980e076 	st.w	$r22,$r3,56(0x38)
1c001ba0:	02810076 	addi.w	$r22,$r3,64(0x40)
1c001ba4:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c001ba8:	298012c5 	st.w	$r5,$r22,4(0x4)
1c001bac:	298022c6 	st.w	$r6,$r22,8(0x8)
1c001bb0:	298032c7 	st.w	$r7,$r22,12(0xc)
1c001bb4:	298042c8 	st.w	$r8,$r22,16(0x10)
1c001bb8:	298052c9 	st.w	$r9,$r22,20(0x14)
1c001bbc:	298062ca 	st.w	$r10,$r22,24(0x18)
1c001bc0:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c001bc4:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c001bc8:	02bf918c 	addi.w	$r12,$r12,-28(0xfe4)
1c001bcc:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c001bd0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001bd4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001bd8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c001bdc:	50033000 	b	816(0x330) # 1c001f0c <myprintf+0x378>
1c001be0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001be4:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001be8:	001031ac 	add.w	$r12,$r13,$r12
1c001bec:	2a00018c 	ld.bu	$r12,$r12,0
1c001bf0:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c001bf4:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001bf8:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c001bfc:	5c02e5ac 	bne	$r13,$r12,740(0x2e4) # 1c001ee0 <myprintf+0x34c>
1c001c00:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001c04:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001c08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c0c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c10:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001c14:	001031ac 	add.w	$r12,$r13,$r12
1c001c18:	2800018c 	ld.b	$r12,$r12,0
1c001c1c:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c001c20:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c001c24:	6802adac 	bltu	$r13,$r12,684(0x2ac) # 1c001ed0 <myprintf+0x33c>
1c001c28:	0040898d 	slli.w	$r13,$r12,0x2
1c001c2c:	1c0000cc 	pcaddu12i	$r12,6(0x6)
1c001c30:	0286218c 	addi.w	$r12,$r12,392(0x188)
1c001c34:	001031ac 	add.w	$r12,$r13,$r12
1c001c38:	2880018c 	ld.w	$r12,$r12,0
1c001c3c:	4c000180 	jirl	$r0,$r12,0
1c001c40:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c44:	2880018c 	ld.w	$r12,$r12,0
1c001c48:	00150184 	move	$r4,$r12
1c001c4c:	57fedbff 	bl	-296(0xffffed8) # 1c001b24 <puts>
1c001c50:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c54:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001c58:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001c5c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c60:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c64:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001c68:	50029800 	b	664(0x298) # 1c001f00 <myprintf+0x36c>
1c001c6c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c70:	2880018c 	ld.w	$r12,$r12,0
1c001c74:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001c78:	00150184 	move	$r4,$r12
1c001c7c:	57fd0fff 	bl	-756(0xffffd0c) # 1c001988 <myputchar>
1c001c80:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001c84:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001c88:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001c8c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001c90:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001c94:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001c98:	50026800 	b	616(0x268) # 1c001f00 <myprintf+0x36c>
1c001c9c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001ca0:	2880018c 	ld.w	$r12,$r12,0
1c001ca4:	00150007 	move	$r7,$r0
1c001ca8:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001cac:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001cb0:	00150184 	move	$r4,$r12
1c001cb4:	57fd13ff 	bl	-752(0xffffd10) # 1c0019c4 <printbase>
1c001cb8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001cbc:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001cc0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001cc4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001cc8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001ccc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001cd0:	50023000 	b	560(0x230) # 1c001f00 <myprintf+0x36c>
1c001cd4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001cd8:	2880018c 	ld.w	$r12,$r12,0
1c001cdc:	02800407 	addi.w	$r7,$r0,1(0x1)
1c001ce0:	02802806 	addi.w	$r6,$r0,10(0xa)
1c001ce4:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001ce8:	00150184 	move	$r4,$r12
1c001cec:	57fcdbff 	bl	-808(0xffffcd8) # 1c0019c4 <printbase>
1c001cf0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001cf4:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001cf8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001cfc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d00:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d04:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d08:	5001f800 	b	504(0x1f8) # 1c001f00 <myprintf+0x36c>
1c001d0c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d10:	2880018c 	ld.w	$r12,$r12,0
1c001d14:	00150007 	move	$r7,$r0
1c001d18:	02802006 	addi.w	$r6,$r0,8(0x8)
1c001d1c:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d20:	00150184 	move	$r4,$r12
1c001d24:	57fca3ff 	bl	-864(0xffffca0) # 1c0019c4 <printbase>
1c001d28:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d2c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d30:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d38:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d3c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d40:	5001c000 	b	448(0x1c0) # 1c001f00 <myprintf+0x36c>
1c001d44:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d48:	2880018c 	ld.w	$r12,$r12,0
1c001d4c:	00150007 	move	$r7,$r0
1c001d50:	02800806 	addi.w	$r6,$r0,2(0x2)
1c001d54:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d58:	00150184 	move	$r4,$r12
1c001d5c:	57fc6bff 	bl	-920(0xffffc68) # 1c0019c4 <printbase>
1c001d60:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d64:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001d68:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001d6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001d70:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001d74:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001d78:	50018800 	b	392(0x188) # 1c001f00 <myprintf+0x36c>
1c001d7c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d80:	2880018c 	ld.w	$r12,$r12,0
1c001d84:	00150007 	move	$r7,$r0
1c001d88:	02804006 	addi.w	$r6,$r0,16(0x10)
1c001d8c:	28bf92c5 	ld.w	$r5,$r22,-28(0xfe4)
1c001d90:	00150184 	move	$r4,$r12
1c001d94:	57fc33ff 	bl	-976(0xffffc30) # 1c0019c4 <printbase>
1c001d98:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c001d9c:	0280118c 	addi.w	$r12,$r12,4(0x4)
1c001da0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c001da4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001da8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001dac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001db0:	50015000 	b	336(0x150) # 1c001f00 <myprintf+0x36c>
1c001db4:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001db8:	57fbd3ff 	bl	-1072(0xffffbd0) # 1c001988 <myputchar>
1c001dbc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001dc0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001dc4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001dc8:	50013800 	b	312(0x138) # 1c001f00 <myprintf+0x36c>
1c001dcc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001dd0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001dd4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001dd8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001ddc:	50003c00 	b	60(0x3c) # 1c001e18 <myprintf+0x284>
1c001de0:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001de4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001de8:	001c31ad 	mul.w	$r13,$r13,$r12
1c001dec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001df0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001df4:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001df8:	001031cc 	add.w	$r12,$r14,$r12
1c001dfc:	2800018c 	ld.b	$r12,$r12,0
1c001e00:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001e04:	001031ac 	add.w	$r12,$r13,$r12
1c001e08:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001e0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e10:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e14:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e1c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e20:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001e24:	001031ac 	add.w	$r12,$r13,$r12
1c001e28:	2800018d 	ld.b	$r13,$r12,0
1c001e2c:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001e30:	67fdd98d 	bge	$r12,$r13,-552(0x3fdd8) # 1c001c08 <myprintf+0x74>
1c001e34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e38:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e3c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001e40:	001031ac 	add.w	$r12,$r13,$r12
1c001e44:	2800018d 	ld.b	$r13,$r12,0
1c001e48:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001e4c:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001de0 <myprintf+0x24c>
1c001e50:	53fdbbff 	b	-584(0xffffdb8) # 1c001c08 <myprintf+0x74>
1c001e54:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001e58:	50003c00 	b	60(0x3c) # 1c001e94 <myprintf+0x300>
1c001e5c:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c001e60:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001e64:	001c31ad 	mul.w	$r13,$r13,$r12
1c001e68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e6c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e70:	28bf32ce 	ld.w	$r14,$r22,-52(0xfcc)
1c001e74:	001031cc 	add.w	$r12,$r14,$r12
1c001e78:	2800018c 	ld.b	$r12,$r12,0
1c001e7c:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c001e80:	001031ac 	add.w	$r12,$r13,$r12
1c001e84:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c001e88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e8c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e90:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001e94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001e98:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001e9c:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001ea0:	001031ac 	add.w	$r12,$r13,$r12
1c001ea4:	2800018d 	ld.b	$r13,$r12,0
1c001ea8:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c001eac:	67fd5d8d 	bge	$r12,$r13,-676(0x3fd5c) # 1c001c08 <myprintf+0x74>
1c001eb0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001eb4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001eb8:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001ebc:	001031ac 	add.w	$r12,$r13,$r12
1c001ec0:	2800018d 	ld.b	$r13,$r12,0
1c001ec4:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c001ec8:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c001e5c <myprintf+0x2c8>
1c001ecc:	53fd3fff 	b	-708(0xffffd3c) # 1c001c08 <myprintf+0x74>
1c001ed0:	02809404 	addi.w	$r4,$r0,37(0x25)
1c001ed4:	57fab7ff 	bl	-1356(0xffffab4) # 1c001988 <myputchar>
1c001ed8:	03400000 	andi	$r0,$r0,0x0
1c001edc:	50002400 	b	36(0x24) # 1c001f00 <myprintf+0x36c>
1c001ee0:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c001ee4:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c001ee8:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c001ef4 <myprintf+0x360>
1c001eec:	02803404 	addi.w	$r4,$r0,13(0xd)
1c001ef0:	57fa9bff 	bl	-1384(0xffffa98) # 1c001988 <myputchar>
1c001ef4:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c001ef8:	00150184 	move	$r4,$r12
1c001efc:	57fa8fff 	bl	-1396(0xffffa8c) # 1c001988 <myputchar>
1c001f00:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f04:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001f08:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f0c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f10:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c001f14:	001031ac 	add.w	$r12,$r13,$r12
1c001f18:	2800018c 	ld.b	$r12,$r12,0
1c001f1c:	47fcc59f 	bnez	$r12,-828(0x7ffcc4) # 1c001be0 <myprintf+0x4c>
1c001f20:	0015000c 	move	$r12,$r0
1c001f24:	00150184 	move	$r4,$r12
1c001f28:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c001f2c:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c001f30:	02818063 	addi.w	$r3,$r3,96(0x60)
1c001f34:	4c000020 	jirl	$r0,$r1,0

1c001f38 <vsputs>:
vsputs():
1c001f38:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001f3c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c001f40:	2980a076 	st.w	$r22,$r3,40(0x28)
1c001f44:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001f48:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001f4c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001f50:	28bf62c4 	ld.w	$r4,$r22,-40(0xfd8)
1c001f54:	54187400 	bl	6260(0x1874) # 1c0037c8 <strlen>
1c001f58:	0015008c 	move	$r12,$r4
1c001f5c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001f60:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c001f64:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c001f68:	54180400 	bl	6148(0x1804) # 1c00376c <strcpy>
1c001f6c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001f70:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001f74:	001031ac 	add.w	$r12,$r13,$r12
1c001f78:	00150184 	move	$r4,$r12
1c001f7c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c001f80:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c001f84:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c001f88:	4c000020 	jirl	$r0,$r1,0

1c001f8c <vsputchar>:
vsputchar():
1c001f8c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c001f90:	29807076 	st.w	$r22,$r3,28(0x1c)
1c001f94:	02808076 	addi.w	$r22,$r3,32(0x20)
1c001f98:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001f9c:	001500ac 	move	$r12,$r5
1c001fa0:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c001fa4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fa8:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c001fac:	2900018d 	st.b	$r13,$r12,0
1c001fb0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fb4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c001fb8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c001fbc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c001fc0:	00150184 	move	$r4,$r12
1c001fc4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c001fc8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c001fcc:	4c000020 	jirl	$r0,$r1,0

1c001fd0 <vsprintbase>:
vsprintbase():
1c001fd0:	02be0063 	addi.w	$r3,$r3,-128(0xf80)
1c001fd4:	2981f061 	st.w	$r1,$r3,124(0x7c)
1c001fd8:	2981e076 	st.w	$r22,$r3,120(0x78)
1c001fdc:	02820076 	addi.w	$r22,$r3,128(0x80)
1c001fe0:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c001fe4:	29be62c5 	st.w	$r5,$r22,-104(0xf98)
1c001fe8:	29be52c6 	st.w	$r6,$r22,-108(0xf94)
1c001fec:	29be42c7 	st.w	$r7,$r22,-112(0xf90)
1c001ff0:	29be32c8 	st.w	$r8,$r22,-116(0xf8c)
1c001ff4:	28be32cc 	ld.w	$r12,$r22,-116(0xf8c)
1c001ff8:	40002d80 	beqz	$r12,44(0x2c) # 1c002024 <vsprintbase+0x54>
1c001ffc:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c002000:	64002580 	bge	$r12,$r0,36(0x24) # 1c002024 <vsprintbase+0x54>
1c002004:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c002008:	0011300c 	sub.w	$r12,$r0,$r12
1c00200c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002010:	0280b405 	addi.w	$r5,$r0,45(0x2d)
1c002014:	28be72c4 	ld.w	$r4,$r22,-100(0xf9c)
1c002018:	57ff77ff 	bl	-140(0xfffff74) # 1c001f8c <vsputchar>
1c00201c:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c002020:	50000c00 	b	12(0xc) # 1c00202c <vsprintbase+0x5c>
1c002024:	28be62cc 	ld.w	$r12,$r22,-104(0xf98)
1c002028:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00202c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002030:	50005000 	b	80(0x50) # 1c002080 <vsprintbase+0xb0>
1c002034:	28be42cc 	ld.w	$r12,$r22,-112(0xf90)
1c002038:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c00203c:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c002040:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002048 <vsprintbase+0x78>
1c002044:	002a0007 	break	0x7
1c002048:	00005dcc 	ext.w.b	$r12,$r14
1c00204c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002050:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c002054:	001035cd 	add.w	$r13,$r14,$r13
1c002058:	293ec1ac 	st.b	$r12,$r13,-80(0xfb0)
1c00205c:	28be42cd 	ld.w	$r13,$r22,-112(0xf90)
1c002060:	28bf92ce 	ld.w	$r14,$r22,-28(0xfe4)
1c002064:	002135cc 	div.wu	$r12,$r14,$r13
1c002068:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002070 <vsprintbase+0xa0>
1c00206c:	002a0007 	break	0x7
1c002070:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002074:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002078:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00207c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002080:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002084:	47ffb19f 	bnez	$r12,-80(0x7fffb0) # 1c002034 <vsprintbase+0x64>
1c002088:	28be52cc 	ld.w	$r12,$r22,-108(0xf94)
1c00208c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002090:	28bfb2ce 	ld.w	$r14,$r22,-20(0xfec)
1c002094:	001231ad 	slt	$r13,$r13,$r12
1c002098:	0013b5ce 	masknez	$r14,$r14,$r13
1c00209c:	0013358c 	maskeqz	$r12,$r12,$r13
1c0020a0:	001531cc 	or	$r12,$r14,$r12
1c0020a4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0020a8:	50008400 	b	132(0x84) # 1c00212c <vsprintbase+0x15c>
1c0020ac:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0020b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0020b4:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c0020d0 <vsprintbase+0x100>
1c0020b8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0020bc:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0020c0:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0020c4:	001031ac 	add.w	$r12,$r13,$r12
1c0020c8:	283ec18c 	ld.b	$r12,$r12,-80(0xfb0)
1c0020cc:	50000800 	b	8(0x8) # 1c0020d4 <vsprintbase+0x104>
1c0020d0:	0015000c 	move	$r12,$r0
1c0020d4:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0020d8:	28bf82cd 	ld.w	$r13,$r22,-32(0xfe0)
1c0020dc:	0280240c 	addi.w	$r12,$r0,9(0x9)
1c0020e0:	60001d8d 	blt	$r12,$r13,28(0x1c) # 1c0020fc <vsprintbase+0x12c>
1c0020e4:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c0020e8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0020ec:	0280c18c 	addi.w	$r12,$r12,48(0x30)
1c0020f0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0020f4:	00005d8c 	ext.w.b	$r12,$r12
1c0020f8:	50001800 	b	24(0x18) # 1c002110 <vsprintbase+0x140>
1c0020fc:	28bf82cc 	ld.w	$r12,$r22,-32(0xfe0)
1c002100:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002104:	02815d8c 	addi.w	$r12,$r12,87(0x57)
1c002108:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00210c:	00005d8c 	ext.w.b	$r12,$r12
1c002110:	00150185 	move	$r5,$r12
1c002114:	28be72c4 	ld.w	$r4,$r22,-100(0xf9c)
1c002118:	57fe77ff 	bl	-396(0xffffe74) # 1c001f8c <vsputchar>
1c00211c:	29be72c4 	st.w	$r4,$r22,-100(0xf9c)
1c002120:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002124:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002128:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00212c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002130:	63ff7c0c 	blt	$r0,$r12,-132(0x3ff7c) # 1c0020ac <vsprintbase+0xdc>
1c002134:	28be72cc 	ld.w	$r12,$r22,-100(0xf9c)
1c002138:	00150184 	move	$r4,$r12
1c00213c:	2881f061 	ld.w	$r1,$r3,124(0x7c)
1c002140:	2881e076 	ld.w	$r22,$r3,120(0x78)
1c002144:	02820063 	addi.w	$r3,$r3,128(0x80)
1c002148:	4c000020 	jirl	$r0,$r1,0

1c00214c <vsprintf>:
vsprintf():
1c00214c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002150:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002154:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002158:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00215c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002160:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c002164:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c002168:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00216c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002170:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002174:	50036c00 	b	876(0x36c) # 1c0024e0 <vsprintf+0x394>
1c002178:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00217c:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c002180:	001031ac 	add.w	$r12,$r13,$r12
1c002184:	2a00018c 	ld.bu	$r12,$r12,0
1c002188:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c00218c:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c002190:	0280940c 	addi.w	$r12,$r0,37(0x25)
1c002194:	5c0311ac 	bne	$r13,$r12,784(0x310) # 1c0024a4 <vsprintf+0x358>
1c002198:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00219c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0021a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0021a4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0021a8:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0021ac:	001031ac 	add.w	$r12,$r13,$r12
1c0021b0:	2800018c 	ld.b	$r12,$r12,0
1c0021b4:	02bf6d8c 	addi.w	$r12,$r12,-37(0xfdb)
1c0021b8:	02814c0d 	addi.w	$r13,$r0,83(0x53)
1c0021bc:	6802d1ac 	bltu	$r13,$r12,720(0x2d0) # 1c00248c <vsprintf+0x340>
1c0021c0:	0040898d 	slli.w	$r13,$r12,0x2
1c0021c4:	1c0000cc 	pcaddu12i	$r12,6(0x6)
1c0021c8:	02b5018c 	addi.w	$r12,$r12,-704(0xd40)
1c0021cc:	001031ac 	add.w	$r12,$r13,$r12
1c0021d0:	2880018c 	ld.w	$r12,$r12,0
1c0021d4:	4c000180 	jirl	$r0,$r12,0
1c0021d8:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0021dc:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c0021e0:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0021e4:	2880018c 	ld.w	$r12,$r12,0
1c0021e8:	00150185 	move	$r5,$r12
1c0021ec:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0021f0:	57fd4bff 	bl	-696(0xffffd48) # 1c001f38 <vsputs>
1c0021f4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0021f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0021fc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002200:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002204:	5002d000 	b	720(0x2d0) # 1c0024d4 <vsprintf+0x388>
1c002208:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c00220c:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002210:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002214:	2880018c 	ld.w	$r12,$r12,0
1c002218:	00005d8c 	ext.w.b	$r12,$r12
1c00221c:	00150185 	move	$r5,$r12
1c002220:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002224:	57fd6bff 	bl	-664(0xffffd68) # 1c001f8c <vsputchar>
1c002228:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00222c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002230:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002234:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002238:	50029c00 	b	668(0x29c) # 1c0024d4 <vsprintf+0x388>
1c00223c:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002240:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002244:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002248:	2880018c 	ld.w	$r12,$r12,0
1c00224c:	00150008 	move	$r8,$r0
1c002250:	02802807 	addi.w	$r7,$r0,10(0xa)
1c002254:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c002258:	00150185 	move	$r5,$r12
1c00225c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002260:	57fd73ff 	bl	-656(0xffffd70) # 1c001fd0 <vsprintbase>
1c002264:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002268:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00226c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002270:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002274:	50026000 	b	608(0x260) # 1c0024d4 <vsprintf+0x388>
1c002278:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c00227c:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002280:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002284:	2880018c 	ld.w	$r12,$r12,0
1c002288:	02800408 	addi.w	$r8,$r0,1(0x1)
1c00228c:	02802807 	addi.w	$r7,$r0,10(0xa)
1c002290:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c002294:	00150185 	move	$r5,$r12
1c002298:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00229c:	57fd37ff 	bl	-716(0xffffd34) # 1c001fd0 <vsprintbase>
1c0022a0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0022a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022a8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022ac:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022b0:	50022400 	b	548(0x224) # 1c0024d4 <vsprintf+0x388>
1c0022b4:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0022b8:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c0022bc:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0022c0:	2880018c 	ld.w	$r12,$r12,0
1c0022c4:	00150008 	move	$r8,$r0
1c0022c8:	02802007 	addi.w	$r7,$r0,8(0x8)
1c0022cc:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c0022d0:	00150185 	move	$r5,$r12
1c0022d4:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0022d8:	57fcfbff 	bl	-776(0xffffcf8) # 1c001fd0 <vsprintbase>
1c0022dc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0022e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022e4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0022e8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0022ec:	5001e800 	b	488(0x1e8) # 1c0024d4 <vsprintf+0x388>
1c0022f0:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c0022f4:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c0022f8:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c0022fc:	2880018c 	ld.w	$r12,$r12,0
1c002300:	00150008 	move	$r8,$r0
1c002304:	02800807 	addi.w	$r7,$r0,2(0x2)
1c002308:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c00230c:	00150185 	move	$r5,$r12
1c002310:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002314:	57fcbfff 	bl	-836(0xffffcbc) # 1c001fd0 <vsprintbase>
1c002318:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00231c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002320:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002324:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002328:	5001ac00 	b	428(0x1ac) # 1c0024d4 <vsprintf+0x388>
1c00232c:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002330:	0280118d 	addi.w	$r13,$r12,4(0x4)
1c002334:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002338:	2880018c 	ld.w	$r12,$r12,0
1c00233c:	00150008 	move	$r8,$r0
1c002340:	02804007 	addi.w	$r7,$r0,16(0x10)
1c002344:	28bfa2c6 	ld.w	$r6,$r22,-24(0xfe8)
1c002348:	00150185 	move	$r5,$r12
1c00234c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002350:	57fc83ff 	bl	-896(0xffffc80) # 1c001fd0 <vsprintbase>
1c002354:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002358:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00235c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002360:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002364:	50017000 	b	368(0x170) # 1c0024d4 <vsprintf+0x388>
1c002368:	02809405 	addi.w	$r5,$r0,37(0x25)
1c00236c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002370:	57fc1fff 	bl	-996(0xffffc1c) # 1c001f8c <vsputchar>
1c002374:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002378:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00237c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002380:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002384:	50015000 	b	336(0x150) # 1c0024d4 <vsprintf+0x388>
1c002388:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00238c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002390:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002394:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002398:	50003c00 	b	60(0x3c) # 1c0023d4 <vsprintf+0x288>
1c00239c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0023a0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0023a4:	001c31ad 	mul.w	$r13,$r13,$r12
1c0023a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023b0:	28bf62ce 	ld.w	$r14,$r22,-40(0xfd8)
1c0023b4:	001031cc 	add.w	$r12,$r14,$r12
1c0023b8:	2800018c 	ld.b	$r12,$r12,0
1c0023bc:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c0023c0:	001031ac 	add.w	$r12,$r13,$r12
1c0023c4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0023c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023cc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023d0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0023d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023dc:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0023e0:	001031ac 	add.w	$r12,$r13,$r12
1c0023e4:	2800018d 	ld.b	$r13,$r12,0
1c0023e8:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c0023ec:	67fdb58d 	bge	$r12,$r13,-588(0x3fdb4) # 1c0021a0 <vsprintf+0x54>
1c0023f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0023f4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0023f8:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0023fc:	001031ac 	add.w	$r12,$r13,$r12
1c002400:	2800018d 	ld.b	$r13,$r12,0
1c002404:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c002408:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c00239c <vsprintf+0x250>
1c00240c:	53fd97ff 	b	-620(0xffffd94) # 1c0021a0 <vsprintf+0x54>
1c002410:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002414:	50003c00 	b	60(0x3c) # 1c002450 <vsprintf+0x304>
1c002418:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c00241c:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c002420:	001c31ad 	mul.w	$r13,$r13,$r12
1c002424:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002428:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00242c:	28bf62ce 	ld.w	$r14,$r22,-40(0xfd8)
1c002430:	001031cc 	add.w	$r12,$r14,$r12
1c002434:	2800018c 	ld.b	$r12,$r12,0
1c002438:	02bf418c 	addi.w	$r12,$r12,-48(0xfd0)
1c00243c:	001031ac 	add.w	$r12,$r13,$r12
1c002440:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002444:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002448:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00244c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002450:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002454:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002458:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c00245c:	001031ac 	add.w	$r12,$r13,$r12
1c002460:	2800018d 	ld.b	$r13,$r12,0
1c002464:	0280c00c 	addi.w	$r12,$r0,48(0x30)
1c002468:	67fd398d 	bge	$r12,$r13,-712(0x3fd38) # 1c0021a0 <vsprintf+0x54>
1c00246c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002470:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002474:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c002478:	001031ac 	add.w	$r12,$r13,$r12
1c00247c:	2800018d 	ld.b	$r13,$r12,0
1c002480:	0280e40c 	addi.w	$r12,$r0,57(0x39)
1c002484:	67ff958d 	bge	$r12,$r13,-108(0x3ff94) # 1c002418 <vsprintf+0x2cc>
1c002488:	53fd1bff 	b	-744(0xffffd18) # 1c0021a0 <vsprintf+0x54>
1c00248c:	02809405 	addi.w	$r5,$r0,37(0x25)
1c002490:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002494:	57fafbff 	bl	-1288(0xffffaf8) # 1c001f8c <vsputchar>
1c002498:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00249c:	03400000 	andi	$r0,$r0,0x0
1c0024a0:	50003400 	b	52(0x34) # 1c0024d4 <vsprintf+0x388>
1c0024a4:	283f8ecd 	ld.b	$r13,$r22,-29(0xfe3)
1c0024a8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0024ac:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0024c0 <vsprintf+0x374>
1c0024b0:	02803405 	addi.w	$r5,$r0,13(0xd)
1c0024b4:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0024b8:	57fad7ff 	bl	-1324(0xffffad4) # 1c001f8c <vsputchar>
1c0024bc:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0024c0:	283f8ecc 	ld.b	$r12,$r22,-29(0xfe3)
1c0024c4:	00150185 	move	$r5,$r12
1c0024c8:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0024cc:	57fac3ff 	bl	-1344(0xffffac0) # 1c001f8c <vsputchar>
1c0024d0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0024d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0024d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0024dc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0024e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0024e4:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c0024e8:	001031ac 	add.w	$r12,$r13,$r12
1c0024ec:	2800018c 	ld.b	$r12,$r12,0
1c0024f0:	47fc899f 	bnez	$r12,-888(0x7ffc88) # 1c002178 <vsprintf+0x2c>
1c0024f4:	00150005 	move	$r5,$r0
1c0024f8:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c0024fc:	57fa93ff 	bl	-1392(0xffffa90) # 1c001f8c <vsputchar>
1c002500:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002504:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002508:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00250c:	001131ac 	sub.w	$r12,$r13,$r12
1c002510:	00150184 	move	$r4,$r12
1c002514:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002518:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00251c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002520:	4c000020 	jirl	$r0,$r1,0

1c002524 <sprintf>:
sprintf():
1c002524:	02bec063 	addi.w	$r3,$r3,-80(0xfb0)
1c002528:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00252c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002530:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002534:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002538:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00253c:	298022c6 	st.w	$r6,$r22,8(0x8)
1c002540:	298032c7 	st.w	$r7,$r22,12(0xc)
1c002544:	298042c8 	st.w	$r8,$r22,16(0x10)
1c002548:	298052c9 	st.w	$r9,$r22,20(0x14)
1c00254c:	298062ca 	st.w	$r10,$r22,24(0x18)
1c002550:	298072cb 	st.w	$r11,$r22,28(0x1c)
1c002554:	028082cc 	addi.w	$r12,$r22,32(0x20)
1c002558:	02bfa18c 	addi.w	$r12,$r12,-24(0xfe8)
1c00255c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002560:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002564:	00150186 	move	$r6,$r12
1c002568:	28bf62c5 	ld.w	$r5,$r22,-40(0xfd8)
1c00256c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c002570:	57fbdfff 	bl	-1060(0xffffbdc) # 1c00214c <vsprintf>
1c002574:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002578:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00257c:	00150184 	move	$r4,$r12
1c002580:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002584:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002588:	02814063 	addi.w	$r3,$r3,80(0x50)
1c00258c:	4c000020 	jirl	$r0,$r1,0

1c002590 <UART_Init>:
UART_Init():
1c002590:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002594:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002598:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00259c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0025a0:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0025a4:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c0025a8:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0025ac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0025b0:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c0025b4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0025b8:	03403d8c 	andi	$r12,$r12,0xf
1c0025bc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0025c0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0025c4:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c0025c8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0025cc:	0044918c 	srli.w	$r12,$r12,0x4
1c0025d0:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c0025d4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0025d8:	40000d80 	beqz	$r12,12(0xc) # 1c0025e4 <UART_Init+0x54>
1c0025dc:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c0025e0:	44001980 	bnez	$r12,24(0x18) # 1c0025f8 <UART_Init+0x68>
1c0025e4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0025e8:	0280e00d 	addi.w	$r13,$r0,56(0x38)
1c0025ec:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0025f0:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c0025f4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0025f8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0025fc:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c002600:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c002618 <UART_Init+0x88>
1c002604:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002608:	02808c0d 	addi.w	$r13,$r0,35(0x23)
1c00260c:	2900118d 	st.b	$r13,$r12,4(0x4)
1c002610:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002614:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002618:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00261c:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c002620:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002624:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002628:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c00262c:	580011ac 	beq	$r13,$r12,16(0x10) # 1c00263c <UART_Init+0xac>
1c002630:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002634:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c002638:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c002698 <UART_Init+0x108>
1c00263c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002640:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002644:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002648:	2880018c 	ld.w	$r12,$r12,0
1c00264c:	002131ae 	div.wu	$r14,$r13,$r12
1c002650:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002658 <UART_Init+0xc8>
1c002654:	002a0007 	break	0x7
1c002658:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00265c:	002135cc 	div.wu	$r12,$r14,$r13
1c002660:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002668 <UART_Init+0xd8>
1c002664:	002a0007 	break	0x7
1c002668:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00266c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002670:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002674:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002678:	2880018e 	ld.w	$r14,$r12,0
1c00267c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002680:	001c31ce 	mul.w	$r14,$r14,$r12
1c002684:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002688:	001c31cc 	mul.w	$r12,$r14,$r12
1c00268c:	001131ac 	sub.w	$r12,$r13,$r12
1c002690:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002694:	50005400 	b	84(0x54) # 1c0026e8 <UART_Init+0x158>
1c002698:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00269c:	2880018c 	ld.w	$r12,$r12,0
1c0026a0:	1400010d 	lu12i.w	$r13,8(0x8)
1c0026a4:	002131ae 	div.wu	$r14,$r13,$r12
1c0026a8:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0026b0 <UART_Init+0x120>
1c0026ac:	002a0007 	break	0x7
1c0026b0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0026b4:	002135cc 	div.wu	$r12,$r14,$r13
1c0026b8:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0026c0 <UART_Init+0x130>
1c0026bc:	002a0007 	break	0x7
1c0026c0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0026c4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026c8:	2880018d 	ld.w	$r13,$r12,0
1c0026cc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0026d0:	001c31ad 	mul.w	$r13,$r13,$r12
1c0026d4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0026d8:	001c31ac 	mul.w	$r12,$r13,$r12
1c0026dc:	1400010d 	lu12i.w	$r13,8(0x8)
1c0026e0:	001131ac 	sub.w	$r12,$r13,$r12
1c0026e4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0026e8:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c0026ec:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c0026f0:	001c31ad 	mul.w	$r13,$r13,$r12
1c0026f4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0026f8:	2880018c 	ld.w	$r12,$r12,0
1c0026fc:	002131ae 	div.wu	$r14,$r13,$r12
1c002700:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002708 <UART_Init+0x178>
1c002704:	002a0007 	break	0x7
1c002708:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00270c:	002135cc 	div.wu	$r12,$r14,$r13
1c002710:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002718 <UART_Init+0x188>
1c002714:	002a0007 	break	0x7
1c002718:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00271c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002720:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002724:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002728:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c00272c:	001531ac 	or	$r12,$r13,$r12
1c002730:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002734:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002738:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c00273c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002740:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002744:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002748:	2900018d 	st.b	$r13,$r12,0
1c00274c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002750:	0044a18c 	srli.w	$r12,$r12,0x8
1c002754:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002758:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00275c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002760:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002764:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002768:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00276c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002770:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002774:	2900098d 	st.b	$r13,$r12,2(0x2)
1c002778:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00277c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002780:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002784:	0341fd8c 	andi	$r12,$r12,0x7f
1c002788:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00278c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002790:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002794:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002798:	29000580 	st.b	$r0,$r12,1(0x1)
1c00279c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027a0:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0027a4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027a8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0027ac:	2a00298c 	ld.bu	$r12,$r12,10(0xa)
1c0027b0:	001531ac 	or	$r12,$r13,$r12
1c0027b4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027b8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027bc:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0027c0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027c4:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0027c8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027cc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0027d0:	2a00358c 	ld.bu	$r12,$r12,13(0xd)
1c0027d4:	001531ac 	or	$r12,$r13,$r12
1c0027d8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027dc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027e0:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0027e4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0027e8:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0027ec:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0027f0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0027f4:	2a00398c 	ld.bu	$r12,$r12,14(0xe)
1c0027f8:	001531ac 	or	$r12,$r13,$r12
1c0027fc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002800:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002804:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002808:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00280c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002810:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002814:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002818:	2a002d8c 	ld.bu	$r12,$r12,11(0xb)
1c00281c:	001531ac 	or	$r12,$r13,$r12
1c002820:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002824:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002828:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c00282c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002830:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002834:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002838:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00283c:	2a003d8c 	ld.bu	$r12,$r12,15(0xf)
1c002840:	001531ac 	or	$r12,$r13,$r12
1c002844:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002848:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00284c:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002850:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002854:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002858:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00285c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002860:	2a00318c 	ld.bu	$r12,$r12,12(0xc)
1c002864:	001531ac 	or	$r12,$r13,$r12
1c002868:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00286c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002870:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002874:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002878:	2a00018c 	ld.bu	$r12,$r12,0
1c00287c:	03400000 	andi	$r0,$r0,0x0
1c002880:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002884:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002888:	4c000020 	jirl	$r0,$r1,0

1c00288c <UART_StructInit>:
UART_StructInit():
1c00288c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002890:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002894:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002898:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00289c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028a0:	1400038d 	lu12i.w	$r13,28(0x1c)
1c0028a4:	038801ad 	ori	$r13,$r13,0x200
1c0028a8:	2980018d 	st.w	$r13,$r12,0
1c0028ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028b0:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c0028b4:	038801ad 	ori	$r13,$r13,0x200
1c0028b8:	2980118d 	st.w	$r13,$r12,4(0x4)
1c0028bc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028c0:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c0028c4:	2900298d 	st.b	$r13,$r12,10(0xa)
1c0028c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028cc:	29002d80 	st.b	$r0,$r12,11(0xb)
1c0028d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028d4:	29003580 	st.b	$r0,$r12,13(0xd)
1c0028d8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028dc:	29003180 	st.b	$r0,$r12,12(0xc)
1c0028e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028e4:	29003d80 	st.b	$r0,$r12,15(0xf)
1c0028e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028ec:	29003980 	st.b	$r0,$r12,14(0xe)
1c0028f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028f4:	29402180 	st.h	$r0,$r12,8(0x8)
1c0028f8:	03400000 	andi	$r0,$r0,0x0
1c0028fc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002900:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002904:	4c000020 	jirl	$r0,$r1,0

1c002908 <UART_ITConfig>:
UART_ITConfig():
1c002908:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00290c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002910:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002914:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002918:	001500ac 	move	$r12,$r5
1c00291c:	29bf92c6 	st.w	$r6,$r22,-28(0xfe4)
1c002920:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c002924:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002928:	40002980 	beqz	$r12,40(0x28) # 1c002950 <UART_ITConfig+0x48>
1c00292c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002930:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002934:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002938:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c00293c:	001531ac 	or	$r12,$r13,$r12
1c002940:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002944:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002948:	2900058d 	st.b	$r13,$r12,1(0x1)
1c00294c:	50003400 	b	52(0x34) # 1c002980 <UART_ITConfig+0x78>
1c002950:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002954:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002958:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00295c:	00005d8d 	ext.w.b	$r13,$r12
1c002960:	283faecc 	ld.b	$r12,$r22,-21(0xfeb)
1c002964:	0014300c 	nor	$r12,$r0,$r12
1c002968:	00005d8c 	ext.w.b	$r12,$r12
1c00296c:	0014b1ac 	and	$r12,$r13,$r12
1c002970:	00005d8c 	ext.w.b	$r12,$r12
1c002974:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002978:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00297c:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002980:	03400000 	andi	$r0,$r0,0x0
1c002984:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002988:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00298c:	4c000020 	jirl	$r0,$r1,0

1c002990 <UART_SendData>:
UART_SendData():
1c002990:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002994:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002998:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00299c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0029a0:	001500ac 	move	$r12,$r5
1c0029a4:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0029a8:	03400000 	andi	$r0,$r0,0x0
1c0029ac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0029b0:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0029b4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0029b8:	0340818c 	andi	$r12,$r12,0x20
1c0029bc:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c0029ac <UART_SendData+0x1c>
1c0029c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0029c4:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c0029c8:	2900018d 	st.b	$r13,$r12,0
1c0029cc:	03400000 	andi	$r0,$r0,0x0
1c0029d0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0029d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0029d8:	4c000020 	jirl	$r0,$r1,0

1c0029dc <UART_SendDataALL>:
UART_SendDataALL():
1c0029dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0029e0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0029e4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0029e8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0029ec:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c0029f0:	001500cc 	move	$r12,$r6
1c0029f4:	297f9acc 	st.h	$r12,$r22,-26(0xfe6)
1c0029f8:	50004400 	b	68(0x44) # 1c002a3c <UART_SendDataALL+0x60>
1c0029fc:	03400000 	andi	$r0,$r0,0x0
1c002a00:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002a04:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002a08:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002a0c:	0340818c 	andi	$r12,$r12,0x20
1c002a10:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002a00 <UART_SendDataALL+0x24>
1c002a14:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002a18:	2a00018d 	ld.bu	$r13,$r12,0
1c002a1c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002a20:	2900018d 	st.b	$r13,$r12,0
1c002a24:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002a28:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c002a2c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002a30:	2a7f9acc 	ld.hu	$r12,$r22,-26(0xfe6)
1c002a34:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c002a38:	297f9acc 	st.h	$r12,$r22,-26(0xfe6)
1c002a3c:	2a7f9acc 	ld.hu	$r12,$r22,-26(0xfe6)
1c002a40:	47ffbd9f 	bnez	$r12,-68(0x7fffbc) # 1c0029fc <UART_SendDataALL+0x20>
1c002a44:	03400000 	andi	$r0,$r0,0x0
1c002a48:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002a4c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002a50:	4c000020 	jirl	$r0,$r1,0

1c002a54 <UART_ReceiveData>:
UART_ReceiveData():
1c002a54:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002a58:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002a5c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002a60:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002a64:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c002a68:	03400000 	andi	$r0,$r0,0x0
1c002a6c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a70:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c002a74:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002a78:	0340058c 	andi	$r12,$r12,0x1
1c002a7c:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002a6c <UART_ReceiveData+0x18>
1c002a80:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002a84:	2a00018c 	ld.bu	$r12,$r12,0
1c002a88:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c002a8c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002a90:	00150184 	move	$r4,$r12
1c002a94:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002a98:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002a9c:	4c000020 	jirl	$r0,$r1,0

1c002aa0 <Uart0_init>:
Uart0_init():
1c002aa0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002aa4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002aa8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002aac:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002ab0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002ab4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002ab8:	02801804 	addi.w	$r4,$r0,6(0x6)
1c002abc:	57eb9bff 	bl	-5224(0xfffeb98) # 1c001654 <gpio_pin_remap>
1c002ac0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002ac4:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c002ac8:	57eb8fff 	bl	-5236(0xfffeb8c) # 1c001654 <gpio_pin_remap>
1c002acc:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002ad0:	00150184 	move	$r4,$r12
1c002ad4:	57fdbbff 	bl	-584(0xffffdb8) # 1c00288c <UART_StructInit>
1c002ad8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002adc:	2894d18c 	ld.w	$r12,$r12,1332(0x534)
1c002ae0:	2880018c 	ld.w	$r12,$r12,0
1c002ae4:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002ae8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002aec:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002af0:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002af4:	00150185 	move	$r5,$r12
1c002af8:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002afc:	57fa97ff 	bl	-1388(0xffffa94) # 1c002590 <UART_Init>
1c002b00:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002b04:	0380098c 	ori	$r12,$r12,0x2
1c002b08:	2a00018c 	ld.bu	$r12,$r12,0
1c002b0c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002b10:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002b14:	0380098c 	ori	$r12,$r12,0x2
1c002b18:	038021ad 	ori	$r13,$r13,0x8
1c002b1c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002b20:	2900018d 	st.b	$r13,$r12,0
1c002b24:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002b28:	2a00018c 	ld.bu	$r12,$r12,0
1c002b2c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002b30:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002b34:	038021ad 	ori	$r13,$r13,0x8
1c002b38:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002b3c:	2900018d 	st.b	$r13,$r12,0
1c002b40:	02800406 	addi.w	$r6,$r0,1(0x1)
1c002b44:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002b48:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c002b4c:	57fdbfff 	bl	-580(0xffffdbc) # 1c002908 <UART_ITConfig>
1c002b50:	03400000 	andi	$r0,$r0,0x0
1c002b54:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002b58:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002b5c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002b60:	4c000020 	jirl	$r0,$r1,0

1c002b64 <Uart1_init>:
Uart1_init():
1c002b64:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002b68:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002b6c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002b70:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002b74:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002b78:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002b7c:	02802004 	addi.w	$r4,$r0,8(0x8)
1c002b80:	57ead7ff 	bl	-5420(0xfffead4) # 1c001654 <gpio_pin_remap>
1c002b84:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002b88:	02802404 	addi.w	$r4,$r0,9(0x9)
1c002b8c:	57eacbff 	bl	-5432(0xfffeac8) # 1c001654 <gpio_pin_remap>
1c002b90:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002b94:	00150184 	move	$r4,$r12
1c002b98:	57fcf7ff 	bl	-780(0xffffcf4) # 1c00288c <UART_StructInit>
1c002b9c:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002ba0:	2891c18c 	ld.w	$r12,$r12,1136(0x470)
1c002ba4:	2880018c 	ld.w	$r12,$r12,0
1c002ba8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002bac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002bb0:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002bb4:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002bb8:	00150185 	move	$r5,$r12
1c002bbc:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002bc0:	57f9d3ff 	bl	-1584(0xffff9d0) # 1c002590 <UART_Init>
1c002bc4:	00150006 	move	$r6,$r0
1c002bc8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002bcc:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002bd0:	57fd3bff 	bl	-712(0xffffd38) # 1c002908 <UART_ITConfig>
1c002bd4:	03400000 	andi	$r0,$r0,0x0
1c002bd8:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002bdc:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002be0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002be4:	4c000020 	jirl	$r0,$r1,0

1c002be8 <CLOCK_WaitForHSEStartUp>:
CLOCK_WaitForHSEStartUp():
1c002be8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002bec:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002bf0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002bf4:	1400006c 	lu12i.w	$r12,3(0x3)
1c002bf8:	03ba018c 	ori	$r12,$r12,0xe80
1c002bfc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002c00:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002c04:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c08:	2880018d 	ld.w	$r13,$r12,0
1c002c0c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c10:	038101ad 	ori	$r13,$r13,0x40
1c002c14:	2980018d 	st.w	$r13,$r12,0
1c002c18:	03400000 	andi	$r0,$r0,0x0
1c002c1c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c20:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002c24:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002c28:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c002c1c <CLOCK_WaitForHSEStartUp+0x34>
1c002c2c:	50001c00 	b	28(0x1c) # 1c002c48 <CLOCK_WaitForHSEStartUp+0x60>
1c002c30:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c34:	2880018e 	ld.w	$r14,$r12,0
1c002c38:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c3c:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002c40:	0014b5cd 	and	$r13,$r14,$r13
1c002c44:	2980018d 	st.w	$r13,$r12,0
1c002c48:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c4c:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002c50:	63ffe180 	blt	$r12,$r0,-32(0x3ffe0) # 1c002c30 <CLOCK_WaitForHSEStartUp+0x48>
1c002c54:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c58:	2880018d 	ld.w	$r13,$r12,0
1c002c5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c60:	038201ad 	ori	$r13,$r13,0x80
1c002c64:	2980018d 	st.w	$r13,$r12,0
1c002c68:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002c6c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002c70:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002c74:	00150184 	move	$r4,$r12
1c002c78:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002c7c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002c80:	4c000020 	jirl	$r0,$r1,0

1c002c84 <CLOCK_WaitForLSEStartUp>:
CLOCK_WaitForLSEStartUp():
1c002c84:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002c88:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002c8c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002c90:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002c94:	50008800 	b	136(0x88) # 1c002d1c <CLOCK_WaitForLSEStartUp+0x98>
1c002c98:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c9c:	2880018e 	ld.w	$r14,$r12,0
1c002ca0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ca4:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002ca8:	0014b5cd 	and	$r13,$r14,$r13
1c002cac:	2980018d 	st.w	$r13,$r12,0
1c002cb0:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002cb4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002cb8:	50001400 	b	20(0x14) # 1c002ccc <CLOCK_WaitForLSEStartUp+0x48>
1c002cbc:	03400000 	andi	$r0,$r0,0x0
1c002cc0:	03400000 	andi	$r0,$r0,0x0
1c002cc4:	03400000 	andi	$r0,$r0,0x0
1c002cc8:	03400000 	andi	$r0,$r0,0x0
1c002ccc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002cd0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002cd4:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002cd8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002cbc <CLOCK_WaitForLSEStartUp+0x38>
1c002cdc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ce0:	2880018d 	ld.w	$r13,$r12,0
1c002ce4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ce8:	038081ad 	ori	$r13,$r13,0x20
1c002cec:	2980018d 	st.w	$r13,$r12,0
1c002cf0:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002cf4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002cf8:	50001400 	b	20(0x14) # 1c002d0c <CLOCK_WaitForLSEStartUp+0x88>
1c002cfc:	03400000 	andi	$r0,$r0,0x0
1c002d00:	03400000 	andi	$r0,$r0,0x0
1c002d04:	03400000 	andi	$r0,$r0,0x0
1c002d08:	03400000 	andi	$r0,$r0,0x0
1c002d0c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002d10:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002d14:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002d18:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002cfc <CLOCK_WaitForLSEStartUp+0x78>
1c002d1c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d20:	0380118c 	ori	$r12,$r12,0x4
1c002d24:	2880018d 	ld.w	$r13,$r12,0
1c002d28:	1420000c 	lu12i.w	$r12,65536(0x10000)
1c002d2c:	0014b1ac 	and	$r12,$r13,$r12
1c002d30:	43ff699f 	beqz	$r12,-152(0x7fff68) # 1c002c98 <CLOCK_WaitForLSEStartUp+0x14>
1c002d34:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d38:	0380118c 	ori	$r12,$r12,0x4
1c002d3c:	2880018d 	ld.w	$r13,$r12,0
1c002d40:	1440000c 	lu12i.w	$r12,131072(0x20000)
1c002d44:	0014b1ac 	and	$r12,$r13,$r12
1c002d48:	47ff519f 	bnez	$r12,-176(0x7fff50) # 1c002c98 <CLOCK_WaitForLSEStartUp+0x14>
1c002d4c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002d50:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002d54:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002d58:	00150184 	move	$r4,$r12
1c002d5c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002d60:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002d64:	4c000020 	jirl	$r0,$r1,0

1c002d68 <CLOCK_HSEConfig>:
CLOCK_HSEConfig():
1c002d68:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002d6c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002d70:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002d74:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002d78:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002d7c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002d80:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d84:	2880018e 	ld.w	$r14,$r12,0
1c002d88:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002d8c:	0014300d 	nor	$r13,$r0,$r12
1c002d90:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002d94:	0014b5cd 	and	$r13,$r14,$r13
1c002d98:	2980018d 	st.w	$r13,$r12,0
1c002d9c:	1400002c 	lu12i.w	$r12,1(0x1)
1c002da0:	03b4bd8c 	ori	$r12,$r12,0xd2f
1c002da4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002da8:	50001400 	b	20(0x14) # 1c002dbc <CLOCK_HSEConfig+0x54>
1c002dac:	03400000 	andi	$r0,$r0,0x0
1c002db0:	03400000 	andi	$r0,$r0,0x0
1c002db4:	03400000 	andi	$r0,$r0,0x0
1c002db8:	03400000 	andi	$r0,$r0,0x0
1c002dbc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002dc0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002dc4:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002dc8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c002dac <CLOCK_HSEConfig+0x44>
1c002dcc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002dd0:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002dd4:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002de4 <CLOCK_HSEConfig+0x7c>
1c002dd8:	57fe13ff 	bl	-496(0xffffe10) # 1c002be8 <CLOCK_WaitForHSEStartUp>
1c002ddc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002de0:	50002400 	b	36(0x24) # 1c002e04 <CLOCK_HSEConfig+0x9c>
1c002de4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002de8:	2880018e 	ld.w	$r14,$r12,0
1c002dec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002df0:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002df4:	0014b5cd 	and	$r13,$r14,$r13
1c002df8:	2980018d 	st.w	$r13,$r12,0
1c002dfc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002e00:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002e04:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e08:	00150184 	move	$r4,$r12
1c002e0c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002e10:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002e14:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002e18:	4c000020 	jirl	$r0,$r1,0

1c002e1c <CLOCK_LSEConfig>:
CLOCK_LSEConfig():
1c002e1c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002e20:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002e24:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002e28:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002e2c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002e30:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002e34:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002e38:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c002e3c:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002e4c <CLOCK_LSEConfig+0x30>
1c002e40:	57fe47ff 	bl	-444(0xffffe44) # 1c002c84 <CLOCK_WaitForLSEStartUp>
1c002e44:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002e48:	50002400 	b	36(0x24) # 1c002e6c <CLOCK_LSEConfig+0x50>
1c002e4c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e50:	2880018e 	ld.w	$r14,$r12,0
1c002e54:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002e58:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c002e5c:	0014b5cd 	and	$r13,$r14,$r13
1c002e60:	2980018d 	st.w	$r13,$r12,0
1c002e64:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002e68:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002e6c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e70:	00150184 	move	$r4,$r12
1c002e74:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002e78:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002e7c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002e80:	4c000020 	jirl	$r0,$r1,0

1c002e84 <CLOCK_StructInit>:
CLOCK_StructInit():
1c002e84:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002e88:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002e8c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002e90:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002e94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002e98:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c002e9c:	2980018d 	st.w	$r13,$r12,0
1c002ea0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ea4:	0282000d 	addi.w	$r13,$r0,128(0x80)
1c002ea8:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002eac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002eb0:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c002eb4:	2980218d 	st.w	$r13,$r12,8(0x8)
1c002eb8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ebc:	29803180 	st.w	$r0,$r12,12(0xc)
1c002ec0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ec4:	29804180 	st.w	$r0,$r12,16(0x10)
1c002ec8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ecc:	29805180 	st.w	$r0,$r12,20(0x14)
1c002ed0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002ed4:	29806180 	st.w	$r0,$r12,24(0x18)
1c002ed8:	03400000 	andi	$r0,$r0,0x0
1c002edc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002ee0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002ee4:	4c000020 	jirl	$r0,$r1,0

1c002ee8 <CLOCK_Init>:
CLOCK_Init():
1c002ee8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002eec:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002ef0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002ef4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002ef8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002efc:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002f00:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f04:	2880018e 	ld.w	$r14,$r12,0
1c002f08:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f0c:	02b3fc0d 	addi.w	$r13,$r0,-769(0xcff)
1c002f10:	0014b5cd 	and	$r13,$r14,$r13
1c002f14:	2980018d 	st.w	$r13,$r12,0
1c002f18:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f1c:	2880018e 	ld.w	$r14,$r12,0
1c002f20:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f24:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c002f28:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f2c:	001535cd 	or	$r13,$r14,$r13
1c002f30:	2980018d 	st.w	$r13,$r12,0
1c002f34:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f38:	2880018e 	ld.w	$r14,$r12,0
1c002f3c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f40:	02bfbc0d 	addi.w	$r13,$r0,-17(0xfef)
1c002f44:	0014b5cd 	and	$r13,$r14,$r13
1c002f48:	2980018d 	st.w	$r13,$r12,0
1c002f4c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f50:	2880018e 	ld.w	$r14,$r12,0
1c002f54:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f58:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c002f5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f60:	001535cd 	or	$r13,$r14,$r13
1c002f64:	2980018d 	st.w	$r13,$r12,0
1c002f68:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f6c:	2880018e 	ld.w	$r14,$r12,0
1c002f70:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f74:	15ffffed 	lu12i.w	$r13,-1(0xfffff)
1c002f78:	039ffdad 	ori	$r13,$r13,0x7ff
1c002f7c:	0014b5cd 	and	$r13,$r14,$r13
1c002f80:	2980018d 	st.w	$r13,$r12,0
1c002f84:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f88:	2880018e 	ld.w	$r14,$r12,0
1c002f8c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f90:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c002f94:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002f98:	001535cd 	or	$r13,$r14,$r13
1c002f9c:	2980018d 	st.w	$r13,$r12,0
1c002fa0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002fa4:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002fa8:	00150184 	move	$r4,$r12
1c002fac:	57fdbfff 	bl	-580(0xffffdbc) # 1c002d68 <CLOCK_HSEConfig>
1c002fb0:	0015008d 	move	$r13,$r4
1c002fb4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002fb8:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002fc4 <CLOCK_Init+0xdc>
1c002fbc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002fc0:	50015000 	b	336(0x150) # 1c003110 <CLOCK_Init+0x228>
1c002fc4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002fc8:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c002fcc:	00150184 	move	$r4,$r12
1c002fd0:	57fe4fff 	bl	-436(0xffffe4c) # 1c002e1c <CLOCK_LSEConfig>
1c002fd4:	0015008d 	move	$r13,$r4
1c002fd8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002fdc:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002fe8 <CLOCK_Init+0x100>
1c002fe0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002fe4:	50012c00 	b	300(0x12c) # 1c003110 <CLOCK_Init+0x228>
1c002fe8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002fec:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002ff0:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002ff4:	5800fdac 	beq	$r13,$r12,252(0xfc) # 1c0030f0 <CLOCK_Init+0x208>
1c002ff8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ffc:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c003000:	4000a180 	beqz	$r12,160(0xa0) # 1c0030a0 <CLOCK_Init+0x1b8>
1c003004:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003008:	2880018e 	ld.w	$r14,$r12,0
1c00300c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003010:	15efffed 	lu12i.w	$r13,-32769(0xf7fff)
1c003014:	03bffdad 	ori	$r13,$r13,0xfff
1c003018:	0014b5cd 	and	$r13,$r14,$r13
1c00301c:	2980018d 	st.w	$r13,$r12,0
1c003020:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003024:	2880018e 	ld.w	$r14,$r12,0
1c003028:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00302c:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c003030:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003034:	001535cd 	or	$r13,$r14,$r13
1c003038:	2980018d 	st.w	$r13,$r12,0
1c00303c:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c003040:	0386c18c 	ori	$r12,$r12,0x1b0
1c003044:	2880018c 	ld.w	$r12,$r12,0
1c003048:	40004180 	beqz	$r12,64(0x40) # 1c003088 <CLOCK_Init+0x1a0>
1c00304c:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c003050:	0386c18c 	ori	$r12,$r12,0x1b0
1c003054:	2880018c 	ld.w	$r12,$r12,0
1c003058:	0040898e 	slli.w	$r14,$r12,0x2
1c00305c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c003060:	002031cd 	div.w	$r13,$r14,$r12
1c003064:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00306c <CLOCK_Init+0x184>
1c003068:	002a0007 	break	0x7
1c00306c:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c003070:	001c31ac 	mul.w	$r12,$r13,$r12
1c003074:	0015018d 	move	$r13,$r12
1c003078:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c00307c:	02bef18c 	addi.w	$r12,$r12,-68(0xfbc)
1c003080:	2980018d 	st.w	$r13,$r12,0
1c003084:	50008000 	b	128(0x80) # 1c003104 <CLOCK_Init+0x21c>
1c003088:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c00308c:	02beb18c 	addi.w	$r12,$r12,-84(0xfac)
1c003090:	1401458d 	lu12i.w	$r13,2604(0xa2c)
1c003094:	038fe1ad 	ori	$r13,$r13,0x3f8
1c003098:	2980018d 	st.w	$r13,$r12,0
1c00309c:	50006800 	b	104(0x68) # 1c003104 <CLOCK_Init+0x21c>
1c0030a0:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c0030a4:	0386c18c 	ori	$r12,$r12,0x1b0
1c0030a8:	2880018c 	ld.w	$r12,$r12,0
1c0030ac:	40002d80 	beqz	$r12,44(0x2c) # 1c0030d8 <CLOCK_Init+0x1f0>
1c0030b0:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c0030b4:	0386c18c 	ori	$r12,$r12,0x1b0
1c0030b8:	2880018d 	ld.w	$r13,$r12,0
1c0030bc:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c0030c0:	001c31ac 	mul.w	$r12,$r13,$r12
1c0030c4:	0015018d 	move	$r13,$r12
1c0030c8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0030cc:	02bdb18c 	addi.w	$r12,$r12,-148(0xf6c)
1c0030d0:	2980018d 	st.w	$r13,$r12,0
1c0030d4:	50003000 	b	48(0x30) # 1c003104 <CLOCK_Init+0x21c>
1c0030d8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0030dc:	02bd718c 	addi.w	$r12,$r12,-164(0xf5c)
1c0030e0:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c0030e4:	038801ad 	ori	$r13,$r13,0x200
1c0030e8:	2980018d 	st.w	$r13,$r12,0
1c0030ec:	50001800 	b	24(0x18) # 1c003104 <CLOCK_Init+0x21c>
1c0030f0:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0030f4:	02bd118c 	addi.w	$r12,$r12,-188(0xf44)
1c0030f8:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c0030fc:	038801ad 	ori	$r13,$r13,0x200
1c003100:	2980018d 	st.w	$r13,$r12,0
1c003104:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003108:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00310c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003110:	00150184 	move	$r4,$r12
1c003114:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003118:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00311c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003120:	4c000020 	jirl	$r0,$r1,0

1c003124 <SystemClockInit>:
SystemClockInit():
1c003124:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003128:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00312c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003130:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003134:	29bf52c0 	st.w	$r0,$r22,-44(0xfd4)
1c003138:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c00313c:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c003140:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c003144:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c003148:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c00314c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003150:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c003154:	00150184 	move	$r4,$r12
1c003158:	57fd2fff 	bl	-724(0xffffd2c) # 1c002e84 <CLOCK_StructInit>
1c00315c:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c003160:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c003164:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c003168:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c00316c:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c003170:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c003174:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c003178:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c00317c:	1410000c 	lu12i.w	$r12,32768(0x8000)
1c003180:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003184:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c003188:	00150184 	move	$r4,$r12
1c00318c:	57fd5fff 	bl	-676(0xffffd5c) # 1c002ee8 <CLOCK_Init>
1c003190:	0015008d 	move	$r13,$r4
1c003194:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003198:	58000dac 	beq	$r13,$r12,12(0xc) # 1c0031a4 <SystemClockInit+0x80>
1c00319c:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c0031a0:	50000800 	b	8(0x8) # 1c0031a8 <SystemClockInit+0x84>
1c0031a4:	0015000c 	move	$r12,$r0
1c0031a8:	00150184 	move	$r4,$r12
1c0031ac:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0031b0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0031b4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0031b8:	4c000020 	jirl	$r0,$r1,0

1c0031bc <DisableInt>:
DisableInt():
1c0031bc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0031c0:	29803076 	st.w	$r22,$r3,12(0xc)
1c0031c4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0031c8:	0380100c 	ori	$r12,$r0,0x4
1c0031cc:	04000180 	csrxchg	$r0,$r12,0x0
1c0031d0:	03400000 	andi	$r0,$r0,0x0
1c0031d4:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0031d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0031dc:	4c000020 	jirl	$r0,$r1,0

1c0031e0 <EnableInt>:
EnableInt():
1c0031e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0031e4:	29803076 	st.w	$r22,$r3,12(0xc)
1c0031e8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0031ec:	0380100c 	ori	$r12,$r0,0x4
1c0031f0:	0400018c 	csrxchg	$r12,$r12,0x0
1c0031f4:	03400000 	andi	$r0,$r0,0x0
1c0031f8:	28803076 	ld.w	$r22,$r3,12(0xc)
1c0031fc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003200:	4c000020 	jirl	$r0,$r1,0

1c003204 <Set_Timer_stop>:
Set_Timer_stop():
1c003204:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003208:	29803076 	st.w	$r22,$r3,12(0xc)
1c00320c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003210:	04010420 	csrwr	$r0,0x41
1c003214:	03400000 	andi	$r0,$r0,0x0
1c003218:	28803076 	ld.w	$r22,$r3,12(0xc)
1c00321c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003220:	4c000020 	jirl	$r0,$r1,0

1c003224 <Set_Timer_clear>:
Set_Timer_clear():
1c003224:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003228:	29803076 	st.w	$r22,$r3,12(0xc)
1c00322c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003230:	0380040c 	ori	$r12,$r0,0x1
1c003234:	0401102c 	csrwr	$r12,0x44
1c003238:	03400000 	andi	$r0,$r0,0x0
1c00323c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003240:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003244:	4c000020 	jirl	$r0,$r1,0

1c003248 <Wake_Set>:
Wake_Set():
1c003248:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00324c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003250:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003254:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003258:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00325c:	40006980 	beqz	$r12,104(0x68) # 1c0032c4 <Wake_Set+0x7c>
1c003260:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003264:	0040a18c 	slli.w	$r12,$r12,0x8
1c003268:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00326c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003270:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003274:	0380218c 	ori	$r12,$r12,0x8
1c003278:	2880018d 	ld.w	$r13,$r12,0
1c00327c:	14001fec 	lu12i.w	$r12,255(0xff)
1c003280:	03bffd8c 	ori	$r12,$r12,0xfff
1c003284:	0014b1ac 	and	$r12,$r13,$r12
1c003288:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00328c:	001031ac 	add.w	$r12,$r13,$r12
1c003290:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003294:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003298:	0380318c 	ori	$r12,$r12,0xc
1c00329c:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0032a0:	2980018d 	st.w	$r13,$r12,0
1c0032a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032a8:	0380118c 	ori	$r12,$r12,0x4
1c0032ac:	2880018d 	ld.w	$r13,$r12,0
1c0032b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032b4:	0380118c 	ori	$r12,$r12,0x4
1c0032b8:	038601ad 	ori	$r13,$r13,0x180
1c0032bc:	2980018d 	st.w	$r13,$r12,0
1c0032c0:	50002400 	b	36(0x24) # 1c0032e4 <Wake_Set+0x9c>
1c0032c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032c8:	0380118c 	ori	$r12,$r12,0x4
1c0032cc:	2880018e 	ld.w	$r14,$r12,0
1c0032d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0032d4:	0380118c 	ori	$r12,$r12,0x4
1c0032d8:	02b9fc0d 	addi.w	$r13,$r0,-385(0xe7f)
1c0032dc:	0014b5cd 	and	$r13,$r14,$r13
1c0032e0:	2980018d 	st.w	$r13,$r12,0
1c0032e4:	03400000 	andi	$r0,$r0,0x0
1c0032e8:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0032ec:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0032f0:	4c000020 	jirl	$r0,$r1,0

1c0032f4 <PMU_GetRstRrc>:
PMU_GetRstRrc():
1c0032f4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0032f8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0032fc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003300:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003304:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003308:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c00330c:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003310:	0014b1ac 	and	$r12,$r13,$r12
1c003314:	44000d80 	bnez	$r12,12(0xc) # 1c003320 <PMU_GetRstRrc+0x2c>
1c003318:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00331c:	50003000 	b	48(0x30) # 1c00334c <PMU_GetRstRrc+0x58>
1c003320:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003324:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003328:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c00332c:	0014b1ad 	and	$r13,$r13,$r12
1c003330:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c003334:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c003344 <PMU_GetRstRrc+0x50>
1c003338:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c00333c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003340:	50000c00 	b	12(0xc) # 1c00334c <PMU_GetRstRrc+0x58>
1c003344:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003348:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00334c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003350:	00150184 	move	$r4,$r12
1c003354:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003358:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00335c:	4c000020 	jirl	$r0,$r1,0

1c003360 <PMU_GetBootSpiStatus>:
PMU_GetBootSpiStatus():
1c003360:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003364:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003368:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00336c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003370:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003374:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003378:	0380198c 	ori	$r12,$r12,0x6
1c00337c:	2a00018c 	ld.bu	$r12,$r12,0
1c003380:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c003384:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003388:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00338c:	0340058c 	andi	$r12,$r12,0x1
1c003390:	40000d80 	beqz	$r12,12(0xc) # 1c00339c <PMU_GetBootSpiStatus+0x3c>
1c003394:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003398:	50000800 	b	8(0x8) # 1c0033a0 <PMU_GetBootSpiStatus+0x40>
1c00339c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0033a0:	00150184 	move	$r4,$r12
1c0033a4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0033a8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0033ac:	4c000020 	jirl	$r0,$r1,0

1c0033b0 <ls1x_logo>:
ls1x_logo():
1c0033b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0033b4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0033b8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0033bc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0033c0:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c0033c4:	02b25084 	addi.w	$r4,$r4,-876(0xc94)
1c0033c8:	57e7cfff 	bl	-6196(0xfffe7cc) # 1c001b94 <myprintf>
1c0033cc:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c0033d0:	02b23084 	addi.w	$r4,$r4,-884(0xc8c)
1c0033d4:	57e7c3ff 	bl	-6208(0xfffe7c0) # 1c001b94 <myprintf>
1c0033d8:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c0033dc:	02b39084 	addi.w	$r4,$r4,-796(0xce4)
1c0033e0:	57e7b7ff 	bl	-6220(0xfffe7b4) # 1c001b94 <myprintf>
1c0033e4:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c0033e8:	02b4f084 	addi.w	$r4,$r4,-708(0xd3c)
1c0033ec:	57e7abff 	bl	-6232(0xfffe7a8) # 1c001b94 <myprintf>
1c0033f0:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c0033f4:	02b65084 	addi.w	$r4,$r4,-620(0xd94)
1c0033f8:	57e79fff 	bl	-6244(0xfffe79c) # 1c001b94 <myprintf>
1c0033fc:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c003400:	02b7b084 	addi.w	$r4,$r4,-532(0xdec)
1c003404:	57e793ff 	bl	-6256(0xfffe790) # 1c001b94 <myprintf>
1c003408:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c00340c:	02b91084 	addi.w	$r4,$r4,-444(0xe44)
1c003410:	57e787ff 	bl	-6268(0xfffe784) # 1c001b94 <myprintf>
1c003414:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c003418:	02ba7084 	addi.w	$r4,$r4,-356(0xe9c)
1c00341c:	57e77bff 	bl	-6280(0xfffe778) # 1c001b94 <myprintf>
1c003420:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c003424:	02bbd084 	addi.w	$r4,$r4,-268(0xef4)
1c003428:	57e76fff 	bl	-6292(0xfffe76c) # 1c001b94 <myprintf>
1c00342c:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c003430:	02bd3084 	addi.w	$r4,$r4,-180(0xf4c)
1c003434:	57e763ff 	bl	-6304(0xfffe760) # 1c001b94 <myprintf>
1c003438:	03400000 	andi	$r0,$r0,0x0
1c00343c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003440:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003444:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003448:	4c000020 	jirl	$r0,$r1,0

1c00344c <get_count>:
get_count():
1c00344c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003450:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003454:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003458:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00345c:	0000600c 	rdtimel.w	$r12,$r0
1c003460:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003464:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003468:	00150184 	move	$r4,$r12
1c00346c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003470:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003474:	4c000020 	jirl	$r0,$r1,0

1c003478 <open_count>:
open_count():
1c003478:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00347c:	29803076 	st.w	$r22,$r3,12(0xc)
1c003480:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003484:	0380400c 	ori	$r12,$r0,0x10
1c003488:	0402bd80 	csrxchg	$r0,$r12,0xaf
1c00348c:	03400000 	andi	$r0,$r0,0x0
1c003490:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003494:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003498:	4c000020 	jirl	$r0,$r1,0

1c00349c <start_count>:
start_count():
1c00349c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0034a0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0034a4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0034a8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0034ac:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0034b0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034b4:	29800180 	st.w	$r0,$r12,0
1c0034b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034bc:	29801180 	st.w	$r0,$r12,4(0x4)
1c0034c0:	57ff8fff 	bl	-116(0xfffff8c) # 1c00344c <get_count>
1c0034c4:	0015008d 	move	$r13,$r4
1c0034c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034cc:	2980018d 	st.w	$r13,$r12,0
1c0034d0:	03400000 	andi	$r0,$r0,0x0
1c0034d4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0034d8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0034dc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0034e0:	4c000020 	jirl	$r0,$r1,0

1c0034e4 <stop_count>:
stop_count():
1c0034e4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0034e8:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0034ec:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0034f0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0034f4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0034f8:	57ff57ff 	bl	-172(0xfffff54) # 1c00344c <get_count>
1c0034fc:	0015008d 	move	$r13,$r4
1c003500:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003504:	2980118d 	st.w	$r13,$r12,4(0x4)
1c003508:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00350c:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003510:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003514:	2880018c 	ld.w	$r12,$r12,0
1c003518:	68001dac 	bltu	$r13,$r12,28(0x1c) # 1c003534 <stop_count+0x50>
1c00351c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003520:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c003524:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003528:	2880018c 	ld.w	$r12,$r12,0
1c00352c:	001131ac 	sub.w	$r12,$r13,$r12
1c003530:	50002800 	b	40(0x28) # 1c003558 <stop_count+0x74>
1c003534:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c003538:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00353c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003540:	2880018c 	ld.w	$r12,$r12,0
1c003544:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003548:	001131ad 	sub.w	$r13,$r13,$r12
1c00354c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003550:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c003554:	001031ac 	add.w	$r12,$r13,$r12
1c003558:	00150184 	move	$r4,$r12
1c00355c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003560:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003564:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003568:	4c000020 	jirl	$r0,$r1,0

1c00356c <delay_cycle>:
delay_cycle():
1c00356c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003570:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003574:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003578:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00357c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003580:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003584:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c003588:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c00358c:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c003590:	00150184 	move	$r4,$r12
1c003594:	57ff0bff 	bl	-248(0xfffff08) # 1c00349c <start_count>
1c003598:	50001400 	b	20(0x14) # 1c0035ac <delay_cycle+0x40>
1c00359c:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c0035a0:	00150184 	move	$r4,$r12
1c0035a4:	57ff43ff 	bl	-192(0xfffff40) # 1c0034e4 <stop_count>
1c0035a8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0035ac:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0035b0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0035b4:	6bffe9ac 	bltu	$r13,$r12,-24(0x3ffe8) # 1c00359c <delay_cycle+0x30>
1c0035b8:	03400000 	andi	$r0,$r0,0x0
1c0035bc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0035c0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0035c4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0035c8:	4c000020 	jirl	$r0,$r1,0

1c0035cc <delay_us>:
delay_us():
1c0035cc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0035d0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0035d4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0035d8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0035dc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0035e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0035e4:	00408d8c 	slli.w	$r12,$r12,0x3
1c0035e8:	00150184 	move	$r4,$r12
1c0035ec:	57ff83ff 	bl	-128(0xfffff80) # 1c00356c <delay_cycle>
1c0035f0:	03400000 	andi	$r0,$r0,0x0
1c0035f4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0035f8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0035fc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003600:	4c000020 	jirl	$r0,$r1,0

1c003604 <delay_ms>:
delay_ms():
1c003604:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003608:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00360c:	29806076 	st.w	$r22,$r3,24(0x18)
1c003610:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003614:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003618:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00361c:	1400002c 	lu12i.w	$r12,1(0x1)
1c003620:	03bd018c 	ori	$r12,$r12,0xf40
1c003624:	001c31ac 	mul.w	$r12,$r13,$r12
1c003628:	00150184 	move	$r4,$r12
1c00362c:	57ff43ff 	bl	-192(0xfffff40) # 1c00356c <delay_cycle>
1c003630:	03400000 	andi	$r0,$r0,0x0
1c003634:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003638:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00363c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003640:	4c000020 	jirl	$r0,$r1,0

1c003644 <memset>:
memset():
1c003644:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003648:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00364c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003650:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003654:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c003658:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c00365c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003660:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003664:	50001c00 	b	28(0x1c) # 1c003680 <memset+0x3c>
1c003668:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00366c:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c003670:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c003674:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c003678:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c00367c:	2900018d 	st.b	$r13,$r12,0
1c003680:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c003684:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c003688:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c00368c:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c003668 <memset+0x24>
1c003690:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003694:	00150184 	move	$r4,$r12
1c003698:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00369c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0036a0:	4c000020 	jirl	$r0,$r1,0

1c0036a4 <pstrstr>:
pstrstr():
1c0036a4:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0036a8:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0036ac:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0036b0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0036b4:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c0036b8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0036bc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0036c0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0036c4:	2800018c 	ld.b	$r12,$r12,0
1c0036c8:	44008580 	bnez	$r12,132(0x84) # 1c00374c <pstrstr+0xa8>
1c0036cc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0036d0:	50008c00 	b	140(0x8c) # 1c00375c <pstrstr+0xb8>
1c0036d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0036d8:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0036dc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0036e0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0036e4:	50001c00 	b	28(0x1c) # 1c003700 <pstrstr+0x5c>
1c0036e8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0036ec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0036f0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0036f4:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0036f8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0036fc:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c003700:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003704:	2800018c 	ld.b	$r12,$r12,0
1c003708:	40002580 	beqz	$r12,36(0x24) # 1c00372c <pstrstr+0x88>
1c00370c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003710:	2800018c 	ld.b	$r12,$r12,0
1c003714:	40001980 	beqz	$r12,24(0x18) # 1c00372c <pstrstr+0x88>
1c003718:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00371c:	2800018d 	ld.b	$r13,$r12,0
1c003720:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003724:	2800018c 	ld.b	$r12,$r12,0
1c003728:	5bffc1ac 	beq	$r13,$r12,-64(0x3ffc0) # 1c0036e8 <pstrstr+0x44>
1c00372c:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c003730:	2800018c 	ld.b	$r12,$r12,0
1c003734:	44000d80 	bnez	$r12,12(0xc) # 1c003740 <pstrstr+0x9c>
1c003738:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00373c:	50002000 	b	32(0x20) # 1c00375c <pstrstr+0xb8>
1c003740:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003744:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003748:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00374c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003750:	2800018c 	ld.b	$r12,$r12,0
1c003754:	47ff819f 	bnez	$r12,-128(0x7fff80) # 1c0036d4 <pstrstr+0x30>
1c003758:	0015000c 	move	$r12,$r0
1c00375c:	00150184 	move	$r4,$r12
1c003760:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003764:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003768:	4c000020 	jirl	$r0,$r1,0

1c00376c <strcpy>:
strcpy():
1c00376c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003770:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003774:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003778:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00377c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c003780:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003784:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003788:	03400000 	andi	$r0,$r0,0x0
1c00378c:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c003790:	028005ac 	addi.w	$r12,$r13,1(0x1)
1c003794:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c003798:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00379c:	0280058e 	addi.w	$r14,$r12,1(0x1)
1c0037a0:	29bf72ce 	st.w	$r14,$r22,-36(0xfdc)
1c0037a4:	280001ad 	ld.b	$r13,$r13,0
1c0037a8:	2900018d 	st.b	$r13,$r12,0
1c0037ac:	2800018c 	ld.b	$r12,$r12,0
1c0037b0:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c00378c <strcpy+0x20>
1c0037b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037b8:	00150184 	move	$r4,$r12
1c0037bc:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0037c0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0037c4:	4c000020 	jirl	$r0,$r1,0

1c0037c8 <strlen>:
strlen():
1c0037c8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0037cc:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0037d0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0037d4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0037d8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0037dc:	50001000 	b	16(0x10) # 1c0037ec <strlen+0x24>
1c0037e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0037e4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0037e8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0037ec:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0037f0:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0037f4:	29bf72cd 	st.w	$r13,$r22,-36(0xfdc)
1c0037f8:	2800018c 	ld.b	$r12,$r12,0
1c0037fc:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0037e0 <strlen+0x18>
1c003800:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003804:	00150184 	move	$r4,$r12
1c003808:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00380c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003810:	4c000020 	jirl	$r0,$r1,0

1c003814 <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
1c003814:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003818:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00381c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003820:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003824:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c003828:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00382c:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c003830:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003834:	001531ad 	or	$r13,$r13,$r12
1c003838:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00383c:	2980318d 	st.w	$r13,$r12,12(0xc)
1c003840:	03400000 	andi	$r0,$r0,0x0
1c003844:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003848:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00384c:	4c000020 	jirl	$r0,$r1,0

1c003850 <WDG_getOddValue>:
WDG_getOddValue():
1c003850:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003854:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003858:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00385c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003860:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003864:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c003868:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00386c:	50003800 	b	56(0x38) # 1c0038a4 <WDG_getOddValue+0x54>
1c003870:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003874:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003878:	001731ac 	sll.w	$r12,$r13,$r12
1c00387c:	0015018d 	move	$r13,$r12
1c003880:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003884:	0014b1ac 	and	$r12,$r13,$r12
1c003888:	40001180 	beqz	$r12,16(0x10) # 1c003898 <WDG_getOddValue+0x48>
1c00388c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003890:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003894:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003898:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00389c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0038a0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0038a4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0038a8:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c0038ac:	67ffc58d 	bge	$r12,$r13,-60(0x3ffc4) # 1c003870 <WDG_getOddValue+0x20>
1c0038b0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0038b4:	0340058c 	andi	$r12,$r12,0x1
1c0038b8:	44000d80 	bnez	$r12,12(0xc) # 1c0038c4 <WDG_getOddValue+0x74>
1c0038bc:	1400010c 	lu12i.w	$r12,8(0x8)
1c0038c0:	50000800 	b	8(0x8) # 1c0038c8 <WDG_getOddValue+0x78>
1c0038c4:	0015000c 	move	$r12,$r0
1c0038c8:	00150184 	move	$r4,$r12
1c0038cc:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0038d0:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0038d4:	4c000020 	jirl	$r0,$r1,0

1c0038d8 <WDG_SetWatchDog>:
WDG_SetWatchDog():
1c0038d8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0038dc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0038e0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0038e4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0038e8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0038ec:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0038f0:	140000ec 	lu12i.w	$r12,7(0x7)
1c0038f4:	03bffd8c 	ori	$r12,$r12,0xfff
1c0038f8:	0014b1ac 	and	$r12,$r13,$r12
1c0038fc:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003900:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c003904:	57ff4fff 	bl	-180(0xfffff4c) # 1c003850 <WDG_getOddValue>
1c003908:	0015008c 	move	$r12,$r4
1c00390c:	0015018d 	move	$r13,$r12
1c003910:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003914:	0015358c 	or	$r12,$r12,$r13
1c003918:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00391c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003920:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c003924:	0396a9ad 	ori	$r13,$r13,0x5aa
1c003928:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c00392c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003930:	0014300c 	nor	$r12,$r0,$r12
1c003934:	0040c18c 	slli.w	$r12,$r12,0x10
1c003938:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00393c:	001531ac 	or	$r12,$r13,$r12
1c003940:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003944:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003948:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00394c:	2980c18d 	st.w	$r13,$r12,48(0x30)
1c003950:	03400000 	andi	$r0,$r0,0x0
1c003954:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003958:	28806076 	ld.w	$r22,$r3,24(0x18)
1c00395c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003960:	4c000020 	jirl	$r0,$r1,0

1c003964 <WDG_DogFeed>:
WDG_DogFeed():
1c003964:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003968:	29803076 	st.w	$r22,$r3,12(0xc)
1c00396c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003970:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003974:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c003978:	0396a9ad 	ori	$r13,$r13,0x5aa
1c00397c:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c003980:	03400000 	andi	$r0,$r0,0x0
1c003984:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003988:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00398c:	4c000020 	jirl	$r0,$r1,0

1c003990 <WdgInit>:
WdgInit():
1c003990:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003994:	29803061 	st.w	$r1,$r3,12(0xc)
1c003998:	29802076 	st.w	$r22,$r3,8(0x8)
1c00399c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0039a0:	150000ec 	lu12i.w	$r12,-524281(0x80007)
1c0039a4:	03bffd84 	ori	$r4,$r12,0xfff
1c0039a8:	57ff33ff 	bl	-208(0xfffff30) # 1c0038d8 <WDG_SetWatchDog>
1c0039ac:	03400000 	andi	$r0,$r0,0x0
1c0039b0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0039b4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0039b8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0039bc:	4c000020 	jirl	$r0,$r1,0

1c0039c0 <TOUCH_GetBaseVal>:
TOUCH_GetBaseVal():
1c0039c0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0039c4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0039c8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0039cc:	0015008c 	move	$r12,$r4
1c0039d0:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0039d4:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0039d8:	0040898c 	slli.w	$r12,$r12,0x2
1c0039dc:	0015018d 	move	$r13,$r12
1c0039e0:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c0039e4:	0381018c 	ori	$r12,$r12,0x40
1c0039e8:	001031ac 	add.w	$r12,$r13,$r12
1c0039ec:	2880018c 	ld.w	$r12,$r12,0
1c0039f0:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0039f4:	037ffd8c 	andi	$r12,$r12,0xfff
1c0039f8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0039fc:	00150184 	move	$r4,$r12
1c003a00:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003a04:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003a08:	4c000020 	jirl	$r0,$r1,0

1c003a0c <TOUCH_GetCountValue>:
TOUCH_GetCountValue():
1c003a0c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003a10:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003a14:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003a18:	0015008c 	move	$r12,$r4
1c003a1c:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c003a20:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003a24:	0040898c 	slli.w	$r12,$r12,0x2
1c003a28:	0015018d 	move	$r13,$r12
1c003a2c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c003a30:	0382018c 	ori	$r12,$r12,0x80
1c003a34:	001031ac 	add.w	$r12,$r13,$r12
1c003a38:	2880018c 	ld.w	$r12,$r12,0
1c003a3c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003a40:	037ffd8c 	andi	$r12,$r12,0xfff
1c003a44:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003a48:	00150184 	move	$r4,$r12
1c003a4c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003a50:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003a54:	4c000020 	jirl	$r0,$r1,0

1c003a58 <Printf_KeyChannel>:
Printf_KeyChannel():
1c003a58:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003a5c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c003a60:	2980a076 	st.w	$r22,$r3,40(0x28)
1c003a64:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003a68:	0015008c 	move	$r12,$r4
1c003a6c:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c003a70:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003a74:	50003400 	b	52(0x34) # 1c003aa8 <Printf_KeyChannel+0x50>
1c003a78:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c003a7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003a80:	001831ac 	sra.w	$r12,$r13,$r12
1c003a84:	0340058c 	andi	$r12,$r12,0x1
1c003a88:	40001580 	beqz	$r12,20(0x14) # 1c003a9c <Printf_KeyChannel+0x44>
1c003a8c:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c003a90:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c003a94:	02a53084 	addi.w	$r4,$r4,-1716(0x94c)
1c003a98:	57e0ffff 	bl	-7940(0xfffe0fc) # 1c001b94 <myprintf>
1c003a9c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003aa0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003aa4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003aa8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003aac:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003ab0:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c003a78 <Printf_KeyChannel+0x20>
1c003ab4:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c003ab8:	02a4b084 	addi.w	$r4,$r4,-1748(0x92c)
1c003abc:	57e0dbff 	bl	-7976(0xfffe0d8) # 1c001b94 <myprintf>
1c003ac0:	03400000 	andi	$r0,$r0,0x0
1c003ac4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003ac8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003acc:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003ad0:	4c000020 	jirl	$r0,$r1,0

1c003ad4 <Printf_KeyType>:
Printf_KeyType():
1c003ad4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003ad8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003adc:	29806076 	st.w	$r22,$r3,24(0x18)
1c003ae0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003ae4:	0015008c 	move	$r12,$r4
1c003ae8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003aec:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003af0:	0340058c 	andi	$r12,$r12,0x1
1c003af4:	40001180 	beqz	$r12,16(0x10) # 1c003b04 <Printf_KeyType+0x30>
1c003af8:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c003afc:	02a3b084 	addi.w	$r4,$r4,-1812(0x8ec)
1c003b00:	57e097ff 	bl	-8044(0xfffe094) # 1c001b94 <myprintf>
1c003b04:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003b08:	0340098c 	andi	$r12,$r12,0x2
1c003b0c:	40001180 	beqz	$r12,16(0x10) # 1c003b1c <Printf_KeyType+0x48>
1c003b10:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c003b14:	02a37084 	addi.w	$r4,$r4,-1828(0x8dc)
1c003b18:	57e07fff 	bl	-8068(0xfffe07c) # 1c001b94 <myprintf>
1c003b1c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003b20:	0340118c 	andi	$r12,$r12,0x4
1c003b24:	40001180 	beqz	$r12,16(0x10) # 1c003b34 <Printf_KeyType+0x60>
1c003b28:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c003b2c:	02a33084 	addi.w	$r4,$r4,-1844(0x8cc)
1c003b30:	57e067ff 	bl	-8092(0xfffe064) # 1c001b94 <myprintf>
1c003b34:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003b38:	0340218c 	andi	$r12,$r12,0x8
1c003b3c:	40001180 	beqz	$r12,16(0x10) # 1c003b4c <Printf_KeyType+0x78>
1c003b40:	1c0000a4 	pcaddu12i	$r4,5(0x5)
1c003b44:	02a30084 	addi.w	$r4,$r4,-1856(0x8c0)
1c003b48:	57e04fff 	bl	-8116(0xfffe04c) # 1c001b94 <myprintf>
1c003b4c:	03400000 	andi	$r0,$r0,0x0
1c003b50:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c003b54:	28806076 	ld.w	$r22,$r3,24(0x18)
1c003b58:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003b5c:	4c000020 	jirl	$r0,$r1,0

1c003b60 <Printf_KeyVal>:
Printf_KeyVal():
1c003b60:	02bd4063 	addi.w	$r3,$r3,-176(0xf50)
1c003b64:	2982b061 	st.w	$r1,$r3,172(0xac)
1c003b68:	2982a076 	st.w	$r22,$r3,168(0xa8)
1c003b6c:	0282c076 	addi.w	$r22,$r3,176(0xb0)
1c003b70:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003b74:	5000d800 	b	216(0xd8) # 1c003c4c <Printf_KeyVal+0xec>
1c003b78:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b7c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003b80:	00150184 	move	$r4,$r12
1c003b84:	57fe8bff 	bl	-376(0xffffe88) # 1c003a0c <TOUCH_GetCountValue>
1c003b88:	0015008c 	move	$r12,$r4
1c003b8c:	0015018d 	move	$r13,$r12
1c003b90:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003b94:	0040898c 	slli.w	$r12,$r12,0x2
1c003b98:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003b9c:	001031cc 	add.w	$r12,$r14,$r12
1c003ba0:	29bdb18d 	st.w	$r13,$r12,-148(0xf6c)
1c003ba4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ba8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003bac:	00150184 	move	$r4,$r12
1c003bb0:	57fe13ff 	bl	-496(0xffffe10) # 1c0039c0 <TOUCH_GetBaseVal>
1c003bb4:	0015008c 	move	$r12,$r4
1c003bb8:	0015018d 	move	$r13,$r12
1c003bbc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003bc0:	0040898c 	slli.w	$r12,$r12,0x2
1c003bc4:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003bc8:	001031cc 	add.w	$r12,$r14,$r12
1c003bcc:	29be718d 	st.w	$r13,$r12,-100(0xf9c)
1c003bd0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003bd4:	0040898c 	slli.w	$r12,$r12,0x2
1c003bd8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003bdc:	001031ac 	add.w	$r12,$r13,$r12
1c003be0:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003be4:	40004980 	beqz	$r12,72(0x48) # 1c003c2c <Printf_KeyVal+0xcc>
1c003be8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003bec:	0040898c 	slli.w	$r12,$r12,0x2
1c003bf0:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003bf4:	001031ac 	add.w	$r12,$r13,$r12
1c003bf8:	28be718d 	ld.w	$r13,$r12,-100(0xf9c)
1c003bfc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c00:	0040898c 	slli.w	$r12,$r12,0x2
1c003c04:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003c08:	001031cc 	add.w	$r12,$r14,$r12
1c003c0c:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003c10:	001131ad 	sub.w	$r13,$r13,$r12
1c003c14:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c18:	0040898c 	slli.w	$r12,$r12,0x2
1c003c1c:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003c20:	001031cc 	add.w	$r12,$r14,$r12
1c003c24:	29bf318d 	st.w	$r13,$r12,-52(0xfcc)
1c003c28:	50001800 	b	24(0x18) # 1c003c40 <Printf_KeyVal+0xe0>
1c003c2c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c30:	0040898c 	slli.w	$r12,$r12,0x2
1c003c34:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003c38:	001031ac 	add.w	$r12,$r13,$r12
1c003c3c:	29bf3180 	st.w	$r0,$r12,-52(0xfcc)
1c003c40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c44:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003c48:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003c4c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003c50:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003c54:	67ff258d 	bge	$r12,$r13,-220(0x3ff24) # 1c003b78 <Printf_KeyVal+0x18>
1c003c58:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003c5c:	029ed084 	addi.w	$r4,$r4,1972(0x7b4)
1c003c60:	57df37ff 	bl	-8396(0xfffdf34) # 1c001b94 <myprintf>
1c003c64:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003c68:	029f4084 	addi.w	$r4,$r4,2000(0x7d0)
1c003c6c:	57df2bff 	bl	-8408(0xfffdf28) # 1c001b94 <myprintf>
1c003c70:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003c74:	50003400 	b	52(0x34) # 1c003ca8 <Printf_KeyVal+0x148>
1c003c78:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003c7c:	0040898c 	slli.w	$r12,$r12,0x2
1c003c80:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003c84:	001031ac 	add.w	$r12,$r13,$r12
1c003c88:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003c8c:	00150185 	move	$r5,$r12
1c003c90:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003c94:	029eb084 	addi.w	$r4,$r4,1964(0x7ac)
1c003c98:	57deffff 	bl	-8452(0xfffdefc) # 1c001b94 <myprintf>
1c003c9c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ca0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003ca4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003ca8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003cac:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003cb0:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003c78 <Printf_KeyVal+0x118>
1c003cb4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003cb8:	029e4084 	addi.w	$r4,$r4,1936(0x790)
1c003cbc:	57dedbff 	bl	-8488(0xfffded8) # 1c001b94 <myprintf>
1c003cc0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003cc4:	50003400 	b	52(0x34) # 1c003cf8 <Printf_KeyVal+0x198>
1c003cc8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ccc:	0040898c 	slli.w	$r12,$r12,0x2
1c003cd0:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003cd4:	001031ac 	add.w	$r12,$r13,$r12
1c003cd8:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003cdc:	00150185 	move	$r5,$r12
1c003ce0:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003ce4:	029d7084 	addi.w	$r4,$r4,1884(0x75c)
1c003ce8:	57deafff 	bl	-8532(0xfffdeac) # 1c001b94 <myprintf>
1c003cec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003cf0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003cf4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003cf8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003cfc:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003d00:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003cc8 <Printf_KeyVal+0x168>
1c003d04:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003d08:	029d3084 	addi.w	$r4,$r4,1868(0x74c)
1c003d0c:	57de8bff 	bl	-8568(0xfffde88) # 1c001b94 <myprintf>
1c003d10:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003d14:	50007400 	b	116(0x74) # 1c003d88 <Printf_KeyVal+0x228>
1c003d18:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d1c:	0040898c 	slli.w	$r12,$r12,0x2
1c003d20:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003d24:	001031ac 	add.w	$r12,$r13,$r12
1c003d28:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003d2c:	64002d80 	bge	$r12,$r0,44(0x2c) # 1c003d58 <Printf_KeyVal+0x1f8>
1c003d30:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d34:	0040898c 	slli.w	$r12,$r12,0x2
1c003d38:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003d3c:	001031ac 	add.w	$r12,$r13,$r12
1c003d40:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003d44:	00150185 	move	$r5,$r12
1c003d48:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003d4c:	029c5084 	addi.w	$r4,$r4,1812(0x714)
1c003d50:	57de47ff 	bl	-8636(0xfffde44) # 1c001b94 <myprintf>
1c003d54:	50002800 	b	40(0x28) # 1c003d7c <Printf_KeyVal+0x21c>
1c003d58:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d5c:	0040898c 	slli.w	$r12,$r12,0x2
1c003d60:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003d64:	001031ac 	add.w	$r12,$r13,$r12
1c003d68:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c003d6c:	00150185 	move	$r5,$r12
1c003d70:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003d74:	029bd084 	addi.w	$r4,$r4,1780(0x6f4)
1c003d78:	57de1fff 	bl	-8676(0xfffde1c) # 1c001b94 <myprintf>
1c003d7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003d80:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003d84:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003d88:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003d8c:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003d90:	67ff898d 	bge	$r12,$r13,-120(0x3ff88) # 1c003d18 <Printf_KeyVal+0x1b8>
1c003d94:	1c000084 	pcaddu12i	$r4,4(0x4)
1c003d98:	02993084 	addi.w	$r4,$r4,1612(0x64c)
1c003d9c:	57ddfbff 	bl	-8712(0xfffddf8) # 1c001b94 <myprintf>
1c003da0:	03400000 	andi	$r0,$r0,0x0
1c003da4:	2882b061 	ld.w	$r1,$r3,172(0xac)
1c003da8:	2882a076 	ld.w	$r22,$r3,168(0xa8)
1c003dac:	0282c063 	addi.w	$r3,$r3,176(0xb0)
1c003db0:	4c000020 	jirl	$r0,$r1,0

1c003db4 <TIM_Init>:
TIM_Init():
1c003db4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003db8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003dbc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003dc0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003dc4:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003dc8:	29800180 	st.w	$r0,$r12,0
1c003dcc:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003dd0:	0380118c 	ori	$r12,$r12,0x4
1c003dd4:	29800180 	st.w	$r0,$r12,0
1c003dd8:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003ddc:	0380218c 	ori	$r12,$r12,0x8
1c003de0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003de4:	288011ad 	ld.w	$r13,$r13,4(0x4)
1c003de8:	2980018d 	st.w	$r13,$r12,0
1c003dec:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003df0:	0380318c 	ori	$r12,$r12,0xc
1c003df4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003df8:	288021ad 	ld.w	$r13,$r13,8(0x8)
1c003dfc:	2980018d 	st.w	$r13,$r12,0
1c003e00:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003e04:	2880018e 	ld.w	$r14,$r12,0
1c003e08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e0c:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c003e10:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003e14:	001535cd 	or	$r13,$r14,$r13
1c003e18:	2980018d 	st.w	$r13,$r12,0
1c003e1c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e20:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c003e24:	40002180 	beqz	$r12,32(0x20) # 1c003e44 <TIM_Init+0x90>
1c003e28:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003e2c:	2a00018c 	ld.bu	$r12,$r12,0
1c003e30:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003e34:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003e38:	038005ad 	ori	$r13,$r13,0x1
1c003e3c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003e40:	2900018d 	st.b	$r13,$r12,0
1c003e44:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003e48:	2880018e 	ld.w	$r14,$r12,0
1c003e4c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e50:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c003e54:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003e58:	001535cd 	or	$r13,$r14,$r13
1c003e5c:	2980018d 	st.w	$r13,$r12,0
1c003e60:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003e64:	2880018e 	ld.w	$r14,$r12,0
1c003e68:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003e6c:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c003e70:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003e74:	001535cd 	or	$r13,$r14,$r13
1c003e78:	2980018d 	st.w	$r13,$r12,0
1c003e7c:	03400000 	andi	$r0,$r0,0x0
1c003e80:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003e84:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003e88:	4c000020 	jirl	$r0,$r1,0

1c003e8c <TIM_StructInit>:
TIM_StructInit():
1c003e8c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003e90:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003e94:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003e98:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003e9c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ea0:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c003ea4:	038801ad 	ori	$r13,$r13,0x200
1c003ea8:	2980018d 	st.w	$r13,$r12,0
1c003eac:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003eb0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c003eb4:	2980618d 	st.w	$r13,$r12,24(0x18)
1c003eb8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ebc:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c003ec0:	2980518d 	st.w	$r13,$r12,20(0x14)
1c003ec4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ec8:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c003ecc:	2980418d 	st.w	$r13,$r12,16(0x10)
1c003ed0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ed4:	1400002d 	lu12i.w	$r13,1(0x1)
1c003ed8:	03bcfdad 	ori	$r13,$r13,0xf3f
1c003edc:	2980118d 	st.w	$r13,$r12,4(0x4)
1c003ee0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ee4:	1400026d 	lu12i.w	$r13,19(0x13)
1c003ee8:	03a201ad 	ori	$r13,$r13,0x880
1c003eec:	2980218d 	st.w	$r13,$r12,8(0x8)
1c003ef0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003ef4:	29803180 	st.w	$r0,$r12,12(0xc)
1c003ef8:	03400000 	andi	$r0,$r0,0x0
1c003efc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003f00:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003f04:	4c000020 	jirl	$r0,$r1,0

1c003f08 <TIM_GetITStatus>:
TIM_GetITStatus():
1c003f08:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c003f0c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c003f10:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c003f14:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c003f18:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003f1c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003f20:	2880018d 	ld.w	$r13,$r12,0
1c003f24:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c003f28:	0014b1ac 	and	$r12,$r13,$r12
1c003f2c:	40001180 	beqz	$r12,16(0x10) # 1c003f3c <TIM_GetITStatus+0x34>
1c003f30:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003f34:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003f38:	50000800 	b	8(0x8) # 1c003f40 <TIM_GetITStatus+0x38>
1c003f3c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003f40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003f44:	00150184 	move	$r4,$r12
1c003f48:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003f4c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003f50:	4c000020 	jirl	$r0,$r1,0

1c003f54 <TIM_ClearIT>:
TIM_ClearIT():
1c003f54:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003f58:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003f5c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003f60:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003f64:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003f68:	2880018e 	ld.w	$r14,$r12,0
1c003f6c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003f70:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003f74:	001535cd 	or	$r13,$r14,$r13
1c003f78:	2980018d 	st.w	$r13,$r12,0
1c003f7c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003f80:	03800d8c 	ori	$r12,$r12,0x3
1c003f84:	2a00018c 	ld.bu	$r12,$r12,0
1c003f88:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003f8c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003f90:	03800d8c 	ori	$r12,$r12,0x3
1c003f94:	038005ad 	ori	$r13,$r13,0x1
1c003f98:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003f9c:	2900018d 	st.b	$r13,$r12,0
1c003fa0:	03400000 	andi	$r0,$r0,0x0
1c003fa4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003fa8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003fac:	4c000020 	jirl	$r0,$r1,0

1c003fb0 <timer_init>:
timer_init():
1c003fb0:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c003fb4:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c003fb8:	2980e076 	st.w	$r22,$r3,56(0x38)
1c003fbc:	02810076 	addi.w	$r22,$r3,64(0x40)
1c003fc0:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c003fc4:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c003fc8:	00150184 	move	$r4,$r12
1c003fcc:	57fec3ff 	bl	-320(0xffffec0) # 1c003e8c <TIM_StructInit>
1c003fd0:	28bf32cd 	ld.w	$r13,$r22,-52(0xfcc)
1c003fd4:	1400002c 	lu12i.w	$r12,1(0x1)
1c003fd8:	03bd018c 	ori	$r12,$r12,0xf40
1c003fdc:	001c31ac 	mul.w	$r12,$r13,$r12
1c003fe0:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c003fe4:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c003fe8:	00150184 	move	$r4,$r12
1c003fec:	57fdcbff 	bl	-568(0xffffdc8) # 1c003db4 <TIM_Init>
1c003ff0:	03400000 	andi	$r0,$r0,0x0
1c003ff4:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c003ff8:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c003ffc:	02810063 	addi.w	$r3,$r3,64(0x40)
1c004000:	4c000020 	jirl	$r0,$r1,0

1c004004 <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c004004:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004008:	29803061 	st.w	$r1,$r3,12(0xc)
1c00400c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004010:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004014:	1c000086 	pcaddu12i	$r6,4(0x4)
1c004018:	0297d0c6 	addi.w	$r6,$r6,1524(0x5f4)
1c00401c:	02804805 	addi.w	$r5,$r0,18(0x12)
1c004020:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004024:	02913084 	addi.w	$r4,$r4,1100(0x44c)
1c004028:	57db6fff 	bl	-9364(0xfffdb6c) # 1c001b94 <myprintf>
1c00402c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004030:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004034:	03808184 	ori	$r4,$r12,0x20
1c004038:	57f7dfff 	bl	-2084(0xffff7dc) # 1c003814 <EXTI_ClearITPendingBit>
1c00403c:	03400000 	andi	$r0,$r0,0x0
1c004040:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004044:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004048:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00404c:	4c000020 	jirl	$r0,$r1,0

1c004050 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c004050:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004054:	29803061 	st.w	$r1,$r3,12(0xc)
1c004058:	29802076 	st.w	$r22,$r3,8(0x8)
1c00405c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004060:	1c000086 	pcaddu12i	$r6,4(0x4)
1c004064:	029700c6 	addi.w	$r6,$r6,1472(0x5c0)
1c004068:	02805c05 	addi.w	$r5,$r0,23(0x17)
1c00406c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004070:	02900084 	addi.w	$r4,$r4,1024(0x400)
1c004074:	57db23ff 	bl	-9440(0xfffdb20) # 1c001b94 <myprintf>
1c004078:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00407c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004080:	03808184 	ori	$r4,$r12,0x20
1c004084:	57f793ff 	bl	-2160(0xffff790) # 1c003814 <EXTI_ClearITPendingBit>
1c004088:	03400000 	andi	$r0,$r0,0x0
1c00408c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004090:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004094:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004098:	4c000020 	jirl	$r0,$r1,0

1c00409c <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c00409c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0040a0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0040a4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0040a8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0040ac:	1c000086 	pcaddu12i	$r6,4(0x4)
1c0040b0:	029630c6 	addi.w	$r6,$r6,1420(0x58c)
1c0040b4:	02807005 	addi.w	$r5,$r0,28(0x1c)
1c0040b8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0040bc:	028ed084 	addi.w	$r4,$r4,948(0x3b4)
1c0040c0:	57dad7ff 	bl	-9516(0xfffdad4) # 1c001b94 <myprintf>
1c0040c4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0040c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0040cc:	03808184 	ori	$r4,$r12,0x20
1c0040d0:	57f747ff 	bl	-2236(0xffff744) # 1c003814 <EXTI_ClearITPendingBit>
1c0040d4:	03400000 	andi	$r0,$r0,0x0
1c0040d8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0040dc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0040e0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0040e4:	4c000020 	jirl	$r0,$r1,0

1c0040e8 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c0040e8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0040ec:	29803061 	st.w	$r1,$r3,12(0xc)
1c0040f0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0040f4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0040f8:	1c000086 	pcaddu12i	$r6,4(0x4)
1c0040fc:	029560c6 	addi.w	$r6,$r6,1368(0x558)
1c004100:	02808405 	addi.w	$r5,$r0,33(0x21)
1c004104:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004108:	028da084 	addi.w	$r4,$r4,872(0x368)
1c00410c:	57da8bff 	bl	-9592(0xfffda88) # 1c001b94 <myprintf>
1c004110:	02802005 	addi.w	$r5,$r0,8(0x8)
1c004114:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004118:	03808184 	ori	$r4,$r12,0x20
1c00411c:	57f6fbff 	bl	-2312(0xffff6f8) # 1c003814 <EXTI_ClearITPendingBit>
1c004120:	03400000 	andi	$r0,$r0,0x0
1c004124:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004128:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00412c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004130:	4c000020 	jirl	$r0,$r1,0

1c004134 <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c004134:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004138:	29803061 	st.w	$r1,$r3,12(0xc)
1c00413c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004140:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004144:	1c000086 	pcaddu12i	$r6,4(0x4)
1c004148:	029490c6 	addi.w	$r6,$r6,1316(0x524)
1c00414c:	02809805 	addi.w	$r5,$r0,38(0x26)
1c004150:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004154:	028c7084 	addi.w	$r4,$r4,796(0x31c)
1c004158:	57da3fff 	bl	-9668(0xfffda3c) # 1c001b94 <myprintf>
1c00415c:	02804005 	addi.w	$r5,$r0,16(0x10)
1c004160:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004164:	03808184 	ori	$r4,$r12,0x20
1c004168:	57f6afff 	bl	-2388(0xffff6ac) # 1c003814 <EXTI_ClearITPendingBit>
1c00416c:	03400000 	andi	$r0,$r0,0x0
1c004170:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004174:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004178:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00417c:	4c000020 	jirl	$r0,$r1,0

1c004180 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c004180:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004184:	29803061 	st.w	$r1,$r3,12(0xc)
1c004188:	29802076 	st.w	$r22,$r3,8(0x8)
1c00418c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004190:	1c000086 	pcaddu12i	$r6,4(0x4)
1c004194:	0293c0c6 	addi.w	$r6,$r6,1264(0x4f0)
1c004198:	0280ac05 	addi.w	$r5,$r0,43(0x2b)
1c00419c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0041a0:	028b4084 	addi.w	$r4,$r4,720(0x2d0)
1c0041a4:	57d9f3ff 	bl	-9744(0xfffd9f0) # 1c001b94 <myprintf>
1c0041a8:	02808005 	addi.w	$r5,$r0,32(0x20)
1c0041ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0041b0:	03808184 	ori	$r4,$r12,0x20
1c0041b4:	57f663ff 	bl	-2464(0xffff660) # 1c003814 <EXTI_ClearITPendingBit>
1c0041b8:	03400000 	andi	$r0,$r0,0x0
1c0041bc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0041c0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0041c4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0041c8:	4c000020 	jirl	$r0,$r1,0

1c0041cc <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c0041cc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0041d0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0041d4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0041d8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0041dc:	1c000086 	pcaddu12i	$r6,4(0x4)
1c0041e0:	0292f0c6 	addi.w	$r6,$r6,1212(0x4bc)
1c0041e4:	0280c005 	addi.w	$r5,$r0,48(0x30)
1c0041e8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0041ec:	028a1084 	addi.w	$r4,$r4,644(0x284)
1c0041f0:	57d9a7ff 	bl	-9820(0xfffd9a4) # 1c001b94 <myprintf>
1c0041f4:	02810005 	addi.w	$r5,$r0,64(0x40)
1c0041f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0041fc:	03808184 	ori	$r4,$r12,0x20
1c004200:	57f617ff 	bl	-2540(0xffff614) # 1c003814 <EXTI_ClearITPendingBit>
1c004204:	03400000 	andi	$r0,$r0,0x0
1c004208:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00420c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004210:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004214:	4c000020 	jirl	$r0,$r1,0

1c004218 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c004218:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00421c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004220:	29802076 	st.w	$r22,$r3,8(0x8)
1c004224:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004228:	1c000086 	pcaddu12i	$r6,4(0x4)
1c00422c:	029220c6 	addi.w	$r6,$r6,1160(0x488)
1c004230:	0280d405 	addi.w	$r5,$r0,53(0x35)
1c004234:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004238:	0288e084 	addi.w	$r4,$r4,568(0x238)
1c00423c:	57d95bff 	bl	-9896(0xfffd958) # 1c001b94 <myprintf>
1c004240:	02820005 	addi.w	$r5,$r0,128(0x80)
1c004244:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004248:	03808184 	ori	$r4,$r12,0x20
1c00424c:	57f5cbff 	bl	-2616(0xffff5c8) # 1c003814 <EXTI_ClearITPendingBit>
1c004250:	03400000 	andi	$r0,$r0,0x0
1c004254:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004258:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00425c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004260:	4c000020 	jirl	$r0,$r1,0

1c004264 <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c004264:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004268:	29803061 	st.w	$r1,$r3,12(0xc)
1c00426c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004270:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004274:	1c000086 	pcaddu12i	$r6,4(0x4)
1c004278:	029150c6 	addi.w	$r6,$r6,1108(0x454)
1c00427c:	0280e805 	addi.w	$r5,$r0,58(0x3a)
1c004280:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004284:	0287b084 	addi.w	$r4,$r4,492(0x1ec)
1c004288:	57d90fff 	bl	-9972(0xfffd90c) # 1c001b94 <myprintf>
1c00428c:	02840005 	addi.w	$r5,$r0,256(0x100)
1c004290:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004294:	03808184 	ori	$r4,$r12,0x20
1c004298:	57f57fff 	bl	-2692(0xffff57c) # 1c003814 <EXTI_ClearITPendingBit>
1c00429c:	03400000 	andi	$r0,$r0,0x0
1c0042a0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0042a4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0042a8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0042ac:	4c000020 	jirl	$r0,$r1,0

1c0042b0 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c0042b0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0042b4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0042b8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0042bc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0042c0:	1c000086 	pcaddu12i	$r6,4(0x4)
1c0042c4:	029080c6 	addi.w	$r6,$r6,1056(0x420)
1c0042c8:	0280fc05 	addi.w	$r5,$r0,63(0x3f)
1c0042cc:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0042d0:	02868084 	addi.w	$r4,$r4,416(0x1a0)
1c0042d4:	57d8c3ff 	bl	-10048(0xfffd8c0) # 1c001b94 <myprintf>
1c0042d8:	02880005 	addi.w	$r5,$r0,512(0x200)
1c0042dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0042e0:	03808184 	ori	$r4,$r12,0x20
1c0042e4:	57f533ff 	bl	-2768(0xffff530) # 1c003814 <EXTI_ClearITPendingBit>
1c0042e8:	03400000 	andi	$r0,$r0,0x0
1c0042ec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0042f0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0042f4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0042f8:	4c000020 	jirl	$r0,$r1,0

1c0042fc <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c0042fc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004300:	29803061 	st.w	$r1,$r3,12(0xc)
1c004304:	29802076 	st.w	$r22,$r3,8(0x8)
1c004308:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00430c:	1c000086 	pcaddu12i	$r6,4(0x4)
1c004310:	028fb0c6 	addi.w	$r6,$r6,1004(0x3ec)
1c004314:	02811005 	addi.w	$r5,$r0,68(0x44)
1c004318:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00431c:	02855084 	addi.w	$r4,$r4,340(0x154)
1c004320:	57d877ff 	bl	-10124(0xfffd874) # 1c001b94 <myprintf>
1c004324:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c004328:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00432c:	03808184 	ori	$r4,$r12,0x20
1c004330:	57f4e7ff 	bl	-2844(0xffff4e4) # 1c003814 <EXTI_ClearITPendingBit>
1c004334:	03400000 	andi	$r0,$r0,0x0
1c004338:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00433c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004340:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004344:	4c000020 	jirl	$r0,$r1,0

1c004348 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c004348:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00434c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004350:	29802076 	st.w	$r22,$r3,8(0x8)
1c004354:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004358:	1c000086 	pcaddu12i	$r6,4(0x4)
1c00435c:	028ee0c6 	addi.w	$r6,$r6,952(0x3b8)
1c004360:	02812405 	addi.w	$r5,$r0,73(0x49)
1c004364:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004368:	02842084 	addi.w	$r4,$r4,264(0x108)
1c00436c:	57d82bff 	bl	-10200(0xfffd828) # 1c001b94 <myprintf>
1c004370:	03a00005 	ori	$r5,$r0,0x800
1c004374:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004378:	03808184 	ori	$r4,$r12,0x20
1c00437c:	57f49bff 	bl	-2920(0xffff498) # 1c003814 <EXTI_ClearITPendingBit>
1c004380:	03400000 	andi	$r0,$r0,0x0
1c004384:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004388:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00438c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004390:	4c000020 	jirl	$r0,$r1,0

1c004394 <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c004394:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004398:	29803061 	st.w	$r1,$r3,12(0xc)
1c00439c:	29802076 	st.w	$r22,$r3,8(0x8)
1c0043a0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0043a4:	1c000086 	pcaddu12i	$r6,4(0x4)
1c0043a8:	028e10c6 	addi.w	$r6,$r6,900(0x384)
1c0043ac:	02813805 	addi.w	$r5,$r0,78(0x4e)
1c0043b0:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0043b4:	0282f084 	addi.w	$r4,$r4,188(0xbc)
1c0043b8:	57d7dfff 	bl	-10276(0xfffd7dc) # 1c001b94 <myprintf>
1c0043bc:	14000025 	lu12i.w	$r5,1(0x1)
1c0043c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0043c4:	03808184 	ori	$r4,$r12,0x20
1c0043c8:	57f44fff 	bl	-2996(0xffff44c) # 1c003814 <EXTI_ClearITPendingBit>
1c0043cc:	03400000 	andi	$r0,$r0,0x0
1c0043d0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0043d4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0043d8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0043dc:	4c000020 	jirl	$r0,$r1,0

1c0043e0 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c0043e0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0043e4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0043e8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0043ec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0043f0:	1c000086 	pcaddu12i	$r6,4(0x4)
1c0043f4:	028d40c6 	addi.w	$r6,$r6,848(0x350)
1c0043f8:	02814c05 	addi.w	$r5,$r0,83(0x53)
1c0043fc:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004400:	0281c084 	addi.w	$r4,$r4,112(0x70)
1c004404:	57d793ff 	bl	-10352(0xfffd790) # 1c001b94 <myprintf>
1c004408:	14000045 	lu12i.w	$r5,2(0x2)
1c00440c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004410:	03808184 	ori	$r4,$r12,0x20
1c004414:	57f403ff 	bl	-3072(0xffff400) # 1c003814 <EXTI_ClearITPendingBit>
1c004418:	03400000 	andi	$r0,$r0,0x0
1c00441c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004420:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004424:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004428:	4c000020 	jirl	$r0,$r1,0

1c00442c <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c00442c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004430:	29803061 	st.w	$r1,$r3,12(0xc)
1c004434:	29802076 	st.w	$r22,$r3,8(0x8)
1c004438:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00443c:	1c000086 	pcaddu12i	$r6,4(0x4)
1c004440:	028c70c6 	addi.w	$r6,$r6,796(0x31c)
1c004444:	02816005 	addi.w	$r5,$r0,88(0x58)
1c004448:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00444c:	02809084 	addi.w	$r4,$r4,36(0x24)
1c004450:	57d747ff 	bl	-10428(0xfffd744) # 1c001b94 <myprintf>
1c004454:	14000085 	lu12i.w	$r5,4(0x4)
1c004458:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00445c:	03808184 	ori	$r4,$r12,0x20
1c004460:	57f3b7ff 	bl	-3148(0xffff3b4) # 1c003814 <EXTI_ClearITPendingBit>
1c004464:	03400000 	andi	$r0,$r0,0x0
1c004468:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00446c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004470:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004474:	4c000020 	jirl	$r0,$r1,0

1c004478 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c004478:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00447c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004480:	29802076 	st.w	$r22,$r3,8(0x8)
1c004484:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004488:	1c000086 	pcaddu12i	$r6,4(0x4)
1c00448c:	028ba0c6 	addi.w	$r6,$r6,744(0x2e8)
1c004490:	02817405 	addi.w	$r5,$r0,93(0x5d)
1c004494:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004498:	02bf6084 	addi.w	$r4,$r4,-40(0xfd8)
1c00449c:	57d6fbff 	bl	-10504(0xfffd6f8) # 1c001b94 <myprintf>
1c0044a0:	14000105 	lu12i.w	$r5,8(0x8)
1c0044a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0044a8:	03808184 	ori	$r4,$r12,0x20
1c0044ac:	57f36bff 	bl	-3224(0xffff368) # 1c003814 <EXTI_ClearITPendingBit>
1c0044b0:	03400000 	andi	$r0,$r0,0x0
1c0044b4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0044b8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0044bc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0044c0:	4c000020 	jirl	$r0,$r1,0

1c0044c4 <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c0044c4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0044c8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0044cc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0044d0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0044d4:	1c000086 	pcaddu12i	$r6,4(0x4)
1c0044d8:	028ad0c6 	addi.w	$r6,$r6,692(0x2b4)
1c0044dc:	02818c05 	addi.w	$r5,$r0,99(0x63)
1c0044e0:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0044e4:	02be3084 	addi.w	$r4,$r4,-116(0xf8c)
1c0044e8:	57d6afff 	bl	-10580(0xfffd6ac) # 1c001b94 <myprintf>
1c0044ec:	14000205 	lu12i.w	$r5,16(0x10)
1c0044f0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0044f4:	03808184 	ori	$r4,$r12,0x20
1c0044f8:	57f31fff 	bl	-3300(0xffff31c) # 1c003814 <EXTI_ClearITPendingBit>
1c0044fc:	03400000 	andi	$r0,$r0,0x0
1c004500:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004504:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004508:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00450c:	4c000020 	jirl	$r0,$r1,0

1c004510 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c004510:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004514:	29803061 	st.w	$r1,$r3,12(0xc)
1c004518:	29802076 	st.w	$r22,$r3,8(0x8)
1c00451c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004520:	1c000086 	pcaddu12i	$r6,4(0x4)
1c004524:	028a00c6 	addi.w	$r6,$r6,640(0x280)
1c004528:	0281a005 	addi.w	$r5,$r0,104(0x68)
1c00452c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004530:	02bd0084 	addi.w	$r4,$r4,-192(0xf40)
1c004534:	57d663ff 	bl	-10656(0xfffd660) # 1c001b94 <myprintf>
1c004538:	14000405 	lu12i.w	$r5,32(0x20)
1c00453c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004540:	03808184 	ori	$r4,$r12,0x20
1c004544:	57f2d3ff 	bl	-3376(0xffff2d0) # 1c003814 <EXTI_ClearITPendingBit>
1c004548:	03400000 	andi	$r0,$r0,0x0
1c00454c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004550:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004554:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004558:	4c000020 	jirl	$r0,$r1,0

1c00455c <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c00455c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004560:	29803061 	st.w	$r1,$r3,12(0xc)
1c004564:	29802076 	st.w	$r22,$r3,8(0x8)
1c004568:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00456c:	1c000086 	pcaddu12i	$r6,4(0x4)
1c004570:	028930c6 	addi.w	$r6,$r6,588(0x24c)
1c004574:	0281b405 	addi.w	$r5,$r0,109(0x6d)
1c004578:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00457c:	02bbd084 	addi.w	$r4,$r4,-268(0xef4)
1c004580:	57d617ff 	bl	-10732(0xfffd614) # 1c001b94 <myprintf>
1c004584:	14000805 	lu12i.w	$r5,64(0x40)
1c004588:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00458c:	03808184 	ori	$r4,$r12,0x20
1c004590:	57f287ff 	bl	-3452(0xffff284) # 1c003814 <EXTI_ClearITPendingBit>
1c004594:	03400000 	andi	$r0,$r0,0x0
1c004598:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00459c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0045a0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0045a4:	4c000020 	jirl	$r0,$r1,0

1c0045a8 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c0045a8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0045ac:	29803061 	st.w	$r1,$r3,12(0xc)
1c0045b0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0045b4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0045b8:	1c000086 	pcaddu12i	$r6,4(0x4)
1c0045bc:	028860c6 	addi.w	$r6,$r6,536(0x218)
1c0045c0:	0281c805 	addi.w	$r5,$r0,114(0x72)
1c0045c4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0045c8:	02baa084 	addi.w	$r4,$r4,-344(0xea8)
1c0045cc:	57d5cbff 	bl	-10808(0xfffd5c8) # 1c001b94 <myprintf>
1c0045d0:	14001005 	lu12i.w	$r5,128(0x80)
1c0045d4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0045d8:	03808184 	ori	$r4,$r12,0x20
1c0045dc:	57f23bff 	bl	-3528(0xffff238) # 1c003814 <EXTI_ClearITPendingBit>
1c0045e0:	03400000 	andi	$r0,$r0,0x0
1c0045e4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0045e8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0045ec:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0045f0:	4c000020 	jirl	$r0,$r1,0

1c0045f4 <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c0045f4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0045f8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0045fc:	29802076 	st.w	$r22,$r3,8(0x8)
1c004600:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004604:	1c000086 	pcaddu12i	$r6,4(0x4)
1c004608:	028790c6 	addi.w	$r6,$r6,484(0x1e4)
1c00460c:	0281dc05 	addi.w	$r5,$r0,119(0x77)
1c004610:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004614:	02b97084 	addi.w	$r4,$r4,-420(0xe5c)
1c004618:	57d57fff 	bl	-10884(0xfffd57c) # 1c001b94 <myprintf>
1c00461c:	14002005 	lu12i.w	$r5,256(0x100)
1c004620:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004624:	03808184 	ori	$r4,$r12,0x20
1c004628:	57f1efff 	bl	-3604(0xffff1ec) # 1c003814 <EXTI_ClearITPendingBit>
1c00462c:	03400000 	andi	$r0,$r0,0x0
1c004630:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004634:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004638:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00463c:	4c000020 	jirl	$r0,$r1,0

1c004640 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c004640:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004644:	29803061 	st.w	$r1,$r3,12(0xc)
1c004648:	29802076 	st.w	$r22,$r3,8(0x8)
1c00464c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004650:	1c000086 	pcaddu12i	$r6,4(0x4)
1c004654:	0286c0c6 	addi.w	$r6,$r6,432(0x1b0)
1c004658:	0281f005 	addi.w	$r5,$r0,124(0x7c)
1c00465c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004660:	02b84084 	addi.w	$r4,$r4,-496(0xe10)
1c004664:	57d533ff 	bl	-10960(0xfffd530) # 1c001b94 <myprintf>
1c004668:	14004005 	lu12i.w	$r5,512(0x200)
1c00466c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004670:	03808184 	ori	$r4,$r12,0x20
1c004674:	57f1a3ff 	bl	-3680(0xffff1a0) # 1c003814 <EXTI_ClearITPendingBit>
1c004678:	03400000 	andi	$r0,$r0,0x0
1c00467c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004680:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004684:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004688:	4c000020 	jirl	$r0,$r1,0

1c00468c <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c00468c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004690:	29803061 	st.w	$r1,$r3,12(0xc)
1c004694:	29802076 	st.w	$r22,$r3,8(0x8)
1c004698:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00469c:	1c000086 	pcaddu12i	$r6,4(0x4)
1c0046a0:	0285f0c6 	addi.w	$r6,$r6,380(0x17c)
1c0046a4:	02820405 	addi.w	$r5,$r0,129(0x81)
1c0046a8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0046ac:	02b71084 	addi.w	$r4,$r4,-572(0xdc4)
1c0046b0:	57d4e7ff 	bl	-11036(0xfffd4e4) # 1c001b94 <myprintf>
1c0046b4:	14008005 	lu12i.w	$r5,1024(0x400)
1c0046b8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0046bc:	03808184 	ori	$r4,$r12,0x20
1c0046c0:	57f157ff 	bl	-3756(0xffff154) # 1c003814 <EXTI_ClearITPendingBit>
1c0046c4:	03400000 	andi	$r0,$r0,0x0
1c0046c8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0046cc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0046d0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0046d4:	4c000020 	jirl	$r0,$r1,0

1c0046d8 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c0046d8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0046dc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0046e0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0046e4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0046e8:	1c000086 	pcaddu12i	$r6,4(0x4)
1c0046ec:	028520c6 	addi.w	$r6,$r6,328(0x148)
1c0046f0:	02821805 	addi.w	$r5,$r0,134(0x86)
1c0046f4:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0046f8:	02b5e084 	addi.w	$r4,$r4,-648(0xd78)
1c0046fc:	57d49bff 	bl	-11112(0xfffd498) # 1c001b94 <myprintf>
1c004700:	14010005 	lu12i.w	$r5,2048(0x800)
1c004704:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004708:	03808184 	ori	$r4,$r12,0x20
1c00470c:	57f10bff 	bl	-3832(0xffff108) # 1c003814 <EXTI_ClearITPendingBit>
1c004710:	03400000 	andi	$r0,$r0,0x0
1c004714:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004718:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00471c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004720:	4c000020 	jirl	$r0,$r1,0

1c004724 <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c004724:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004728:	29803061 	st.w	$r1,$r3,12(0xc)
1c00472c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004730:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004734:	1c000086 	pcaddu12i	$r6,4(0x4)
1c004738:	028450c6 	addi.w	$r6,$r6,276(0x114)
1c00473c:	02822c05 	addi.w	$r5,$r0,139(0x8b)
1c004740:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004744:	02b4b084 	addi.w	$r4,$r4,-724(0xd2c)
1c004748:	57d44fff 	bl	-11188(0xfffd44c) # 1c001b94 <myprintf>
1c00474c:	14020005 	lu12i.w	$r5,4096(0x1000)
1c004750:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004754:	03808184 	ori	$r4,$r12,0x20
1c004758:	57f0bfff 	bl	-3908(0xffff0bc) # 1c003814 <EXTI_ClearITPendingBit>
1c00475c:	03400000 	andi	$r0,$r0,0x0
1c004760:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004764:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004768:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00476c:	4c000020 	jirl	$r0,$r1,0

1c004770 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c004770:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004774:	29803061 	st.w	$r1,$r3,12(0xc)
1c004778:	29802076 	st.w	$r22,$r3,8(0x8)
1c00477c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004780:	1c000086 	pcaddu12i	$r6,4(0x4)
1c004784:	028380c6 	addi.w	$r6,$r6,224(0xe0)
1c004788:	02824005 	addi.w	$r5,$r0,144(0x90)
1c00478c:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004790:	02b38084 	addi.w	$r4,$r4,-800(0xce0)
1c004794:	57d403ff 	bl	-11264(0xfffd400) # 1c001b94 <myprintf>
1c004798:	14040005 	lu12i.w	$r5,8192(0x2000)
1c00479c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0047a0:	03808184 	ori	$r4,$r12,0x20
1c0047a4:	57f073ff 	bl	-3984(0xffff070) # 1c003814 <EXTI_ClearITPendingBit>
1c0047a8:	03400000 	andi	$r0,$r0,0x0
1c0047ac:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0047b0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0047b4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0047b8:	4c000020 	jirl	$r0,$r1,0

1c0047bc <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c0047bc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0047c0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0047c4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0047c8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0047cc:	1c000086 	pcaddu12i	$r6,4(0x4)
1c0047d0:	0282b0c6 	addi.w	$r6,$r6,172(0xac)
1c0047d4:	02825405 	addi.w	$r5,$r0,149(0x95)
1c0047d8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0047dc:	02b25084 	addi.w	$r4,$r4,-876(0xc94)
1c0047e0:	57d3b7ff 	bl	-11340(0xfffd3b4) # 1c001b94 <myprintf>
1c0047e4:	14080005 	lu12i.w	$r5,16384(0x4000)
1c0047e8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0047ec:	03808184 	ori	$r4,$r12,0x20
1c0047f0:	57f027ff 	bl	-4060(0xffff024) # 1c003814 <EXTI_ClearITPendingBit>
1c0047f4:	03400000 	andi	$r0,$r0,0x0
1c0047f8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0047fc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004800:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004804:	4c000020 	jirl	$r0,$r1,0

1c004808 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c004808:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00480c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004810:	29802076 	st.w	$r22,$r3,8(0x8)
1c004814:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004818:	1c000086 	pcaddu12i	$r6,4(0x4)
1c00481c:	0281e0c6 	addi.w	$r6,$r6,120(0x78)
1c004820:	02826805 	addi.w	$r5,$r0,154(0x9a)
1c004824:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004828:	02b12084 	addi.w	$r4,$r4,-952(0xc48)
1c00482c:	57d36bff 	bl	-11416(0xfffd368) # 1c001b94 <myprintf>
1c004830:	14100005 	lu12i.w	$r5,32768(0x8000)
1c004834:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004838:	03808184 	ori	$r4,$r12,0x20
1c00483c:	57efdbff 	bl	-4136(0xfffefd8) # 1c003814 <EXTI_ClearITPendingBit>
1c004840:	03400000 	andi	$r0,$r0,0x0
1c004844:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004848:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00484c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004850:	4c000020 	jirl	$r0,$r1,0

1c004854 <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c004854:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004858:	29803061 	st.w	$r1,$r3,12(0xc)
1c00485c:	29802076 	st.w	$r22,$r3,8(0x8)
1c004860:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004864:	1c000086 	pcaddu12i	$r6,4(0x4)
1c004868:	028110c6 	addi.w	$r6,$r6,68(0x44)
1c00486c:	02827c05 	addi.w	$r5,$r0,159(0x9f)
1c004870:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004874:	02aff084 	addi.w	$r4,$r4,-1028(0xbfc)
1c004878:	57d31fff 	bl	-11492(0xfffd31c) # 1c001b94 <myprintf>
1c00487c:	14200005 	lu12i.w	$r5,65536(0x10000)
1c004880:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004884:	03808184 	ori	$r4,$r12,0x20
1c004888:	57ef8fff 	bl	-4212(0xfffef8c) # 1c003814 <EXTI_ClearITPendingBit>
1c00488c:	03400000 	andi	$r0,$r0,0x0
1c004890:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004894:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004898:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00489c:	4c000020 	jirl	$r0,$r1,0

1c0048a0 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c0048a0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0048a4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0048a8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0048ac:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0048b0:	1c000086 	pcaddu12i	$r6,4(0x4)
1c0048b4:	028040c6 	addi.w	$r6,$r6,16(0x10)
1c0048b8:	02829405 	addi.w	$r5,$r0,165(0xa5)
1c0048bc:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0048c0:	02aec084 	addi.w	$r4,$r4,-1104(0xbb0)
1c0048c4:	57d2d3ff 	bl	-11568(0xfffd2d0) # 1c001b94 <myprintf>
1c0048c8:	14400005 	lu12i.w	$r5,131072(0x20000)
1c0048cc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0048d0:	03808184 	ori	$r4,$r12,0x20
1c0048d4:	57ef43ff 	bl	-4288(0xfffef40) # 1c003814 <EXTI_ClearITPendingBit>
1c0048d8:	03400000 	andi	$r0,$r0,0x0
1c0048dc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0048e0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0048e4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0048e8:	4c000020 	jirl	$r0,$r1,0

1c0048ec <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c0048ec:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0048f0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0048f4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0048f8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0048fc:	1c000086 	pcaddu12i	$r6,4(0x4)
1c004900:	02bf70c6 	addi.w	$r6,$r6,-36(0xfdc)
1c004904:	0282a805 	addi.w	$r5,$r0,170(0xaa)
1c004908:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00490c:	02ad9084 	addi.w	$r4,$r4,-1180(0xb64)
1c004910:	57d287ff 	bl	-11644(0xfffd284) # 1c001b94 <myprintf>
1c004914:	14800005 	lu12i.w	$r5,262144(0x40000)
1c004918:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00491c:	03808184 	ori	$r4,$r12,0x20
1c004920:	57eef7ff 	bl	-4364(0xfffeef4) # 1c003814 <EXTI_ClearITPendingBit>
1c004924:	03400000 	andi	$r0,$r0,0x0
1c004928:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00492c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004930:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004934:	4c000020 	jirl	$r0,$r1,0

1c004938 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c004938:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00493c:	29803061 	st.w	$r1,$r3,12(0xc)
1c004940:	29802076 	st.w	$r22,$r3,8(0x8)
1c004944:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004948:	1c000086 	pcaddu12i	$r6,4(0x4)
1c00494c:	02bea0c6 	addi.w	$r6,$r6,-88(0xfa8)
1c004950:	0282bc05 	addi.w	$r5,$r0,175(0xaf)
1c004954:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004958:	02ac6084 	addi.w	$r4,$r4,-1256(0xb18)
1c00495c:	57d23bff 	bl	-11720(0xfffd238) # 1c001b94 <myprintf>
1c004960:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c004964:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004968:	03808184 	ori	$r4,$r12,0x20
1c00496c:	57eeabff 	bl	-4440(0xfffeea8) # 1c003814 <EXTI_ClearITPendingBit>
1c004970:	03400000 	andi	$r0,$r0,0x0
1c004974:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004978:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00497c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004980:	4c000020 	jirl	$r0,$r1,0

1c004984 <ext_handler>:
ext_handler():
1c004984:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004988:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00498c:	29806076 	st.w	$r22,$r3,24(0x18)
1c004990:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004994:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004998:	0380f18c 	ori	$r12,$r12,0x3c
1c00499c:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c0049a0:	2980018d 	st.w	$r13,$r12,0
1c0049a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0049a8:	0380818c 	ori	$r12,$r12,0x20
1c0049ac:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c0049b0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0049b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0049b8:	0380818c 	ori	$r12,$r12,0x20
1c0049bc:	2880018c 	ld.w	$r12,$r12,0
1c0049c0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0049c4:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0049c8:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0049cc:	0014b1ac 	and	$r12,$r13,$r12
1c0049d0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0049d4:	03400000 	andi	$r0,$r0,0x0
1c0049d8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0049dc:	50004000 	b	64(0x40) # 1c004a1c <ext_handler+0x98>
1c0049e0:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c0049e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0049e8:	0017b1ac 	srl.w	$r12,$r13,$r12
1c0049ec:	0340058c 	andi	$r12,$r12,0x1
1c0049f0:	40002180 	beqz	$r12,32(0x20) # 1c004a10 <ext_handler+0x8c>
1c0049f4:	1c00008d 	pcaddu12i	$r13,4(0x4)
1c0049f8:	02ad41ad 	addi.w	$r13,$r13,-1200(0xb50)
1c0049fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004a00:	0040898c 	slli.w	$r12,$r12,0x2
1c004a04:	001031ac 	add.w	$r12,$r13,$r12
1c004a08:	2880018c 	ld.w	$r12,$r12,0
1c004a0c:	4c000181 	jirl	$r1,$r12,0
1c004a10:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004a14:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004a18:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004a1c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004a20:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c004a24:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c0049e0 <ext_handler+0x5c>
1c004a28:	03400000 	andi	$r0,$r0,0x0
1c004a2c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004a30:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004a34:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004a38:	4c000020 	jirl	$r0,$r1,0

1c004a3c <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c004a3c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004a40:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004a44:	29806076 	st.w	$r22,$r3,24(0x18)
1c004a48:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004a4c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a50:	0380f18c 	ori	$r12,$r12,0x3c
1c004a54:	1400020d 	lu12i.w	$r13,16(0x10)
1c004a58:	2980018d 	st.w	$r13,$r12,0
1c004a5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004a60:	0380118c 	ori	$r12,$r12,0x4
1c004a64:	2880018c 	ld.w	$r12,$r12,0
1c004a68:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004a6c:	57eefbff 	bl	-4360(0xfffeef8) # 1c003964 <WDG_DogFeed>
1c004a70:	02801804 	addi.w	$r4,$r0,6(0x6)
1c004a74:	57e7d7ff 	bl	-6188(0xfffe7d4) # 1c003248 <Wake_Set>
1c004a78:	03400000 	andi	$r0,$r0,0x0
1c004a7c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004a80:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004a84:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004a88:	4c000020 	jirl	$r0,$r1,0

1c004a8c <TOUCH>:
TOUCH():
1c004a8c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004a90:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004a94:	29806076 	st.w	$r22,$r3,24(0x18)
1c004a98:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004a9c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004aa0:	0380118c 	ori	$r12,$r12,0x4
1c004aa4:	2880018c 	ld.w	$r12,$r12,0
1c004aa8:	0044c18c 	srli.w	$r12,$r12,0x10
1c004aac:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004ab0:	037ffd8c 	andi	$r12,$r12,0xfff
1c004ab4:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c004ab8:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004abc:	0380118c 	ori	$r12,$r12,0x4
1c004ac0:	2880018c 	ld.w	$r12,$r12,0
1c004ac4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004ac8:	03403d8c 	andi	$r12,$r12,0xf
1c004acc:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c004ad0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004ad4:	0380f18c 	ori	$r12,$r12,0x3c
1c004ad8:	1400040d 	lu12i.w	$r13,32(0x20)
1c004adc:	2980018d 	st.w	$r13,$r12,0
1c004ae0:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004ae4:	0380118c 	ori	$r12,$r12,0x4
1c004ae8:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c004aec:	2980018d 	st.w	$r13,$r12,0
1c004af0:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c004af4:	00150184 	move	$r4,$r12
1c004af8:	57efdfff 	bl	-4132(0xfffefdc) # 1c003ad4 <Printf_KeyType>
1c004afc:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c004b00:	00150184 	move	$r4,$r12
1c004b04:	57ef57ff 	bl	-4268(0xfffef54) # 1c003a58 <Printf_KeyChannel>
1c004b08:	57f05bff 	bl	-4008(0xffff058) # 1c003b60 <Printf_KeyVal>
1c004b0c:	03400000 	andi	$r0,$r0,0x0
1c004b10:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004b14:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004b18:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004b1c:	4c000020 	jirl	$r0,$r1,0

1c004b20 <UART2_INT>:
UART2_INT():
1c004b20:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004b24:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004b28:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004b2c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b30:	0380f18c 	ori	$r12,$r12,0x3c
1c004b34:	1400080d 	lu12i.w	$r13,64(0x40)
1c004b38:	2980018d 	st.w	$r13,$r12,0
1c004b3c:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c004b40:	0380098c 	ori	$r12,$r12,0x2
1c004b44:	2a00018c 	ld.bu	$r12,$r12,0
1c004b48:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004b4c:	03400000 	andi	$r0,$r0,0x0
1c004b50:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004b54:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004b58:	4c000020 	jirl	$r0,$r1,0

1c004b5c <BAT_FAIL>:
BAT_FAIL():
1c004b5c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004b60:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004b64:	29806076 	st.w	$r22,$r3,24(0x18)
1c004b68:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004b6c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b70:	0380118c 	ori	$r12,$r12,0x4
1c004b74:	2880018c 	ld.w	$r12,$r12,0
1c004b78:	0044cd8c 	srli.w	$r12,$r12,0x13
1c004b7c:	03407d8c 	andi	$r12,$r12,0x1f
1c004b80:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004b84:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b88:	0380118c 	ori	$r12,$r12,0x4
1c004b8c:	2880018e 	ld.w	$r14,$r12,0
1c004b90:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004b94:	0380f18c 	ori	$r12,$r12,0x3c
1c004b98:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c004b9c:	0014b5cd 	and	$r13,$r14,$r13
1c004ba0:	2980018d 	st.w	$r13,$r12,0
1c004ba4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004ba8:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c004bac:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c004c1c <BAT_FAIL+0xc0>
1c004bb0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004bb4:	0040898d 	slli.w	$r13,$r12,0x2
1c004bb8:	1c00008c 	pcaddu12i	$r12,4(0x4)
1c004bbc:	02a8318c 	addi.w	$r12,$r12,-1524(0xa0c)
1c004bc0:	001031ac 	add.w	$r12,$r13,$r12
1c004bc4:	2880018c 	ld.w	$r12,$r12,0
1c004bc8:	4c000180 	jirl	$r0,$r12,0
1c004bcc:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004bd0:	02a39084 	addi.w	$r4,$r4,-1820(0x8e4)
1c004bd4:	57cfc3ff 	bl	-12352(0xfffcfc0) # 1c001b94 <myprintf>
1c004bd8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004bdc:	0380118c 	ori	$r12,$r12,0x4
1c004be0:	29800180 	st.w	$r0,$r12,0
1c004be4:	50003c00 	b	60(0x3c) # 1c004c20 <BAT_FAIL+0xc4>
1c004be8:	1c000084 	pcaddu12i	$r4,4(0x4)
1c004bec:	02a3c084 	addi.w	$r4,$r4,-1808(0x8f0)
1c004bf0:	57cfa7ff 	bl	-12380(0xfffcfa4) # 1c001b94 <myprintf>
1c004bf4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004bf8:	0380118c 	ori	$r12,$r12,0x4
1c004bfc:	2880018e 	ld.w	$r14,$r12,0
1c004c00:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004c04:	0380118c 	ori	$r12,$r12,0x4
1c004c08:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c004c0c:	03bffdad 	ori	$r13,$r13,0xfff
1c004c10:	0014b5cd 	and	$r13,$r14,$r13
1c004c14:	2980018d 	st.w	$r13,$r12,0
1c004c18:	50000800 	b	8(0x8) # 1c004c20 <BAT_FAIL+0xc4>
1c004c1c:	03400000 	andi	$r0,$r0,0x0
1c004c20:	03400000 	andi	$r0,$r0,0x0
1c004c24:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004c28:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004c2c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004c30:	4c000020 	jirl	$r0,$r1,0

1c004c34 <intc_handler>:
intc_handler():
1c004c34:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004c38:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004c3c:	29806076 	st.w	$r22,$r3,24(0x18)
1c004c40:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004c44:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004c48:	0380158c 	ori	$r12,$r12,0x5
1c004c4c:	2a00018c 	ld.bu	$r12,$r12,0
1c004c50:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004c54:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004c58:	0340058c 	andi	$r12,$r12,0x1
1c004c5c:	40014180 	beqz	$r12,320(0x140) # 1c004d9c <intc_handler+0x168>
1c004c60:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004c64:	57f2a7ff 	bl	-3420(0xffff2a4) # 1c003f08 <TIM_GetITStatus>
1c004c68:	0015008c 	move	$r12,$r4
1c004c6c:	40013180 	beqz	$r12,304(0x130) # 1c004d9c <intc_handler+0x168>
1c004c70:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004c74:	028e418c 	addi.w	$r12,$r12,912(0x390)
1c004c78:	2a00018c 	ld.bu	$r12,$r12,0
1c004c7c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004c80:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004c84:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004c88:	028df18c 	addi.w	$r12,$r12,892(0x37c)
1c004c8c:	2900018d 	st.b	$r13,$r12,0
1c004c90:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004c94:	028dc18c 	addi.w	$r12,$r12,880(0x370)
1c004c98:	2a00018d 	ld.bu	$r13,$r12,0
1c004c9c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c004ca0:	5c0039ac 	bne	$r13,$r12,56(0x38) # 1c004cd8 <intc_handler+0xa4>
1c004ca4:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004ca8:	028d718c 	addi.w	$r12,$r12,860(0x35c)
1c004cac:	29000180 	st.b	$r0,$r12,0
1c004cb0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004cb4:	288dd18c 	ld.w	$r12,$r12,884(0x374)
1c004cb8:	2800018c 	ld.b	$r12,$r12,0
1c004cbc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004cc0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004cc4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004cc8:	00005d8d 	ext.w.b	$r13,$r12
1c004ccc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004cd0:	288d618c 	ld.w	$r12,$r12,856(0x358)
1c004cd4:	2900018d 	st.b	$r13,$r12,0
1c004cd8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004cdc:	288d318c 	ld.w	$r12,$r12,844(0x34c)
1c004ce0:	2800018d 	ld.b	$r13,$r12,0
1c004ce4:	0280f00c 	addi.w	$r12,$r0,60(0x3c)
1c004ce8:	5c0039ac 	bne	$r13,$r12,56(0x38) # 1c004d20 <intc_handler+0xec>
1c004cec:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004cf0:	288ce18c 	ld.w	$r12,$r12,824(0x338)
1c004cf4:	29000180 	st.b	$r0,$r12,0
1c004cf8:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004cfc:	288ca18c 	ld.w	$r12,$r12,808(0x328)
1c004d00:	2800018c 	ld.b	$r12,$r12,0
1c004d04:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004d08:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004d0c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004d10:	00005d8d 	ext.w.b	$r13,$r12
1c004d14:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004d18:	288c318c 	ld.w	$r12,$r12,780(0x30c)
1c004d1c:	2900018d 	st.b	$r13,$r12,0
1c004d20:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004d24:	288c018c 	ld.w	$r12,$r12,768(0x300)
1c004d28:	2800018d 	ld.b	$r13,$r12,0
1c004d2c:	0280f00c 	addi.w	$r12,$r0,60(0x3c)
1c004d30:	5c0039ac 	bne	$r13,$r12,56(0x38) # 1c004d68 <intc_handler+0x134>
1c004d34:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004d38:	288bb18c 	ld.w	$r12,$r12,748(0x2ec)
1c004d3c:	29000180 	st.b	$r0,$r12,0
1c004d40:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004d44:	288b518c 	ld.w	$r12,$r12,724(0x2d4)
1c004d48:	2800018c 	ld.b	$r12,$r12,0
1c004d4c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004d50:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004d54:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004d58:	00005d8d 	ext.w.b	$r13,$r12
1c004d5c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004d60:	288ae18c 	ld.w	$r12,$r12,696(0x2b8)
1c004d64:	2900018d 	st.b	$r13,$r12,0
1c004d68:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004d6c:	288ab18c 	ld.w	$r12,$r12,684(0x2ac)
1c004d70:	2800018d 	ld.b	$r13,$r12,0
1c004d74:	0280600c 	addi.w	$r12,$r0,24(0x18)
1c004d78:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c004d88 <intc_handler+0x154>
1c004d7c:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004d80:	288a618c 	ld.w	$r12,$r12,664(0x298)
1c004d84:	29000180 	st.b	$r0,$r12,0
1c004d88:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004d8c:	57f1cbff 	bl	-3640(0xffff1c8) # 1c003f54 <TIM_ClearIT>
1c004d90:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004d94:	029db084 	addi.w	$r4,$r4,1900(0x76c)
1c004d98:	57cdffff 	bl	-12804(0xfffcdfc) # 1c001b94 <myprintf>
1c004d9c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004da0:	0340118c 	andi	$r12,$r12,0x4
1c004da4:	40001580 	beqz	$r12,20(0x14) # 1c004db8 <intc_handler+0x184>
1c004da8:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004dac:	03800d8c 	ori	$r12,$r12,0x3
1c004db0:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c004db4:	2900018d 	st.b	$r13,$r12,0
1c004db8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004dbc:	0340218c 	andi	$r12,$r12,0x8
1c004dc0:	40007d80 	beqz	$r12,124(0x7c) # 1c004e3c <intc_handler+0x208>
1c004dc4:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c004dc8:	0380098c 	ori	$r12,$r12,0x2
1c004dcc:	2a00018c 	ld.bu	$r12,$r12,0
1c004dd0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004dd4:	0340118c 	andi	$r12,$r12,0x4
1c004dd8:	40005580 	beqz	$r12,84(0x54) # 1c004e2c <intc_handler+0x1f8>
1c004ddc:	50003800 	b	56(0x38) # 1c004e14 <intc_handler+0x1e0>
1c004de0:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c004de4:	57dc73ff 	bl	-9104(0xfffdc70) # 1c002a54 <UART_ReceiveData>
1c004de8:	0015008c 	move	$r12,$r4
1c004dec:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004df0:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c004df4:	0288458c 	addi.w	$r12,$r12,529(0x211)
1c004df8:	2900018d 	st.b	$r13,$r12,0
1c004dfc:	02800406 	addi.w	$r6,$r0,1(0x1)
1c004e00:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c004e04:	028804a5 	addi.w	$r5,$r5,513(0x201)
1c004e08:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004e0c:	28884084 	ld.w	$r4,$r4,528(0x210)
1c004e10:	54172800 	bl	5928(0x1728) # 1c006538 <Queue_Wirte>
1c004e14:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c004e18:	0380158c 	ori	$r12,$r12,0x5
1c004e1c:	2a00018c 	ld.bu	$r12,$r12,0
1c004e20:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004e24:	0340058c 	andi	$r12,$r12,0x1
1c004e28:	47ffb99f 	bnez	$r12,-72(0x7fffb8) # 1c004de0 <intc_handler+0x1ac>
1c004e2c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004e30:	03800d8c 	ori	$r12,$r12,0x3
1c004e34:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c004e38:	2900018d 	st.b	$r13,$r12,0
1c004e3c:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004e40:	03800d8c 	ori	$r12,$r12,0x3
1c004e44:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c004e48:	2900018d 	st.b	$r13,$r12,0
1c004e4c:	03400000 	andi	$r0,$r0,0x0
1c004e50:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004e54:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004e58:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004e5c:	4c000020 	jirl	$r0,$r1,0

1c004e60 <TIMER_HANDLER>:
TIMER_HANDLER():
1c004e60:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004e64:	29803061 	st.w	$r1,$r3,12(0xc)
1c004e68:	29802076 	st.w	$r22,$r3,8(0x8)
1c004e6c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004e70:	57e3b7ff 	bl	-7244(0xfffe3b4) # 1c003224 <Set_Timer_clear>
1c004e74:	1c000064 	pcaddu12i	$r4,3(0x3)
1c004e78:	029ac084 	addi.w	$r4,$r4,1712(0x6b0)
1c004e7c:	57cd1bff 	bl	-13032(0xfffcd18) # 1c001b94 <myprintf>
1c004e80:	57e387ff 	bl	-7292(0xfffe384) # 1c003204 <Set_Timer_stop>
1c004e84:	03400000 	andi	$r0,$r0,0x0
1c004e88:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004e8c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004e90:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004e94:	4c000020 	jirl	$r0,$r1,0

1c004e98 <IIC_Delay>:
IIC_Delay():
1c004e98:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004e9c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004ea0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004ea4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004ea8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004eac:	50001000 	b	16(0x10) # 1c004ebc <IIC_Delay+0x24>
1c004eb0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004eb4:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c004eb8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004ebc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004ec0:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c004eb0 <IIC_Delay+0x18>
1c004ec4:	03400000 	andi	$r0,$r0,0x0
1c004ec8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004ecc:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004ed0:	4c000020 	jirl	$r0,$r1,0

1c004ed4 <IIC_Init>:
IIC_Init():
1c004ed4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004ed8:	29803061 	st.w	$r1,$r3,12(0xc)
1c004edc:	29802076 	st.w	$r22,$r3,8(0x8)
1c004ee0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004ee4:	00150005 	move	$r5,$r0
1c004ee8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004eec:	57c76bff 	bl	-14488(0xfffc768) # 1c001654 <gpio_pin_remap>
1c004ef0:	00150005 	move	$r5,$r0
1c004ef4:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004ef8:	57c75fff 	bl	-14500(0xfffc75c) # 1c001654 <gpio_pin_remap>
1c004efc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004f00:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004f04:	57c95fff 	bl	-13988(0xfffc95c) # 1c001860 <gpio_set_direction>
1c004f08:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004f0c:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004f10:	57c953ff 	bl	-14000(0xfffc950) # 1c001860 <gpio_set_direction>
1c004f14:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004f18:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004f1c:	57c6c3ff 	bl	-14656(0xfffc6c0) # 1c0015dc <gpio_write_pin>
1c004f20:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004f24:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004f28:	57c6b7ff 	bl	-14668(0xfffc6b4) # 1c0015dc <gpio_write_pin>
1c004f2c:	03400000 	andi	$r0,$r0,0x0
1c004f30:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004f34:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004f38:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004f3c:	4c000020 	jirl	$r0,$r1,0

1c004f40 <SDA_IN>:
SDA_IN():
1c004f40:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004f44:	29803061 	st.w	$r1,$r3,12(0xc)
1c004f48:	29802076 	st.w	$r22,$r3,8(0x8)
1c004f4c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004f50:	00150005 	move	$r5,$r0
1c004f54:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004f58:	57c90bff 	bl	-14072(0xfffc908) # 1c001860 <gpio_set_direction>
1c004f5c:	03400000 	andi	$r0,$r0,0x0
1c004f60:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004f64:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004f68:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004f6c:	4c000020 	jirl	$r0,$r1,0

1c004f70 <SDA_OUT>:
SDA_OUT():
1c004f70:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004f74:	29803061 	st.w	$r1,$r3,12(0xc)
1c004f78:	29802076 	st.w	$r22,$r3,8(0x8)
1c004f7c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004f80:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004f84:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004f88:	57c8dbff 	bl	-14120(0xfffc8d8) # 1c001860 <gpio_set_direction>
1c004f8c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004f90:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004f94:	57c64bff 	bl	-14776(0xfffc648) # 1c0015dc <gpio_write_pin>
1c004f98:	03400000 	andi	$r0,$r0,0x0
1c004f9c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004fa0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004fa4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004fa8:	4c000020 	jirl	$r0,$r1,0

1c004fac <IIC_Start>:
IIC_Start():
1c004fac:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004fb0:	29803061 	st.w	$r1,$r3,12(0xc)
1c004fb4:	29802076 	st.w	$r22,$r3,8(0x8)
1c004fb8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004fbc:	57ffb7ff 	bl	-76(0xfffffb4) # 1c004f70 <SDA_OUT>
1c004fc0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004fc4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004fc8:	57c617ff 	bl	-14828(0xfffc614) # 1c0015dc <gpio_write_pin>
1c004fcc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004fd0:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004fd4:	57c60bff 	bl	-14840(0xfffc608) # 1c0015dc <gpio_write_pin>
1c004fd8:	57fec3ff 	bl	-320(0xffffec0) # 1c004e98 <IIC_Delay>
1c004fdc:	00150005 	move	$r5,$r0
1c004fe0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004fe4:	57c5fbff 	bl	-14856(0xfffc5f8) # 1c0015dc <gpio_write_pin>
1c004fe8:	57feb3ff 	bl	-336(0xffffeb0) # 1c004e98 <IIC_Delay>
1c004fec:	00150005 	move	$r5,$r0
1c004ff0:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004ff4:	57c5ebff 	bl	-14872(0xfffc5e8) # 1c0015dc <gpio_write_pin>
1c004ff8:	03400000 	andi	$r0,$r0,0x0
1c004ffc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005000:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005004:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005008:	4c000020 	jirl	$r0,$r1,0

1c00500c <IIC_Stop>:
IIC_Stop():
1c00500c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005010:	29803061 	st.w	$r1,$r3,12(0xc)
1c005014:	29802076 	st.w	$r22,$r3,8(0x8)
1c005018:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00501c:	57ff57ff 	bl	-172(0xfffff54) # 1c004f70 <SDA_OUT>
1c005020:	00150005 	move	$r5,$r0
1c005024:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c005028:	57c5b7ff 	bl	-14924(0xfffc5b4) # 1c0015dc <gpio_write_pin>
1c00502c:	00150005 	move	$r5,$r0
1c005030:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005034:	57c5abff 	bl	-14936(0xfffc5a8) # 1c0015dc <gpio_write_pin>
1c005038:	57fe63ff 	bl	-416(0xffffe60) # 1c004e98 <IIC_Delay>
1c00503c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005040:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c005044:	57c59bff 	bl	-14952(0xfffc598) # 1c0015dc <gpio_write_pin>
1c005048:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00504c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005050:	57c58fff 	bl	-14964(0xfffc58c) # 1c0015dc <gpio_write_pin>
1c005054:	57fe47ff 	bl	-444(0xffffe44) # 1c004e98 <IIC_Delay>
1c005058:	03400000 	andi	$r0,$r0,0x0
1c00505c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005060:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005064:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005068:	4c000020 	jirl	$r0,$r1,0

1c00506c <IIC_Wait_Ack>:
IIC_Wait_Ack():
1c00506c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005070:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005074:	29806076 	st.w	$r22,$r3,24(0x18)
1c005078:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00507c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005080:	57fec3ff 	bl	-320(0xffffec0) # 1c004f40 <SDA_IN>
1c005084:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005088:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00508c:	57c553ff 	bl	-15024(0xfffc550) # 1c0015dc <gpio_write_pin>
1c005090:	57fe0bff 	bl	-504(0xffffe08) # 1c004e98 <IIC_Delay>
1c005094:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005098:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c00509c:	57c543ff 	bl	-15040(0xfffc540) # 1c0015dc <gpio_write_pin>
1c0050a0:	57fdfbff 	bl	-520(0xffffdf8) # 1c004e98 <IIC_Delay>
1c0050a4:	50002800 	b	40(0x28) # 1c0050cc <IIC_Wait_Ack+0x60>
1c0050a8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0050ac:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0050b0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0050b4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0050b8:	0283e80c 	addi.w	$r12,$r0,250(0xfa)
1c0050bc:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c0050cc <IIC_Wait_Ack+0x60>
1c0050c0:	57ff4fff 	bl	-180(0xfffff4c) # 1c00500c <IIC_Stop>
1c0050c4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0050c8:	50002400 	b	36(0x24) # 1c0050ec <IIC_Wait_Ack+0x80>
1c0050cc:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0050d0:	57c4bfff 	bl	-15172(0xfffc4bc) # 1c00158c <gpio_get_pin>
1c0050d4:	0015008c 	move	$r12,$r4
1c0050d8:	47ffd19f 	bnez	$r12,-48(0x7fffd0) # 1c0050a8 <IIC_Wait_Ack+0x3c>
1c0050dc:	00150005 	move	$r5,$r0
1c0050e0:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c0050e4:	57c4fbff 	bl	-15112(0xfffc4f8) # 1c0015dc <gpio_write_pin>
1c0050e8:	0015000c 	move	$r12,$r0
1c0050ec:	00150184 	move	$r4,$r12
1c0050f0:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0050f4:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0050f8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0050fc:	4c000020 	jirl	$r0,$r1,0

1c005100 <IIC_Send_Byte>:
IIC_Send_Byte():
1c005100:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005104:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005108:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00510c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005110:	0015008c 	move	$r12,$r4
1c005114:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c005118:	57fe5bff 	bl	-424(0xffffe58) # 1c004f70 <SDA_OUT>
1c00511c:	00150005 	move	$r5,$r0
1c005120:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c005124:	57c4bbff 	bl	-15176(0xfffc4b8) # 1c0015dc <gpio_write_pin>
1c005128:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00512c:	50006000 	b	96(0x60) # 1c00518c <IIC_Send_Byte+0x8c>
1c005130:	283f7ecc 	ld.b	$r12,$r22,-33(0xfdf)
1c005134:	64001580 	bge	$r12,$r0,20(0x14) # 1c005148 <IIC_Send_Byte+0x48>
1c005138:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00513c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005140:	57c49fff 	bl	-15204(0xfffc49c) # 1c0015dc <gpio_write_pin>
1c005144:	50001000 	b	16(0x10) # 1c005154 <IIC_Send_Byte+0x54>
1c005148:	00150005 	move	$r5,$r0
1c00514c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c005150:	57c48fff 	bl	-15220(0xfffc48c) # 1c0015dc <gpio_write_pin>
1c005154:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c005158:	0040858c 	slli.w	$r12,$r12,0x1
1c00515c:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c005160:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005164:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c005168:	57c477ff 	bl	-15244(0xfffc474) # 1c0015dc <gpio_write_pin>
1c00516c:	57fd2fff 	bl	-724(0xffffd2c) # 1c004e98 <IIC_Delay>
1c005170:	00150005 	move	$r5,$r0
1c005174:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c005178:	57c467ff 	bl	-15260(0xfffc464) # 1c0015dc <gpio_write_pin>
1c00517c:	57fd1fff 	bl	-740(0xffffd1c) # 1c004e98 <IIC_Delay>
1c005180:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005184:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005188:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00518c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005190:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005194:	6fff9d8d 	bgeu	$r12,$r13,-100(0x3ff9c) # 1c005130 <IIC_Send_Byte+0x30>
1c005198:	03400000 	andi	$r0,$r0,0x0
1c00519c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0051a0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0051a4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0051a8:	4c000020 	jirl	$r0,$r1,0

1c0051ac <DHT11_Rst>:
DHT11_Rst():
1c0051ac:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0051b0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0051b4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0051b8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0051bc:	54007000 	bl	112(0x70) # 1c00522c <DHT11_IO_Out>
1c0051c0:	00150005 	move	$r5,$r0
1c0051c4:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0051c8:	57c417ff 	bl	-15340(0xfffc414) # 1c0015dc <gpio_write_pin>
1c0051cc:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0051d0:	57e437ff 	bl	-7116(0xfffe434) # 1c003604 <delay_ms>
1c0051d4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0051d8:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0051dc:	57c403ff 	bl	-15360(0xfffc400) # 1c0015dc <gpio_write_pin>
1c0051e0:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c0051e4:	57e3ebff 	bl	-7192(0xfffe3e8) # 1c0035cc <delay_us>
1c0051e8:	03400000 	andi	$r0,$r0,0x0
1c0051ec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0051f0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0051f4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0051f8:	4c000020 	jirl	$r0,$r1,0

1c0051fc <DHT11_IO_In>:
DHT11_IO_In():
1c0051fc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005200:	29803061 	st.w	$r1,$r3,12(0xc)
1c005204:	29802076 	st.w	$r22,$r3,8(0x8)
1c005208:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00520c:	00150005 	move	$r5,$r0
1c005210:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c005214:	57c64fff 	bl	-14772(0xfffc64c) # 1c001860 <gpio_set_direction>
1c005218:	03400000 	andi	$r0,$r0,0x0
1c00521c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005220:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005224:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005228:	4c000020 	jirl	$r0,$r1,0

1c00522c <DHT11_IO_Out>:
DHT11_IO_Out():
1c00522c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005230:	29803061 	st.w	$r1,$r3,12(0xc)
1c005234:	29802076 	st.w	$r22,$r3,8(0x8)
1c005238:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00523c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c005240:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c005244:	57c61fff 	bl	-14820(0xfffc61c) # 1c001860 <gpio_set_direction>
1c005248:	03400000 	andi	$r0,$r0,0x0
1c00524c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005250:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005254:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005258:	4c000020 	jirl	$r0,$r1,0

1c00525c <DHT11_Check>:
DHT11_Check():
1c00525c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005260:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005264:	29806076 	st.w	$r22,$r3,24(0x18)
1c005268:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00526c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005270:	57ff8fff 	bl	-116(0xfffff8c) # 1c0051fc <DHT11_IO_In>
1c005274:	50001000 	b	16(0x10) # 1c005284 <DHT11_Check+0x28>
1c005278:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00527c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005280:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005284:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c005288:	57c307ff 	bl	-15612(0xfffc304) # 1c00158c <gpio_get_pin>
1c00528c:	0015008c 	move	$r12,$r4
1c005290:	40001180 	beqz	$r12,16(0x10) # 1c0052a0 <DHT11_Check+0x44>
1c005294:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005298:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c00529c:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c005278 <DHT11_Check+0x1c>
1c0052a0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0052a4:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c0052a8:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c0052b4 <DHT11_Check+0x58>
1c0052ac:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0052b0:	50004c00 	b	76(0x4c) # 1c0052fc <DHT11_Check+0xa0>
1c0052b4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0052b8:	50001000 	b	16(0x10) # 1c0052c8 <DHT11_Check+0x6c>
1c0052bc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0052c0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0052c4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0052c8:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c0052cc:	57c2c3ff 	bl	-15680(0xfffc2c0) # 1c00158c <gpio_get_pin>
1c0052d0:	0015008c 	move	$r12,$r4
1c0052d4:	44001180 	bnez	$r12,16(0x10) # 1c0052e4 <DHT11_Check+0x88>
1c0052d8:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0052dc:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c0052e0:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c0052bc <DHT11_Check+0x60>
1c0052e4:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0052e8:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c0052ec:	6c000d8d 	bgeu	$r12,$r13,12(0xc) # 1c0052f8 <DHT11_Check+0x9c>
1c0052f0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0052f4:	50000800 	b	8(0x8) # 1c0052fc <DHT11_Check+0xa0>
1c0052f8:	0015000c 	move	$r12,$r0
1c0052fc:	00150184 	move	$r4,$r12
1c005300:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005304:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005308:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00530c:	4c000020 	jirl	$r0,$r1,0

1c005310 <DHT11_Read_Bit>:
DHT11_Read_Bit():
1c005310:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005314:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005318:	29806076 	st.w	$r22,$r3,24(0x18)
1c00531c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005320:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005324:	50001000 	b	16(0x10) # 1c005334 <DHT11_Read_Bit+0x24>
1c005328:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00532c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005330:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005334:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c005338:	57c257ff 	bl	-15788(0xfffc254) # 1c00158c <gpio_get_pin>
1c00533c:	0015008c 	move	$r12,$r4
1c005340:	40001180 	beqz	$r12,16(0x10) # 1c005350 <DHT11_Read_Bit+0x40>
1c005344:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005348:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c00534c:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c005328 <DHT11_Read_Bit+0x18>
1c005350:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005354:	50001000 	b	16(0x10) # 1c005364 <DHT11_Read_Bit+0x54>
1c005358:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00535c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005360:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005364:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c005368:	57c227ff 	bl	-15836(0xfffc224) # 1c00158c <gpio_get_pin>
1c00536c:	0015008c 	move	$r12,$r4
1c005370:	44001180 	bnez	$r12,16(0x10) # 1c005380 <DHT11_Read_Bit+0x70>
1c005374:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005378:	02818c0c 	addi.w	$r12,$r0,99(0x63)
1c00537c:	6fffdd8d 	bgeu	$r12,$r13,-36(0x3ffdc) # 1c005358 <DHT11_Read_Bit+0x48>
1c005380:	0280a004 	addi.w	$r4,$r0,40(0x28)
1c005384:	57e24bff 	bl	-7608(0xfffe248) # 1c0035cc <delay_us>
1c005388:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c00538c:	57c203ff 	bl	-15872(0xfffc200) # 1c00158c <gpio_get_pin>
1c005390:	0015008c 	move	$r12,$r4
1c005394:	40000d80 	beqz	$r12,12(0xc) # 1c0053a0 <DHT11_Read_Bit+0x90>
1c005398:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00539c:	50000800 	b	8(0x8) # 1c0053a4 <DHT11_Read_Bit+0x94>
1c0053a0:	0015000c 	move	$r12,$r0
1c0053a4:	00150184 	move	$r4,$r12
1c0053a8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0053ac:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0053b0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0053b4:	4c000020 	jirl	$r0,$r1,0

1c0053b8 <DHT11_Read_Byte>:
DHT11_Read_Byte():
1c0053b8:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0053bc:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0053c0:	29806076 	st.w	$r22,$r3,24(0x18)
1c0053c4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0053c8:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0053cc:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0053d0:	50003400 	b	52(0x34) # 1c005404 <DHT11_Read_Byte+0x4c>
1c0053d4:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0053d8:	0040858c 	slli.w	$r12,$r12,0x1
1c0053dc:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0053e0:	57ff33ff 	bl	-208(0xfffff30) # 1c005310 <DHT11_Read_Bit>
1c0053e4:	0015008c 	move	$r12,$r4
1c0053e8:	0015018d 	move	$r13,$r12
1c0053ec:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0053f0:	001531ac 	or	$r12,$r13,$r12
1c0053f4:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0053f8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0053fc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005400:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005404:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005408:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c00540c:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c0053d4 <DHT11_Read_Byte+0x1c>
1c005410:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005414:	00150184 	move	$r4,$r12
1c005418:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c00541c:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005420:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005424:	4c000020 	jirl	$r0,$r1,0

1c005428 <DHT11_Read_Data>:
DHT11_Read_Data():
1c005428:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00542c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005430:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005434:	29809077 	st.w	$r23,$r3,36(0x24)
1c005438:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00543c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c005440:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c005444:	57fd6bff 	bl	-664(0xffffd68) # 1c0051ac <DHT11_Rst>
1c005448:	57fe17ff 	bl	-492(0xffffe14) # 1c00525c <DHT11_Check>
1c00544c:	0015008c 	move	$r12,$r4
1c005450:	4400c180 	bnez	$r12,192(0xc0) # 1c005510 <DHT11_Read_Data+0xe8>
1c005454:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005458:	50002800 	b	40(0x28) # 1c005480 <DHT11_Read_Data+0x58>
1c00545c:	2a3fbed7 	ld.bu	$r23,$r22,-17(0xfef)
1c005460:	57ff5bff 	bl	-168(0xfffff58) # 1c0053b8 <DHT11_Read_Byte>
1c005464:	0015008c 	move	$r12,$r4
1c005468:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c00546c:	00105dad 	add.w	$r13,$r13,$r23
1c005470:	293fe1ac 	st.b	$r12,$r13,-8(0xff8)
1c005474:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005478:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00547c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005480:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005484:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c005488:	6fffd58d 	bgeu	$r12,$r13,-44(0x3ffd4) # 1c00545c <DHT11_Read_Data+0x34>
1c00548c:	2a3fa2cc 	ld.bu	$r12,$r22,-24(0xfe8)
1c005490:	0015018d 	move	$r13,$r12
1c005494:	2a3fa6cc 	ld.bu	$r12,$r22,-23(0xfe9)
1c005498:	001031ac 	add.w	$r12,$r13,$r12
1c00549c:	2a3faacd 	ld.bu	$r13,$r22,-22(0xfea)
1c0054a0:	0010358c 	add.w	$r12,$r12,$r13
1c0054a4:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c0054a8:	0010358c 	add.w	$r12,$r12,$r13
1c0054ac:	2a3fb2cd 	ld.bu	$r13,$r22,-20(0xfec)
1c0054b0:	5c00698d 	bne	$r12,$r13,104(0x68) # 1c005518 <DHT11_Read_Data+0xf0>
1c0054b4:	2a3fa2cc 	ld.bu	$r12,$r22,-24(0xfe8)
1c0054b8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0054bc:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0054c0:	001c31ac 	mul.w	$r12,$r13,$r12
1c0054c4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0054c8:	2a3fa6cc 	ld.bu	$r12,$r22,-23(0xfe9)
1c0054cc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0054d0:	001031ac 	add.w	$r12,$r13,$r12
1c0054d4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0054d8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0054dc:	2940018d 	st.h	$r13,$r12,0
1c0054e0:	2a3faacc 	ld.bu	$r12,$r22,-22(0xfea)
1c0054e4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0054e8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0054ec:	001c31ac 	mul.w	$r12,$r13,$r12
1c0054f0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0054f4:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c0054f8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0054fc:	001031ac 	add.w	$r12,$r13,$r12
1c005500:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005504:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c005508:	2940018d 	st.h	$r13,$r12,0
1c00550c:	50000c00 	b	12(0xc) # 1c005518 <DHT11_Read_Data+0xf0>
1c005510:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005514:	50000800 	b	8(0x8) # 1c00551c <DHT11_Read_Data+0xf4>
1c005518:	0015000c 	move	$r12,$r0
1c00551c:	00150184 	move	$r4,$r12
1c005520:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005524:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005528:	28809077 	ld.w	$r23,$r3,36(0x24)
1c00552c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005530:	4c000020 	jirl	$r0,$r1,0

1c005534 <DHT11_Init>:
DHT11_Init():
1c005534:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005538:	29803061 	st.w	$r1,$r3,12(0xc)
1c00553c:	29802076 	st.w	$r22,$r3,8(0x8)
1c005540:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005544:	00150005 	move	$r5,$r0
1c005548:	02808c04 	addi.w	$r4,$r0,35(0x23)
1c00554c:	57c10bff 	bl	-16120(0xfffc108) # 1c001654 <gpio_pin_remap>
1c005550:	57fcdfff 	bl	-804(0xffffcdc) # 1c00522c <DHT11_IO_Out>
1c005554:	57fc5bff 	bl	-936(0xffffc58) # 1c0051ac <DHT11_Rst>
1c005558:	57fd07ff 	bl	-764(0xffffd04) # 1c00525c <DHT11_Check>
1c00555c:	0015008c 	move	$r12,$r4
1c005560:	00150184 	move	$r4,$r12
1c005564:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005568:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00556c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005570:	4c000020 	jirl	$r0,$r1,0

1c005574 <OLED_Hardware_Init>:
OLED_Hardware_Init():
1c005574:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005578:	29803061 	st.w	$r1,$r3,12(0xc)
1c00557c:	29802076 	st.w	$r22,$r3,8(0x8)
1c005580:	02804076 	addi.w	$r22,$r3,16(0x10)
1c005584:	57f953ff 	bl	-1712(0xffff950) # 1c004ed4 <IIC_Init>
1c005588:	03400000 	andi	$r0,$r0,0x0
1c00558c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c005590:	28802076 	ld.w	$r22,$r3,8(0x8)
1c005594:	02804063 	addi.w	$r3,$r3,16(0x10)
1c005598:	4c000020 	jirl	$r0,$r1,0

1c00559c <OLED_WR_Byte>:
OLED_WR_Byte():
1c00559c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0055a0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0055a4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0055a8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0055ac:	0015008c 	move	$r12,$r4
1c0055b0:	001500ad 	move	$r13,$r5
1c0055b4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0055b8:	001501ac 	move	$r12,$r13
1c0055bc:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0055c0:	57f9efff 	bl	-1556(0xffff9ec) # 1c004fac <IIC_Start>
1c0055c4:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c0055c8:	57fb3bff 	bl	-1224(0xffffb38) # 1c005100 <IIC_Send_Byte>
1c0055cc:	57faa3ff 	bl	-1376(0xffffaa0) # 1c00506c <IIC_Wait_Ack>
1c0055d0:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0055d4:	00150184 	move	$r4,$r12
1c0055d8:	57fb2bff 	bl	-1240(0xffffb28) # 1c005100 <IIC_Send_Byte>
1c0055dc:	57fa93ff 	bl	-1392(0xffffa90) # 1c00506c <IIC_Wait_Ack>
1c0055e0:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0055e4:	00150184 	move	$r4,$r12
1c0055e8:	57fb1bff 	bl	-1256(0xffffb18) # 1c005100 <IIC_Send_Byte>
1c0055ec:	57fa83ff 	bl	-1408(0xffffa80) # 1c00506c <IIC_Wait_Ack>
1c0055f0:	57fa1fff 	bl	-1508(0xffffa1c) # 1c00500c <IIC_Stop>
1c0055f4:	03400000 	andi	$r0,$r0,0x0
1c0055f8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0055fc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005600:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005604:	4c000020 	jirl	$r0,$r1,0

1c005608 <OLED_Set_Pos>:
OLED_Set_Pos():
1c005608:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00560c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005610:	29806076 	st.w	$r22,$r3,24(0x18)
1c005614:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005618:	0015008c 	move	$r12,$r4
1c00561c:	001500ad 	move	$r13,$r5
1c005620:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005624:	001501ac 	move	$r12,$r13
1c005628:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c00562c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005630:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c005634:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005638:	00150005 	move	$r5,$r0
1c00563c:	00150184 	move	$r4,$r12
1c005640:	57ff5fff 	bl	-164(0xfffff5c) # 1c00559c <OLED_WR_Byte>
1c005644:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005648:	0044918c 	srli.w	$r12,$r12,0x4
1c00564c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005650:	0380418c 	ori	$r12,$r12,0x10
1c005654:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005658:	00150005 	move	$r5,$r0
1c00565c:	00150184 	move	$r4,$r12
1c005660:	57ff3fff 	bl	-196(0xfffff3c) # 1c00559c <OLED_WR_Byte>
1c005664:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005668:	03403d8c 	andi	$r12,$r12,0xf
1c00566c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005670:	00150005 	move	$r5,$r0
1c005674:	00150184 	move	$r4,$r12
1c005678:	57ff27ff 	bl	-220(0xfffff24) # 1c00559c <OLED_WR_Byte>
1c00567c:	03400000 	andi	$r0,$r0,0x0
1c005680:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005684:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005688:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00568c:	4c000020 	jirl	$r0,$r1,0

1c005690 <OLED_Clear>:
OLED_Clear():
1c005690:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005694:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005698:	29806076 	st.w	$r22,$r3,24(0x18)
1c00569c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0056a0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0056a4:	50006800 	b	104(0x68) # 1c00570c <OLED_Clear+0x7c>
1c0056a8:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0056ac:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c0056b0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0056b4:	00150005 	move	$r5,$r0
1c0056b8:	00150184 	move	$r4,$r12
1c0056bc:	57fee3ff 	bl	-288(0xffffee0) # 1c00559c <OLED_WR_Byte>
1c0056c0:	00150005 	move	$r5,$r0
1c0056c4:	02800804 	addi.w	$r4,$r0,2(0x2)
1c0056c8:	57fed7ff 	bl	-300(0xffffed4) # 1c00559c <OLED_WR_Byte>
1c0056cc:	00150005 	move	$r5,$r0
1c0056d0:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0056d4:	57fecbff 	bl	-312(0xffffec8) # 1c00559c <OLED_WR_Byte>
1c0056d8:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c0056dc:	50001c00 	b	28(0x1c) # 1c0056f8 <OLED_Clear+0x68>
1c0056e0:	02810005 	addi.w	$r5,$r0,64(0x40)
1c0056e4:	00150004 	move	$r4,$r0
1c0056e8:	57feb7ff 	bl	-332(0xffffeb4) # 1c00559c <OLED_WR_Byte>
1c0056ec:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0056f0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0056f4:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0056f8:	283fbacc 	ld.b	$r12,$r22,-18(0xfee)
1c0056fc:	67ffe580 	bge	$r12,$r0,-28(0x3ffe4) # 1c0056e0 <OLED_Clear+0x50>
1c005700:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005704:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005708:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c00570c:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005710:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c005714:	6fff958d 	bgeu	$r12,$r13,-108(0x3ff94) # 1c0056a8 <OLED_Clear+0x18>
1c005718:	03400000 	andi	$r0,$r0,0x0
1c00571c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005720:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005724:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005728:	4c000020 	jirl	$r0,$r1,0

1c00572c <OLED_Init>:
OLED_Init():
1c00572c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c005730:	29803061 	st.w	$r1,$r3,12(0xc)
1c005734:	29802076 	st.w	$r22,$r3,8(0x8)
1c005738:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00573c:	57fe3bff 	bl	-456(0xffffe38) # 1c005574 <OLED_Hardware_Init>
1c005740:	02819004 	addi.w	$r4,$r0,100(0x64)
1c005744:	57dec3ff 	bl	-8512(0xfffdec0) # 1c003604 <delay_ms>
1c005748:	57ff4bff 	bl	-184(0xfffff48) # 1c005690 <OLED_Clear>
1c00574c:	00150005 	move	$r5,$r0
1c005750:	00150004 	move	$r4,$r0
1c005754:	57feb7ff 	bl	-332(0xffffeb4) # 1c005608 <OLED_Set_Pos>
1c005758:	00150005 	move	$r5,$r0
1c00575c:	0282b804 	addi.w	$r4,$r0,174(0xae)
1c005760:	57fe3fff 	bl	-452(0xffffe3c) # 1c00559c <OLED_WR_Byte>
1c005764:	00150005 	move	$r5,$r0
1c005768:	00150004 	move	$r4,$r0
1c00576c:	57fe33ff 	bl	-464(0xffffe30) # 1c00559c <OLED_WR_Byte>
1c005770:	00150005 	move	$r5,$r0
1c005774:	02804004 	addi.w	$r4,$r0,16(0x10)
1c005778:	57fe27ff 	bl	-476(0xffffe24) # 1c00559c <OLED_WR_Byte>
1c00577c:	00150005 	move	$r5,$r0
1c005780:	02810004 	addi.w	$r4,$r0,64(0x40)
1c005784:	57fe1bff 	bl	-488(0xffffe18) # 1c00559c <OLED_WR_Byte>
1c005788:	00150005 	move	$r5,$r0
1c00578c:	02820404 	addi.w	$r4,$r0,129(0x81)
1c005790:	57fe0fff 	bl	-500(0xffffe0c) # 1c00559c <OLED_WR_Byte>
1c005794:	00150005 	move	$r5,$r0
1c005798:	02833c04 	addi.w	$r4,$r0,207(0xcf)
1c00579c:	57fe03ff 	bl	-512(0xffffe00) # 1c00559c <OLED_WR_Byte>
1c0057a0:	00150005 	move	$r5,$r0
1c0057a4:	02828404 	addi.w	$r4,$r0,161(0xa1)
1c0057a8:	57fdf7ff 	bl	-524(0xffffdf4) # 1c00559c <OLED_WR_Byte>
1c0057ac:	00150005 	move	$r5,$r0
1c0057b0:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c0057b4:	57fdebff 	bl	-536(0xffffde8) # 1c00559c <OLED_WR_Byte>
1c0057b8:	00150005 	move	$r5,$r0
1c0057bc:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c0057c0:	57fddfff 	bl	-548(0xffffddc) # 1c00559c <OLED_WR_Byte>
1c0057c4:	00150005 	move	$r5,$r0
1c0057c8:	0282a004 	addi.w	$r4,$r0,168(0xa8)
1c0057cc:	57fdd3ff 	bl	-560(0xffffdd0) # 1c00559c <OLED_WR_Byte>
1c0057d0:	00150005 	move	$r5,$r0
1c0057d4:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c0057d8:	57fdc7ff 	bl	-572(0xffffdc4) # 1c00559c <OLED_WR_Byte>
1c0057dc:	00150005 	move	$r5,$r0
1c0057e0:	02820404 	addi.w	$r4,$r0,129(0x81)
1c0057e4:	57fdbbff 	bl	-584(0xffffdb8) # 1c00559c <OLED_WR_Byte>
1c0057e8:	00150005 	move	$r5,$r0
1c0057ec:	0283fc04 	addi.w	$r4,$r0,255(0xff)
1c0057f0:	57fdafff 	bl	-596(0xffffdac) # 1c00559c <OLED_WR_Byte>
1c0057f4:	00150005 	move	$r5,$r0
1c0057f8:	02834c04 	addi.w	$r4,$r0,211(0xd3)
1c0057fc:	57fda3ff 	bl	-608(0xffffda0) # 1c00559c <OLED_WR_Byte>
1c005800:	00150005 	move	$r5,$r0
1c005804:	00150004 	move	$r4,$r0
1c005808:	57fd97ff 	bl	-620(0xffffd94) # 1c00559c <OLED_WR_Byte>
1c00580c:	00150005 	move	$r5,$r0
1c005810:	02835404 	addi.w	$r4,$r0,213(0xd5)
1c005814:	57fd8bff 	bl	-632(0xffffd88) # 1c00559c <OLED_WR_Byte>
1c005818:	00150005 	move	$r5,$r0
1c00581c:	02820004 	addi.w	$r4,$r0,128(0x80)
1c005820:	57fd7fff 	bl	-644(0xffffd7c) # 1c00559c <OLED_WR_Byte>
1c005824:	00150005 	move	$r5,$r0
1c005828:	02836404 	addi.w	$r4,$r0,217(0xd9)
1c00582c:	57fd73ff 	bl	-656(0xffffd70) # 1c00559c <OLED_WR_Byte>
1c005830:	00150005 	move	$r5,$r0
1c005834:	0283c404 	addi.w	$r4,$r0,241(0xf1)
1c005838:	57fd67ff 	bl	-668(0xffffd64) # 1c00559c <OLED_WR_Byte>
1c00583c:	00150005 	move	$r5,$r0
1c005840:	02836804 	addi.w	$r4,$r0,218(0xda)
1c005844:	57fd5bff 	bl	-680(0xffffd58) # 1c00559c <OLED_WR_Byte>
1c005848:	00150005 	move	$r5,$r0
1c00584c:	02804804 	addi.w	$r4,$r0,18(0x12)
1c005850:	57fd4fff 	bl	-692(0xffffd4c) # 1c00559c <OLED_WR_Byte>
1c005854:	00150005 	move	$r5,$r0
1c005858:	02836c04 	addi.w	$r4,$r0,219(0xdb)
1c00585c:	57fd43ff 	bl	-704(0xffffd40) # 1c00559c <OLED_WR_Byte>
1c005860:	00150005 	move	$r5,$r0
1c005864:	02810004 	addi.w	$r4,$r0,64(0x40)
1c005868:	57fd37ff 	bl	-716(0xffffd34) # 1c00559c <OLED_WR_Byte>
1c00586c:	00150005 	move	$r5,$r0
1c005870:	02808004 	addi.w	$r4,$r0,32(0x20)
1c005874:	57fd2bff 	bl	-728(0xffffd28) # 1c00559c <OLED_WR_Byte>
1c005878:	00150005 	move	$r5,$r0
1c00587c:	02800804 	addi.w	$r4,$r0,2(0x2)
1c005880:	57fd1fff 	bl	-740(0xffffd1c) # 1c00559c <OLED_WR_Byte>
1c005884:	00150005 	move	$r5,$r0
1c005888:	02823404 	addi.w	$r4,$r0,141(0x8d)
1c00588c:	57fd13ff 	bl	-752(0xffffd10) # 1c00559c <OLED_WR_Byte>
1c005890:	00150005 	move	$r5,$r0
1c005894:	02805004 	addi.w	$r4,$r0,20(0x14)
1c005898:	57fd07ff 	bl	-764(0xffffd04) # 1c00559c <OLED_WR_Byte>
1c00589c:	00150005 	move	$r5,$r0
1c0058a0:	02829004 	addi.w	$r4,$r0,164(0xa4)
1c0058a4:	57fcfbff 	bl	-776(0xffffcf8) # 1c00559c <OLED_WR_Byte>
1c0058a8:	00150005 	move	$r5,$r0
1c0058ac:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c0058b0:	57fcefff 	bl	-788(0xffffcec) # 1c00559c <OLED_WR_Byte>
1c0058b4:	00150005 	move	$r5,$r0
1c0058b8:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c0058bc:	57fce3ff 	bl	-800(0xffffce0) # 1c00559c <OLED_WR_Byte>
1c0058c0:	00150005 	move	$r5,$r0
1c0058c4:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c0058c8:	57fcd7ff 	bl	-812(0xffffcd4) # 1c00559c <OLED_WR_Byte>
1c0058cc:	57fdc7ff 	bl	-572(0xffffdc4) # 1c005690 <OLED_Clear>
1c0058d0:	00150005 	move	$r5,$r0
1c0058d4:	00150004 	move	$r4,$r0
1c0058d8:	57fd33ff 	bl	-720(0xffffd30) # 1c005608 <OLED_Set_Pos>
1c0058dc:	03400000 	andi	$r0,$r0,0x0
1c0058e0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0058e4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0058e8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0058ec:	4c000020 	jirl	$r0,$r1,0

1c0058f0 <OLED_ShowChar>:
OLED_ShowChar():
1c0058f0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0058f4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0058f8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0058fc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005900:	0015008c 	move	$r12,$r4
1c005904:	001500af 	move	$r15,$r5
1c005908:	001500ce 	move	$r14,$r6
1c00590c:	001500ed 	move	$r13,$r7
1c005910:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005914:	001501ec 	move	$r12,$r15
1c005918:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c00591c:	001501cc 	move	$r12,$r14
1c005920:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c005924:	001501ac 	move	$r12,$r13
1c005928:	293f6acc 	st.b	$r12,$r22,-38(0xfda)
1c00592c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005930:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005934:	2a3f6acd 	ld.bu	$r13,$r22,-38(0xfda)
1c005938:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c00593c:	58000dac 	beq	$r13,$r12,12(0xc) # 1c005948 <OLED_ShowChar+0x58>
1c005940:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c005944:	293f6acc 	st.b	$r12,$r22,-38(0xfda)
1c005948:	2a3f6ecc 	ld.bu	$r12,$r22,-37(0xfdb)
1c00594c:	02bf818c 	addi.w	$r12,$r12,-32(0xfe0)
1c005950:	293f6ecc 	st.b	$r12,$r22,-37(0xfdb)
1c005954:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005958:	50009800 	b	152(0x98) # 1c0059f0 <OLED_ShowChar+0x100>
1c00595c:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005960:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c005964:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005968:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c00596c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005970:	001031ac 	add.w	$r12,$r13,$r12
1c005974:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005978:	00150185 	move	$r5,$r12
1c00597c:	001501c4 	move	$r4,$r14
1c005980:	57fc8bff 	bl	-888(0xffffc88) # 1c005608 <OLED_Set_Pos>
1c005984:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005988:	50004800 	b	72(0x48) # 1c0059d0 <OLED_ShowChar+0xe0>
1c00598c:	2a3f6ecd 	ld.bu	$r13,$r22,-37(0xfdb)
1c005990:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005994:	00408d8e 	slli.w	$r14,$r12,0x3
1c005998:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c00599c:	001031cc 	add.w	$r12,$r14,$r12
1c0059a0:	1c00006e 	pcaddu12i	$r14,3(0x3)
1c0059a4:	02bda1ce 	addi.w	$r14,$r14,-152(0xf68)
1c0059a8:	004091ad 	slli.w	$r13,$r13,0x4
1c0059ac:	001035cd 	add.w	$r13,$r14,$r13
1c0059b0:	001031ac 	add.w	$r12,$r13,$r12
1c0059b4:	2a00018c 	ld.bu	$r12,$r12,0
1c0059b8:	02810005 	addi.w	$r5,$r0,64(0x40)
1c0059bc:	00150184 	move	$r4,$r12
1c0059c0:	57fbdfff 	bl	-1060(0xffffbdc) # 1c00559c <OLED_WR_Byte>
1c0059c4:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0059c8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0059cc:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0059d0:	2a3f6acc 	ld.bu	$r12,$r22,-38(0xfda)
1c0059d4:	0044858c 	srli.w	$r12,$r12,0x1
1c0059d8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0059dc:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c0059e0:	6bffadac 	bltu	$r13,$r12,-84(0x3ffac) # 1c00598c <OLED_ShowChar+0x9c>
1c0059e4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0059e8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0059ec:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0059f0:	2a3f6acc 	ld.bu	$r12,$r22,-38(0xfda)
1c0059f4:	00448d8c 	srli.w	$r12,$r12,0x3
1c0059f8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0059fc:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005a00:	6bff5dac 	bltu	$r13,$r12,-164(0x3ff5c) # 1c00595c <OLED_ShowChar+0x6c>
1c005a04:	03400000 	andi	$r0,$r0,0x0
1c005a08:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005a0c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005a10:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005a14:	4c000020 	jirl	$r0,$r1,0

1c005a18 <OLED_ShowString>:
OLED_ShowString():
1c005a18:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c005a1c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c005a20:	29806076 	st.w	$r22,$r3,24(0x18)
1c005a24:	02808076 	addi.w	$r22,$r3,32(0x20)
1c005a28:	0015008c 	move	$r12,$r4
1c005a2c:	001500ae 	move	$r14,$r5
1c005a30:	29bfa2c6 	st.w	$r6,$r22,-24(0xfe8)
1c005a34:	001500ed 	move	$r13,$r7
1c005a38:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c005a3c:	001501cc 	move	$r12,$r14
1c005a40:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c005a44:	001501ac 	move	$r12,$r13
1c005a48:	293f9ecc 	st.b	$r12,$r22,-25(0xfe7)
1c005a4c:	5000c400 	b	196(0xc4) # 1c005b10 <OLED_ShowString+0xf8>
1c005a50:	2a7fbacd 	ld.hu	$r13,$r22,-18(0xfee)
1c005a54:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c005a58:	0044858c 	srli.w	$r12,$r12,0x1
1c005a5c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005a60:	0015018e 	move	$r14,$r12
1c005a64:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c005a68:	0011398c 	sub.w	$r12,$r12,$r14
1c005a6c:	64002d8d 	bge	$r12,$r13,44(0x2c) # 1c005a98 <OLED_ShowString+0x80>
1c005a70:	297fbac0 	st.h	$r0,$r22,-18(0xfee)
1c005a74:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c005a78:	00448d8c 	srli.w	$r12,$r12,0x3
1c005a7c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005a80:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005a84:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c005a88:	001031ac 	add.w	$r12,$r13,$r12
1c005a8c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005a90:	03401d8c 	andi	$r12,$r12,0x7
1c005a94:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c005a98:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c005a9c:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c005aa0:	00448d8c 	srli.w	$r12,$r12,0x3
1c005aa4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005aa8:	0015018e 	move	$r14,$r12
1c005aac:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c005ab0:	0011398c 	sub.w	$r12,$r12,$r14
1c005ab4:	6400098d 	bge	$r12,$r13,8(0x8) # 1c005abc <OLED_ShowString+0xa4>
1c005ab8:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c005abc:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005ac0:	2800018c 	ld.b	$r12,$r12,0
1c005ac4:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c005ac8:	2a3f9ecf 	ld.bu	$r15,$r22,-25(0xfe7)
1c005acc:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c005ad0:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c005ad4:	001501e7 	move	$r7,$r15
1c005ad8:	001501c6 	move	$r6,$r14
1c005adc:	001501a5 	move	$r5,$r13
1c005ae0:	00150184 	move	$r4,$r12
1c005ae4:	57fe0fff 	bl	-500(0xffffe0c) # 1c0058f0 <OLED_ShowChar>
1c005ae8:	2a3f9ecc 	ld.bu	$r12,$r22,-25(0xfe7)
1c005aec:	0044858c 	srli.w	$r12,$r12,0x1
1c005af0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005af4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005af8:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c005afc:	001031ac 	add.w	$r12,$r13,$r12
1c005b00:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c005b04:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005b08:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005b0c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c005b10:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005b14:	2800018d 	ld.b	$r13,$r12,0
1c005b18:	0281fc0c 	addi.w	$r12,$r0,127(0x7f)
1c005b1c:	580015ac 	beq	$r13,$r12,20(0x14) # 1c005b30 <OLED_ShowString+0x118>
1c005b20:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c005b24:	2800018d 	ld.b	$r13,$r12,0
1c005b28:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c005b2c:	63ff258d 	blt	$r12,$r13,-220(0x3ff24) # 1c005a50 <OLED_ShowString+0x38>
1c005b30:	03400000 	andi	$r0,$r0,0x0
1c005b34:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c005b38:	28806076 	ld.w	$r22,$r3,24(0x18)
1c005b3c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c005b40:	4c000020 	jirl	$r0,$r1,0

1c005b44 <OLED_ShowNum>:
OLED_ShowNum():
1c005b44:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c005b48:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c005b4c:	2980e076 	st.w	$r22,$r3,56(0x38)
1c005b50:	02810076 	addi.w	$r22,$r3,64(0x40)
1c005b54:	0015008c 	move	$r12,$r4
1c005b58:	001500b0 	move	$r16,$r5
1c005b5c:	001500cf 	move	$r15,$r6
1c005b60:	001500ee 	move	$r14,$r7
1c005b64:	0015010d 	move	$r13,$r8
1c005b68:	293f3ecc 	st.b	$r12,$r22,-49(0xfcf)
1c005b6c:	0015020c 	move	$r12,$r16
1c005b70:	293f3acc 	st.b	$r12,$r22,-50(0xfce)
1c005b74:	001501ec 	move	$r12,$r15
1c005b78:	297f32cc 	st.h	$r12,$r22,-52(0xfcc)
1c005b7c:	001501cc 	move	$r12,$r14
1c005b80:	293f2ecc 	st.b	$r12,$r22,-53(0xfcb)
1c005b84:	001501ac 	move	$r12,$r13
1c005b88:	293f2acc 	st.b	$r12,$r22,-54(0xfca)
1c005b8c:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c005b90:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c005b94:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c005b98:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c005b9c:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c005ba0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005ba4:	2a3f2ecd 	ld.bu	$r13,$r22,-53(0xfcb)
1c005ba8:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c005bac:	6800c98d 	bltu	$r12,$r13,200(0xc8) # 1c005c74 <OLED_ShowNum+0x130>
1c005bb0:	2a3f2ecc 	ld.bu	$r12,$r22,-53(0xfcb)
1c005bb4:	02bf92cd 	addi.w	$r13,$r22,-28(0xfe4)
1c005bb8:	00150186 	move	$r6,$r12
1c005bbc:	1c000085 	pcaddu12i	$r5,4(0x4)
1c005bc0:	028420a5 	addi.w	$r5,$r5,264(0x108)
1c005bc4:	001501a4 	move	$r4,$r13
1c005bc8:	57c95fff 	bl	-13988(0xfffc95c) # 1c002524 <sprintf>
1c005bcc:	2a7f32cc 	ld.hu	$r12,$r22,-52(0xfcc)
1c005bd0:	02bf92ce 	addi.w	$r14,$r22,-28(0xfe4)
1c005bd4:	02bf62cd 	addi.w	$r13,$r22,-40(0xfd8)
1c005bd8:	00150186 	move	$r6,$r12
1c005bdc:	001501c5 	move	$r5,$r14
1c005be0:	001501a4 	move	$r4,$r13
1c005be4:	57c943ff 	bl	-14016(0xfffc940) # 1c002524 <sprintf>
1c005be8:	50007400 	b	116(0x74) # 1c005c5c <OLED_ShowNum+0x118>
1c005bec:	2a3f3ecc 	ld.bu	$r12,$r22,-49(0xfcf)
1c005bf0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c005bf4:	2a3f2acc 	ld.bu	$r12,$r22,-54(0xfca)
1c005bf8:	0044858c 	srli.w	$r12,$r12,0x1
1c005bfc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005c00:	006f818e 	bstrpick.w	$r14,$r12,0xf,0x0
1c005c04:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005c08:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005c0c:	001c31cc 	mul.w	$r12,$r14,$r12
1c005c10:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005c14:	001031ac 	add.w	$r12,$r13,$r12
1c005c18:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c005c1c:	2a3f3acd 	ld.bu	$r13,$r22,-50(0xfce)
1c005c20:	006f81ad 	bstrpick.w	$r13,$r13,0xf,0x0
1c005c24:	2a3fbece 	ld.bu	$r14,$r22,-17(0xfef)
1c005c28:	02bfc2cf 	addi.w	$r15,$r22,-16(0xff0)
1c005c2c:	001039ee 	add.w	$r14,$r15,$r14
1c005c30:	283fa1ce 	ld.b	$r14,$r14,-24(0xfe8)
1c005c34:	006781ce 	bstrpick.w	$r14,$r14,0x7,0x0
1c005c38:	2a3f2acf 	ld.bu	$r15,$r22,-54(0xfca)
1c005c3c:	001501e7 	move	$r7,$r15
1c005c40:	001501c6 	move	$r6,$r14
1c005c44:	001501a5 	move	$r5,$r13
1c005c48:	00150184 	move	$r4,$r12
1c005c4c:	57fca7ff 	bl	-860(0xffffca4) # 1c0058f0 <OLED_ShowChar>
1c005c50:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005c54:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005c58:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005c5c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005c60:	02bf62cd 	addi.w	$r13,$r22,-40(0xfd8)
1c005c64:	001031ac 	add.w	$r12,$r13,$r12
1c005c68:	2800018c 	ld.b	$r12,$r12,0
1c005c6c:	47ff819f 	bnez	$r12,-128(0x7fff80) # 1c005bec <OLED_ShowNum+0xa8>
1c005c70:	50000800 	b	8(0x8) # 1c005c78 <OLED_ShowNum+0x134>
1c005c74:	03400000 	andi	$r0,$r0,0x0
1c005c78:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c005c7c:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c005c80:	02810063 	addi.w	$r3,$r3,64(0x40)
1c005c84:	4c000020 	jirl	$r0,$r1,0

1c005c88 <OLED_DrawFont16>:
OLED_DrawFont16():
1c005c88:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005c8c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005c90:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005c94:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005c98:	0015008c 	move	$r12,$r4
1c005c9c:	001500ad 	move	$r13,$r5
1c005ca0:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c005ca4:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005ca8:	001501ac 	move	$r12,$r13
1c005cac:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005cb0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005cb4:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005cb8:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c005cbc:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c005cc0:	0280680c 	addi.w	$r12,$r0,26(0x1a)
1c005cc4:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c005cc8:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c005ccc:	50013800 	b	312(0x138) # 1c005e04 <OLED_DrawFont16+0x17c>
1c005cd0:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c005cd4:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c005cd8:	028891ad 	addi.w	$r13,$r13,548(0x224)
1c005cdc:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005ce0:	001c31cc 	mul.w	$r12,$r14,$r12
1c005ce4:	001031ac 	add.w	$r12,$r13,$r12
1c005ce8:	2a00018d 	ld.bu	$r13,$r12,0
1c005cec:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005cf0:	2a00018c 	ld.bu	$r12,$r12,0
1c005cf4:	5c0105ac 	bne	$r13,$r12,260(0x104) # 1c005df8 <OLED_DrawFont16+0x170>
1c005cf8:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c005cfc:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c005d00:	0287f1ad 	addi.w	$r13,$r13,508(0x1fc)
1c005d04:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005d08:	001c31cc 	mul.w	$r12,$r14,$r12
1c005d0c:	001031ac 	add.w	$r12,$r13,$r12
1c005d10:	2a00058d 	ld.bu	$r13,$r12,1(0x1)
1c005d14:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005d18:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005d1c:	2a00018c 	ld.bu	$r12,$r12,0
1c005d20:	5c00d9ac 	bne	$r13,$r12,216(0xd8) # 1c005df8 <OLED_DrawFont16+0x170>
1c005d24:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c005d28:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c005d2c:	028741ad 	addi.w	$r13,$r13,464(0x1d0)
1c005d30:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005d34:	001c31cc 	mul.w	$r12,$r14,$r12
1c005d38:	001031ac 	add.w	$r12,$r13,$r12
1c005d3c:	2a00098d 	ld.bu	$r13,$r12,2(0x2)
1c005d40:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005d44:	0280098c 	addi.w	$r12,$r12,2(0x2)
1c005d48:	2a00018c 	ld.bu	$r12,$r12,0
1c005d4c:	5c00adac 	bne	$r13,$r12,172(0xac) # 1c005df8 <OLED_DrawFont16+0x170>
1c005d50:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005d54:	50009400 	b	148(0x94) # 1c005de8 <OLED_DrawFont16+0x160>
1c005d58:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005d5c:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c005d60:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005d64:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005d68:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005d6c:	001031ac 	add.w	$r12,$r13,$r12
1c005d70:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005d74:	00150185 	move	$r5,$r12
1c005d78:	001501c4 	move	$r4,$r14
1c005d7c:	57f88fff 	bl	-1908(0xffff88c) # 1c005608 <OLED_Set_Pos>
1c005d80:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005d84:	50004c00 	b	76(0x4c) # 1c005dd0 <OLED_DrawFont16+0x148>
1c005d88:	2a7fb2cf 	ld.hu	$r15,$r22,-20(0xfec)
1c005d8c:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005d90:	0040918d 	slli.w	$r13,$r12,0x4
1c005d94:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005d98:	001031ad 	add.w	$r13,$r13,$r12
1c005d9c:	1c00006e 	pcaddu12i	$r14,3(0x3)
1c005da0:	028571ce 	addi.w	$r14,$r14,348(0x15c)
1c005da4:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005da8:	001c31ec 	mul.w	$r12,$r15,$r12
1c005dac:	001031cc 	add.w	$r12,$r14,$r12
1c005db0:	0010358c 	add.w	$r12,$r12,$r13
1c005db4:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c005db8:	02810005 	addi.w	$r5,$r0,64(0x40)
1c005dbc:	00150184 	move	$r4,$r12
1c005dc0:	57f7dfff 	bl	-2084(0xffff7dc) # 1c00559c <OLED_WR_Byte>
1c005dc4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005dc8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005dcc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005dd0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005dd4:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c005dd8:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c005d88 <OLED_DrawFont16+0x100>
1c005ddc:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005de0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005de4:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005de8:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c005dec:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c005df0:	6fff698d 	bgeu	$r12,$r13,-152(0x3ff68) # 1c005d58 <OLED_DrawFont16+0xd0>
1c005df4:	50001c00 	b	28(0x1c) # 1c005e10 <OLED_DrawFont16+0x188>
1c005df8:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c005dfc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005e00:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c005e04:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c005e08:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c005e0c:	6bfec5ac 	bltu	$r13,$r12,-316(0x3fec4) # 1c005cd0 <OLED_DrawFont16+0x48>
1c005e10:	03400000 	andi	$r0,$r0,0x0
1c005e14:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005e18:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005e1c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005e20:	4c000020 	jirl	$r0,$r1,0

1c005e24 <OLED_DrawFont32>:
OLED_DrawFont32():
1c005e24:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005e28:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005e2c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005e30:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005e34:	0015008c 	move	$r12,$r4
1c005e38:	001500ad 	move	$r13,$r5
1c005e3c:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c005e40:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005e44:	001501ac 	move	$r12,$r13
1c005e48:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005e4c:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005e50:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005e54:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c005e58:	297faac0 	st.h	$r0,$r22,-22(0xfea)
1c005e5c:	0280500c 	addi.w	$r12,$r0,20(0x14)
1c005e60:	297faacc 	st.h	$r12,$r22,-22(0xfea)
1c005e64:	297fb2c0 	st.h	$r0,$r22,-20(0xfec)
1c005e68:	50014400 	b	324(0x144) # 1c005fac <OLED_DrawFont32+0x188>
1c005e6c:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c005e70:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c005e74:	028221ad 	addi.w	$r13,$r13,136(0x88)
1c005e78:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005e7c:	001c31cc 	mul.w	$r12,$r14,$r12
1c005e80:	001031ac 	add.w	$r12,$r13,$r12
1c005e84:	2a00018c 	ld.bu	$r12,$r12,0
1c005e88:	0015018d 	move	$r13,$r12
1c005e8c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005e90:	2800018c 	ld.b	$r12,$r12,0
1c005e94:	5c010dac 	bne	$r13,$r12,268(0x10c) # 1c005fa0 <OLED_DrawFont32+0x17c>
1c005e98:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c005e9c:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c005ea0:	028171ad 	addi.w	$r13,$r13,92(0x5c)
1c005ea4:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005ea8:	001c31cc 	mul.w	$r12,$r14,$r12
1c005eac:	001031ac 	add.w	$r12,$r13,$r12
1c005eb0:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c005eb4:	0015018d 	move	$r13,$r12
1c005eb8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005ebc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005ec0:	2800018c 	ld.b	$r12,$r12,0
1c005ec4:	5c00ddac 	bne	$r13,$r12,220(0xdc) # 1c005fa0 <OLED_DrawFont32+0x17c>
1c005ec8:	2a7fb2ce 	ld.hu	$r14,$r22,-20(0xfec)
1c005ecc:	1c00006d 	pcaddu12i	$r13,3(0x3)
1c005ed0:	0280b1ad 	addi.w	$r13,$r13,44(0x2c)
1c005ed4:	02808c0c 	addi.w	$r12,$r0,35(0x23)
1c005ed8:	001c31cc 	mul.w	$r12,$r14,$r12
1c005edc:	001031ac 	add.w	$r12,$r13,$r12
1c005ee0:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c005ee4:	0015018d 	move	$r13,$r12
1c005ee8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c005eec:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005ef0:	2800018c 	ld.b	$r12,$r12,0
1c005ef4:	5c00adac 	bne	$r13,$r12,172(0xac) # 1c005fa0 <OLED_DrawFont32+0x17c>
1c005ef8:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c005efc:	50009400 	b	148(0x94) # 1c005f90 <OLED_DrawFont32+0x16c>
1c005f00:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c005f04:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c005f08:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c005f0c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c005f10:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005f14:	001031ac 	add.w	$r12,$r13,$r12
1c005f18:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c005f1c:	00150185 	move	$r5,$r12
1c005f20:	001501c4 	move	$r4,$r14
1c005f24:	57f6e7ff 	bl	-2332(0xffff6e4) # 1c005608 <OLED_Set_Pos>
1c005f28:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c005f2c:	50004c00 	b	76(0x4c) # 1c005f78 <OLED_DrawFont32+0x154>
1c005f30:	2a7fb2cf 	ld.hu	$r15,$r22,-20(0xfec)
1c005f34:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005f38:	0040958d 	slli.w	$r13,$r12,0x5
1c005f3c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005f40:	001031ad 	add.w	$r13,$r13,$r12
1c005f44:	1c00006e 	pcaddu12i	$r14,3(0x3)
1c005f48:	028d11ce 	addi.w	$r14,$r14,836(0x344)
1c005f4c:	02820c0c 	addi.w	$r12,$r0,131(0x83)
1c005f50:	001c31ec 	mul.w	$r12,$r15,$r12
1c005f54:	001031cc 	add.w	$r12,$r14,$r12
1c005f58:	0010358c 	add.w	$r12,$r12,$r13
1c005f5c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c005f60:	02810005 	addi.w	$r5,$r0,64(0x40)
1c005f64:	00150184 	move	$r4,$r12
1c005f68:	57f637ff 	bl	-2508(0xffff634) # 1c00559c <OLED_WR_Byte>
1c005f6c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c005f70:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005f74:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c005f78:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c005f7c:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c005f80:	6fffb18d 	bgeu	$r12,$r13,-80(0x3ffb0) # 1c005f30 <OLED_DrawFont32+0x10c>
1c005f84:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c005f88:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005f8c:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c005f90:	2a3fbacd 	ld.bu	$r13,$r22,-18(0xfee)
1c005f94:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c005f98:	6fff698d 	bgeu	$r12,$r13,-152(0x3ff68) # 1c005f00 <OLED_DrawFont32+0xdc>
1c005f9c:	50001c00 	b	28(0x1c) # 1c005fb8 <OLED_DrawFont32+0x194>
1c005fa0:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c005fa4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c005fa8:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c005fac:	2a7fb2cd 	ld.hu	$r13,$r22,-20(0xfec)
1c005fb0:	2a7faacc 	ld.hu	$r12,$r22,-22(0xfea)
1c005fb4:	6bfeb9ac 	bltu	$r13,$r12,-328(0x3feb8) # 1c005e6c <OLED_DrawFont32+0x48>
1c005fb8:	03400000 	andi	$r0,$r0,0x0
1c005fbc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c005fc0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c005fc4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c005fc8:	4c000020 	jirl	$r0,$r1,0

1c005fcc <OLED_Show_Str>:
OLED_Show_Str():
1c005fcc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c005fd0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c005fd4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c005fd8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c005fdc:	0015008c 	move	$r12,$r4
1c005fe0:	001500ae 	move	$r14,$r5
1c005fe4:	29bf62c6 	st.w	$r6,$r22,-40(0xfd8)
1c005fe8:	001500ed 	move	$r13,$r7
1c005fec:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c005ff0:	001501cc 	move	$r12,$r14
1c005ff4:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c005ff8:	001501ac 	move	$r12,$r13
1c005ffc:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c006000:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c006004:	297fb2cc 	st.h	$r12,$r22,-20(0xfec)
1c006008:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00600c:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c006010:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c006014:	580209ac 	beq	$r13,$r12,520(0x208) # 1c00621c <OLED_Show_Str+0x250>
1c006018:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c00601c:	293f5ecc 	st.b	$r12,$r22,-41(0xfd7)
1c006020:	5001fc00 	b	508(0x1fc) # 1c00621c <OLED_Show_Str+0x250>
1c006024:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006028:	44012580 	bnez	$r12,292(0x124) # 1c00614c <OLED_Show_Str+0x180>
1c00602c:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c006030:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c006034:	0044858c 	srli.w	$r12,$r12,0x1
1c006038:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00603c:	0015018e 	move	$r14,$r12
1c006040:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c006044:	0011398c 	sub.w	$r12,$r12,$r14
1c006048:	64002d8d 	bge	$r12,$r13,44(0x2c) # 1c006074 <OLED_Show_Str+0xa8>
1c00604c:	297f7ac0 	st.h	$r0,$r22,-34(0xfde)
1c006050:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c006054:	00448d8c 	srli.w	$r12,$r12,0x3
1c006058:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00605c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006060:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c006064:	001031ac 	add.w	$r12,$r13,$r12
1c006068:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00606c:	03401d8c 	andi	$r12,$r12,0x7
1c006070:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c006074:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c006078:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c00607c:	00448d8c 	srli.w	$r12,$r12,0x3
1c006080:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006084:	0015018e 	move	$r14,$r12
1c006088:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c00608c:	0011398c 	sub.w	$r12,$r12,$r14
1c006090:	6400098d 	bge	$r12,$r13,8(0x8) # 1c006098 <OLED_Show_Str+0xcc>
1c006094:	297f72c0 	st.h	$r0,$r22,-36(0xfdc)
1c006098:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00609c:	2800018c 	ld.b	$r12,$r12,0
1c0060a0:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0060a4:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c0060a8:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c0060b8 <OLED_Show_Str+0xec>
1c0060ac:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0060b0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0060b4:	50016800 	b	360(0x168) # 1c00621c <OLED_Show_Str+0x250>
1c0060b8:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0060bc:	2800018d 	ld.b	$r13,$r12,0
1c0060c0:	0280340c 	addi.w	$r12,$r0,13(0xd)
1c0060c4:	5c0031ac 	bne	$r13,$r12,48(0x30) # 1c0060f4 <OLED_Show_Str+0x128>
1c0060c8:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c0060cc:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0060d0:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c0060d4:	001031ac 	add.w	$r12,$r13,$r12
1c0060d8:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c0060dc:	2a7fb2cc 	ld.hu	$r12,$r22,-20(0xfec)
1c0060e0:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0060e4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0060e8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0060ec:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c0060f0:	50004c00 	b	76(0x4c) # 1c00613c <OLED_Show_Str+0x170>
1c0060f4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0060f8:	2800018c 	ld.b	$r12,$r12,0
1c0060fc:	0067818e 	bstrpick.w	$r14,$r12,0x7,0x0
1c006100:	2a3f5ecf 	ld.bu	$r15,$r22,-41(0xfd7)
1c006104:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c006108:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c00610c:	001501e7 	move	$r7,$r15
1c006110:	001501c6 	move	$r6,$r14
1c006114:	001501a5 	move	$r5,$r13
1c006118:	00150184 	move	$r4,$r12
1c00611c:	57f7d7ff 	bl	-2092(0xffff7d4) # 1c0058f0 <OLED_ShowChar>
1c006120:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c006124:	0044858c 	srli.w	$r12,$r12,0x1
1c006128:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00612c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006130:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c006134:	001031ac 	add.w	$r12,$r13,$r12
1c006138:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c00613c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006140:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006144:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c006148:	5000d400 	b	212(0xd4) # 1c00621c <OLED_Show_Str+0x250>
1c00614c:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c006150:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c006154:	0282000e 	addi.w	$r14,$r0,128(0x80)
1c006158:	001131cc 	sub.w	$r12,$r14,$r12
1c00615c:	64002d8d 	bge	$r12,$r13,44(0x2c) # 1c006188 <OLED_Show_Str+0x1bc>
1c006160:	297f7ac0 	st.h	$r0,$r22,-34(0xfde)
1c006164:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c006168:	00448d8c 	srli.w	$r12,$r12,0x3
1c00616c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006170:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006174:	2a7f72cc 	ld.hu	$r12,$r22,-36(0xfdc)
1c006178:	001031ac 	add.w	$r12,$r13,$r12
1c00617c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006180:	03401d8c 	andi	$r12,$r12,0x7
1c006184:	297f72cc 	st.h	$r12,$r22,-36(0xfdc)
1c006188:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c00618c:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c006190:	00448d8c 	srli.w	$r12,$r12,0x3
1c006194:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006198:	0015018e 	move	$r14,$r12
1c00619c:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c0061a0:	0011398c 	sub.w	$r12,$r12,$r14
1c0061a4:	6400098d 	bge	$r12,$r13,8(0x8) # 1c0061ac <OLED_Show_Str+0x1e0>
1c0061a8:	297f72c0 	st.h	$r0,$r22,-36(0xfdc)
1c0061ac:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0061b0:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c0061b4:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c0061b8:	5c0021ac 	bne	$r13,$r12,32(0x20) # 1c0061d8 <OLED_Show_Str+0x20c>
1c0061bc:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c0061c0:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0061c4:	28bf62c6 	ld.w	$r6,$r22,-40(0xfd8)
1c0061c8:	001501a5 	move	$r5,$r13
1c0061cc:	00150184 	move	$r4,$r12
1c0061d0:	57fc57ff 	bl	-940(0xffffc54) # 1c005e24 <OLED_DrawFont32>
1c0061d4:	50002800 	b	40(0x28) # 1c0061fc <OLED_Show_Str+0x230>
1c0061d8:	2a3f5ecd 	ld.bu	$r13,$r22,-41(0xfd7)
1c0061dc:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c0061e0:	5c001dac 	bne	$r13,$r12,28(0x1c) # 1c0061fc <OLED_Show_Str+0x230>
1c0061e4:	2a7f72cd 	ld.hu	$r13,$r22,-36(0xfdc)
1c0061e8:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c0061ec:	28bf62c6 	ld.w	$r6,$r22,-40(0xfd8)
1c0061f0:	001501a5 	move	$r5,$r13
1c0061f4:	00150184 	move	$r4,$r12
1c0061f8:	57fa93ff 	bl	-1392(0xffffa90) # 1c005c88 <OLED_DrawFont16>
1c0061fc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006200:	02800d8c 	addi.w	$r12,$r12,3(0x3)
1c006204:	29bf62cc 	st.w	$r12,$r22,-40(0xfd8)
1c006208:	2a3f5ecc 	ld.bu	$r12,$r22,-41(0xfd7)
1c00620c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c006210:	2a7f7acc 	ld.hu	$r12,$r22,-34(0xfde)
1c006214:	001031ac 	add.w	$r12,$r13,$r12
1c006218:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c00621c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c006220:	2800018c 	ld.b	$r12,$r12,0
1c006224:	47fe019f 	bnez	$r12,-512(0x7ffe00) # 1c006024 <OLED_Show_Str+0x58>
1c006228:	03400000 	andi	$r0,$r0,0x0
1c00622c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006230:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006234:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006238:	4c000020 	jirl	$r0,$r1,0

1c00623c <KEY_init>:
KEY_init():
1c00623c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006240:	29803061 	st.w	$r1,$r3,12(0xc)
1c006244:	29802076 	st.w	$r22,$r3,8(0x8)
1c006248:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00624c:	00150005 	move	$r5,$r0
1c006250:	02805804 	addi.w	$r4,$r0,22(0x16)
1c006254:	57b60fff 	bl	-18932(0xfffb60c) # 1c001860 <gpio_set_direction>
1c006258:	00150005 	move	$r5,$r0
1c00625c:	02805c04 	addi.w	$r4,$r0,23(0x17)
1c006260:	57b603ff 	bl	-18944(0xfffb600) # 1c001860 <gpio_set_direction>
1c006264:	00150005 	move	$r5,$r0
1c006268:	02806004 	addi.w	$r4,$r0,24(0x18)
1c00626c:	57b5f7ff 	bl	-18956(0xfffb5f4) # 1c001860 <gpio_set_direction>
1c006270:	00150005 	move	$r5,$r0
1c006274:	02806404 	addi.w	$r4,$r0,25(0x19)
1c006278:	57b5ebff 	bl	-18968(0xfffb5e8) # 1c001860 <gpio_set_direction>
1c00627c:	03400000 	andi	$r0,$r0,0x0
1c006280:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006284:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006288:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00628c:	4c000020 	jirl	$r0,$r1,0

1c006290 <KEY_Check>:
KEY_Check():
1c006290:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c006294:	29807061 	st.w	$r1,$r3,28(0x1c)
1c006298:	29806076 	st.w	$r22,$r3,24(0x18)
1c00629c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0062a0:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0062a4:	02805804 	addi.w	$r4,$r0,22(0x16)
1c0062a8:	57b2e7ff 	bl	-19740(0xfffb2e4) # 1c00158c <gpio_get_pin>
1c0062ac:	0015008c 	move	$r12,$r4
1c0062b0:	44001180 	bnez	$r12,16(0x10) # 1c0062c0 <KEY_Check+0x30>
1c0062b4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0062b8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0062bc:	50006000 	b	96(0x60) # 1c00631c <KEY_Check+0x8c>
1c0062c0:	02805c04 	addi.w	$r4,$r0,23(0x17)
1c0062c4:	57b2cbff 	bl	-19768(0xfffb2c8) # 1c00158c <gpio_get_pin>
1c0062c8:	0015008c 	move	$r12,$r4
1c0062cc:	44001180 	bnez	$r12,16(0x10) # 1c0062dc <KEY_Check+0x4c>
1c0062d0:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0062d4:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0062d8:	50004400 	b	68(0x44) # 1c00631c <KEY_Check+0x8c>
1c0062dc:	02806004 	addi.w	$r4,$r0,24(0x18)
1c0062e0:	57b2afff 	bl	-19796(0xfffb2ac) # 1c00158c <gpio_get_pin>
1c0062e4:	0015008c 	move	$r12,$r4
1c0062e8:	44001180 	bnez	$r12,16(0x10) # 1c0062f8 <KEY_Check+0x68>
1c0062ec:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0062f0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0062f4:	50002800 	b	40(0x28) # 1c00631c <KEY_Check+0x8c>
1c0062f8:	02806404 	addi.w	$r4,$r0,25(0x19)
1c0062fc:	57b293ff 	bl	-19824(0xfffb290) # 1c00158c <gpio_get_pin>
1c006300:	0015008c 	move	$r12,$r4
1c006304:	44001180 	bnez	$r12,16(0x10) # 1c006314 <KEY_Check+0x84>
1c006308:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c00630c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c006310:	50000c00 	b	12(0xc) # 1c00631c <KEY_Check+0x8c>
1c006314:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c006318:	50000400 	b	4(0x4) # 1c00631c <KEY_Check+0x8c>
1c00631c:	00150184 	move	$r4,$r12
1c006320:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c006324:	28806076 	ld.w	$r22,$r3,24(0x18)
1c006328:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00632c:	4c000020 	jirl	$r0,$r1,0

1c006330 <esp8266_check_cmd>:
esp8266_check_cmd():
1c006330:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006334:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006338:	2980a076 	st.w	$r22,$r3,40(0x28)
1c00633c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006340:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c006344:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006348:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c00634c:	28b34084 	ld.w	$r4,$r4,-816(0xcd0)
1c006350:	5400c800 	bl	200(0xc8) # 1c006418 <Queue_isEmpty>
1c006354:	0015008c 	move	$r12,$r4
1c006358:	44009580 	bnez	$r12,148(0x94) # 1c0063ec <esp8266_check_cmd+0xbc>
1c00635c:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c006360:	28b2f084 	ld.w	$r4,$r4,-836(0xcbc)
1c006364:	54010400 	bl	260(0x104) # 1c006468 <Queue_HadUse>
1c006368:	0015008c 	move	$r12,$r4
1c00636c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c006370:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006374:	28b2618c 	ld.w	$r12,$r12,-872(0xc98)
1c006378:	2900018d 	st.b	$r13,$r12,0
1c00637c:	0284b006 	addi.w	$r6,$r0,300(0x12c)
1c006380:	00150005 	move	$r5,$r0
1c006384:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c006388:	28b2b084 	ld.w	$r4,$r4,-852(0xcac)
1c00638c:	57d2bbff 	bl	-11592(0xfffd2b8) # 1c003644 <memset>
1c006390:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006394:	28b1e18c 	ld.w	$r12,$r12,-904(0xc78)
1c006398:	2a00018c 	ld.bu	$r12,$r12,0
1c00639c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0063a0:	00150186 	move	$r6,$r12
1c0063a4:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c0063a8:	28b230a5 	ld.w	$r5,$r5,-884(0xc8c)
1c0063ac:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0063b0:	28b1b084 	ld.w	$r4,$r4,-916(0xc6c)
1c0063b4:	54026000 	bl	608(0x260) # 1c006614 <Queue_Read>
1c0063b8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0063bc:	28b1418c 	ld.w	$r12,$r12,-944(0xc50)
1c0063c0:	2a00018c 	ld.bu	$r12,$r12,0
1c0063c4:	0015018d 	move	$r13,$r12
1c0063c8:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c0063cc:	28b1a18c 	ld.w	$r12,$r12,-920(0xc68)
1c0063d0:	0010358c 	add.w	$r12,$r12,$r13
1c0063d4:	29000180 	st.b	$r0,$r12,0
1c0063d8:	1cc7ff65 	pcaddu12i	$r5,409595(0x63ffb)
1c0063dc:	28b160a5 	ld.w	$r5,$r5,-936(0xc58)
1c0063e0:	1c000084 	pcaddu12i	$r4,4(0x4)
1c0063e4:	02a3b084 	addi.w	$r4,$r4,-1812(0x8ec)
1c0063e8:	57b7afff 	bl	-18516(0xfffb7ac) # 1c001b94 <myprintf>
1c0063ec:	28bf72c5 	ld.w	$r5,$r22,-36(0xfdc)
1c0063f0:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0063f4:	28b10084 	ld.w	$r4,$r4,-960(0xc40)
1c0063f8:	57d2afff 	bl	-11604(0xfffd2ac) # 1c0036a4 <pstrstr>
1c0063fc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006400:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006404:	00150184 	move	$r4,$r12
1c006408:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00640c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c006410:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006414:	4c000020 	jirl	$r0,$r1,0

1c006418 <Queue_isEmpty>:
Queue_isEmpty():
1c006418:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00641c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c006420:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006424:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006428:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00642c:	44000d80 	bnez	$r12,12(0xc) # 1c006438 <Queue_isEmpty+0x20>
1c006430:	0015000c 	move	$r12,$r0
1c006434:	50002400 	b	36(0x24) # 1c006458 <Queue_isEmpty+0x40>
1c006438:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00643c:	2a40018d 	ld.hu	$r13,$r12,0
1c006440:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006444:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c006448:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c006454 <Queue_isEmpty+0x3c>
1c00644c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006450:	50000800 	b	8(0x8) # 1c006458 <Queue_isEmpty+0x40>
1c006454:	0015000c 	move	$r12,$r0
1c006458:	00150184 	move	$r4,$r12
1c00645c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c006460:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006464:	4c000020 	jirl	$r0,$r1,0

1c006468 <Queue_HadUse>:
Queue_HadUse():
1c006468:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00646c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c006470:	02808076 	addi.w	$r22,$r3,32(0x20)
1c006474:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c006478:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00647c:	44000d80 	bnez	$r12,12(0xc) # 1c006488 <Queue_HadUse+0x20>
1c006480:	0015000c 	move	$r12,$r0
1c006484:	50003800 	b	56(0x38) # 1c0064bc <Queue_HadUse+0x54>
1c006488:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00648c:	2a40098d 	ld.hu	$r13,$r12,2(0x2)
1c006490:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006494:	2a40018c 	ld.hu	$r12,$r12,0
1c006498:	001131ac 	sub.w	$r12,$r13,$r12
1c00649c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0064a0:	0284b18c 	addi.w	$r12,$r12,300(0x12c)
1c0064a4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0064a8:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c0064ac:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c0064b0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0064b8 <Queue_HadUse+0x50>
1c0064b4:	002a0007 	break	0x7
1c0064b8:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c0064bc:	00150184 	move	$r4,$r12
1c0064c0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0064c4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0064c8:	4c000020 	jirl	$r0,$r1,0

1c0064cc <Queue_NoUse>:
Queue_NoUse():
1c0064cc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0064d0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0064d4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0064d8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0064dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0064e0:	44000d80 	bnez	$r12,12(0xc) # 1c0064ec <Queue_NoUse+0x20>
1c0064e4:	0015000c 	move	$r12,$r0
1c0064e8:	50004000 	b	64(0x40) # 1c006528 <Queue_NoUse+0x5c>
1c0064ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0064f0:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c0064f4:	0015018d 	move	$r13,$r12
1c0064f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0064fc:	2a40018c 	ld.hu	$r12,$r12,0
1c006500:	001131ac 	sub.w	$r12,$r13,$r12
1c006504:	0284b18d 	addi.w	$r13,$r12,300(0x12c)
1c006508:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c00650c:	0020b1ae 	mod.w	$r14,$r13,$r12
1c006510:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006518 <Queue_NoUse+0x4c>
1c006514:	002a0007 	break	0x7
1c006518:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c00651c:	0284ac0d 	addi.w	$r13,$r0,299(0x12b)
1c006520:	001131ac 	sub.w	$r12,$r13,$r12
1c006524:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006528:	00150184 	move	$r4,$r12
1c00652c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c006530:	02808063 	addi.w	$r3,$r3,32(0x20)
1c006534:	4c000020 	jirl	$r0,$r1,0

1c006538 <Queue_Wirte>:
Queue_Wirte():
1c006538:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00653c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c006540:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006544:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006548:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00654c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c006550:	001500cc 	move	$r12,$r6
1c006554:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c006558:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00655c:	44000d80 	bnez	$r12,12(0xc) # 1c006568 <Queue_Wirte+0x30>
1c006560:	0015000c 	move	$r12,$r0
1c006564:	50009c00 	b	156(0x9c) # 1c006600 <Queue_Wirte+0xc8>
1c006568:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c00656c:	57ff63ff 	bl	-160(0xfffff60) # 1c0064cc <Queue_NoUse>
1c006570:	0015008c 	move	$r12,$r4
1c006574:	0015018d 	move	$r13,$r12
1c006578:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c00657c:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c006588 <Queue_Wirte+0x50>
1c006580:	0015000c 	move	$r12,$r0
1c006584:	50007c00 	b	124(0x7c) # 1c006600 <Queue_Wirte+0xc8>
1c006588:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00658c:	50006400 	b	100(0x64) # 1c0065f0 <Queue_Wirte+0xb8>
1c006590:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c006594:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c006598:	001031ac 	add.w	$r12,$r13,$r12
1c00659c:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c0065a0:	2a4009ad 	ld.hu	$r13,$r13,2(0x2)
1c0065a4:	001501ae 	move	$r14,$r13
1c0065a8:	2a00018d 	ld.bu	$r13,$r12,0
1c0065ac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0065b0:	0010398c 	add.w	$r12,$r12,$r14
1c0065b4:	2900118d 	st.b	$r13,$r12,4(0x4)
1c0065b8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0065bc:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c0065c0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0065c4:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0065c8:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c0065cc:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c0065d0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0065d8 <Queue_Wirte+0xa0>
1c0065d4:	002a0007 	break	0x7
1c0065d8:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c0065dc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0065e0:	2940098d 	st.h	$r13,$r12,2(0x2)
1c0065e4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0065e8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0065ec:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0065f0:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c0065f4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0065f8:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c006590 <Queue_Wirte+0x58>
1c0065fc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006600:	00150184 	move	$r4,$r12
1c006604:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c006608:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00660c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c006610:	4c000020 	jirl	$r0,$r1,0

1c006614 <Queue_Read>:
Queue_Read():
1c006614:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c006618:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00661c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c006620:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c006624:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c006628:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c00662c:	001500cc 	move	$r12,$r6
1c006630:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c006634:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006638:	44000d80 	bnez	$r12,12(0xc) # 1c006644 <Queue_Read+0x30>
1c00663c:	0015000c 	move	$r12,$r0
1c006640:	50009c00 	b	156(0x9c) # 1c0066dc <Queue_Read+0xc8>
1c006644:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c006648:	57fe23ff 	bl	-480(0xffffe20) # 1c006468 <Queue_HadUse>
1c00664c:	0015008c 	move	$r12,$r4
1c006650:	0015018d 	move	$r13,$r12
1c006654:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c006658:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c006664 <Queue_Read+0x50>
1c00665c:	0015000c 	move	$r12,$r0
1c006660:	50007c00 	b	124(0x7c) # 1c0066dc <Queue_Read+0xc8>
1c006664:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c006668:	50006400 	b	100(0x64) # 1c0066cc <Queue_Read+0xb8>
1c00666c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006670:	2a40018c 	ld.hu	$r12,$r12,0
1c006674:	0015018e 	move	$r14,$r12
1c006678:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00667c:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c006680:	001031ac 	add.w	$r12,$r13,$r12
1c006684:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c006688:	001039ad 	add.w	$r13,$r13,$r14
1c00668c:	2a0011ad 	ld.bu	$r13,$r13,4(0x4)
1c006690:	2900018d 	st.b	$r13,$r12,0
1c006694:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c006698:	2a40018c 	ld.hu	$r12,$r12,0
1c00669c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0066a0:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c0066a4:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c0066a8:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c0066ac:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0066b4 <Queue_Read+0xa0>
1c0066b0:	002a0007 	break	0x7
1c0066b4:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c0066b8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0066bc:	2940018d 	st.h	$r13,$r12,0
1c0066c0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0066c4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0066c8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0066cc:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c0066d0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0066d4:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c00666c <Queue_Read+0x58>
1c0066d8:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0066dc:	00150184 	move	$r4,$r12
1c0066e0:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0066e4:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0066e8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0066ec:	4c000020 	jirl	$r0,$r1,0

1c0066f0 <Display>:
Display():
1c0066f0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0066f4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0066f8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0066fc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006700:	57ef93ff 	bl	-4208(0xfffef90) # 1c005690 <OLED_Clear>
1c006704:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006708:	02a4f18c 	addi.w	$r12,$r12,-1732(0x93c)
1c00670c:	2800018c 	ld.b	$r12,$r12,0
1c006710:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006714:	02804008 	addi.w	$r8,$r0,16(0x10)
1c006718:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00671c:	00150186 	move	$r6,$r12
1c006720:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006724:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c006728:	57f41fff 	bl	-3044(0xffff41c) # 1c005b44 <OLED_ShowNum>
1c00672c:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006730:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006734:	029790c6 	addi.w	$r6,$r6,1508(0x5e4)
1c006738:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00673c:	0280bc04 	addi.w	$r4,$r0,47(0x2f)
1c006740:	57f2dbff 	bl	-3368(0xffff2d8) # 1c005a18 <OLED_ShowString>
1c006744:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006748:	02a3f58c 	addi.w	$r12,$r12,-1795(0x8fd)
1c00674c:	2800018c 	ld.b	$r12,$r12,0
1c006750:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006754:	02804008 	addi.w	$r8,$r0,16(0x10)
1c006758:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00675c:	00150186 	move	$r6,$r12
1c006760:	02800805 	addi.w	$r5,$r0,2(0x2)
1c006764:	0280d004 	addi.w	$r4,$r0,52(0x34)
1c006768:	57f3dfff 	bl	-3108(0xffff3dc) # 1c005b44 <OLED_ShowNum>
1c00676c:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006770:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006774:	029690c6 	addi.w	$r6,$r6,1444(0x5a4)
1c006778:	02800805 	addi.w	$r5,$r0,2(0x2)
1c00677c:	02811404 	addi.w	$r4,$r0,69(0x45)
1c006780:	57f29bff 	bl	-3432(0xffff298) # 1c005a18 <OLED_ShowString>
1c006784:	1cc7ff6c 	pcaddu12i	$r12,409595(0x63ffb)
1c006788:	02a2f98c 	addi.w	$r12,$r12,-1858(0x8be)
1c00678c:	2800018c 	ld.b	$r12,$r12,0
1c006790:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006794:	02804008 	addi.w	$r8,$r0,16(0x10)
1c006798:	02800807 	addi.w	$r7,$r0,2(0x2)
1c00679c:	00150186 	move	$r6,$r12
1c0067a0:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0067a4:	02812804 	addi.w	$r4,$r0,74(0x4a)
1c0067a8:	57f39fff 	bl	-3172(0xffff39c) # 1c005b44 <OLED_ShowNum>
1c0067ac:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0067b0:	02a1618c 	addi.w	$r12,$r12,-1960(0x858)
1c0067b4:	2a40018d 	ld.hu	$r13,$r12,0
1c0067b8:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c0067bc:	002131ae 	div.wu	$r14,$r13,$r12
1c0067c0:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0067c8 <Display+0xd8>
1c0067c4:	002a0007 	break	0x7
1c0067c8:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c0067cc:	00150186 	move	$r6,$r12
1c0067d0:	1c000065 	pcaddu12i	$r5,3(0x3)
1c0067d4:	029520a5 	addi.w	$r5,$r5,1352(0x548)
1c0067d8:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c0067dc:	28a14084 	ld.w	$r4,$r4,-1968(0x850)
1c0067e0:	57bd47ff 	bl	-17084(0xfffbd44) # 1c002524 <sprintf>
1c0067e4:	02804007 	addi.w	$r7,$r0,16(0x10)
1c0067e8:	1cc7ff66 	pcaddu12i	$r6,409595(0x63ffb)
1c0067ec:	28a100c6 	ld.w	$r6,$r6,-1984(0x840)
1c0067f0:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0067f4:	02801404 	addi.w	$r4,$r0,5(0x5)
1c0067f8:	57f7d7ff 	bl	-2092(0xffff7d4) # 1c005fcc <OLED_Show_Str>
1c0067fc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006800:	02a0298c 	addi.w	$r12,$r12,-2038(0x80a)
1c006804:	2a40018d 	ld.hu	$r13,$r12,0
1c006808:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c00680c:	002131ae 	div.wu	$r14,$r13,$r12
1c006810:	5c000980 	bne	$r12,$r0,8(0x8) # 1c006818 <Display+0x128>
1c006814:	002a0007 	break	0x7
1c006818:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c00681c:	00150186 	move	$r6,$r12
1c006820:	1c000065 	pcaddu12i	$r5,3(0x3)
1c006824:	029420a5 	addi.w	$r5,$r5,1288(0x508)
1c006828:	1cc7ff64 	pcaddu12i	$r4,409595(0x63ffb)
1c00682c:	28a00084 	ld.w	$r4,$r4,-2048(0x800)
1c006830:	57bcf7ff 	bl	-17164(0xfffbcf4) # 1c002524 <sprintf>
1c006834:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006838:	1cc7ff46 	pcaddu12i	$r6,409594(0x63ffa)
1c00683c:	289fc0c6 	ld.w	$r6,$r6,2032(0x7f0)
1c006840:	02801805 	addi.w	$r5,$r0,6(0x6)
1c006844:	02801404 	addi.w	$r4,$r0,5(0x5)
1c006848:	57f787ff 	bl	-2172(0xffff784) # 1c005fcc <OLED_Show_Str>
1c00684c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006850:	289f118c 	ld.w	$r12,$r12,1988(0x7c4)
1c006854:	2a00018c 	ld.bu	$r12,$r12,0
1c006858:	44009980 	bnez	$r12,152(0x98) # 1c0068f0 <Display+0x200>
1c00685c:	02815004 	addi.w	$r4,$r0,84(0x54)
1c006860:	57fad3ff 	bl	-1328(0xffffad0) # 1c006330 <esp8266_check_cmd>
1c006864:	0015008c 	move	$r12,$r4
1c006868:	40008980 	beqz	$r12,136(0x88) # 1c0068f0 <Display+0x200>
1c00686c:	57ee27ff 	bl	-4572(0xfffee24) # 1c005690 <OLED_Clear>
1c006870:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006874:	289e818c 	ld.w	$r12,$r12,1952(0x7a0)
1c006878:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00687c:	2900018d 	st.b	$r13,$r12,0
1c006880:	028fa004 	addi.w	$r4,$r0,1000(0x3e8)
1c006884:	57cd83ff 	bl	-12928(0xfffcd80) # 1c003604 <delay_ms>
1c006888:	57ee0bff 	bl	-4600(0xfffee08) # 1c005690 <OLED_Clear>
1c00688c:	0287d004 	addi.w	$r4,$r0,500(0x1f4)
1c006890:	57cd77ff 	bl	-12940(0xfffcd74) # 1c003604 <delay_ms>
1c006894:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006898:	1c000066 	pcaddu12i	$r6,3(0x3)
1c00689c:	029290c6 	addi.w	$r6,$r6,1188(0x4a4)
1c0068a0:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c0068a4:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0068a8:	57f727ff 	bl	-2268(0xffff724) # 1c005fcc <OLED_Show_Str>
1c0068ac:	02804007 	addi.w	$r7,$r0,16(0x10)
1c0068b0:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0068b4:	029270c6 	addi.w	$r6,$r6,1180(0x49c)
1c0068b8:	02801805 	addi.w	$r5,$r0,6(0x6)
1c0068bc:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0068c0:	57f70fff 	bl	-2292(0xffff70c) # 1c005fcc <OLED_Show_Str>
1c0068c4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0068c8:	02805004 	addi.w	$r4,$r0,20(0x14)
1c0068cc:	57ad13ff 	bl	-21232(0xfffad10) # 1c0015dc <gpio_write_pin>
1c0068d0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0068d4:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c0068d8:	57ad07ff 	bl	-21244(0xfffad04) # 1c0015dc <gpio_write_pin>
1c0068dc:	0287d004 	addi.w	$r4,$r0,500(0x1f4)
1c0068e0:	57cd27ff 	bl	-13020(0xfffcd24) # 1c003604 <delay_ms>
1c0068e4:	00150005 	move	$r5,$r0
1c0068e8:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c0068ec:	57acf3ff 	bl	-21264(0xfffacf0) # 1c0015dc <gpio_write_pin>
1c0068f0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0068f4:	289c818c 	ld.w	$r12,$r12,1824(0x720)
1c0068f8:	2a00018d 	ld.bu	$r13,$r12,0
1c0068fc:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c006900:	5c0081ac 	bne	$r13,$r12,128(0x80) # 1c006980 <Display+0x290>
1c006904:	02977004 	addi.w	$r4,$r0,1500(0x5dc)
1c006908:	57ccffff 	bl	-13060(0xfffccfc) # 1c003604 <delay_ms>
1c00690c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006910:	029cb18c 	addi.w	$r12,$r12,1836(0x72c)
1c006914:	2a00098c 	ld.bu	$r12,$r12,2(0x2)
1c006918:	0015018d 	move	$r13,$r12
1c00691c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006920:	029c718c 	addi.w	$r12,$r12,1820(0x71c)
1c006924:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c006928:	001031ac 	add.w	$r12,$r13,$r12
1c00692c:	1cc7ff4d 	pcaddu12i	$r13,409594(0x63ffa)
1c006930:	029c31ad 	addi.w	$r13,$r13,1804(0x70c)
1c006934:	2a0011ad 	ld.bu	$r13,$r13,4(0x4)
1c006938:	0010358c 	add.w	$r12,$r12,$r13
1c00693c:	1cc7ff4d 	pcaddu12i	$r13,409594(0x63ffa)
1c006940:	029bf1ad 	addi.w	$r13,$r13,1788(0x6fc)
1c006944:	2a0015ad 	ld.bu	$r13,$r13,5(0x5)
1c006948:	0010358d 	add.w	$r13,$r12,$r13
1c00694c:	0284000c 	addi.w	$r12,$r0,256(0x100)
1c006950:	0020b1ae 	mod.w	$r14,$r13,$r12
1c006954:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00695c <Display+0x26c>
1c006958:	002a0007 	break	0x7
1c00695c:	006781cd 	bstrpick.w	$r13,$r14,0x7,0x0
1c006960:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006964:	029b618c 	addi.w	$r12,$r12,1752(0x6d8)
1c006968:	2900198d 	st.b	$r13,$r12,6(0x6)
1c00696c:	02802006 	addi.w	$r6,$r0,8(0x8)
1c006970:	1cc7ff45 	pcaddu12i	$r5,409594(0x63ffa)
1c006974:	029b20a5 	addi.w	$r5,$r5,1736(0x6c8)
1c006978:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c00697c:	57c063ff 	bl	-16288(0xfffc060) # 1c0029dc <UART_SendDataALL>
1c006980:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006984:	289a718c 	ld.w	$r12,$r12,1692(0x69c)
1c006988:	2a00018d 	ld.bu	$r13,$r12,0
1c00698c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c006990:	5c0045ac 	bne	$r13,$r12,68(0x44) # 1c0069d4 <Display+0x2e4>
1c006994:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006998:	0299d58c 	addi.w	$r12,$r12,1653(0x675)
1c00699c:	2a00018c 	ld.bu	$r12,$r12,0
1c0069a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0069a4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0069a8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0069ac:	0299858c 	addi.w	$r12,$r12,1633(0x661)
1c0069b0:	2900018d 	st.b	$r13,$r12,0
1c0069b4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0069b8:	0299558c 	addi.w	$r12,$r12,1621(0x655)
1c0069bc:	2a00018d 	ld.bu	$r13,$r12,0
1c0069c0:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c0069c4:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c0069d4 <Display+0x2e4>
1c0069c8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0069cc:	0299058c 	addi.w	$r12,$r12,1601(0x641)
1c0069d0:	29000180 	st.b	$r0,$r12,0
1c0069d4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0069d8:	0298d58c 	addi.w	$r12,$r12,1589(0x635)
1c0069dc:	2a00018c 	ld.bu	$r12,$r12,0
1c0069e0:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c0069e4:	5800d18d 	beq	$r12,$r13,208(0xd0) # 1c006ab4 <Display+0x3c4>
1c0069e8:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c0069ec:	5801858d 	beq	$r12,$r13,388(0x184) # 1c006b70 <Display+0x480>
1c0069f0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0069f4:	5c024d8d 	bne	$r12,$r13,588(0x24c) # 1c006c40 <Display+0x550>
1c0069f8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0069fc:	2898918c 	ld.w	$r12,$r12,1572(0x624)
1c006a00:	2a00018d 	ld.bu	$r13,$r12,0
1c006a04:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c006a08:	5c004dac 	bne	$r13,$r12,76(0x4c) # 1c006a54 <Display+0x364>
1c006a0c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006a10:	0298d18c 	addi.w	$r12,$r12,1588(0x634)
1c006a14:	2800018c 	ld.b	$r12,$r12,0
1c006a18:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006a1c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006a20:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006a24:	00005d8d 	ext.w.b	$r13,$r12
1c006a28:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006a2c:	0298618c 	addi.w	$r12,$r12,1560(0x618)
1c006a30:	2900018d 	st.b	$r13,$r12,0
1c006a34:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006a38:	0298318c 	addi.w	$r12,$r12,1548(0x60c)
1c006a3c:	2800018d 	ld.b	$r13,$r12,0
1c006a40:	0280600c 	addi.w	$r12,$r0,24(0x18)
1c006a44:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c006a54 <Display+0x364>
1c006a48:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006a4c:	0297e18c 	addi.w	$r12,$r12,1528(0x5f8)
1c006a50:	29000180 	st.b	$r0,$r12,0
1c006a54:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006a58:	2897218c 	ld.w	$r12,$r12,1480(0x5c8)
1c006a5c:	2a00018d 	ld.bu	$r13,$r12,0
1c006a60:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c006a64:	5c01c9ac 	bne	$r13,$r12,456(0x1c8) # 1c006c2c <Display+0x53c>
1c006a68:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006a6c:	0297618c 	addi.w	$r12,$r12,1496(0x5d8)
1c006a70:	2800018c 	ld.b	$r12,$r12,0
1c006a74:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006a78:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c006a7c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006a80:	00005d8d 	ext.w.b	$r13,$r12
1c006a84:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006a88:	0296f18c 	addi.w	$r12,$r12,1468(0x5bc)
1c006a8c:	2900018d 	st.b	$r13,$r12,0
1c006a90:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006a94:	0296c18c 	addi.w	$r12,$r12,1456(0x5b0)
1c006a98:	2800018c 	ld.b	$r12,$r12,0
1c006a9c:	44019180 	bnez	$r12,400(0x190) # 1c006c2c <Display+0x53c>
1c006aa0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006aa4:	0296818c 	addi.w	$r12,$r12,1440(0x5a0)
1c006aa8:	02805c0d 	addi.w	$r13,$r0,23(0x17)
1c006aac:	2900018d 	st.b	$r13,$r12,0
1c006ab0:	50017c00 	b	380(0x17c) # 1c006c2c <Display+0x53c>
1c006ab4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006ab8:	2895a18c 	ld.w	$r12,$r12,1384(0x568)
1c006abc:	2a00018d 	ld.bu	$r13,$r12,0
1c006ac0:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c006ac4:	5c004dac 	bne	$r13,$r12,76(0x4c) # 1c006b10 <Display+0x420>
1c006ac8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006acc:	0295e58c 	addi.w	$r12,$r12,1401(0x579)
1c006ad0:	2800018c 	ld.b	$r12,$r12,0
1c006ad4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006ad8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006adc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006ae0:	00005d8d 	ext.w.b	$r13,$r12
1c006ae4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006ae8:	0295758c 	addi.w	$r12,$r12,1373(0x55d)
1c006aec:	2900018d 	st.b	$r13,$r12,0
1c006af0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006af4:	0295458c 	addi.w	$r12,$r12,1361(0x551)
1c006af8:	2800018d 	ld.b	$r13,$r12,0
1c006afc:	0280f00c 	addi.w	$r12,$r0,60(0x3c)
1c006b00:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c006b10 <Display+0x420>
1c006b04:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006b08:	0294f58c 	addi.w	$r12,$r12,1341(0x53d)
1c006b0c:	29000180 	st.b	$r0,$r12,0
1c006b10:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006b14:	2894318c 	ld.w	$r12,$r12,1292(0x50c)
1c006b18:	2a00018d 	ld.bu	$r13,$r12,0
1c006b1c:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c006b20:	5c0115ac 	bne	$r13,$r12,276(0x114) # 1c006c34 <Display+0x544>
1c006b24:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006b28:	0294758c 	addi.w	$r12,$r12,1309(0x51d)
1c006b2c:	2800018c 	ld.b	$r12,$r12,0
1c006b30:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006b34:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c006b38:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006b3c:	00005d8d 	ext.w.b	$r13,$r12
1c006b40:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006b44:	0294058c 	addi.w	$r12,$r12,1281(0x501)
1c006b48:	2900018d 	st.b	$r13,$r12,0
1c006b4c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006b50:	0293d58c 	addi.w	$r12,$r12,1269(0x4f5)
1c006b54:	2800018c 	ld.b	$r12,$r12,0
1c006b58:	4400dd80 	bnez	$r12,220(0xdc) # 1c006c34 <Display+0x544>
1c006b5c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006b60:	0293958c 	addi.w	$r12,$r12,1253(0x4e5)
1c006b64:	0280ec0d 	addi.w	$r13,$r0,59(0x3b)
1c006b68:	2900018d 	st.b	$r13,$r12,0
1c006b6c:	5000c800 	b	200(0xc8) # 1c006c34 <Display+0x544>
1c006b70:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006b74:	2892b18c 	ld.w	$r12,$r12,1196(0x4ac)
1c006b78:	2a00018d 	ld.bu	$r13,$r12,0
1c006b7c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c006b80:	5c004dac 	bne	$r13,$r12,76(0x4c) # 1c006bcc <Display+0x4dc>
1c006b84:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006b88:	0292f98c 	addi.w	$r12,$r12,1214(0x4be)
1c006b8c:	2800018c 	ld.b	$r12,$r12,0
1c006b90:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006b94:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006b98:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006b9c:	00005d8d 	ext.w.b	$r13,$r12
1c006ba0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006ba4:	0292898c 	addi.w	$r12,$r12,1186(0x4a2)
1c006ba8:	2900018d 	st.b	$r13,$r12,0
1c006bac:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006bb0:	0292598c 	addi.w	$r12,$r12,1174(0x496)
1c006bb4:	2800018d 	ld.b	$r13,$r12,0
1c006bb8:	0280f00c 	addi.w	$r12,$r0,60(0x3c)
1c006bbc:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c006bcc <Display+0x4dc>
1c006bc0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006bc4:	0292098c 	addi.w	$r12,$r12,1154(0x482)
1c006bc8:	29000180 	st.b	$r0,$r12,0
1c006bcc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006bd0:	2891418c 	ld.w	$r12,$r12,1104(0x450)
1c006bd4:	2a00018d 	ld.bu	$r13,$r12,0
1c006bd8:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c006bdc:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c006c3c <Display+0x54c>
1c006be0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006be4:	0291898c 	addi.w	$r12,$r12,1122(0x462)
1c006be8:	2800018c 	ld.b	$r12,$r12,0
1c006bec:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006bf0:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c006bf4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006bf8:	00005d8d 	ext.w.b	$r13,$r12
1c006bfc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006c00:	0291198c 	addi.w	$r12,$r12,1094(0x446)
1c006c04:	2900018d 	st.b	$r13,$r12,0
1c006c08:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006c0c:	0290e98c 	addi.w	$r12,$r12,1082(0x43a)
1c006c10:	2800018c 	ld.b	$r12,$r12,0
1c006c14:	44002980 	bnez	$r12,40(0x28) # 1c006c3c <Display+0x54c>
1c006c18:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006c1c:	0290a98c 	addi.w	$r12,$r12,1066(0x42a)
1c006c20:	0280ec0d 	addi.w	$r13,$r0,59(0x3b)
1c006c24:	2900018d 	st.b	$r13,$r12,0
1c006c28:	50001400 	b	20(0x14) # 1c006c3c <Display+0x54c>
1c006c2c:	03400000 	andi	$r0,$r0,0x0
1c006c30:	50001000 	b	16(0x10) # 1c006c40 <Display+0x550>
1c006c34:	03400000 	andi	$r0,$r0,0x0
1c006c38:	50000800 	b	8(0x8) # 1c006c40 <Display+0x550>
1c006c3c:	03400000 	andi	$r0,$r0,0x0
1c006c40:	03400000 	andi	$r0,$r0,0x0
1c006c44:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006c48:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006c4c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006c50:	4c000020 	jirl	$r0,$r1,0

1c006c54 <Set_time1>:
Set_time1():
1c006c54:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c006c58:	29803061 	st.w	$r1,$r3,12(0xc)
1c006c5c:	29802076 	st.w	$r22,$r3,8(0x8)
1c006c60:	02804076 	addi.w	$r22,$r3,16(0x10)
1c006c64:	57ea2fff 	bl	-5588(0xfffea2c) # 1c005690 <OLED_Clear>
1c006c68:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006c6c:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006c70:	0283c0c6 	addi.w	$r6,$r6,240(0xf0)
1c006c74:	02800405 	addi.w	$r5,$r0,1(0x1)
1c006c78:	02802804 	addi.w	$r4,$r0,10(0xa)
1c006c7c:	57f353ff 	bl	-3248(0xffff350) # 1c005fcc <OLED_Show_Str>
1c006c80:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006c84:	028f0d8c 	addi.w	$r12,$r12,963(0x3c3)
1c006c88:	2800018c 	ld.b	$r12,$r12,0
1c006c8c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006c90:	02804008 	addi.w	$r8,$r0,16(0x10)
1c006c94:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006c98:	00150186 	move	$r6,$r12
1c006c9c:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c006ca0:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c006ca4:	57eea3ff 	bl	-4448(0xfffeea0) # 1c005b44 <OLED_ShowNum>
1c006ca8:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006cac:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006cb0:	0281a0c6 	addi.w	$r6,$r6,104(0x68)
1c006cb4:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c006cb8:	0280bc04 	addi.w	$r4,$r0,47(0x2f)
1c006cbc:	57ed5fff 	bl	-4772(0xfffed5c) # 1c005a18 <OLED_ShowString>
1c006cc0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006cc4:	028e118c 	addi.w	$r12,$r12,900(0x384)
1c006cc8:	2800018c 	ld.b	$r12,$r12,0
1c006ccc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006cd0:	02804008 	addi.w	$r8,$r0,16(0x10)
1c006cd4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006cd8:	00150186 	move	$r6,$r12
1c006cdc:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c006ce0:	0280d004 	addi.w	$r4,$r0,52(0x34)
1c006ce4:	57ee63ff 	bl	-4512(0xfffee60) # 1c005b44 <OLED_ShowNum>
1c006ce8:	02804007 	addi.w	$r7,$r0,16(0x10)
1c006cec:	1c000066 	pcaddu12i	$r6,3(0x3)
1c006cf0:	0280a0c6 	addi.w	$r6,$r6,40(0x28)
1c006cf4:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c006cf8:	02811404 	addi.w	$r4,$r0,69(0x45)
1c006cfc:	57ed1fff 	bl	-4836(0xfffed1c) # 1c005a18 <OLED_ShowString>
1c006d00:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006d04:	028c2d8c 	addi.w	$r12,$r12,779(0x30b)
1c006d08:	2800018c 	ld.b	$r12,$r12,0
1c006d0c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c006d10:	02804008 	addi.w	$r8,$r0,16(0x10)
1c006d14:	02800807 	addi.w	$r7,$r0,2(0x2)
1c006d18:	00150186 	move	$r6,$r12
1c006d1c:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c006d20:	02812804 	addi.w	$r4,$r0,74(0x4a)
1c006d24:	57ee23ff 	bl	-4576(0xfffee20) # 1c005b44 <OLED_ShowNum>
1c006d28:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006d2c:	288bd18c 	ld.w	$r12,$r12,756(0x2f4)
1c006d30:	2a00018d 	ld.bu	$r13,$r12,0
1c006d34:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c006d38:	5c0045ac 	bne	$r13,$r12,68(0x44) # 1c006d7c <Set_time1+0x128>
1c006d3c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006d40:	028b358c 	addi.w	$r12,$r12,717(0x2cd)
1c006d44:	2a00018c 	ld.bu	$r12,$r12,0
1c006d48:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006d4c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c006d50:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006d54:	028ae58c 	addi.w	$r12,$r12,697(0x2b9)
1c006d58:	2900018d 	st.b	$r13,$r12,0
1c006d5c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006d60:	028ab58c 	addi.w	$r12,$r12,685(0x2ad)
1c006d64:	2a00018d 	ld.bu	$r13,$r12,0
1c006d68:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c006d6c:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c006d7c <Set_time1+0x128>
1c006d70:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006d74:	028a658c 	addi.w	$r12,$r12,665(0x299)
1c006d78:	29000180 	st.b	$r0,$r12,0
1c006d7c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006d80:	028a358c 	addi.w	$r12,$r12,653(0x28d)
1c006d84:	2a00018c 	ld.bu	$r12,$r12,0
1c006d88:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c006d8c:	5800d18d 	beq	$r12,$r13,208(0xd0) # 1c006e5c <Set_time1+0x208>
1c006d90:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c006d94:	5801858d 	beq	$r12,$r13,388(0x184) # 1c006f18 <Set_time1+0x2c4>
1c006d98:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c006d9c:	5c024d8d 	bne	$r12,$r13,588(0x24c) # 1c006fe8 <Set_time1+0x394>
1c006da0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006da4:	2889f18c 	ld.w	$r12,$r12,636(0x27c)
1c006da8:	2a00018d 	ld.bu	$r13,$r12,0
1c006dac:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c006db0:	5c004dac 	bne	$r13,$r12,76(0x4c) # 1c006dfc <Set_time1+0x1a8>
1c006db4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006db8:	028a3d8c 	addi.w	$r12,$r12,655(0x28f)
1c006dbc:	2800018c 	ld.b	$r12,$r12,0
1c006dc0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006dc4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006dc8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006dcc:	00005d8d 	ext.w.b	$r13,$r12
1c006dd0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006dd4:	0289cd8c 	addi.w	$r12,$r12,627(0x273)
1c006dd8:	2900018d 	st.b	$r13,$r12,0
1c006ddc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006de0:	02899d8c 	addi.w	$r12,$r12,615(0x267)
1c006de4:	2800018d 	ld.b	$r13,$r12,0
1c006de8:	0280600c 	addi.w	$r12,$r0,24(0x18)
1c006dec:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c006dfc <Set_time1+0x1a8>
1c006df0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006df4:	02894d8c 	addi.w	$r12,$r12,595(0x253)
1c006df8:	29000180 	st.b	$r0,$r12,0
1c006dfc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006e00:	2888818c 	ld.w	$r12,$r12,544(0x220)
1c006e04:	2a00018d 	ld.bu	$r13,$r12,0
1c006e08:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c006e0c:	5c01c9ac 	bne	$r13,$r12,456(0x1c8) # 1c006fd4 <Set_time1+0x380>
1c006e10:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006e14:	0288cd8c 	addi.w	$r12,$r12,563(0x233)
1c006e18:	2800018c 	ld.b	$r12,$r12,0
1c006e1c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006e20:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c006e24:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006e28:	00005d8d 	ext.w.b	$r13,$r12
1c006e2c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006e30:	02885d8c 	addi.w	$r12,$r12,535(0x217)
1c006e34:	2900018d 	st.b	$r13,$r12,0
1c006e38:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006e3c:	02882d8c 	addi.w	$r12,$r12,523(0x20b)
1c006e40:	2800018c 	ld.b	$r12,$r12,0
1c006e44:	44019180 	bnez	$r12,400(0x190) # 1c006fd4 <Set_time1+0x380>
1c006e48:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006e4c:	0287ed8c 	addi.w	$r12,$r12,507(0x1fb)
1c006e50:	02805c0d 	addi.w	$r13,$r0,23(0x17)
1c006e54:	2900018d 	st.b	$r13,$r12,0
1c006e58:	50017c00 	b	380(0x17c) # 1c006fd4 <Set_time1+0x380>
1c006e5c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006e60:	2887018c 	ld.w	$r12,$r12,448(0x1c0)
1c006e64:	2a00018d 	ld.bu	$r13,$r12,0
1c006e68:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c006e6c:	5c004dac 	bne	$r13,$r12,76(0x4c) # 1c006eb8 <Set_time1+0x264>
1c006e70:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006e74:	0287518c 	addi.w	$r12,$r12,468(0x1d4)
1c006e78:	2800018c 	ld.b	$r12,$r12,0
1c006e7c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006e80:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006e84:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006e88:	00005d8d 	ext.w.b	$r13,$r12
1c006e8c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006e90:	0286e18c 	addi.w	$r12,$r12,440(0x1b8)
1c006e94:	2900018d 	st.b	$r13,$r12,0
1c006e98:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006e9c:	0286b18c 	addi.w	$r12,$r12,428(0x1ac)
1c006ea0:	2800018d 	ld.b	$r13,$r12,0
1c006ea4:	0280f00c 	addi.w	$r12,$r0,60(0x3c)
1c006ea8:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c006eb8 <Set_time1+0x264>
1c006eac:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006eb0:	0286618c 	addi.w	$r12,$r12,408(0x198)
1c006eb4:	29000180 	st.b	$r0,$r12,0
1c006eb8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006ebc:	2885918c 	ld.w	$r12,$r12,356(0x164)
1c006ec0:	2a00018d 	ld.bu	$r13,$r12,0
1c006ec4:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c006ec8:	5c0115ac 	bne	$r13,$r12,276(0x114) # 1c006fdc <Set_time1+0x388>
1c006ecc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006ed0:	0285e18c 	addi.w	$r12,$r12,376(0x178)
1c006ed4:	2800018c 	ld.b	$r12,$r12,0
1c006ed8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006edc:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c006ee0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006ee4:	00005d8d 	ext.w.b	$r13,$r12
1c006ee8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006eec:	0285718c 	addi.w	$r12,$r12,348(0x15c)
1c006ef0:	2900018d 	st.b	$r13,$r12,0
1c006ef4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006ef8:	0285418c 	addi.w	$r12,$r12,336(0x150)
1c006efc:	2800018c 	ld.b	$r12,$r12,0
1c006f00:	4400dd80 	bnez	$r12,220(0xdc) # 1c006fdc <Set_time1+0x388>
1c006f04:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006f08:	0285018c 	addi.w	$r12,$r12,320(0x140)
1c006f0c:	0280ec0d 	addi.w	$r13,$r0,59(0x3b)
1c006f10:	2900018d 	st.b	$r13,$r12,0
1c006f14:	5000c800 	b	200(0xc8) # 1c006fdc <Set_time1+0x388>
1c006f18:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006f1c:	2884118c 	ld.w	$r12,$r12,260(0x104)
1c006f20:	2a00018d 	ld.bu	$r13,$r12,0
1c006f24:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c006f28:	5c004dac 	bne	$r13,$r12,76(0x4c) # 1c006f74 <Set_time1+0x320>
1c006f2c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006f30:	02837d8c 	addi.w	$r12,$r12,223(0xdf)
1c006f34:	2800018c 	ld.b	$r12,$r12,0
1c006f38:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006f3c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c006f40:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006f44:	00005d8d 	ext.w.b	$r13,$r12
1c006f48:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006f4c:	02830d8c 	addi.w	$r12,$r12,195(0xc3)
1c006f50:	2900018d 	st.b	$r13,$r12,0
1c006f54:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006f58:	0282dd8c 	addi.w	$r12,$r12,183(0xb7)
1c006f5c:	2800018d 	ld.b	$r13,$r12,0
1c006f60:	0280f00c 	addi.w	$r12,$r0,60(0x3c)
1c006f64:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c006f74 <Set_time1+0x320>
1c006f68:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006f6c:	02828d8c 	addi.w	$r12,$r12,163(0xa3)
1c006f70:	29000180 	st.b	$r0,$r12,0
1c006f74:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c006f78:	2882a18c 	ld.w	$r12,$r12,168(0xa8)
1c006f7c:	2a00018d 	ld.bu	$r13,$r12,0
1c006f80:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c006f84:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c006fe4 <Set_time1+0x390>
1c006f88:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006f8c:	02820d8c 	addi.w	$r12,$r12,131(0x83)
1c006f90:	2800018c 	ld.b	$r12,$r12,0
1c006f94:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006f98:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c006f9c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c006fa0:	00005d8d 	ext.w.b	$r13,$r12
1c006fa4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006fa8:	02819d8c 	addi.w	$r12,$r12,103(0x67)
1c006fac:	2900018d 	st.b	$r13,$r12,0
1c006fb0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006fb4:	02816d8c 	addi.w	$r12,$r12,91(0x5b)
1c006fb8:	2800018c 	ld.b	$r12,$r12,0
1c006fbc:	44002980 	bnez	$r12,40(0x28) # 1c006fe4 <Set_time1+0x390>
1c006fc0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c006fc4:	02812d8c 	addi.w	$r12,$r12,75(0x4b)
1c006fc8:	0280ec0d 	addi.w	$r13,$r0,59(0x3b)
1c006fcc:	2900018d 	st.b	$r13,$r12,0
1c006fd0:	50001400 	b	20(0x14) # 1c006fe4 <Set_time1+0x390>
1c006fd4:	03400000 	andi	$r0,$r0,0x0
1c006fd8:	50001000 	b	16(0x10) # 1c006fe8 <Set_time1+0x394>
1c006fdc:	03400000 	andi	$r0,$r0,0x0
1c006fe0:	50000800 	b	8(0x8) # 1c006fe8 <Set_time1+0x394>
1c006fe4:	03400000 	andi	$r0,$r0,0x0
1c006fe8:	03400000 	andi	$r0,$r0,0x0
1c006fec:	28803061 	ld.w	$r1,$r3,12(0xc)
1c006ff0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c006ff4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c006ff8:	4c000020 	jirl	$r0,$r1,0

1c006ffc <Set_time2>:
Set_time2():
1c006ffc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007000:	29803061 	st.w	$r1,$r3,12(0xc)
1c007004:	29802076 	st.w	$r22,$r3,8(0x8)
1c007008:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00700c:	57e687ff 	bl	-6524(0xfffe684) # 1c005690 <OLED_Clear>
1c007010:	02804007 	addi.w	$r7,$r0,16(0x10)
1c007014:	1c000066 	pcaddu12i	$r6,3(0x3)
1c007018:	02b570c6 	addi.w	$r6,$r6,-676(0xd5c)
1c00701c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c007020:	02802804 	addi.w	$r4,$r0,10(0xa)
1c007024:	57efabff 	bl	-4184(0xfffefa8) # 1c005fcc <OLED_Show_Str>
1c007028:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00702c:	0280758c 	addi.w	$r12,$r12,29(0x1d)
1c007030:	2800018c 	ld.b	$r12,$r12,0
1c007034:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c007038:	02804008 	addi.w	$r8,$r0,16(0x10)
1c00703c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007040:	00150186 	move	$r6,$r12
1c007044:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c007048:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c00704c:	57eafbff 	bl	-5384(0xfffeaf8) # 1c005b44 <OLED_ShowNum>
1c007050:	02804007 	addi.w	$r7,$r0,16(0x10)
1c007054:	1c000066 	pcaddu12i	$r6,3(0x3)
1c007058:	02b300c6 	addi.w	$r6,$r6,-832(0xcc0)
1c00705c:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c007060:	0280bc04 	addi.w	$r4,$r0,47(0x2f)
1c007064:	57e9b7ff 	bl	-5708(0xfffe9b4) # 1c005a18 <OLED_ShowString>
1c007068:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00706c:	02bf798c 	addi.w	$r12,$r12,-34(0xfde)
1c007070:	2800018c 	ld.b	$r12,$r12,0
1c007074:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c007078:	02804008 	addi.w	$r8,$r0,16(0x10)
1c00707c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007080:	00150186 	move	$r6,$r12
1c007084:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c007088:	0280d004 	addi.w	$r4,$r0,52(0x34)
1c00708c:	57eabbff 	bl	-5448(0xfffeab8) # 1c005b44 <OLED_ShowNum>
1c007090:	02804007 	addi.w	$r7,$r0,16(0x10)
1c007094:	1c000066 	pcaddu12i	$r6,3(0x3)
1c007098:	02b200c6 	addi.w	$r6,$r6,-896(0xc80)
1c00709c:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c0070a0:	02811404 	addi.w	$r4,$r0,69(0x45)
1c0070a4:	57e977ff 	bl	-5772(0xfffe974) # 1c005a18 <OLED_ShowString>
1c0070a8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0070ac:	02bd918c 	addi.w	$r12,$r12,-156(0xf64)
1c0070b0:	2800018c 	ld.b	$r12,$r12,0
1c0070b4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0070b8:	02804008 	addi.w	$r8,$r0,16(0x10)
1c0070bc:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0070c0:	00150186 	move	$r6,$r12
1c0070c4:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c0070c8:	02812804 	addi.w	$r4,$r0,74(0x4a)
1c0070cc:	57ea7bff 	bl	-5512(0xfffea78) # 1c005b44 <OLED_ShowNum>
1c0070d0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0070d4:	28bd318c 	ld.w	$r12,$r12,-180(0xf4c)
1c0070d8:	2a00018d 	ld.bu	$r13,$r12,0
1c0070dc:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c0070e0:	5c029dac 	bne	$r13,$r12,668(0x29c) # 1c00737c <Set_time2+0x380>
1c0070e4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0070e8:	02bc958c 	addi.w	$r12,$r12,-219(0xf25)
1c0070ec:	2a00018c 	ld.bu	$r12,$r12,0
1c0070f0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0070f4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0070f8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0070fc:	02bc458c 	addi.w	$r12,$r12,-239(0xf11)
1c007100:	2900018d 	st.b	$r13,$r12,0
1c007104:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007108:	02bc158c 	addi.w	$r12,$r12,-251(0xf05)
1c00710c:	2a00018d 	ld.bu	$r13,$r12,0
1c007110:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c007114:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c007124 <Set_time2+0x128>
1c007118:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00711c:	02bbc58c 	addi.w	$r12,$r12,-271(0xef1)
1c007120:	29000180 	st.b	$r0,$r12,0
1c007124:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007128:	02bb958c 	addi.w	$r12,$r12,-283(0xee5)
1c00712c:	2a00018c 	ld.bu	$r12,$r12,0
1c007130:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c007134:	5800d18d 	beq	$r12,$r13,208(0xd0) # 1c007204 <Set_time2+0x208>
1c007138:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c00713c:	5801858d 	beq	$r12,$r13,388(0x184) # 1c0072c0 <Set_time2+0x2c4>
1c007140:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c007144:	5c02558d 	bne	$r12,$r13,596(0x254) # 1c007398 <Set_time2+0x39c>
1c007148:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00714c:	28bb518c 	ld.w	$r12,$r12,-300(0xed4)
1c007150:	2a00018d 	ld.bu	$r13,$r12,0
1c007154:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c007158:	5c004dac 	bne	$r13,$r12,76(0x4c) # 1c0071a4 <Set_time2+0x1a8>
1c00715c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007160:	02bba58c 	addi.w	$r12,$r12,-279(0xee9)
1c007164:	2800018c 	ld.b	$r12,$r12,0
1c007168:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00716c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007170:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c007174:	00005d8d 	ext.w.b	$r13,$r12
1c007178:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00717c:	02bb358c 	addi.w	$r12,$r12,-307(0xecd)
1c007180:	2900018d 	st.b	$r13,$r12,0
1c007184:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007188:	02bb058c 	addi.w	$r12,$r12,-319(0xec1)
1c00718c:	2800018d 	ld.b	$r13,$r12,0
1c007190:	0280600c 	addi.w	$r12,$r0,24(0x18)
1c007194:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c0071a4 <Set_time2+0x1a8>
1c007198:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00719c:	02bab58c 	addi.w	$r12,$r12,-339(0xead)
1c0071a0:	29000180 	st.b	$r0,$r12,0
1c0071a4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0071a8:	28b9e18c 	ld.w	$r12,$r12,-392(0xe78)
1c0071ac:	2a00018d 	ld.bu	$r13,$r12,0
1c0071b0:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c0071b4:	5c01d1ac 	bne	$r13,$r12,464(0x1d0) # 1c007384 <Set_time2+0x388>
1c0071b8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0071bc:	02ba358c 	addi.w	$r12,$r12,-371(0xe8d)
1c0071c0:	2800018c 	ld.b	$r12,$r12,0
1c0071c4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0071c8:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0071cc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0071d0:	00005d8d 	ext.w.b	$r13,$r12
1c0071d4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0071d8:	02b9c58c 	addi.w	$r12,$r12,-399(0xe71)
1c0071dc:	2900018d 	st.b	$r13,$r12,0
1c0071e0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0071e4:	02b9958c 	addi.w	$r12,$r12,-411(0xe65)
1c0071e8:	2800018c 	ld.b	$r12,$r12,0
1c0071ec:	44019980 	bnez	$r12,408(0x198) # 1c007384 <Set_time2+0x388>
1c0071f0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0071f4:	02b9558c 	addi.w	$r12,$r12,-427(0xe55)
1c0071f8:	02805c0d 	addi.w	$r13,$r0,23(0x17)
1c0071fc:	2900018d 	st.b	$r13,$r12,0
1c007200:	50018400 	b	388(0x184) # 1c007384 <Set_time2+0x388>
1c007204:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007208:	28b8618c 	ld.w	$r12,$r12,-488(0xe18)
1c00720c:	2a00018d 	ld.bu	$r13,$r12,0
1c007210:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c007214:	5c004dac 	bne	$r13,$r12,76(0x4c) # 1c007260 <Set_time2+0x264>
1c007218:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00721c:	02b8b98c 	addi.w	$r12,$r12,-466(0xe2e)
1c007220:	2800018c 	ld.b	$r12,$r12,0
1c007224:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c007228:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00722c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c007230:	00005d8d 	ext.w.b	$r13,$r12
1c007234:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007238:	02b8498c 	addi.w	$r12,$r12,-494(0xe12)
1c00723c:	2900018d 	st.b	$r13,$r12,0
1c007240:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007244:	02b8198c 	addi.w	$r12,$r12,-506(0xe06)
1c007248:	2800018d 	ld.b	$r13,$r12,0
1c00724c:	0280f00c 	addi.w	$r12,$r0,60(0x3c)
1c007250:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c007260 <Set_time2+0x264>
1c007254:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007258:	02b7c98c 	addi.w	$r12,$r12,-526(0xdf2)
1c00725c:	29000180 	st.b	$r0,$r12,0
1c007260:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007264:	28b6f18c 	ld.w	$r12,$r12,-580(0xdbc)
1c007268:	2a00018d 	ld.bu	$r13,$r12,0
1c00726c:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c007270:	5c011dac 	bne	$r13,$r12,284(0x11c) # 1c00738c <Set_time2+0x390>
1c007274:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007278:	02b7498c 	addi.w	$r12,$r12,-558(0xdd2)
1c00727c:	2800018c 	ld.b	$r12,$r12,0
1c007280:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c007284:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c007288:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00728c:	00005d8d 	ext.w.b	$r13,$r12
1c007290:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007294:	02b6d98c 	addi.w	$r12,$r12,-586(0xdb6)
1c007298:	2900018d 	st.b	$r13,$r12,0
1c00729c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0072a0:	02b6a98c 	addi.w	$r12,$r12,-598(0xdaa)
1c0072a4:	2800018c 	ld.b	$r12,$r12,0
1c0072a8:	4400e580 	bnez	$r12,228(0xe4) # 1c00738c <Set_time2+0x390>
1c0072ac:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0072b0:	02b6698c 	addi.w	$r12,$r12,-614(0xd9a)
1c0072b4:	0280ec0d 	addi.w	$r13,$r0,59(0x3b)
1c0072b8:	2900018d 	st.b	$r13,$r12,0
1c0072bc:	5000d000 	b	208(0xd0) # 1c00738c <Set_time2+0x390>
1c0072c0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0072c4:	28b5718c 	ld.w	$r12,$r12,-676(0xd5c)
1c0072c8:	2a00018d 	ld.bu	$r13,$r12,0
1c0072cc:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0072d0:	5c004dac 	bne	$r13,$r12,76(0x4c) # 1c00731c <Set_time2+0x320>
1c0072d4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0072d8:	02b4e18c 	addi.w	$r12,$r12,-712(0xd38)
1c0072dc:	2800018c 	ld.b	$r12,$r12,0
1c0072e0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0072e4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0072e8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0072ec:	00005d8d 	ext.w.b	$r13,$r12
1c0072f0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0072f4:	02b4718c 	addi.w	$r12,$r12,-740(0xd1c)
1c0072f8:	2900018d 	st.b	$r13,$r12,0
1c0072fc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007300:	02b4418c 	addi.w	$r12,$r12,-752(0xd10)
1c007304:	2800018d 	ld.b	$r13,$r12,0
1c007308:	0280f00c 	addi.w	$r12,$r0,60(0x3c)
1c00730c:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c00731c <Set_time2+0x320>
1c007310:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007314:	02b3f18c 	addi.w	$r12,$r12,-772(0xcfc)
1c007318:	29000180 	st.b	$r0,$r12,0
1c00731c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007320:	28b4018c 	ld.w	$r12,$r12,-768(0xd00)
1c007324:	2a00018d 	ld.bu	$r13,$r12,0
1c007328:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c00732c:	5c0069ac 	bne	$r13,$r12,104(0x68) # 1c007394 <Set_time2+0x398>
1c007330:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007334:	02b3718c 	addi.w	$r12,$r12,-804(0xcdc)
1c007338:	2800018c 	ld.b	$r12,$r12,0
1c00733c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c007340:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c007344:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c007348:	00005d8d 	ext.w.b	$r13,$r12
1c00734c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007350:	02b3018c 	addi.w	$r12,$r12,-832(0xcc0)
1c007354:	2900018d 	st.b	$r13,$r12,0
1c007358:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00735c:	02b2d18c 	addi.w	$r12,$r12,-844(0xcb4)
1c007360:	2800018c 	ld.b	$r12,$r12,0
1c007364:	44003180 	bnez	$r12,48(0x30) # 1c007394 <Set_time2+0x398>
1c007368:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00736c:	02b2918c 	addi.w	$r12,$r12,-860(0xca4)
1c007370:	0280ec0d 	addi.w	$r13,$r0,59(0x3b)
1c007374:	2900018d 	st.b	$r13,$r12,0
1c007378:	50001c00 	b	28(0x1c) # 1c007394 <Set_time2+0x398>
1c00737c:	03400000 	andi	$r0,$r0,0x0
1c007380:	50001800 	b	24(0x18) # 1c007398 <Set_time2+0x39c>
1c007384:	03400000 	andi	$r0,$r0,0x0
1c007388:	50001000 	b	16(0x10) # 1c007398 <Set_time2+0x39c>
1c00738c:	03400000 	andi	$r0,$r0,0x0
1c007390:	50000800 	b	8(0x8) # 1c007398 <Set_time2+0x39c>
1c007394:	03400000 	andi	$r0,$r0,0x0
1c007398:	03400000 	andi	$r0,$r0,0x0
1c00739c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0073a0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0073a4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0073a8:	4c000020 	jirl	$r0,$r1,0

1c0073ac <Set_time3>:
Set_time3():
1c0073ac:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0073b0:	29803061 	st.w	$r1,$r3,12(0xc)
1c0073b4:	29802076 	st.w	$r22,$r3,8(0x8)
1c0073b8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0073bc:	57e2d7ff 	bl	-7468(0xfffe2d4) # 1c005690 <OLED_Clear>
1c0073c0:	02804007 	addi.w	$r7,$r0,16(0x10)
1c0073c4:	1c000066 	pcaddu12i	$r6,3(0x3)
1c0073c8:	02a700c6 	addi.w	$r6,$r6,-1600(0x9c0)
1c0073cc:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0073d0:	02802804 	addi.w	$r4,$r0,10(0xa)
1c0073d4:	57ebfbff 	bl	-5128(0xfffebf8) # 1c005fcc <OLED_Show_Str>
1c0073d8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0073dc:	02b1bd8c 	addi.w	$r12,$r12,-913(0xc6f)
1c0073e0:	2800018c 	ld.b	$r12,$r12,0
1c0073e4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0073e8:	02804008 	addi.w	$r8,$r0,16(0x10)
1c0073ec:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0073f0:	00150186 	move	$r6,$r12
1c0073f4:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c0073f8:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c0073fc:	57e74bff 	bl	-6328(0xfffe748) # 1c005b44 <OLED_ShowNum>
1c007400:	02804007 	addi.w	$r7,$r0,16(0x10)
1c007404:	1c000066 	pcaddu12i	$r6,3(0x3)
1c007408:	02a440c6 	addi.w	$r6,$r6,-1776(0x910)
1c00740c:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c007410:	0280bc04 	addi.w	$r4,$r0,47(0x2f)
1c007414:	57e607ff 	bl	-6652(0xfffe604) # 1c005a18 <OLED_ShowString>
1c007418:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00741c:	02b0c18c 	addi.w	$r12,$r12,-976(0xc30)
1c007420:	2800018c 	ld.b	$r12,$r12,0
1c007424:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c007428:	02804008 	addi.w	$r8,$r0,16(0x10)
1c00742c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007430:	00150186 	move	$r6,$r12
1c007434:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c007438:	0280d004 	addi.w	$r4,$r0,52(0x34)
1c00743c:	57e70bff 	bl	-6392(0xfffe708) # 1c005b44 <OLED_ShowNum>
1c007440:	02804007 	addi.w	$r7,$r0,16(0x10)
1c007444:	1c000066 	pcaddu12i	$r6,3(0x3)
1c007448:	02a340c6 	addi.w	$r6,$r6,-1840(0x8d0)
1c00744c:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c007450:	02811404 	addi.w	$r4,$r0,69(0x45)
1c007454:	57e5c7ff 	bl	-6716(0xfffe5c4) # 1c005a18 <OLED_ShowString>
1c007458:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00745c:	02afc58c 	addi.w	$r12,$r12,-1039(0xbf1)
1c007460:	2800018c 	ld.b	$r12,$r12,0
1c007464:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c007468:	02804008 	addi.w	$r8,$r0,16(0x10)
1c00746c:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007470:	00150186 	move	$r6,$r12
1c007474:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c007478:	02812804 	addi.w	$r4,$r0,74(0x4a)
1c00747c:	57e6cbff 	bl	-6456(0xfffe6c8) # 1c005b44 <OLED_ShowNum>
1c007480:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007484:	28ae718c 	ld.w	$r12,$r12,-1124(0xb9c)
1c007488:	2a00018d 	ld.bu	$r13,$r12,0
1c00748c:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c007490:	5c0045ac 	bne	$r13,$r12,68(0x44) # 1c0074d4 <Set_time3+0x128>
1c007494:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007498:	02add58c 	addi.w	$r12,$r12,-1163(0xb75)
1c00749c:	2a00018c 	ld.bu	$r12,$r12,0
1c0074a0:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0074a4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0074a8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0074ac:	02ad858c 	addi.w	$r12,$r12,-1183(0xb61)
1c0074b0:	2900018d 	st.b	$r13,$r12,0
1c0074b4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0074b8:	02ad558c 	addi.w	$r12,$r12,-1195(0xb55)
1c0074bc:	2a00018d 	ld.bu	$r13,$r12,0
1c0074c0:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0074c4:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c0074d4 <Set_time3+0x128>
1c0074c8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0074cc:	02ad058c 	addi.w	$r12,$r12,-1215(0xb41)
1c0074d0:	29000180 	st.b	$r0,$r12,0
1c0074d4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0074d8:	02acd58c 	addi.w	$r12,$r12,-1227(0xb35)
1c0074dc:	2a00018c 	ld.bu	$r12,$r12,0
1c0074e0:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c0074e4:	5800d18d 	beq	$r12,$r13,208(0xd0) # 1c0075b4 <Set_time3+0x208>
1c0074e8:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c0074ec:	5801858d 	beq	$r12,$r13,388(0x184) # 1c007670 <Set_time3+0x2c4>
1c0074f0:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0074f4:	5c024d8d 	bne	$r12,$r13,588(0x24c) # 1c007740 <Set_time3+0x394>
1c0074f8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0074fc:	28ac918c 	ld.w	$r12,$r12,-1244(0xb24)
1c007500:	2a00018d 	ld.bu	$r13,$r12,0
1c007504:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c007508:	5c004dac 	bne	$r13,$r12,76(0x4c) # 1c007554 <Set_time3+0x1a8>
1c00750c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007510:	02aced8c 	addi.w	$r12,$r12,-1221(0xb3b)
1c007514:	2800018c 	ld.b	$r12,$r12,0
1c007518:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00751c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007520:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c007524:	00005d8d 	ext.w.b	$r13,$r12
1c007528:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00752c:	02ac7d8c 	addi.w	$r12,$r12,-1249(0xb1f)
1c007530:	2900018d 	st.b	$r13,$r12,0
1c007534:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007538:	02ac4d8c 	addi.w	$r12,$r12,-1261(0xb13)
1c00753c:	2800018d 	ld.b	$r13,$r12,0
1c007540:	0280600c 	addi.w	$r12,$r0,24(0x18)
1c007544:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c007554 <Set_time3+0x1a8>
1c007548:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00754c:	02abfd8c 	addi.w	$r12,$r12,-1281(0xaff)
1c007550:	29000180 	st.b	$r0,$r12,0
1c007554:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007558:	28ab218c 	ld.w	$r12,$r12,-1336(0xac8)
1c00755c:	2a00018d 	ld.bu	$r13,$r12,0
1c007560:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c007564:	5c01c9ac 	bne	$r13,$r12,456(0x1c8) # 1c00772c <Set_time3+0x380>
1c007568:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00756c:	02ab7d8c 	addi.w	$r12,$r12,-1313(0xadf)
1c007570:	2800018c 	ld.b	$r12,$r12,0
1c007574:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c007578:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c00757c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c007580:	00005d8d 	ext.w.b	$r13,$r12
1c007584:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007588:	02ab0d8c 	addi.w	$r12,$r12,-1341(0xac3)
1c00758c:	2900018d 	st.b	$r13,$r12,0
1c007590:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007594:	02aadd8c 	addi.w	$r12,$r12,-1353(0xab7)
1c007598:	2800018c 	ld.b	$r12,$r12,0
1c00759c:	44019180 	bnez	$r12,400(0x190) # 1c00772c <Set_time3+0x380>
1c0075a0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0075a4:	02aa9d8c 	addi.w	$r12,$r12,-1369(0xaa7)
1c0075a8:	02805c0d 	addi.w	$r13,$r0,23(0x17)
1c0075ac:	2900018d 	st.b	$r13,$r12,0
1c0075b0:	50017c00 	b	380(0x17c) # 1c00772c <Set_time3+0x380>
1c0075b4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0075b8:	28a9a18c 	ld.w	$r12,$r12,-1432(0xa68)
1c0075bc:	2a00018d 	ld.bu	$r13,$r12,0
1c0075c0:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c0075c4:	5c004dac 	bne	$r13,$r12,76(0x4c) # 1c007610 <Set_time3+0x264>
1c0075c8:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0075cc:	02aa018c 	addi.w	$r12,$r12,-1408(0xa80)
1c0075d0:	2800018c 	ld.b	$r12,$r12,0
1c0075d4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0075d8:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0075dc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0075e0:	00005d8d 	ext.w.b	$r13,$r12
1c0075e4:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0075e8:	02a9918c 	addi.w	$r12,$r12,-1436(0xa64)
1c0075ec:	2900018d 	st.b	$r13,$r12,0
1c0075f0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0075f4:	02a9618c 	addi.w	$r12,$r12,-1448(0xa58)
1c0075f8:	2800018d 	ld.b	$r13,$r12,0
1c0075fc:	0280f00c 	addi.w	$r12,$r0,60(0x3c)
1c007600:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c007610 <Set_time3+0x264>
1c007604:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007608:	02a9118c 	addi.w	$r12,$r12,-1468(0xa44)
1c00760c:	29000180 	st.b	$r0,$r12,0
1c007610:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007614:	28a8318c 	ld.w	$r12,$r12,-1524(0xa0c)
1c007618:	2a00018d 	ld.bu	$r13,$r12,0
1c00761c:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c007620:	5c0115ac 	bne	$r13,$r12,276(0x114) # 1c007734 <Set_time3+0x388>
1c007624:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007628:	02a8918c 	addi.w	$r12,$r12,-1500(0xa24)
1c00762c:	2800018c 	ld.b	$r12,$r12,0
1c007630:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c007634:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c007638:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00763c:	00005d8d 	ext.w.b	$r13,$r12
1c007640:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007644:	02a8218c 	addi.w	$r12,$r12,-1528(0xa08)
1c007648:	2900018d 	st.b	$r13,$r12,0
1c00764c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007650:	02a7f18c 	addi.w	$r12,$r12,-1540(0x9fc)
1c007654:	2800018c 	ld.b	$r12,$r12,0
1c007658:	4400dd80 	bnez	$r12,220(0xdc) # 1c007734 <Set_time3+0x388>
1c00765c:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007660:	02a7b18c 	addi.w	$r12,$r12,-1556(0x9ec)
1c007664:	0280ec0d 	addi.w	$r13,$r0,59(0x3b)
1c007668:	2900018d 	st.b	$r13,$r12,0
1c00766c:	5000c800 	b	200(0xc8) # 1c007734 <Set_time3+0x388>
1c007670:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007674:	28a6b18c 	ld.w	$r12,$r12,-1620(0x9ac)
1c007678:	2a00018d 	ld.bu	$r13,$r12,0
1c00767c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c007680:	5c004dac 	bne	$r13,$r12,76(0x4c) # 1c0076cc <Set_time3+0x320>
1c007684:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007688:	02a7158c 	addi.w	$r12,$r12,-1595(0x9c5)
1c00768c:	2800018c 	ld.b	$r12,$r12,0
1c007690:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c007694:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007698:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00769c:	00005d8d 	ext.w.b	$r13,$r12
1c0076a0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0076a4:	02a6a58c 	addi.w	$r12,$r12,-1623(0x9a9)
1c0076a8:	2900018d 	st.b	$r13,$r12,0
1c0076ac:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0076b0:	02a6758c 	addi.w	$r12,$r12,-1635(0x99d)
1c0076b4:	2800018d 	ld.b	$r13,$r12,0
1c0076b8:	0280f00c 	addi.w	$r12,$r0,60(0x3c)
1c0076bc:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c0076cc <Set_time3+0x320>
1c0076c0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0076c4:	02a6258c 	addi.w	$r12,$r12,-1655(0x989)
1c0076c8:	29000180 	st.b	$r0,$r12,0
1c0076cc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0076d0:	28a5418c 	ld.w	$r12,$r12,-1712(0x950)
1c0076d4:	2a00018d 	ld.bu	$r13,$r12,0
1c0076d8:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c0076dc:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c00773c <Set_time3+0x390>
1c0076e0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0076e4:	02a5a58c 	addi.w	$r12,$r12,-1687(0x969)
1c0076e8:	2800018c 	ld.b	$r12,$r12,0
1c0076ec:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0076f0:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0076f4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0076f8:	00005d8d 	ext.w.b	$r13,$r12
1c0076fc:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007700:	02a5358c 	addi.w	$r12,$r12,-1715(0x94d)
1c007704:	2900018d 	st.b	$r13,$r12,0
1c007708:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00770c:	02a5058c 	addi.w	$r12,$r12,-1727(0x941)
1c007710:	2800018c 	ld.b	$r12,$r12,0
1c007714:	44002980 	bnez	$r12,40(0x28) # 1c00773c <Set_time3+0x390>
1c007718:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c00771c:	02a4c58c 	addi.w	$r12,$r12,-1743(0x931)
1c007720:	0280ec0d 	addi.w	$r13,$r0,59(0x3b)
1c007724:	2900018d 	st.b	$r13,$r12,0
1c007728:	50001400 	b	20(0x14) # 1c00773c <Set_time3+0x390>
1c00772c:	03400000 	andi	$r0,$r0,0x0
1c007730:	50001000 	b	16(0x10) # 1c007740 <Set_time3+0x394>
1c007734:	03400000 	andi	$r0,$r0,0x0
1c007738:	50000800 	b	8(0x8) # 1c007740 <Set_time3+0x394>
1c00773c:	03400000 	andi	$r0,$r0,0x0
1c007740:	03400000 	andi	$r0,$r0,0x0
1c007744:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007748:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00774c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007750:	4c000020 	jirl	$r0,$r1,0

1c007754 <Set_num>:
Set_num():
1c007754:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007758:	29803061 	st.w	$r1,$r3,12(0xc)
1c00775c:	29802076 	st.w	$r22,$r3,8(0x8)
1c007760:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007764:	57df2fff 	bl	-8404(0xfffdf2c) # 1c005690 <OLED_Clear>
1c007768:	02804007 	addi.w	$r7,$r0,16(0x10)
1c00776c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007770:	0298b0c6 	addi.w	$r6,$r6,1580(0x62c)
1c007774:	02800805 	addi.w	$r5,$r0,2(0x2)
1c007778:	02802804 	addi.w	$r4,$r0,10(0xa)
1c00777c:	57e29fff 	bl	-7524(0xfffe29c) # 1c005a18 <OLED_ShowString>
1c007780:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007784:	02a3298c 	addi.w	$r12,$r12,-1846(0x8ca)
1c007788:	2800018c 	ld.b	$r12,$r12,0
1c00778c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c007790:	02804008 	addi.w	$r8,$r0,16(0x10)
1c007794:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007798:	00150186 	move	$r6,$r12
1c00779c:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0077a0:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c0077a4:	57e3a3ff 	bl	-7264(0xfffe3a0) # 1c005b44 <OLED_ShowNum>
1c0077a8:	02804007 	addi.w	$r7,$r0,16(0x10)
1c0077ac:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0077b0:	0297c0c6 	addi.w	$r6,$r6,1520(0x5f0)
1c0077b4:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0077b8:	0280e804 	addi.w	$r4,$r0,58(0x3a)
1c0077bc:	57e25fff 	bl	-7588(0xfffe25c) # 1c005a18 <OLED_ShowString>
1c0077c0:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c0077c4:	02a22d8c 	addi.w	$r12,$r12,-1909(0x88b)
1c0077c8:	2800018c 	ld.b	$r12,$r12,0
1c0077cc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0077d0:	02804008 	addi.w	$r8,$r0,16(0x10)
1c0077d4:	02800807 	addi.w	$r7,$r0,2(0x2)
1c0077d8:	00150186 	move	$r6,$r12
1c0077dc:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0077e0:	02811804 	addi.w	$r4,$r0,70(0x46)
1c0077e4:	57e363ff 	bl	-7328(0xfffe360) # 1c005b44 <OLED_ShowNum>
1c0077e8:	02804007 	addi.w	$r7,$r0,16(0x10)
1c0077ec:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0077f0:	0296d0c6 	addi.w	$r6,$r6,1460(0x5b4)
1c0077f4:	02801005 	addi.w	$r5,$r0,4(0x4)
1c0077f8:	02802804 	addi.w	$r4,$r0,10(0xa)
1c0077fc:	57e21fff 	bl	-7652(0xfffe21c) # 1c005a18 <OLED_ShowString>
1c007800:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007804:	02a1318c 	addi.w	$r12,$r12,-1972(0x84c)
1c007808:	2800018c 	ld.b	$r12,$r12,0
1c00780c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c007810:	02804008 	addi.w	$r8,$r0,16(0x10)
1c007814:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007818:	00150186 	move	$r6,$r12
1c00781c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c007820:	02807804 	addi.w	$r4,$r0,30(0x1e)
1c007824:	57e323ff 	bl	-7392(0xfffe320) # 1c005b44 <OLED_ShowNum>
1c007828:	02804007 	addi.w	$r7,$r0,16(0x10)
1c00782c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007830:	0295e0c6 	addi.w	$r6,$r6,1400(0x578)
1c007834:	02801005 	addi.w	$r5,$r0,4(0x4)
1c007838:	0280e804 	addi.w	$r4,$r0,58(0x3a)
1c00783c:	57e1dfff 	bl	-7716(0xfffe1dc) # 1c005a18 <OLED_ShowString>
1c007840:	1cc7ff4c 	pcaddu12i	$r12,409594(0x63ffa)
1c007844:	02a0358c 	addi.w	$r12,$r12,-2035(0x80d)
1c007848:	2800018c 	ld.b	$r12,$r12,0
1c00784c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c007850:	02804008 	addi.w	$r8,$r0,16(0x10)
1c007854:	02800807 	addi.w	$r7,$r0,2(0x2)
1c007858:	00150186 	move	$r6,$r12
1c00785c:	02801005 	addi.w	$r5,$r0,4(0x4)
1c007860:	02811804 	addi.w	$r4,$r0,70(0x46)
1c007864:	57e2e3ff 	bl	-7456(0xfffe2e0) # 1c005b44 <OLED_ShowNum>
1c007868:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00786c:	289ed18c 	ld.w	$r12,$r12,1972(0x7b4)
1c007870:	2a00018d 	ld.bu	$r13,$r12,0
1c007874:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c007878:	5c0045ac 	bne	$r13,$r12,68(0x44) # 1c0078bc <Set_num+0x168>
1c00787c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007880:	029e398c 	addi.w	$r12,$r12,1934(0x78e)
1c007884:	2a00018c 	ld.bu	$r12,$r12,0
1c007888:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00788c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c007890:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007894:	029de98c 	addi.w	$r12,$r12,1914(0x77a)
1c007898:	2900018d 	st.b	$r13,$r12,0
1c00789c:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0078a0:	029db98c 	addi.w	$r12,$r12,1902(0x76e)
1c0078a4:	2a00018d 	ld.bu	$r13,$r12,0
1c0078a8:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c0078ac:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c0078bc <Set_num+0x168>
1c0078b0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0078b4:	029d698c 	addi.w	$r12,$r12,1882(0x75a)
1c0078b8:	29000180 	st.b	$r0,$r12,0
1c0078bc:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c0078c0:	029d398c 	addi.w	$r12,$r12,1870(0x74e)
1c0078c4:	2a00018c 	ld.bu	$r12,$r12,0
1c0078c8:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c0078cc:	5800a98d 	beq	$r12,$r13,168(0xa8) # 1c007974 <Set_num+0x220>
1c0078d0:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c0078d4:	600011ac 	blt	$r13,$r12,16(0x10) # 1c0078e4 <Set_num+0x190>
1c0078d8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c0078dc:	58001d8d 	beq	$r12,$r13,28(0x1c) # 1c0078f8 <Set_num+0x1a4>
1c0078e0:	50022400 	b	548(0x224) # 1c007b04 <Set_num+0x3b0>
1c0078e4:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c0078e8:	5801098d 	beq	$r12,$r13,264(0x108) # 1c0079f0 <Set_num+0x29c>
1c0078ec:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c0078f0:	58017d8d 	beq	$r12,$r13,380(0x17c) # 1c007a6c <Set_num+0x318>
1c0078f4:	50021000 	b	528(0x210) # 1c007b04 <Set_num+0x3b0>
1c0078f8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0078fc:	289c918c 	ld.w	$r12,$r12,1828(0x724)
1c007900:	2a00018d 	ld.bu	$r13,$r12,0
1c007904:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c007908:	5c002dac 	bne	$r13,$r12,44(0x2c) # 1c007934 <Set_num+0x1e0>
1c00790c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007910:	029cf98c 	addi.w	$r12,$r12,1854(0x73e)
1c007914:	2800018c 	ld.b	$r12,$r12,0
1c007918:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00791c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007920:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c007924:	00005d8d 	ext.w.b	$r13,$r12
1c007928:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00792c:	029c898c 	addi.w	$r12,$r12,1826(0x722)
1c007930:	2900018d 	st.b	$r13,$r12,0
1c007934:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007938:	289ba18c 	ld.w	$r12,$r12,1768(0x6e8)
1c00793c:	2a00018d 	ld.bu	$r13,$r12,0
1c007940:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c007944:	5c01a5ac 	bne	$r13,$r12,420(0x1a4) # 1c007ae8 <Set_num+0x394>
1c007948:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00794c:	029c098c 	addi.w	$r12,$r12,1794(0x702)
1c007950:	2800018c 	ld.b	$r12,$r12,0
1c007954:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c007958:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c00795c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c007960:	00005d8d 	ext.w.b	$r13,$r12
1c007964:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007968:	029b998c 	addi.w	$r12,$r12,1766(0x6e6)
1c00796c:	2900018d 	st.b	$r13,$r12,0
1c007970:	50017800 	b	376(0x178) # 1c007ae8 <Set_num+0x394>
1c007974:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007978:	289aa18c 	ld.w	$r12,$r12,1704(0x6a8)
1c00797c:	2a00018d 	ld.bu	$r13,$r12,0
1c007980:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c007984:	5c002dac 	bne	$r13,$r12,44(0x2c) # 1c0079b0 <Set_num+0x25c>
1c007988:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c00798c:	029b0d8c 	addi.w	$r12,$r12,1731(0x6c3)
1c007990:	2800018c 	ld.b	$r12,$r12,0
1c007994:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c007998:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00799c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0079a0:	00005d8d 	ext.w.b	$r13,$r12
1c0079a4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0079a8:	029a9d8c 	addi.w	$r12,$r12,1703(0x6a7)
1c0079ac:	2900018d 	st.b	$r13,$r12,0
1c0079b0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0079b4:	2899b18c 	ld.w	$r12,$r12,1644(0x66c)
1c0079b8:	2a00018d 	ld.bu	$r13,$r12,0
1c0079bc:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c0079c0:	5c0131ac 	bne	$r13,$r12,304(0x130) # 1c007af0 <Set_num+0x39c>
1c0079c4:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0079c8:	029a1d8c 	addi.w	$r12,$r12,1671(0x687)
1c0079cc:	2800018c 	ld.b	$r12,$r12,0
1c0079d0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0079d4:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0079d8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0079dc:	00005d8d 	ext.w.b	$r13,$r12
1c0079e0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0079e4:	0299ad8c 	addi.w	$r12,$r12,1643(0x66b)
1c0079e8:	2900018d 	st.b	$r13,$r12,0
1c0079ec:	50010400 	b	260(0x104) # 1c007af0 <Set_num+0x39c>
1c0079f0:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c0079f4:	2898b18c 	ld.w	$r12,$r12,1580(0x62c)
1c0079f8:	2a00018d 	ld.bu	$r13,$r12,0
1c0079fc:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c007a00:	5c002dac 	bne	$r13,$r12,44(0x2c) # 1c007a2c <Set_num+0x2d8>
1c007a04:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007a08:	0299218c 	addi.w	$r12,$r12,1608(0x648)
1c007a0c:	2800018c 	ld.b	$r12,$r12,0
1c007a10:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c007a14:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007a18:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c007a1c:	00005d8d 	ext.w.b	$r13,$r12
1c007a20:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007a24:	0298b18c 	addi.w	$r12,$r12,1580(0x62c)
1c007a28:	2900018d 	st.b	$r13,$r12,0
1c007a2c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007a30:	2897c18c 	ld.w	$r12,$r12,1520(0x5f0)
1c007a34:	2a00018d 	ld.bu	$r13,$r12,0
1c007a38:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c007a3c:	5c00bdac 	bne	$r13,$r12,188(0xbc) # 1c007af8 <Set_num+0x3a4>
1c007a40:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007a44:	0298318c 	addi.w	$r12,$r12,1548(0x60c)
1c007a48:	2800018c 	ld.b	$r12,$r12,0
1c007a4c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c007a50:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c007a54:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c007a58:	00005d8d 	ext.w.b	$r13,$r12
1c007a5c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007a60:	0297c18c 	addi.w	$r12,$r12,1520(0x5f0)
1c007a64:	2900018d 	st.b	$r13,$r12,0
1c007a68:	50009000 	b	144(0x90) # 1c007af8 <Set_num+0x3a4>
1c007a6c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007a70:	2896c18c 	ld.w	$r12,$r12,1456(0x5b0)
1c007a74:	2a00018d 	ld.bu	$r13,$r12,0
1c007a78:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c007a7c:	5c002dac 	bne	$r13,$r12,44(0x2c) # 1c007aa8 <Set_num+0x354>
1c007a80:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007a84:	0297358c 	addi.w	$r12,$r12,1485(0x5cd)
1c007a88:	2800018c 	ld.b	$r12,$r12,0
1c007a8c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c007a90:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007a94:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c007a98:	00005d8d 	ext.w.b	$r13,$r12
1c007a9c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007aa0:	0296c58c 	addi.w	$r12,$r12,1457(0x5b1)
1c007aa4:	2900018d 	st.b	$r13,$r12,0
1c007aa8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007aac:	2895d18c 	ld.w	$r12,$r12,1396(0x574)
1c007ab0:	2a00018d 	ld.bu	$r13,$r12,0
1c007ab4:	0280100c 	addi.w	$r12,$r0,4(0x4)
1c007ab8:	5c0049ac 	bne	$r13,$r12,72(0x48) # 1c007b00 <Set_num+0x3ac>
1c007abc:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007ac0:	0296458c 	addi.w	$r12,$r12,1425(0x591)
1c007ac4:	2800018c 	ld.b	$r12,$r12,0
1c007ac8:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c007acc:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c007ad0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c007ad4:	00005d8d 	ext.w.b	$r13,$r12
1c007ad8:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007adc:	0295d58c 	addi.w	$r12,$r12,1397(0x575)
1c007ae0:	2900018d 	st.b	$r13,$r12,0
1c007ae4:	50001c00 	b	28(0x1c) # 1c007b00 <Set_num+0x3ac>
1c007ae8:	03400000 	andi	$r0,$r0,0x0
1c007aec:	50001800 	b	24(0x18) # 1c007b04 <Set_num+0x3b0>
1c007af0:	03400000 	andi	$r0,$r0,0x0
1c007af4:	50001000 	b	16(0x10) # 1c007b04 <Set_num+0x3b0>
1c007af8:	03400000 	andi	$r0,$r0,0x0
1c007afc:	50000800 	b	8(0x8) # 1c007b04 <Set_num+0x3b0>
1c007b00:	03400000 	andi	$r0,$r0,0x0
1c007b04:	03400000 	andi	$r0,$r0,0x0
1c007b08:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007b0c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007b10:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007b14:	4c000020 	jirl	$r0,$r1,0

1c007b18 <main>:
main():
1c007b18:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c007b1c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c007b20:	29806076 	st.w	$r22,$r3,24(0x18)
1c007b24:	02808076 	addi.w	$r22,$r3,32(0x20)
1c007b28:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c007b2c:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c007b30:	57e70fff 	bl	-6388(0xfffe70c) # 1c00623c <KEY_init>
1c007b34:	5401e000 	bl	480(0x1e0) # 1c007d14 <BEEP_Init>
1c007b38:	57b5efff 	bl	-18964(0xfffb5ec) # 1c003124 <SystemClockInit>
1c007b3c:	5797f3ff 	bl	-26640(0xfff97f0) # 1c00132c <GPIOInit>
1c007b40:	57dbefff 	bl	-9236(0xfffdbec) # 1c00572c <OLED_Init>
1c007b44:	57d9f3ff 	bl	-9744(0xfffd9f0) # 1c005534 <DHT11_Init>
1c007b48:	57b69bff 	bl	-18792(0xfffb698) # 1c0031e0 <EnableInt>
1c007b4c:	028fa004 	addi.w	$r4,$r0,1000(0x3e8)
1c007b50:	57c463ff 	bl	-15264(0xfffc460) # 1c003fb0 <timer_init>
1c007b54:	1400004c 	lu12i.w	$r12,2(0x2)
1c007b58:	03960184 	ori	$r4,$r12,0x580
1c007b5c:	57af47ff 	bl	-20668(0xfffaf44) # 1c002aa0 <Uart0_init>
1c007b60:	50001c00 	b	28(0x1c) # 1c007b7c <main+0x64>
1c007b64:	02804007 	addi.w	$r7,$r0,16(0x10)
1c007b68:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007b6c:	028900c6 	addi.w	$r6,$r6,576(0x240)
1c007b70:	02801005 	addi.w	$r5,$r0,4(0x4)
1c007b74:	02802804 	addi.w	$r4,$r0,10(0xa)
1c007b78:	57e457ff 	bl	-7084(0xfffe454) # 1c005fcc <OLED_Show_Str>
1c007b7c:	57d9bbff 	bl	-9800(0xfffd9b8) # 1c005534 <DHT11_Init>
1c007b80:	0015008c 	move	$r12,$r4
1c007b84:	47ffe19f 	bnez	$r12,-32(0x7fffe0) # 1c007b64 <main+0x4c>
1c007b88:	02804007 	addi.w	$r7,$r0,16(0x10)
1c007b8c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007b90:	0288d0c6 	addi.w	$r6,$r6,564(0x234)
1c007b94:	02801005 	addi.w	$r5,$r0,4(0x4)
1c007b98:	00150004 	move	$r4,$r0
1c007b9c:	57e433ff 	bl	-7120(0xfffe430) # 1c005fcc <OLED_Show_Str>
1c007ba0:	02804007 	addi.w	$r7,$r0,16(0x10)
1c007ba4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007ba8:	0288c0c6 	addi.w	$r6,$r6,560(0x230)
1c007bac:	02800c05 	addi.w	$r5,$r0,3(0x3)
1c007bb0:	02805004 	addi.w	$r4,$r0,20(0x14)
1c007bb4:	57e41bff 	bl	-7144(0xfffe418) # 1c005fcc <OLED_Show_Str>
1c007bb8:	02804007 	addi.w	$r7,$r0,16(0x10)
1c007bbc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c007bc0:	0288a0c6 	addi.w	$r6,$r6,552(0x228)
1c007bc4:	02801805 	addi.w	$r5,$r0,6(0x6)
1c007bc8:	02805004 	addi.w	$r4,$r0,20(0x14)
1c007bcc:	57e403ff 	bl	-7168(0xfffe400) # 1c005fcc <OLED_Show_Str>
1c007bd0:	1cc7ff05 	pcaddu12i	$r5,409592(0x63ff8)
1c007bd4:	0290d8a5 	addi.w	$r5,$r5,1078(0x436)
1c007bd8:	1cc7ff04 	pcaddu12i	$r4,409592(0x63ff8)
1c007bdc:	0290b084 	addi.w	$r4,$r4,1068(0x42c)
1c007be0:	57d84bff 	bl	-10168(0xfffd848) # 1c005428 <DHT11_Read_Data>
1c007be4:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007be8:	0290818c 	addi.w	$r12,$r12,1056(0x420)
1c007bec:	2a40018d 	ld.hu	$r13,$r12,0
1c007bf0:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c007bf4:	002131ae 	div.wu	$r14,$r13,$r12
1c007bf8:	5c000980 	bne	$r12,$r0,8(0x8) # 1c007c00 <main+0xe8>
1c007bfc:	002a0007 	break	0x7
1c007c00:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c007c04:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c007c08:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007c0c:	0290c18c 	addi.w	$r12,$r12,1072(0x430)
1c007c10:	2900098d 	st.b	$r13,$r12,2(0x2)
1c007c14:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007c18:	028fc98c 	addi.w	$r12,$r12,1010(0x3f2)
1c007c1c:	2a40018d 	ld.hu	$r13,$r12,0
1c007c20:	0280280c 	addi.w	$r12,$r0,10(0xa)
1c007c24:	002131ae 	div.wu	$r14,$r13,$r12
1c007c28:	5c000980 	bne	$r12,$r0,8(0x8) # 1c007c30 <main+0x118>
1c007c2c:	002a0007 	break	0x7
1c007c30:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c007c34:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c007c38:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007c3c:	0290018c 	addi.w	$r12,$r12,1024(0x400)
1c007c40:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c007c44:	57e64fff 	bl	-6580(0xfffe64c) # 1c006290 <KEY_Check>
1c007c48:	0015008c 	move	$r12,$r4
1c007c4c:	0015018d 	move	$r13,$r12
1c007c50:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007c54:	288f318c 	ld.w	$r12,$r12,972(0x3cc)
1c007c58:	2900018d 	st.b	$r13,$r12,0
1c007c5c:	1cc7ff2c 	pcaddu12i	$r12,409593(0x63ff9)
1c007c60:	288f018c 	ld.w	$r12,$r12,960(0x3c0)
1c007c64:	2a00018d 	ld.bu	$r13,$r12,0
1c007c68:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c007c6c:	5c0051ac 	bne	$r13,$r12,80(0x50) # 1c007cbc <main+0x1a4>
1c007c70:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007c74:	028e618c 	addi.w	$r12,$r12,920(0x398)
1c007c78:	2a00018c 	ld.bu	$r12,$r12,0
1c007c7c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c007c80:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c007c84:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007c88:	028e118c 	addi.w	$r12,$r12,900(0x384)
1c007c8c:	2900018d 	st.b	$r13,$r12,0
1c007c90:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007c94:	028de18c 	addi.w	$r12,$r12,888(0x378)
1c007c98:	2a00018d 	ld.bu	$r13,$r12,0
1c007c9c:	0280140c 	addi.w	$r12,$r0,5(0x5)
1c007ca0:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c007ca4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c007cac <main+0x194>
1c007ca8:	002a0007 	break	0x7
1c007cac:	006781cd 	bstrpick.w	$r13,$r14,0x7,0x0
1c007cb0:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007cb4:	028d618c 	addi.w	$r12,$r12,856(0x358)
1c007cb8:	2900018d 	st.b	$r13,$r12,0
1c007cbc:	1cc7ff0c 	pcaddu12i	$r12,409592(0x63ff8)
1c007cc0:	028d318c 	addi.w	$r12,$r12,844(0x34c)
1c007cc4:	2a00018c 	ld.bu	$r12,$r12,0
1c007cc8:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c007ccc:	6bff05ac 	bltu	$r13,$r12,-252(0x3ff04) # 1c007bd0 <main+0xb8>
1c007cd0:	0040898d 	slli.w	$r13,$r12,0x2
1c007cd4:	1c00004c 	pcaddu12i	$r12,2(0x2)
1c007cd8:	0284818c 	addi.w	$r12,$r12,288(0x120)
1c007cdc:	001031ac 	add.w	$r12,$r13,$r12
1c007ce0:	2880018c 	ld.w	$r12,$r12,0
1c007ce4:	4c000180 	jirl	$r0,$r12,0
1c007ce8:	57ea0bff 	bl	-5624(0xfffea08) # 1c0066f0 <Display>
1c007cec:	50002400 	b	36(0x24) # 1c007d10 <main+0x1f8>
1c007cf0:	57ef67ff 	bl	-4252(0xfffef64) # 1c006c54 <Set_time1>
1c007cf4:	50001c00 	b	28(0x1c) # 1c007d10 <main+0x1f8>
1c007cf8:	57f307ff 	bl	-3324(0xffff304) # 1c006ffc <Set_time2>
1c007cfc:	50001400 	b	20(0x14) # 1c007d10 <main+0x1f8>
1c007d00:	57f6afff 	bl	-2388(0xffff6ac) # 1c0073ac <Set_time3>
1c007d04:	50000c00 	b	12(0xc) # 1c007d10 <main+0x1f8>
1c007d08:	57fa4fff 	bl	-1460(0xffffa4c) # 1c007754 <Set_num>
1c007d0c:	03400000 	andi	$r0,$r0,0x0
1c007d10:	53fec3ff 	b	-320(0xffffec0) # 1c007bd0 <main+0xb8>

1c007d14 <BEEP_Init>:
BEEP_Init():
1c007d14:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c007d18:	29803061 	st.w	$r1,$r3,12(0xc)
1c007d1c:	29802076 	st.w	$r22,$r3,8(0x8)
1c007d20:	02804076 	addi.w	$r22,$r3,16(0x10)
1c007d24:	02800405 	addi.w	$r5,$r0,1(0x1)
1c007d28:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c007d2c:	579b37ff 	bl	-25804(0xfff9b34) # 1c001860 <gpio_set_direction>
1c007d30:	03400000 	andi	$r0,$r0,0x0
1c007d34:	28803061 	ld.w	$r1,$r3,12(0xc)
1c007d38:	28802076 	ld.w	$r22,$r3,8(0x8)
1c007d3c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c007d40:	4c000020 	jirl	$r0,$r1,0

Disassembly of section .rodata:

1c007d60 <msg_wakeup>:
msg_wakeup():
1c007d60:	656b6177 	bge	$r11,$r23,93024(0x16b60) # 1c01e8c0 <_sidata+0x14ab8>
1c007d64:	0a217075 	xvfmadd.d	$xr21,$xr3,$xr28,$xr2
	...

1c007d69 <hexdecarr>:
hexdecarr():
1c007d69:	33323130 	xvstelm.w	$xr16,$r9,-464(0x230),0x4
1c007d6d:	37363534 	0x37363534
1c007d71:	62613938 	blt	$r9,$r24,-106184(0x26138) # 1bfedea9 <_start-0x12157>
1c007d75:	66656463 	bge	$r3,$r3,-105116(0x26564) # 1bfee2d9 <_start-0x11d27>
1c007d79:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007d7d:	79654b0a 	0x79654b0a
1c007d81:	73657220 	vssrani.wu.d	$vr0,$vr17,0x1c
1c007d85:	0d217465 	xvbitsel.v	$xr5,$xr3,$xr29,$xr2
1c007d89:	0d00000a 	fsel	$f10,$f0,$f0,$fcc0
1c007d8d:	6970730a 	bltu	$r24,$r10,94320(0x17070) # 1c01edfd <_sidata+0x14ff5>
1c007d91:	6f6f6220 	bgeu	$r17,$r0,-37024(0x36f60) # 1bffecf1 <_start-0x130f>
1c007d95:	0d000074 	fsel	$f20,$f3,$f0,$fcc0
1c007d99:	676f640a 	bge	$r0,$r10,-37020(0x36f64) # 1bffecfd <_start-0x1303>
1c007d9d:	72616220 	0x72616220
1c007da1:	0a0d216b 	0x0a0d216b
1c007da5:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c007da9:	6b61770a 	bltu	$r24,$r10,-40588(0x36174) # 1bffdf1d <_start-0x20e3>
1c007dad:	21705565 	sc.w	$r5,$r11,28756(0x7054)
1c007db1:	b4000a0d 	0xb4000a0d
1c007db5:	d01c001d 	0xd01c001d
1c007db9:	d01c001e 	0xd01c001e
1c007dbd:	d01c001e 	0xd01c001e
1c007dc1:	d01c001e 	0xd01c001e
1c007dc5:	d01c001e 	0xd01c001e
1c007dc9:	d01c001e 	0xd01c001e
1c007dcd:	d01c001e 	0xd01c001e
1c007dd1:	d01c001e 	0xd01c001e
1c007dd5:	d01c001e 	0xd01c001e
1c007dd9:	d01c001e 	0xd01c001e
1c007ddd:	cc1c001e 	0xcc1c001e
1c007de1:	541c001d 	bl	7609344(0x741c00) # 1c7499e1 <_sidata+0x73fbd9>
1c007de5:	541c001e 	bl	7871488(0x781c00) # 1c7899e5 <_sidata+0x77fbdd>
1c007de9:	541c001e 	bl	7871488(0x781c00) # 1c7899e9 <_sidata+0x77fbe1>
1c007ded:	541c001e 	bl	7871488(0x781c00) # 1c7899ed <_sidata+0x77fbe5>
1c007df1:	541c001e 	bl	7871488(0x781c00) # 1c7899f1 <_sidata+0x77fbe9>
1c007df5:	541c001e 	bl	7871488(0x781c00) # 1c7899f5 <_sidata+0x77fbed>
1c007df9:	541c001e 	bl	7871488(0x781c00) # 1c7899f9 <_sidata+0x77fbf1>
1c007dfd:	541c001e 	bl	7871488(0x781c00) # 1c7899fd <_sidata+0x77fbf5>
1c007e01:	541c001e 	bl	7871488(0x781c00) # 1c789a01 <_sidata+0x77fbf9>
1c007e05:	d01c001e 	0xd01c001e
1c007e09:	d01c001e 	0xd01c001e
1c007e0d:	d01c001e 	0xd01c001e
1c007e11:	d01c001e 	0xd01c001e
1c007e15:	d01c001e 	0xd01c001e
1c007e19:	d01c001e 	0xd01c001e
1c007e1d:	d01c001e 	0xd01c001e
1c007e21:	d01c001e 	0xd01c001e
1c007e25:	d01c001e 	0xd01c001e
1c007e29:	d01c001e 	0xd01c001e
1c007e2d:	d01c001e 	0xd01c001e
1c007e31:	d01c001e 	0xd01c001e
1c007e35:	d01c001e 	0xd01c001e
1c007e39:	d01c001e 	0xd01c001e
1c007e3d:	d01c001e 	0xd01c001e
1c007e41:	d01c001e 	0xd01c001e
1c007e45:	d01c001e 	0xd01c001e
1c007e49:	d01c001e 	0xd01c001e
1c007e4d:	d01c001e 	0xd01c001e
1c007e51:	d01c001e 	0xd01c001e
1c007e55:	d01c001e 	0xd01c001e
1c007e59:	d01c001e 	0xd01c001e
1c007e5d:	d01c001e 	0xd01c001e
1c007e61:	d01c001e 	0xd01c001e
1c007e65:	d01c001e 	0xd01c001e
1c007e69:	d01c001e 	0xd01c001e
1c007e6d:	d01c001e 	0xd01c001e
1c007e71:	d01c001e 	0xd01c001e
1c007e75:	d01c001e 	0xd01c001e
1c007e79:	d01c001e 	0xd01c001e
1c007e7d:	d01c001e 	0xd01c001e
1c007e81:	d01c001e 	0xd01c001e
1c007e85:	d01c001e 	0xd01c001e
1c007e89:	d01c001e 	0xd01c001e
1c007e8d:	d01c001e 	0xd01c001e
1c007e91:	d01c001e 	0xd01c001e
1c007e95:	d01c001e 	0xd01c001e
1c007e99:	d01c001e 	0xd01c001e
1c007e9d:	d01c001e 	0xd01c001e
1c007ea1:	d01c001e 	0xd01c001e
1c007ea5:	441c001e 	bnez	$r0,-517120(0x781c00) # 1bf89aa5 <_start-0x7655b>
1c007ea9:	6c1c001d 	bgeu	$r0,$r29,7168(0x1c00) # 1c009aa9 <tfont32+0x821>
1c007ead:	d41c001c 	0xd41c001c
1c007eb1:	d01c001c 	0xd01c001c
1c007eb5:	d01c001e 	0xd01c001e
1c007eb9:	d01c001e 	0xd01c001e
1c007ebd:	d01c001e 	0xd01c001e
1c007ec1:	d01c001e 	0xd01c001e
1c007ec5:	d01c001e 	0xd01c001e
1c007ec9:	d01c001e 	0xd01c001e
1c007ecd:	d01c001e 	0xd01c001e
1c007ed1:	d01c001e 	0xd01c001e
1c007ed5:	d01c001e 	0xd01c001e
1c007ed9:	0c1c001e 	0x0c1c001e
1c007edd:	7c1c001d 	0x7c1c001d
1c007ee1:	d01c001d 	0xd01c001d
1c007ee5:	d01c001e 	0xd01c001e
1c007ee9:	401c001e 	beqz	$r0,-517120(0x781c00) # 1bf89ae9 <_start-0x76517>
1c007eed:	d01c001c 	0xd01c001c
1c007ef1:	9c1c001e 	0x9c1c001e
1c007ef5:	d01c001c 	0xd01c001c
1c007ef9:	d01c001e 	0xd01c001e
1c007efd:	7c1c001e 	0x7c1c001e
1c007f01:	681c001d 	bltu	$r0,$r29,7168(0x1c00) # 1c009b01 <tfont32+0x879>
1c007f05:	8c1c0023 	0x8c1c0023
1c007f09:	8c1c0024 	0x8c1c0024
1c007f0d:	8c1c0024 	0x8c1c0024
1c007f11:	8c1c0024 	0x8c1c0024
1c007f15:	8c1c0024 	0x8c1c0024
1c007f19:	8c1c0024 	0x8c1c0024
1c007f1d:	8c1c0024 	0x8c1c0024
1c007f21:	8c1c0024 	0x8c1c0024
1c007f25:	8c1c0024 	0x8c1c0024
1c007f29:	8c1c0024 	0x8c1c0024
1c007f2d:	881c0024 	0x881c0024
1c007f31:	101c0023 	addu16i.d	$r3,$r1,1792(0x700)
1c007f35:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c007f39:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c007f3d:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c007f41:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c007f45:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c007f49:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c007f4d:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c007f51:	101c0024 	addu16i.d	$r4,$r1,1792(0x700)
1c007f55:	8c1c0024 	0x8c1c0024
1c007f59:	8c1c0024 	0x8c1c0024
1c007f5d:	8c1c0024 	0x8c1c0024
1c007f61:	8c1c0024 	0x8c1c0024
1c007f65:	8c1c0024 	0x8c1c0024
1c007f69:	8c1c0024 	0x8c1c0024
1c007f6d:	8c1c0024 	0x8c1c0024
1c007f71:	8c1c0024 	0x8c1c0024
1c007f75:	8c1c0024 	0x8c1c0024
1c007f79:	8c1c0024 	0x8c1c0024
1c007f7d:	8c1c0024 	0x8c1c0024
1c007f81:	8c1c0024 	0x8c1c0024
1c007f85:	8c1c0024 	0x8c1c0024
1c007f89:	8c1c0024 	0x8c1c0024
1c007f8d:	8c1c0024 	0x8c1c0024
1c007f91:	8c1c0024 	0x8c1c0024
1c007f95:	8c1c0024 	0x8c1c0024
1c007f99:	8c1c0024 	0x8c1c0024
1c007f9d:	8c1c0024 	0x8c1c0024
1c007fa1:	8c1c0024 	0x8c1c0024
1c007fa5:	8c1c0024 	0x8c1c0024
1c007fa9:	8c1c0024 	0x8c1c0024
1c007fad:	8c1c0024 	0x8c1c0024
1c007fb1:	8c1c0024 	0x8c1c0024
1c007fb5:	8c1c0024 	0x8c1c0024
1c007fb9:	8c1c0024 	0x8c1c0024
1c007fbd:	8c1c0024 	0x8c1c0024
1c007fc1:	8c1c0024 	0x8c1c0024
1c007fc5:	8c1c0024 	0x8c1c0024
1c007fc9:	8c1c0024 	0x8c1c0024
1c007fcd:	8c1c0024 	0x8c1c0024
1c007fd1:	8c1c0024 	0x8c1c0024
1c007fd5:	8c1c0024 	0x8c1c0024
1c007fd9:	8c1c0024 	0x8c1c0024
1c007fdd:	8c1c0024 	0x8c1c0024
1c007fe1:	8c1c0024 	0x8c1c0024
1c007fe5:	8c1c0024 	0x8c1c0024
1c007fe9:	8c1c0024 	0x8c1c0024
1c007fed:	8c1c0024 	0x8c1c0024
1c007ff1:	8c1c0024 	0x8c1c0024
1c007ff5:	f01c0024 	0xf01c0024
1c007ff9:	081c0022 	fmadd.s	$f2,$f1,$f0,$f24
1c007ffd:	781c0022 	0x781c0022
1c008001:	8c1c0022 	0x8c1c0022
1c008005:	8c1c0024 	0x8c1c0024
1c008009:	8c1c0024 	0x8c1c0024
1c00800d:	8c1c0024 	0x8c1c0024
1c008011:	8c1c0024 	0x8c1c0024
1c008015:	8c1c0024 	0x8c1c0024
1c008019:	8c1c0024 	0x8c1c0024
1c00801d:	8c1c0024 	0x8c1c0024
1c008021:	8c1c0024 	0x8c1c0024
1c008025:	8c1c0024 	0x8c1c0024
1c008029:	b41c0024 	0xb41c0024
1c00802d:	2c1c0022 	vld	$vr2,$r1,1792(0x700)
1c008031:	8c1c0023 	0x8c1c0023
1c008035:	8c1c0024 	0x8c1c0024
1c008039:	d81c0024 	0xd81c0024
1c00803d:	8c1c0021 	0x8c1c0021
1c008041:	3c1c0024 	0x3c1c0024
1c008045:	8c1c0022 	0x8c1c0022
1c008049:	8c1c0024 	0x8c1c0024
1c00804d:	2c1c0024 	vld	$vr4,$r1,1792(0x700)
1c008051:	0a1c0023 	xvfmadd.s	$xr3,$xr1,$xr0,$xr24
1c008055:	7c000000 	0x7c000000
1c008059:	7c7c7c7c 	0x7c7c7c7c
1c00805d:	7c7c7c7c 	0x7c7c7c7c
1c008061:	7c7c7c7c 	0x7c7c7c7c
1c008065:	7c7c7c7c 	0x7c7c7c7c
1c008069:	7c7c7c7c 	0x7c7c7c7c
1c00806d:	7c7c7c7c 	0x7c7c7c7c
1c008071:	7c7c7c7c 	0x7c7c7c7c
1c008075:	7c7c7c7c 	0x7c7c7c7c
1c008079:	7c7c7c7c 	0x7c7c7c7c
1c00807d:	7c7c7c7c 	0x7c7c7c7c
1c008081:	7c7c7c7c 	0x7c7c7c7c
1c008085:	7c7c7c7c 	0x7c7c7c7c
1c008089:	7c7c7c7c 	0x7c7c7c7c
1c00808d:	7c7c7c7c 	0x7c7c7c7c
1c008091:	7c7c7c7c 	0x7c7c7c7c
1c008095:	7c7c7c7c 	0x7c7c7c7c
1c008099:	7c7c7c7c 	0x7c7c7c7c
1c00809d:	7c7c7c7c 	0x7c7c7c7c
1c0080a1:	7c7c7c7c 	0x7c7c7c7c
1c0080a5:	7c7c7c7c 	0x7c7c7c7c
1c0080a9:	7c7c7c7c 	0x7c7c7c7c
1c0080ad:	7c7c7c7c 	0x7c7c7c7c
1c0080b1:	7c7c7c7c 	0x7c7c7c7c
1c0080b5:	7c7c7c7c 	0x7c7c7c7c
1c0080b9:	7c00000a 	0x7c00000a
1c0080bd:	7c20207c 	0x7c20207c
1c0080c1:	7c7c7c7c 	0x7c7c7c7c
1c0080c5:	7c7c7c7c 	0x7c7c7c7c
1c0080c9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0080cd:	7c202020 	0x7c202020
1c0080d1:	7c7c7c7c 	0x7c7c7c7c
1c0080d5:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0080d9:	7c202020 	0x7c202020
1c0080dd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0080e1:	7c7c2020 	0x7c7c2020
1c0080e5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0080e9:	7c7c7c20 	0x7c7c7c20
1c0080ed:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0080f1:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0080f5:	7c7c7c7c 	0x7c7c7c7c
1c0080f9:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0080fd:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008101:	7c7c7c7c 	0x7c7c7c7c
1c008105:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c008109:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00810d:	7c7c7c7c 	0x7c7c7c7c
1c008111:	7c202020 	0x7c202020
1c008115:	7c7c7c7c 	0x7c7c7c7c
1c008119:	7c7c2020 	0x7c7c2020
1c00811d:	7c00000a 	0x7c00000a
1c008121:	7c20207c 	0x7c20207c
1c008125:	7c7c7c7c 	0x7c7c7c7c
1c008129:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00812d:	7c7c2020 	0x7c7c2020
1c008131:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c008135:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c008139:	7c7c2020 	0x7c7c2020
1c00813d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c008141:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c008145:	7c202020 	0x7c202020
1c008149:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00814d:	7c7c7c20 	0x7c7c7c20
1c008151:	7c20207c 	0x7c20207c
1c008155:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c008159:	7c7c7c20 	0x7c7c7c20
1c00815d:	7c202020 	0x7c202020
1c008161:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c008165:	7c7c7c20 	0x7c7c7c20
1c008169:	7c202020 	0x7c202020
1c00816d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c008171:	7c7c7c20 	0x7c7c7c20
1c008175:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008179:	7c7c7c7c 	0x7c7c7c7c
1c00817d:	7c7c2020 	0x7c7c2020
1c008181:	7c00000a 	0x7c00000a
1c008185:	7c20207c 	0x7c20207c
1c008189:	7c7c7c7c 	0x7c7c7c7c
1c00818d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c008191:	7c7c7c20 	0x7c7c7c20
1c008195:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c008199:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00819d:	7c7c7c20 	0x7c7c7c20
1c0081a1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0081a5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0081a9:	20207c20 	ll.w	$r0,$r1,8316(0x207c)
1c0081ad:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0081b1:	7c7c7c20 	0x7c7c7c20
1c0081b5:	7c7c2020 	0x7c7c2020
1c0081b9:	7c7c7c7c 	0x7c7c7c7c
1c0081bd:	7c7c7c7c 	0x7c7c7c7c
1c0081c1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0081c5:	7c7c7c20 	0x7c7c7c20
1c0081c9:	7c7c7c7c 	0x7c7c7c7c
1c0081cd:	7c7c2020 	0x7c7c2020
1c0081d1:	7c7c7c7c 	0x7c7c7c7c
1c0081d5:	7c7c7c20 	0x7c7c7c20
1c0081d9:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c0081dd:	7c7c7c20 	0x7c7c7c20
1c0081e1:	7c7c2020 	0x7c7c2020
1c0081e5:	7c00000a 	0x7c00000a
1c0081e9:	7c20207c 	0x7c20207c
1c0081ed:	7c7c7c7c 	0x7c7c7c7c
1c0081f1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0081f5:	7c7c7c20 	0x7c7c7c20
1c0081f9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0081fd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c008201:	7c7c7c20 	0x7c7c7c20
1c008205:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c008209:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00820d:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c008211:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c008215:	7c7c7c20 	0x7c7c7c20
1c008219:	7c7c2020 	0x7c7c2020
1c00821d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c008221:	7c7c7c20 	0x7c7c7c20
1c008225:	7c7c7c7c 	0x7c7c7c7c
1c008229:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00822d:	7c7c7c7c 	0x7c7c7c7c
1c008231:	7c7c2020 	0x7c7c2020
1c008235:	7c7c7c7c 	0x7c7c7c7c
1c008239:	7c7c7c20 	0x7c7c7c20
1c00823d:	7c7c2020 	0x7c7c2020
1c008241:	7c7c2020 	0x7c7c2020
1c008245:	7c7c2020 	0x7c7c2020
1c008249:	7c00000a 	0x7c00000a
1c00824d:	7c20207c 	0x7c20207c
1c008251:	7c7c7c7c 	0x7c7c7c7c
1c008255:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c008259:	7c7c7c20 	0x7c7c7c20
1c00825d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c008261:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c008265:	7c7c7c20 	0x7c7c7c20
1c008269:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00826d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c008271:	7c7c7c20 	0x7c7c7c20
1c008275:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c008279:	7c7c7c20 	0x7c7c7c20
1c00827d:	7c7c2020 	0x7c7c2020
1c008281:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c008285:	7c7c7c20 	0x7c7c7c20
1c008289:	7c7c7c7c 	0x7c7c7c7c
1c00828d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c008291:	7c7c7c20 	0x7c7c7c20
1c008295:	7c7c2020 	0x7c7c2020
1c008299:	7c7c7c7c 	0x7c7c7c7c
1c00829d:	7c7c7c20 	0x7c7c7c20
1c0082a1:	7c7c2020 	0x7c7c2020
1c0082a5:	7c20207c 	0x7c20207c
1c0082a9:	7c7c2020 	0x7c7c2020
1c0082ad:	7c00000a 	0x7c00000a
1c0082b1:	7c20207c 	0x7c20207c
1c0082b5:	7c7c7c7c 	0x7c7c7c7c
1c0082b9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0082bd:	7c7c2020 	0x7c7c2020
1c0082c1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0082c5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0082c9:	7c7c2020 	0x7c7c2020
1c0082cd:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0082d1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0082d5:	7c7c7c20 	0x7c7c7c20
1c0082d9:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0082dd:	7c7c7c20 	0x7c7c7c20
1c0082e1:	7c202020 	0x7c202020
1c0082e5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0082e9:	7c7c7c20 	0x7c7c7c20
1c0082ed:	7c202020 	0x7c202020
1c0082f1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0082f5:	7c7c7c7c 	0x7c7c7c7c
1c0082f9:	7c202020 	0x7c202020
1c0082fd:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c008301:	7c7c7c20 	0x7c7c7c20
1c008305:	7c7c2020 	0x7c7c2020
1c008309:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c00830d:	7c7c2020 	0x7c7c2020
1c008311:	7c00000a 	0x7c00000a
1c008315:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c008319:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00831d:	7c7c7c7c 	0x7c7c7c7c
1c008321:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008325:	7c202020 	0x7c202020
1c008329:	7c7c7c7c 	0x7c7c7c7c
1c00832d:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008331:	7c202020 	0x7c202020
1c008335:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c008339:	7c7c7c20 	0x7c7c7c20
1c00833d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c008341:	7c7c7c20 	0x7c7c7c20
1c008345:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c008349:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00834d:	7c7c7c7c 	0x7c7c7c7c
1c008351:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c008355:	7c202020 	0x7c202020
1c008359:	7c7c7c7c 	0x7c7c7c7c
1c00835d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c008361:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c008365:	7c7c7c7c 	0x7c7c7c7c
1c008369:	7c7c2020 	0x7c7c2020
1c00836d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c008371:	7c7c2020 	0x7c7c2020
1c008375:	7c00000a 	0x7c00000a
1c008379:	7c7c7c7c 	0x7c7c7c7c
1c00837d:	7c7c7c7c 	0x7c7c7c7c
1c008381:	7c7c7c7c 	0x7c7c7c7c
1c008385:	7c7c7c7c 	0x7c7c7c7c
1c008389:	7c7c7c7c 	0x7c7c7c7c
1c00838d:	7c7c7c7c 	0x7c7c7c7c
1c008391:	7c7c7c7c 	0x7c7c7c7c
1c008395:	7c7c7c7c 	0x7c7c7c7c
1c008399:	7c7c7c7c 	0x7c7c7c7c
1c00839d:	325b7c7c 	xvldrepl.h	$xr28,$r3,-578(0xdbe)
1c0083a1:	20303230 	ll.w	$r16,$r17,12336(0x3030)
1c0083a5:	4e4f4f4c 	jirl	$r12,$r26,-110772(0x24f4c)
1c0083a9:	4e4f5347 	jirl	$r7,$r26,-110768(0x24f50)
1c0083ad:	7c7c7c5d 	0x7c7c7c5d
1c0083b1:	7c7c7c7c 	0x7c7c7c7c
1c0083b5:	7c7c7c7c 	0x7c7c7c7c
1c0083b9:	7c7c7c7c 	0x7c7c7c7c
1c0083bd:	7c7c7c7c 	0x7c7c7c7c
1c0083c1:	7c7c7c7c 	0x7c7c7c7c
1c0083c5:	7c7c7c7c 	0x7c7c7c7c
1c0083c9:	7c7c7c7c 	0x7c7c7c7c
1c0083cd:	7c7c7c7c 	0x7c7c7c7c
1c0083d1:	7c7c7c7c 	0x7c7c7c7c
1c0083d5:	7c7c7c7c 	0x7c7c7c7c
1c0083d9:	0900000a 	0x0900000a
1c0083dd:	0a006425 	0x0a006425
1c0083e1:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0083e5:	776f440a 	xvssrarni.du.q	$xr10,$xr0,0x51
1c0083e9:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c0083ed:	0050550a 	0x0050550a
1c0083f1:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0083f5:	6c754d0a 	bgeu	$r8,$r10,30028(0x754c) # 1c00f941 <_sidata+0x5b39>
1c0083f9:	776f4469 	xvssrarni.du.q	$xr9,$xr3,0x51
1c0083fd:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c008401:	756f430a 	0x756f430a
1c008405:	4f20746e 	jirl	$r14,$r3,-57228(0x32074)
1c008409:	0d000056 	fsel	$f22,$f2,$f0,$fcc0
1c00840d:	3030090a 	0x3030090a
1c008411:	09313009 	0x09313009
1c008415:	30093230 	0x30093230
1c008419:	34300933 	0x34300933
1c00841d:	09353009 	0x09353009
1c008421:	30093630 	0x30093630
1c008425:	38300937 	fldx.s	$f23,$r9,$r2
1c008429:	09393009 	0x09393009
1c00842d:	31093031 	0x31093031
1c008431:	0d000031 	fsel	$f17,$f1,$f0,$fcc0
1c008435:	746e630a 	0x746e630a
1c008439:	09000000 	0x09000000
1c00843d:	00643425 	bstrins.w	$r5,$r1,0x4,0xd
1c008441:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c008445:	7361420a 	vssrani.w.d	$vr10,$vr16,0x10
1c008449:	6c615665 	bgeu	$r19,$r5,24916(0x6154) # 1c00e59d <_sidata+0x4795>
1c00844d:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c008451:	6275530a 	blt	$r24,$r10,-101040(0x27550) # 1bfef9a1 <_start-0x1065f>
1c008455:	006c6156 	bstrins.w	$r22,$r10,0xc,0x18
1c008459:	09000000 	0x09000000
1c00845d:	00643225 	bstrins.w	$r5,$r17,0x4,0xc
1c008461:	09000000 	0x09000000
1c008465:	00643325 	bstrins.w	$r5,$r25,0x4,0xc
1c008469:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c00846d:	203c200a 	ll.w	$r10,$r0,15392(0x3c20)
1c008471:	3a515249 	0x3a515249
1c008475:	20642520 	ll.w	$r0,$r9,25636(0x6424)
1c008479:	636e7566 	blt	$r11,$r6,-37260(0x36e74) # 1bfff2ed <_start-0xd13>
1c00847d:	2073253a 	ll.w	$r26,$r9,29476(0x7324)
1c008481:	0d3e2020 	0x0d3e2020
1c008485:	0a00000a 	0x0a00000a
1c008489:	2e2e2e2e 	0x2e2e2e2e
1c00848d:	2e2e2e2e 	0x2e2e2e2e
1c008491:	2e2e2e2e 	0x2e2e2e2e
1c008495:	464f532e 	bnez	$r25,3821392(0x3a4f50) # 1c3ad3e5 <_sidata+0x3a35dd>
1c008499:	4e495f54 	jirl	$r20,$r26,-112292(0x2495c)
1c00849d:	2e2e2e54 	0x2e2e2e54
1c0084a1:	2e2e2e2e 	0x2e2e2e2e
1c0084a5:	2e2e2e2e 	0x2e2e2e2e
1c0084a9:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c0084ad:	0d00000d 	fsel	$f13,$f0,$f0,$fcc0
1c0084b1:	2e2e2e0a 	0x2e2e2e0a
1c0084b5:	2e2e2e2e 	0x2e2e2e2e
1c0084b9:	2e2e2e2e 	0x2e2e2e2e
1c0084bd:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c39c6e9 <_sidata+0x3928e1>
1c0084c1:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd1cb1d <_start-0x2e34e3>
1c0084c5:	2e2e4c49 	0x2e2e4c49
1c0084c9:	2e2e2e2e 	0x2e2e2e2e
1c0084cd:	2e2e2e2e 	0x2e2e2e2e
1c0084d1:	2e2e2e2e 	0x2e2e2e2e
1c0084d5:	0d000a0d 	fsel	$f13,$f16,$f2,$fcc0
1c0084d9:	2e2e2e0a 	0x2e2e2e0a
1c0084dd:	2e2e2e2e 	0x2e2e2e2e
1c0084e1:	2e2e2e2e 	0x2e2e2e2e
1c0084e5:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c38c611 <_sidata+0x382809>
1c0084e9:	2e2e2e43 	0x2e2e2e43
1c0084ed:	2e2e2e2e 	0x2e2e2e2e
1c0084f1:	2e2e2e2e 	0x2e2e2e2e
1c0084f5:	0d2e2e2e 	xvbitsel.v	$xr14,$xr17,$xr11,$xr28
1c0084f9:	5000000a 	b	2621440(0x280000) # 1c2884f9 <_sidata+0x27e6f1>
1c0084fd:	70697265 	vavgr.w	$vr5,$vr19,$vr28
1c008501:	61726568 	blt	$r11,$r8,94820(0x17264) # 1c01f765 <_sidata+0x1595d>
1c008505:	5420736c 	bl	-38789008(0xdb02070) # 19b0a575 <_start-0x24f5a8b>
1c008509:	72656d69 	0x72656d69
1c00850d:	656c6320 	bge	$r25,$r0,93280(0x16c60) # 1c01f16d <_sidata+0x15365>
1c008511:	69207261 	bltu	$r19,$r1,73840(0x12070) # 1c01a581 <_sidata+0x10779>
1c008515:	7265746e 	0x7265746e
1c008519:	74707572 	xvmax.b	$xr18,$xr11,$xr29
1c00851d:	0a0d2e2e 	0x0a0d2e2e
1c008521:	43000000 	beqz	$r0,196608(0x30000) # 1c038521 <_sidata+0x2e719>
1c008525:	2065726f 	ll.w	$r15,$r19,25968(0x6570)
1c008529:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c01f291 <_sidata+0x15489>
1c00852d:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c00e84d <_sidata+0x4a45>
1c008531:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c008535:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c01f9a1 <_sidata+0x15b99>
1c008539:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c00853d:	0d2e2e74 	xvbitsel.v	$xr20,$xr19,$xr11,$xr28
1c008541:	 	csrrd	$r10,0x0

1c008544 <Ext_IrqHandle>:
1c008544:	1c004004 	pcaddu12i	$r4,512(0x200)
1c008548:	1c004050 	pcaddu12i	$r16,514(0x202)
1c00854c:	1c00409c 	pcaddu12i	$r28,516(0x204)
1c008550:	1c0040e8 	pcaddu12i	$r8,519(0x207)
1c008554:	1c004134 	pcaddu12i	$r20,521(0x209)
1c008558:	1c004180 	pcaddu12i	$r0,524(0x20c)
1c00855c:	1c0041cc 	pcaddu12i	$r12,526(0x20e)
1c008560:	1c004218 	pcaddu12i	$r24,528(0x210)
1c008564:	1c004264 	pcaddu12i	$r4,531(0x213)
1c008568:	1c0042b0 	pcaddu12i	$r16,533(0x215)
1c00856c:	1c0042fc 	pcaddu12i	$r28,535(0x217)
1c008570:	1c004348 	pcaddu12i	$r8,538(0x21a)
1c008574:	1c004394 	pcaddu12i	$r20,540(0x21c)
1c008578:	1c0043e0 	pcaddu12i	$r0,543(0x21f)
1c00857c:	1c00442c 	pcaddu12i	$r12,545(0x221)
1c008580:	1c004478 	pcaddu12i	$r24,547(0x223)
1c008584:	1c0044c4 	pcaddu12i	$r4,550(0x226)
1c008588:	1c004510 	pcaddu12i	$r16,552(0x228)
1c00858c:	1c00455c 	pcaddu12i	$r28,554(0x22a)
1c008590:	1c0045a8 	pcaddu12i	$r8,557(0x22d)
1c008594:	1c0045f4 	pcaddu12i	$r20,559(0x22f)
1c008598:	1c004640 	pcaddu12i	$r0,562(0x232)
1c00859c:	1c00468c 	pcaddu12i	$r12,564(0x234)
1c0085a0:	1c0046d8 	pcaddu12i	$r24,566(0x236)
1c0085a4:	1c004724 	pcaddu12i	$r4,569(0x239)
1c0085a8:	1c004770 	pcaddu12i	$r16,571(0x23b)
1c0085ac:	1c0047bc 	pcaddu12i	$r28,573(0x23d)
1c0085b0:	1c004808 	pcaddu12i	$r8,576(0x240)
1c0085b4:	1c004854 	pcaddu12i	$r20,578(0x242)
1c0085b8:	1c0048a0 	pcaddu12i	$r0,581(0x245)
1c0085bc:	1c0048ec 	pcaddu12i	$r12,583(0x247)
1c0085c0:	1c004938 	pcaddu12i	$r24,585(0x249)
1c0085c4:	1c004c1c 	pcaddu12i	$r28,608(0x260)
1c0085c8:	1c004bcc 	pcaddu12i	$r12,606(0x25e)
1c0085cc:	1c004c1c 	pcaddu12i	$r28,608(0x260)
1c0085d0:	1c004c1c 	pcaddu12i	$r28,608(0x260)
1c0085d4:	1c004c1c 	pcaddu12i	$r28,608(0x260)
1c0085d8:	1c004c1c 	pcaddu12i	$r28,608(0x260)
1c0085dc:	1c004c1c 	pcaddu12i	$r28,608(0x260)
1c0085e0:	1c004c1c 	pcaddu12i	$r28,608(0x260)
1c0085e4:	1c004c1c 	pcaddu12i	$r28,608(0x260)
1c0085e8:	1c004c1c 	pcaddu12i	$r28,608(0x260)
1c0085ec:	1c004c1c 	pcaddu12i	$r28,608(0x260)
1c0085f0:	1c004c1c 	pcaddu12i	$r28,608(0x260)
1c0085f4:	1c004c1c 	pcaddu12i	$r28,608(0x260)
1c0085f8:	1c004c1c 	pcaddu12i	$r28,608(0x260)
1c0085fc:	1c004c1c 	pcaddu12i	$r28,608(0x260)
1c008600:	1c004c1c 	pcaddu12i	$r28,608(0x260)
1c008604:	1c004be8 	pcaddu12i	$r8,607(0x25f)

1c008608 <__FUNCTION__.1575>:
1c008608:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01fa80 <_sidata+0x15c78>
1c00860c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01f670 <_sidata+0x15868>
1c008610:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bffb670 <_start-0x4990>
1c008614:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bfff784 <_start-0x87c>
1c008618:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00f478 <_sidata+0x5670>
1c00861c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c008620 <__FUNCTION__.1579>:
1c008620:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01fa98 <_sidata+0x15c90>
1c008624:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01f688 <_sidata+0x15880>
1c008628:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bffb788 <_start-0x4878>
1c00862c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bfff79c <_start-0x864>
1c008630:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00f490 <_sidata+0x5688>
1c008634:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c008638 <__FUNCTION__.1583>:
1c008638:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01fab0 <_sidata+0x15ca8>
1c00863c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01f6a0 <_sidata+0x15898>
1c008640:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bffb8a0 <_start-0x4760>
1c008644:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bfff7b4 <_start-0x84c>
1c008648:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00f4a8 <_sidata+0x56a0>
1c00864c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c008650 <__FUNCTION__.1587>:
1c008650:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01fac8 <_sidata+0x15cc0>
1c008654:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01f6b8 <_sidata+0x158b0>
1c008658:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bffb9b8 <_start-0x4648>
1c00865c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bfff7cc <_start-0x834>
1c008660:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00f4c0 <_sidata+0x56b8>
1c008664:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c008668 <__FUNCTION__.1591>:
1c008668:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01fae0 <_sidata+0x15cd8>
1c00866c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01f6d0 <_sidata+0x158c8>
1c008670:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bffbad0 <_start-0x4530>
1c008674:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bfff7e4 <_start-0x81c>
1c008678:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00f4d8 <_sidata+0x56d0>
1c00867c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c008680 <__FUNCTION__.1595>:
1c008680:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01faf8 <_sidata+0x15cf0>
1c008684:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01f6e8 <_sidata+0x158e0>
1c008688:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bffbbe8 <_start-0x4418>
1c00868c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bfff7fc <_start-0x804>
1c008690:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00f4f0 <_sidata+0x56e8>
1c008694:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c008698 <__FUNCTION__.1599>:
1c008698:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01fb10 <_sidata+0x15d08>
1c00869c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01f700 <_sidata+0x158f8>
1c0086a0:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bffbd00 <_start-0x4300>
1c0086a4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bfff814 <_start-0x7ec>
1c0086a8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00f508 <_sidata+0x5700>
1c0086ac:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0086b0 <__FUNCTION__.1603>:
1c0086b0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01fb28 <_sidata+0x15d20>
1c0086b4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01f718 <_sidata+0x15910>
1c0086b8:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bffbe18 <_start-0x41e8>
1c0086bc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bfff82c <_start-0x7d4>
1c0086c0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00f520 <_sidata+0x5718>
1c0086c4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0086c8 <__FUNCTION__.1607>:
1c0086c8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01fb40 <_sidata+0x15d38>
1c0086cc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01f730 <_sidata+0x15928>
1c0086d0:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bffb730 <_start-0x48d0>
1c0086d4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bfff844 <_start-0x7bc>
1c0086d8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00f538 <_sidata+0x5730>
1c0086dc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0086e0 <__FUNCTION__.1611>:
1c0086e0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01fb58 <_sidata+0x15d50>
1c0086e4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01f748 <_sidata+0x15940>
1c0086e8:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bffb848 <_start-0x47b8>
1c0086ec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bfff85c <_start-0x7a4>
1c0086f0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00f550 <_sidata+0x5748>
1c0086f4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0086f8 <__FUNCTION__.1615>:
1c0086f8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01fb70 <_sidata+0x15d68>
1c0086fc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01f760 <_sidata+0x15958>
1c008700:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bffb960 <_start-0x46a0>
1c008704:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bfff874 <_start-0x78c>
1c008708:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00f568 <_sidata+0x5760>
1c00870c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c008710 <__FUNCTION__.1619>:
1c008710:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01fb88 <_sidata+0x15d80>
1c008714:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01f778 <_sidata+0x15970>
1c008718:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bffba78 <_start-0x4588>
1c00871c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bfff88c <_start-0x774>
1c008720:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00f580 <_sidata+0x5778>
1c008724:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c008728 <__FUNCTION__.1623>:
1c008728:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01fba0 <_sidata+0x15d98>
1c00872c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01f790 <_sidata+0x15988>
1c008730:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bffbb90 <_start-0x4470>
1c008734:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bfff8a4 <_start-0x75c>
1c008738:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00f598 <_sidata+0x5790>
1c00873c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c008740 <__FUNCTION__.1627>:
1c008740:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01fbb8 <_sidata+0x15db0>
1c008744:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01f7a8 <_sidata+0x159a0>
1c008748:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bffbca8 <_start-0x4358>
1c00874c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bfff8bc <_start-0x744>
1c008750:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00f5b0 <_sidata+0x57a8>
1c008754:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c008758 <__FUNCTION__.1631>:
1c008758:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01fbd0 <_sidata+0x15dc8>
1c00875c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01f7c0 <_sidata+0x159b8>
1c008760:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bffbdc0 <_start-0x4240>
1c008764:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bfff8d4 <_start-0x72c>
1c008768:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00f5c8 <_sidata+0x57c0>
1c00876c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c008770 <__FUNCTION__.1635>:
1c008770:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01fbe8 <_sidata+0x15de0>
1c008774:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01f7d8 <_sidata+0x159d0>
1c008778:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bffbed8 <_start-0x4128>
1c00877c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bfff8ec <_start-0x714>
1c008780:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00f5e0 <_sidata+0x57d8>
1c008784:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c008788 <__FUNCTION__.1639>:
1c008788:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01fc00 <_sidata+0x15df8>
1c00878c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01f7f0 <_sidata+0x159e8>
1c008790:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bffb7f0 <_start-0x4810>
1c008794:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bfff904 <_start-0x6fc>
1c008798:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00f5f8 <_sidata+0x57f0>
1c00879c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0087a0 <__FUNCTION__.1643>:
1c0087a0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01fc18 <_sidata+0x15e10>
1c0087a4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01f808 <_sidata+0x15a00>
1c0087a8:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bffb908 <_start-0x46f8>
1c0087ac:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bfff91c <_start-0x6e4>
1c0087b0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00f610 <_sidata+0x5808>
1c0087b4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0087b8 <__FUNCTION__.1647>:
1c0087b8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01fc30 <_sidata+0x15e28>
1c0087bc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01f820 <_sidata+0x15a18>
1c0087c0:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bffba20 <_start-0x45e0>
1c0087c4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bfff934 <_start-0x6cc>
1c0087c8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00f628 <_sidata+0x5820>
1c0087cc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0087d0 <__FUNCTION__.1651>:
1c0087d0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01fc48 <_sidata+0x15e40>
1c0087d4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01f838 <_sidata+0x15a30>
1c0087d8:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bffbb38 <_start-0x44c8>
1c0087dc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bfff94c <_start-0x6b4>
1c0087e0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00f640 <_sidata+0x5838>
1c0087e4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0087e8 <__FUNCTION__.1655>:
1c0087e8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01fc60 <_sidata+0x15e58>
1c0087ec:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01f850 <_sidata+0x15a48>
1c0087f0:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bffbc50 <_start-0x43b0>
1c0087f4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bfff964 <_start-0x69c>
1c0087f8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00f658 <_sidata+0x5850>
1c0087fc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c008800 <__FUNCTION__.1659>:
1c008800:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01fc78 <_sidata+0x15e70>
1c008804:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01f868 <_sidata+0x15a60>
1c008808:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bffbd68 <_start-0x4298>
1c00880c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bfff97c <_start-0x684>
1c008810:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00f670 <_sidata+0x5868>
1c008814:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c008818 <__FUNCTION__.1663>:
1c008818:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01fc90 <_sidata+0x15e88>
1c00881c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01f880 <_sidata+0x15a78>
1c008820:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bffbe80 <_start-0x4180>
1c008824:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bfff994 <_start-0x66c>
1c008828:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00f688 <_sidata+0x5880>
1c00882c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c008830 <__FUNCTION__.1667>:
1c008830:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01fca8 <_sidata+0x15ea0>
1c008834:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01f898 <_sidata+0x15a90>
1c008838:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bffbf98 <_start-0x4068>
1c00883c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bfff9ac <_start-0x654>
1c008840:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00f6a0 <_sidata+0x5898>
1c008844:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c008848 <__FUNCTION__.1671>:
1c008848:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01fcc0 <_sidata+0x15eb8>
1c00884c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01f8b0 <_sidata+0x15aa8>
1c008850:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bffb8b4 <_start-0x474c>
1c008854:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bfff9c4 <_start-0x63c>
1c008858:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00f6b8 <_sidata+0x58b0>
1c00885c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c008860 <__FUNCTION__.1675>:
1c008860:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01fcd8 <_sidata+0x15ed0>
1c008864:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01f8c8 <_sidata+0x15ac0>
1c008868:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bffb9cc <_start-0x4634>
1c00886c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bfff9dc <_start-0x624>
1c008870:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00f6d0 <_sidata+0x58c8>
1c008874:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c008878 <__FUNCTION__.1679>:
1c008878:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01fcf0 <_sidata+0x15ee8>
1c00887c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01f8e0 <_sidata+0x15ad8>
1c008880:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bffbae4 <_start-0x451c>
1c008884:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bfff9f4 <_start-0x60c>
1c008888:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00f6e8 <_sidata+0x58e0>
1c00888c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c008890 <__FUNCTION__.1683>:
1c008890:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01fd08 <_sidata+0x15f00>
1c008894:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01f8f8 <_sidata+0x15af0>
1c008898:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bffbbfc <_start-0x4404>
1c00889c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bfffa0c <_start-0x5f4>
1c0088a0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00f700 <_sidata+0x58f8>
1c0088a4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0088a8 <__FUNCTION__.1687>:
1c0088a8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01fd20 <_sidata+0x15f18>
1c0088ac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01f910 <_sidata+0x15b08>
1c0088b0:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bffbd14 <_start-0x42ec>
1c0088b4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bfffa24 <_start-0x5dc>
1c0088b8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00f718 <_sidata+0x5910>
1c0088bc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0088c0 <__FUNCTION__.1691>:
1c0088c0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01fd38 <_sidata+0x15f30>
1c0088c4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01f928 <_sidata+0x15b20>
1c0088c8:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bffbe2c <_start-0x41d4>
1c0088cc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bfffa3c <_start-0x5c4>
1c0088d0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00f730 <_sidata+0x5928>
1c0088d4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0088d8 <__FUNCTION__.1695>:
1c0088d8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01fd50 <_sidata+0x15f48>
1c0088dc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01f940 <_sidata+0x15b38>
1c0088e0:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bffbf44 <_start-0x40bc>
1c0088e4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bfffa54 <_start-0x5ac>
1c0088e8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00f748 <_sidata+0x5940>
1c0088ec:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0088f0 <__FUNCTION__.1699>:
1c0088f0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01fd68 <_sidata+0x15f60>
1c0088f4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01f958 <_sidata+0x15b50>
1c0088f8:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bffc05c <_start-0x3fa4>
1c0088fc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bfffa6c <_start-0x594>
1c008900:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00f760 <_sidata+0x5958>
1c008904:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c008908 <asc2_1608>:
	...
1c008918:	f8000000 	0xf8000000
1c00891c:	00000000 	0x00000000
1c008920:	33000000 	0x33000000
1c008924:	00000000 	0x00000000
1c008928:	020c1000 	slti	$r0,$r0,772(0x304)
1c00892c:	00020c10 	0x00020c10
	...
1c008938:	78c04000 	0x78c04000
1c00893c:	0078c040 	bstrpick.w	$r0,$r2,0x18,0x10
1c008940:	043f0400 	csrrd	$r0,0xfc1
1c008944:	00043f04 	alsl.w	$r4,$r24,$r15,0x1
1c008948:	88887000 	0x88887000
1c00894c:	003008fc 	0x003008fc
1c008950:	20201800 	ll.w	$r0,$r0,8216(0x2018)
1c008954:	001e21ff 	mulh.d	$r31,$r15,$r8
1c008958:	80f008f0 	0x80f008f0
1c00895c:	00001860 	cto.w	$r0,$r3
1c008960:	030c3100 	lu52i.d	$r0,$r8,780(0x30c)
1c008964:	001e211e 	mulh.d	$r30,$r8,$r8
1c008968:	8808f000 	0x8808f000
1c00896c:	00000070 	0x00000070
1c008970:	2c23211e 	vld	$vr30,$r8,-1848(0x8c8)
1c008974:	10212719 	addu16i.d	$r25,$r24,2121(0x849)
1c008978:	000e1200 	bytepick.d	$r0,$r16,$r4,0x4
	...
1c008988:	e0000000 	0xe0000000
1c00898c:	00020418 	0x00020418
1c008990:	07000000 	0x07000000
1c008994:	00402018 	0x00402018
1c008998:	18040200 	pcaddi	$r0,8208(0x2010)
1c00899c:	000000e0 	0x000000e0
1c0089a0:	18204000 	pcaddi	$r0,66048(0x10200)
1c0089a4:	00000007 	0x00000007
1c0089a8:	f0804040 	0xf0804040
1c0089ac:	00404080 	0x00404080
1c0089b0:	0f010202 	0x0f010202
1c0089b4:	00020201 	0x00020201
1c0089b8:	00000000 	0x00000000
1c0089bc:	000000e0 	0x000000e0
1c0089c0:	01010100 	fadd.d	$f0,$f8,$f0
1c0089c4:	0101010f 	fadd.d	$f15,$f8,$f0
	...
1c0089d0:	00709000 	bstrpick.w	$r0,$r0,0x10,0x4
	...
1c0089e0:	01010100 	fadd.d	$f0,$f8,$f0
1c0089e4:	00010101 	0x00010101
	...
1c0089f0:	00303000 	0x00303000
	...
1c0089fc:	000438c0 	alsl.w	$r0,$r6,$r14,0x1
1c008a00:	07186000 	0x07186000
1c008a04:	00000000 	0x00000000
1c008a08:	0810e000 	fmadd.s	$f0,$f0,$f24,$f1
1c008a0c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c008a10:	20100f00 	ll.w	$r0,$r24,4108(0x100c)
1c008a14:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c008a18:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c008a1c:	000000f8 	0x000000f8
1c008a20:	20200000 	ll.w	$r0,$r0,8192(0x2000)
1c008a24:	0020203f 	div.w	$r31,$r1,$r8
1c008a28:	08087000 	0x08087000
1c008a2c:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c008a30:	24283000 	ldptr.w	$r0,$r0,10288(0x2830)
1c008a34:	00302122 	0x00302122
1c008a38:	08083000 	0x08083000
1c008a3c:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c008a40:	21201800 	sc.w	$r0,$r0,8216(0x2018)
1c008a44:	001c2221 	mul.w	$r1,$r17,$r8
1c008a48:	40800000 	beqz	$r0,32768(0x8000) # 1c010a48 <_sidata+0x6c40>
1c008a4c:	0000f830 	0x0000f830
1c008a50:	24050600 	ldptr.w	$r0,$r16,1284(0x504)
1c008a54:	24243f24 	ldptr.w	$r4,$r25,9276(0x243c)
1c008a58:	8888f800 	0x8888f800
1c008a5c:	00080888 	bytepick.w	$r8,$r4,$r2,0x0
1c008a60:	20201900 	ll.w	$r0,$r8,8216(0x2018)
1c008a64:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c008a68:	8810e000 	0x8810e000
1c008a6c:	00009088 	0x00009088
1c008a70:	20110f00 	ll.w	$r0,$r24,4364(0x110c)
1c008a74:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c008a78:	08081800 	0x08081800
1c008a7c:	00186888 	sra.w	$r8,$r4,$r26
1c008a80:	3e000000 	0x3e000000
1c008a84:	00000001 	0x00000001
1c008a88:	08887000 	0x08887000
1c008a8c:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c008a90:	21221c00 	sc.w	$r0,$r0,8732(0x221c)
1c008a94:	001c2221 	mul.w	$r1,$r17,$r8
1c008a98:	0808f000 	0x0808f000
1c008a9c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c008aa0:	22120100 	ll.d	$r0,$r8,4608(0x1200)
1c008aa4:	000f1122 	bytepick.d	$r2,$r9,$r4,0x6
1c008aa8:	c0000000 	0xc0000000
1c008aac:	000000c0 	0x000000c0
1c008ab0:	30000000 	0x30000000
1c008ab4:	00000030 	0x00000030
1c008ab8:	80000000 	0x80000000
1c008abc:	00000000 	0x00000000
1c008ac0:	e0000000 	0xe0000000
1c008ac4:	00000000 	0x00000000
1c008ac8:	40800000 	beqz	$r0,32768(0x8000) # 1c010ac8 <_sidata+0x6cc0>
1c008acc:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c008ad0:	04020100 	csrxchg	$r0,$r8,0x80
1c008ad4:	00201008 	div.w	$r8,$r0,$r4
1c008ad8:	40404000 	beqz	$r0,16448(0x4040) # 1c00cb18 <_sidata+0x2d10>
1c008adc:	00404040 	0x00404040
1c008ae0:	02020200 	slti	$r0,$r16,128(0x80)
1c008ae4:	00020202 	0x00020202
1c008ae8:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c008aec:	00008040 	0x00008040
1c008af0:	08102000 	fmadd.s	$f0,$f0,$f8,$f0
1c008af4:	00010204 	0x00010204
1c008af8:	08487000 	0x08487000
1c008afc:	00708808 	bstrpick.w	$r8,$r0,0x10,0x2
1c008b00:	30000000 	0x30000000
1c008b04:	00000037 	0x00000037
1c008b08:	28c830c0 	ld.d	$r0,$r6,524(0x20c)
1c008b0c:	00e010e8 	bstrpick.d	$r8,$r7,0x20,0x4
1c008b10:	28271807 	ld.b	$r7,$r0,-1594(0x9c6)
1c008b14:	0017282f 	sll.w	$r15,$r1,$r10
1c008b18:	38c00000 	0x38c00000
1c008b1c:	000000e0 	0x000000e0
1c008b20:	02233c20 	slti	$r0,$r1,-1841(0x8cf)
1c008b24:	20382702 	ll.w	$r2,$r24,14372(0x3824)
1c008b28:	8888f808 	0x8888f808
1c008b2c:	00007088 	0x00007088
1c008b30:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c008b34:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c008b38:	080830c0 	0x080830c0
1c008b3c:	00380808 	0x00380808
1c008b40:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c008b44:	00081020 	bytepick.w	$r0,$r1,$r4,0x0
1c008b48:	0808f808 	0x0808f808
1c008b4c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c008b50:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c008b54:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c008b58:	8888f808 	0x8888f808
1c008b5c:	001008e8 	add.w	$r8,$r7,$r2
1c008b60:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c008b64:	00182023 	sra.w	$r3,$r1,$r8
1c008b68:	8888f808 	0x8888f808
1c008b6c:	001008e8 	add.w	$r8,$r7,$r2
1c008b70:	00203f20 	div.w	$r0,$r25,$r15
1c008b74:	00000003 	0x00000003
1c008b78:	080830c0 	0x080830c0
1c008b7c:	00003808 	revb.2w	$r8,$r0
1c008b80:	20201807 	ll.w	$r7,$r0,8216(0x2018)
1c008b84:	00021e22 	0x00021e22
1c008b88:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c008b8c:	08f80800 	0x08f80800
1c008b90:	01213f20 	0x01213f20
1c008b94:	203f2101 	ll.w	$r1,$r8,16160(0x3f20)
1c008b98:	f8080800 	0xf8080800
1c008b9c:	00000808 	0x00000808
1c008ba0:	3f202000 	0x3f202000
1c008ba4:	00002020 	clo.d	$r0,$r1
1c008ba8:	08080000 	0x08080000
1c008bac:	000808f8 	bytepick.w	$r24,$r7,$r2,0x0
1c008bb0:	808080c0 	0x808080c0
1c008bb4:	0000007f 	0x0000007f
1c008bb8:	c088f808 	0xc088f808
1c008bbc:	00081828 	bytepick.w	$r8,$r1,$r6,0x0
1c008bc0:	01203f20 	0x01203f20
1c008bc4:	00203826 	div.w	$r6,$r1,$r14
1c008bc8:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c008bcc:	00000000 	0x00000000
1c008bd0:	20203f20 	ll.w	$r0,$r25,8252(0x203c)
1c008bd4:	00302020 	0x00302020
1c008bd8:	00f8f808 	bstrpick.d	$r8,$r0,0x38,0x3e
1c008bdc:	0008f8f8 	bytepick.w	$r24,$r7,$r30,0x1
1c008be0:	3e013f20 	0x3e013f20
1c008be4:	00203f01 	div.w	$r1,$r24,$r15
1c008be8:	c030f808 	0xc030f808
1c008bec:	08f80800 	0x08f80800
1c008bf0:	00203f20 	div.w	$r0,$r25,$r15
1c008bf4:	003f1807 	0x003f1807
1c008bf8:	080810e0 	0x080810e0
1c008bfc:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c008c00:	2020100f 	ll.w	$r15,$r0,8208(0x2010)
1c008c04:	000f1020 	bytepick.d	$r0,$r1,$r4,0x6
1c008c08:	0808f808 	0x0808f808
1c008c0c:	00f00808 	bstrpick.d	$r8,$r0,0x30,0x2
1c008c10:	01213f20 	0x01213f20
1c008c14:	00000101 	0x00000101
1c008c18:	080810e0 	0x080810e0
1c008c1c:	00e01008 	bstrpick.d	$r8,$r0,0x20,0x4
1c008c20:	2828100f 	ld.b	$r15,$r0,-1532(0xa04)
1c008c24:	004f5030 	0x004f5030
1c008c28:	8888f808 	0x8888f808
1c008c2c:	00708888 	bstrpick.w	$r8,$r4,0x10,0x2
1c008c30:	00203f20 	div.w	$r0,$r25,$r15
1c008c34:	20300c03 	ll.w	$r3,$r0,12300(0x300c)
1c008c38:	08887000 	0x08887000
1c008c3c:	00380808 	0x00380808
1c008c40:	21203800 	sc.w	$r0,$r0,8248(0x2038)
1c008c44:	001c2221 	mul.w	$r1,$r17,$r8
1c008c48:	f8080818 	0xf8080818
1c008c4c:	00180808 	sra.w	$r8,$r0,$r2
1c008c50:	3f200000 	0x3f200000
1c008c54:	00000020 	0x00000020
1c008c58:	0008f808 	bytepick.w	$r8,$r0,$r30,0x1
1c008c5c:	08f80800 	0x08f80800
1c008c60:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c008c64:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c008c68:	00887808 	bstrins.d	$r8,$r0,0x8,0x1e
1c008c6c:	0838c800 	0x0838c800
1c008c70:	38070000 	0x38070000
1c008c74:	0000010e 	0x0000010e
1c008c78:	f800f808 	0xf800f808
1c008c7c:	0008f800 	bytepick.w	$r0,$r0,$r30,0x1
1c008c80:	013e0300 	0x013e0300
1c008c84:	0000033e 	0x0000033e
1c008c88:	80681808 	0x80681808
1c008c8c:	08186880 	fmadd.s	$f0,$f4,$f26,$f16
1c008c90:	032c3020 	lu52i.d	$r0,$r1,-1268(0xb0c)
1c008c94:	20302c03 	ll.w	$r3,$r0,12332(0x302c)
1c008c98:	00c83808 	bstrpick.d	$r8,$r0,0x8,0xe
1c008c9c:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c008ca0:	3f200000 	0x3f200000
1c008ca4:	00000020 	0x00000020
1c008ca8:	08080810 	0x08080810
1c008cac:	000838c8 	bytepick.w	$r8,$r6,$r14,0x0
1c008cb0:	21263820 	sc.w	$r0,$r1,9784(0x2638)
1c008cb4:	00182020 	sra.w	$r0,$r1,$r8
1c008cb8:	fe000000 	0xfe000000
1c008cbc:	00020202 	0x00020202
1c008cc0:	7f000000 	0x7f000000
1c008cc4:	00404040 	0x00404040
1c008cc8:	c0380400 	0xc0380400
1c008ccc:	00000000 	0x00000000
1c008cd0:	01000000 	0x01000000
1c008cd4:	00c03806 	bstrpick.d	$r6,$r0,0x0,0xe
1c008cd8:	02020200 	slti	$r0,$r16,128(0x80)
1c008cdc:	000000fe 	0x000000fe
1c008ce0:	40404000 	beqz	$r0,16448(0x4040) # 1c00cd20 <_sidata+0x2f18>
1c008ce4:	0000007f 	0x0000007f
1c008ce8:	02040000 	slti	$r0,$r0,256(0x100)
1c008cec:	00000402 	0x00000402
	...
1c008d00:	80808080 	0x80808080
1c008d04:	80808080 	0x80808080
1c008d08:	04020200 	csrxchg	$r0,$r16,0x80
	...
1c008d18:	80800000 	0x80800000
1c008d1c:	00000080 	0x00000080
1c008d20:	24241900 	ldptr.w	$r0,$r8,9240(0x2418)
1c008d24:	00203f12 	div.w	$r18,$r24,$r15
1c008d28:	8000f010 	0x8000f010
1c008d2c:	00000080 	0x00000080
1c008d30:	20113f00 	ll.w	$r0,$r24,4412(0x113c)
1c008d34:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c008d38:	80000000 	0x80000000
1c008d3c:	00008080 	0x00008080
1c008d40:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c008d44:	00112020 	sub.w	$r0,$r1,$r8
1c008d48:	80800000 	0x80800000
1c008d4c:	00f09080 	bstrpick.d	$r0,$r4,0x30,0x24
1c008d50:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c008d54:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c008d58:	80800000 	0x80800000
1c008d5c:	00008080 	0x00008080
1c008d60:	24241f00 	ldptr.w	$r0,$r24,9244(0x241c)
1c008d64:	00172424 	sll.w	$r4,$r1,$r9
1c008d68:	e0808000 	0xe0808000
1c008d6c:	00209090 	mod.w	$r16,$r4,$r4
1c008d70:	3f202000 	0x3f202000
1c008d74:	00002020 	clo.d	$r0,$r1
1c008d78:	80800000 	0x80800000
1c008d7c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008d80:	94946b00 	0x94946b00
1c008d84:	00609394 	bstrpick.w	$r20,$r28,0x0,0x4
1c008d88:	8000f010 	0x8000f010
1c008d8c:	00008080 	0x00008080
1c008d90:	00213f20 	div.wu	$r0,$r25,$r15
1c008d94:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c008d98:	98988000 	0x98988000
1c008d9c:	00000000 	0x00000000
1c008da0:	3f202000 	0x3f202000
1c008da4:	00002020 	clo.d	$r0,$r1
1c008da8:	80000000 	0x80000000
1c008dac:	00009898 	0x00009898
1c008db0:	8080c000 	0x8080c000
1c008db4:	00007f80 	0x00007f80
1c008db8:	0000f010 	0x0000f010
1c008dbc:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008dc0:	06243f20 	cacop	0x0,$r25,-1777(0x90f)
1c008dc4:	00203029 	div.w	$r9,$r1,$r12
1c008dc8:	f8101000 	0xf8101000
1c008dcc:	00000000 	0x00000000
1c008dd0:	3f202000 	0x3f202000
1c008dd4:	00002020 	clo.d	$r0,$r1
1c008dd8:	80808080 	0x80808080
1c008ddc:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008de0:	00203f20 	div.w	$r0,$r25,$r15
1c008de4:	3f00203f 	0x3f00203f
1c008de8:	80008080 	0x80008080
1c008dec:	00008080 	0x00008080
1c008df0:	00213f20 	div.wu	$r0,$r25,$r15
1c008df4:	203f2000 	ll.w	$r0,$r0,16160(0x3f20)
1c008df8:	80800000 	0x80800000
1c008dfc:	00008080 	0x00008080
1c008e00:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c008e04:	001f2020 	mulw.d.w	$r0,$r1,$r8
1c008e08:	80008080 	0x80008080
1c008e0c:	00000080 	0x00000080
1c008e10:	2091ff80 	ll.w	$r0,$r28,-28164(0x91fc)
1c008e14:	000e1120 	bytepick.d	$r0,$r9,$r4,0x4
1c008e18:	80000000 	0x80000000
1c008e1c:	00800080 	bstrins.d	$r0,$r4,0x0,0x0
1c008e20:	20110e00 	ll.w	$r0,$r16,4364(0x110c)
1c008e24:	80ff9120 	0x80ff9120
1c008e28:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008e2c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008e30:	213f2020 	sc.w	$r0,$r1,16160(0x3f20)
1c008e34:	00010020 	asrtle.d	$r1,$r0
1c008e38:	80800000 	0x80800000
1c008e3c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008e40:	24243300 	ldptr.w	$r0,$r24,9264(0x2430)
1c008e44:	00192424 	srl.d	$r4,$r1,$r9
1c008e48:	e0808000 	0xe0808000
1c008e4c:	00008080 	0x00008080
1c008e50:	1f000000 	pcaddu18i	$r0,-524288(0x80000)
1c008e54:	00102020 	add.w	$r0,$r1,$r8
1c008e58:	00008080 	0x00008080
1c008e5c:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c008e60:	20201f00 	ll.w	$r0,$r24,8220(0x201c)
1c008e64:	203f1020 	ll.w	$r0,$r1,16144(0x3f10)
1c008e68:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008e6c:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008e70:	300c0300 	0x300c0300
1c008e74:	0000030c 	0x0000030c
1c008e78:	80008080 	0x80008080
1c008e7c:	80800080 	0x80800080
1c008e80:	0c300e01 	0x0c300e01
1c008e84:	01063807 	0x01063807
1c008e88:	80808000 	0x80808000
1c008e8c:	00808000 	bstrins.d	$r0,$r0,0x0,0x20
1c008e90:	0e312000 	0x0e312000
1c008e94:	0020312e 	div.w	$r14,$r9,$r12
1c008e98:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008e9c:	80808000 	0x80808000
1c008ea0:	78868100 	0x78868100
1c008ea4:	00010618 	0x00010618
1c008ea8:	80808000 	0x80808000
1c008eac:	00808080 	bstrins.d	$r0,$r4,0x0,0x20
1c008eb0:	2c302100 	vld	$vr0,$r8,-1016(0xc08)
1c008eb4:	00302122 	0x00302122
1c008eb8:	00000000 	0x00000000
1c008ebc:	0202fc00 	slti	$r0,$r0,191(0xbf)
1c008ec0:	00000000 	0x00000000
1c008ec4:	40403e01 	beqz	$r16,278588(0x4403c) # 1c04cf00 <_sidata+0x430f8>
1c008ec8:	00000000 	0x00000000
1c008ecc:	000000ff 	0x000000ff
1c008ed0:	00000000 	0x00000000
1c008ed4:	000000ff 	0x000000ff
1c008ed8:	00fc0202 	bstrpick.d	$r2,$r16,0x3c,0x0
1c008edc:	00000000 	0x00000000
1c008ee0:	013e4040 	0x013e4040
1c008ee4:	00000000 	0x00000000
1c008ee8:	02010200 	slti	$r0,$r16,64(0x40)
1c008eec:	00020402 	0x00020402
	...

1c008ef8 <tfont16>:
1c008ef8:	10a9b8e6 	addu16i.d	$r6,$r7,10862(0x2a6e)
1c008efc:	008c0260 	bstrins.d	$r0,$r19,0xc,0x0
1c008f00:	9292fe00 	0x9292fe00
1c008f04:	fe929292 	0xfe929292
1c008f08:	04000000 	csrrd	$r0,0x0
1c008f0c:	40017e04 	beqz	$r16,1048956(0x10017c) # 1c109088 <_sidata+0xff280>
1c008f10:	7e42427e 	0x7e42427e
1c008f14:	42427e42 	beqz	$r18,672380(0xa427c) # 1c0ad190 <_sidata+0xa3388>
1c008f18:	e600407e 	0xe600407e
1c008f1c:	6010bfb9 	blt	$r29,$r25,4284(0x10bc) # 1c009fd8 <_sidata+0x1d0>
1c008f20:	fe008c02 	0xfe008c02
1c008f24:	92929292 	0x92929292
1c008f28:	00fe9292 	bstrpick.d	$r18,$r20,0x3e,0x24
1c008f2c:	04040000 	csrrd	$r0,0x100
1c008f30:	4844017e 	bcnez	$fcc3,-506880(0x784400) # 1bf8d330 <_start-0x72cd0>
1c008f34:	40407f50 	beqz	$r26,-4177796(0x40407c) # 1bc0cfb0 <_start-0x3f3050>
1c008f38:	4448507f 	bnez	$r3,-243632(0x7c4850) # 1bfcd788 <_start-0x32878>
1c008f3c:	bae50040 	0xbae50040
1c008f40:	fc0000a6 	0xfc0000a6
1c008f44:	fc242424 	0xfc242424
1c008f48:	fc242625 	0xfc242625
1c008f4c:	04242424 	csrwr	$r4,0x909
1c008f50:	8f304000 	0x8f304000
1c008f54:	554c8480 	bl	33639556(0x2014c84) # 1e01dbd8 <_sidata+0x2013dd0>
1c008f58:	55252525 	bl	76883236(0x4952524) # 2095b47c <_sidata+0x4951674>
1c008f5c:	8080804c 	0x8080804c
1c008f60:	80a3e600 	0x80a3e600
1c008f64:	ffd01010 	0xffd01010
1c008f68:	50205090 	b	37757008(0x2402050) # 1e40afb8 <_sidata+0x24011b0>
1c008f6c:	504c434c 	b	-47166400(0xd304c40) # 1930dbac <_start-0x2cf2454>
1c008f70:	00404020 	0x00404020
1c008f74:	ff000304 	0xff000304
1c008f78:	58444100 	beq	$r8,$r0,17472(0x4440) # 1c00d3b8 <_sidata+0x35b0>
1c008f7c:	58604e41 	beq	$r18,$r1,24652(0x604c) # 1c00efc8 <_sidata+0x51c0>
1c008f80:	00404047 	0x00404047
1c008f84:	108bb5e6 	addu16i.d	$r6,$r15,8941(0x22ed)
1c008f88:	008c0260 	bstrins.d	$r0,$r19,0xc,0x0
1c008f8c:	02f202fe 	addi.d	$r30,$r23,-896(0xc80)
1c008f90:	00f800fe 	bstrpick.d	$r30,$r7,0x38,0x0
1c008f94:	040000ff 	csrxchg	$r31,$r7,0x0
1c008f98:	80017e04 	0x80017e04
1c008f9c:	100f3047 	addu16i.d	$r7,$r2,972(0x3cc)
1c008fa0:	80470027 	0x80470027
1c008fa4:	e500007f 	0xe500007f
1c008fa8:	0c109eae 	0x0c109eae
1c008fac:	64148404 	bge	$r0,$r4,5252(0x1484) # 1c00a430 <_sidata+0x628>
1c008fb0:	04f40605 	csrxchg	$r5,$r16,0x3d01
1c008fb4:	14040404 	lu12i.w	$r4,8224(0x2020)
1c008fb8:	8404000c 	0x8404000c
1c008fbc:	24474484 	ldptr.w	$r4,$r4,18244(0x4744)
1c008fc0:	0c070c14 	0x0c070c14
1c008fc4:	84442414 	0x84442414
1c008fc8:	aae90004 	0xaae90004
1c008fcc:	82fa028c 	0x82fa028c
1c008fd0:	4080fe82 	beqz	$r20,557308(0x880fc) # 1c0910cc <_sidata+0x872c4>
1c008fd4:	434c5020 	beqz	$r1,216144(0x34c50) # 1c03dc24 <_sidata+0x33e1c>
1c008fd8:	4020504c 	beqz	$r2,3154000(0x302050) # 1c30b028 <_sidata+0x301220>
1c008fdc:	48180800 	bceqz	$fcc0,6152(0x1808) # 1c00a7e4 <_sidata+0x9dc>
1c008fe0:	403f4484 	beqz	$r4,1064772(0x103f44) # 1c10cf24 <_sidata+0x10311c>
1c008fe4:	4e415844 	jirl	$r4,$r2,-114344(0x24158)
1c008fe8:	40475860 	beqz	$r3,18264(0x4758) # 1c00d740 <_sidata+0x3938>
1c008fec:	8384e200 	0x8384e200
1c008ff0:	e6090906 	0xe6090906
1c008ff4:	02040cf8 	slti	$r24,$r7,259(0x103)
1c008ff8:	02020202 	slti	$r2,$r16,128(0x80)
1c008ffc:	00001e04 	ctz.w	$r4,$r16
1c009000:	07000000 	0x07000000
1c009004:	4020301f 	beqz	$r0,-253904(0x7c2030) # 1bfcb034 <_start-0x34fcc>
1c009008:	40404040 	beqz	$r2,16448(0x4040) # 1c00d048 <_sidata+0x3240>
1c00900c:	00001020 	clo.w	$r0,$r1
1c009010:	40baa4e7 	beqz	$r7,1882788(0x1cbaa4) # 1c1d4ab4 <_sidata+0x1cacac>
1c009014:	42424240 	beqz	$r18,148032(0x24240) # 1c02d254 <_sidata+0x2344c>
1c009018:	42c24242 	beqz	$r18,705088(0xac240) # 1c0b5258 <_sidata+0xab450>
1c00901c:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ad25c <_sidata+0xa3454>
1c009020:	20004040 	ll.w	$r0,$r2,64(0x40)
1c009024:	00060810 	alsl.wu	$r16,$r0,$r2,0x1
1c009028:	007f8040 	bstrpick.w	$r0,$r2,0x1f,0x0
1c00902c:	04020000 	csrrd	$r0,0x80
1c009030:	e6003008 	0xe6003008
1c009034:	0000be98 	0x0000be98
1c009038:	9292fe00 	0x9292fe00
1c00903c:	92929292 	0x92929292
1c009040:	0000fe92 	0x0000fe92
1c009044:	42400000 	beqz	$r0,147456(0x24000) # 1c02d044 <_sidata+0x2323c>
1c009048:	7f405844 	0x7f405844
1c00904c:	7f404040 	0x7f404040
1c009050:	46485040 	bnez	$r2,149584(0x24850) # 1c02d8a0 <_sidata+0x23a98>
1c009054:	aee50040 	0xaee50040
1c009058:	040c109e 	csrxchg	$r30,$r4,0x304
1c00905c:	05641484 	0x05641484
1c009060:	0404f406 	csrrd	$r6,0x13d
1c009064:	0c140404 	fcmp.cun.s	$fcc4,$f0,$f1
1c009068:	84840400 	0x84840400
1c00906c:	14244744 	lu12i.w	$r4,74298(0x1223a)
1c009070:	140c070c 	lu12i.w	$r12,24632(0x6038)
1c009074:	04844424 	csrwr	$r4,0x2111
1c009078:	8caae900 	0x8caae900
1c00907c:	8282fa02 	0x8282fa02
1c009080:	204080fe 	ll.w	$r30,$r7,16512(0x4080)
1c009084:	4c434c50 	jirl	$r16,$r2,17228(0x434c)
1c009088:	00402050 	0x00402050
1c00908c:	84481808 	0x84481808
1c009090:	44403f44 	bnez	$r26,1065020(0x10403c) # 1c10d0cc <_sidata+0x1032c4>
1c009094:	604e4158 	blt	$r10,$r24,20032(0x4e40) # 1c00ded4 <_sidata+0x40cc>
1c009098:	00404758 	0x00404758
1c00909c:	02be99e7 	addi.w	$r7,$r15,-90(0xfa6)
1c0090a0:	2222e202 	ll.d	$r2,$r16,8928(0x22e0)
1c0090a4:	22262a32 	ll.d	$r18,$r17,9768(0x2628)
1c0090a8:	e2222222 	0xe2222222
1c0090ac:	00000202 	0x00000202
1c0090b0:	4242ff00 	beqz	$r24,148220(0x242fc) # 1c02d3ac <_sidata+0x235a4>
1c0090b4:	42424242 	beqz	$r18,672320(0xa4240) # 1c0ad2f4 <_sidata+0xa34ec>
1c0090b8:	ff424242 	0xff424242
1c0090bc:	e7000000 	0xe7000000
1c0090c0:	242491a7 	ldptr.w	$r7,$r13,9360(0x2490)
1c0090c4:	22a3fea4 	ll.d	$r4,$r21,-23556(0xa3fc)
1c0090c8:	00cc2200 	bstrpick.d	$r0,$r16,0xc,0x8
1c0090cc:	0000ff00 	0x0000ff00
1c0090d0:	06080000 	cacop	0x0,$r0,512(0x200)
1c0090d4:	0100ff01 	fadd.s	$f1,$f24,$f31
1c0090d8:	04040404 	csrrd	$r4,0x101
1c0090dc:	0202ff04 	slti	$r4,$r24,191(0xbf)
1c0090e0:	8de80002 	0x8de80002
1c0090e4:	246484a3 	ldptr.w	$r3,$r5,25732(0x6484)
1c0090e8:	24242f24 	ldptr.w	$r4,$r25,9260(0x242c)
1c0090ec:	2f2424a4 	0x2f2424a4
1c0090f0:	64a42424 	bge	$r1,$r4,42020(0xa424) # 1c013514 <_sidata+0x970c>
1c0090f4:	22424000 	ll.d	$r0,$r0,16960(0x4240)
1c0090f8:	060a1222 	cacop	0x2,$r17,644(0x284)
1c0090fc:	120a06ff 	addu16i.d	$r31,$r23,-32127(0x8281)
1c009100:	40422222 	beqz	$r17,541216(0x84220) # 1c08d320 <_sidata+0x83518>
1c009104:	9b88e500 	0x9b88e500
1c009108:	4cd02040 	jirl	$r0,$r2,53280(0xd020)
1c00910c:	10c84443 	addu16i.d	$r3,$r2,12817(0x3211)
1c009110:	00f80020 	bstrpick.d	$r0,$r1,0x38,0x0
1c009114:	0000ff00 	0x0000ff00
1c009118:	403f0000 	beqz	$r0,16128(0x3f00) # 1c00d018 <_sidata+0x3210>
1c00911c:	40474844 	beqz	$r2,1066824(0x104748) # 1c10d864 <_sidata+0x103a5c>
1c009120:	400f0070 	beqz	$r3,-4190464(0x400f00) # 1bc0a020 <_start-0x3f5fe0>
1c009124:	00007f80 	0x00007f80
1c009128:	00a997e6 	bstrins.d	$r6,$r31,0x29,0x25
1c00912c:	92fe0000 	0x92fe0000
1c009130:	92929292 	0x92929292
1c009134:	00fe9292 	bstrpick.d	$r18,$r20,0x3e,0x24
1c009138:	04000000 	csrrd	$r0,0x0
1c00913c:	04040404 	csrrd	$r4,0x101
1c009140:	04ff0404 	csrrd	$r4,0x3fc1
1c009144:	04040404 	csrrd	$r4,0x101
1c009148:	e4000404 	0xe4000404
1c00914c:	00008ab8 	0x00008ab8
1c009150:	00000000 	0x00000000
1c009154:	404040ff 	beqz	$r7,-245696(0x7c4040) # 1bfcd194 <_start-0x32e6c>
1c009158:	00404040 	0x00404040
1c00915c:	40400000 	beqz	$r0,16384(0x4000) # 1c00d15c <_sidata+0x3354>
1c009160:	40404040 	beqz	$r2,16448(0x4040) # 1c00d1a0 <_sidata+0x3398>
1c009164:	4040407f 	beqz	$r3,-245696(0x7c4040) # 1bfcd1a4 <_start-0x32e5c>
1c009168:	40404040 	beqz	$r2,16448(0x4040) # 1c00d1a8 <_sidata+0x33a0>
1c00916c:	90e50040 	0x90e50040
1c009170:	04fc0083 	csrxchg	$r3,$r4,0x3f00
1c009174:	1020fc04 	addu16i.d	$r4,$r0,2111(0x83f)
1c009178:	48484b4c 	0x48484b4c
1c00917c:	0808c848 	0x0808c848
1c009180:	040f0000 	csrrd	$r0,0x3c0
1c009184:	30000f04 	0x30000f04
1c009188:	42424448 	beqz	$r2,2245188(0x224244) # 1c22d3cc <_sidata+0x2235c4>
1c00918c:	70404041 	vaddwod.h.bu.b	$vr1,$vr2,$vr16
1c009190:	af8de800 	0xaf8de800
1c009194:	34448404 	0x34448404
1c009198:	84048f04 	0x84048f04
1c00919c:	44444f74 	bnez	$r27,-3128244(0x50444c) # 1bd0d5e8 <_start-0x2f2a18>
1c0091a0:	0004c444 	alsl.w	$r4,$r2,$r17,0x2
1c0091a4:	2b4dc949 	fst.s	$f9,$r10,882(0x372)
1c0091a8:	00012829 	0x00012829
1c0091ac:	80400c02 	0x80400c02
1c0091b0:	00003f40 	revb.d	$r0,$r26
1c0091b4:	00b697e6 	bstrins.d	$r6,$r31,0x36,0x25
1c0091b8:	848484fc 	0x848484fc
1c0091bc:	101000fc 	addu16i.d	$r28,$r7,1024(0x400)
1c0091c0:	ff101010 	0xff101010
1c0091c4:	00001010 	clo.w	$r16,$r0
1c0091c8:	1010103f 	addu16i.d	$r31,$r1,1028(0x404)
1c0091cc:	0100003f 	0x0100003f
1c0091d0:	7f804006 	0x7f804006
1c0091d4:	e9000000 	0xe9000000
1c0091d8:	f800b497 	0xf800b497
1c0091dc:	f0000601 	0xf0000601
1c0091e0:	f2121212 	0xf2121212
1c0091e4:	fe020202 	0xfe020202
1c0091e8:	ff000000 	0xff000000
1c0091ec:	1f000000 	pcaddu18i	$r0,-524288(0x80000)
1c0091f0:	1f111111 	pcaddu18i	$r17,-489336(0x88888)
1c0091f4:	7f804000 	0x7f804000
1c0091f8:	b8e40000 	0xb8e40000
1c0091fc:	f00000ad 	0xf00000ad
1c009200:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c009204:	101010ff 	addu16i.d	$r31,$r7,1028(0x404)
1c009208:	0000f010 	0x0000f010
1c00920c:	0f000000 	0x0f000000
1c009210:	04040404 	csrrd	$r4,0x101
1c009214:	040404ff 	csrxchg	$r31,$r7,0x101
1c009218:	00000f04 	0x00000f04
1c00921c:	888de500 	0x888de500
1c009220:	18204000 	pcaddi	$r0,66048(0x10200)
1c009224:	f808080f 	0xf808080f
1c009228:	08080808 	0x08080808
1c00922c:	00000008 	0x00000008
1c009230:	02020202 	slti	$r2,$r16,128(0x80)
1c009234:	ff020202 	0xff020202
1c009238:	02020202 	slti	$r2,$r16,128(0x80)
1c00923c:	00020202 	0x00020202
1c009240:	009a99e6 	bstrins.d	$r6,$r15,0x1a,0x26
1c009244:	fc8484fc 	0xfc8484fc
1c009248:	2724e810 	stptr.d	$r16,$r0,9448(0x24e8)
1c00924c:	2c3424e4 	vld	$vr4,$r7,-759(0xd09)
1c009250:	000000e0 	0x000000e0
1c009254:	3f10103f 	0x3f10103f
1c009258:	0e324380 	0x0e324380
1c00925c:	42423e03 	beqz	$r16,934460(0xe423c) # 1c0ed498 <_sidata+0xe3690>
1c009260:	e4007043 	0xe4007043
1c009264:	00008ab8 	0x00008ab8
1c009268:	00000000 	0x00000000
1c00926c:	404040ff 	beqz	$r7,-245696(0x7c4040) # 1bfcd2ac <_start-0x32d54>
1c009270:	00404040 	0x00404040
1c009274:	40400000 	beqz	$r0,16384(0x4000) # 1c00d274 <_sidata+0x346c>
1c009278:	40404040 	beqz	$r2,16448(0x4040) # 1c00d2b8 <_sidata+0x34b0>
1c00927c:	4040407f 	beqz	$r3,-245696(0x7c4040) # 1bfcd2bc <_start-0x32d44>
1c009280:	40404040 	beqz	$r2,16448(0x4040) # 1c00d2c0 <_sidata+0x34b8>
1c009284:	00000040 	0x00000040

1c009288 <tfont32>:
1c009288:	00be99e7 	bstrins.d	$r7,$r15,0x3e,0x26
1c00928c:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c009290:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c009294:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c009298:	70f0f010 	vsrlr.h	$vr16,$vr0,$vr28
1c00929c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0092a0:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0092a4:	10181010 	addu16i.d	$r16,$r0,1540(0x604)
	...
1c0092b0:	f8fc0000 	0xf8fc0000
1c0092b4:	08080808 	0x08080808
1c0092b8:	08080b0c 	0x08080b0c
1c0092bc:	08080808 	0x08080808
1c0092c0:	f8fc0808 	0xf8fc0808
	...
1c0092d0:	ffff0000 	0xffff0000
1c0092d4:	08080808 	0x08080808
1c0092d8:	08080808 	0x08080808
1c0092dc:	08080808 	0x08080808
1c0092e0:	ffff0808 	0xffff0808
	...
1c0092f0:	3f7f0000 	0x3f7f0000
1c0092f4:	08080808 	0x08080808
1c0092f8:	08080808 	0x08080808
1c0092fc:	08080808 	0x08080808
1c009300:	3f7f0808 	0x3f7f0808
1c009304:	00000000 	0x00000000
1c009308:	e7000000 	0xe7000000
1c00930c:	000091a7 	0x000091a7
1c009310:	20404040 	ll.w	$r0,$r2,16448(0x4040)
1c009314:	e0e02020 	0xe0e02020
1c009318:	18181030 	pcaddi	$r16,49281(0xc081)
1c00931c:	80000000 	0x80000000
1c009320:	00000080 	0x00000080
1c009324:	f8fc0000 	0xf8fc0000
1c009328:	00000008 	0x00000008
1c00932c:	00000000 	0x00000000
1c009330:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c009334:	ffff9010 	0xffff9010
1c009338:	18101010 	pcaddi	$r16,32896(0x8080)
1c00933c:	c0000010 	0xc0000010
1c009340:	00060781 	alsl.wu	$r1,$r28,$r1,0x1
1c009344:	ffff0000 	0xffff0000
	...
1c009350:	18204080 	pcaddi	$r0,66052(0x10204)
1c009354:	ffff030e 	0xffff030e
1c009358:	5e060301 	bne	$r24,$r1,-129536(0x20600) # 1bfe9958 <_start-0x166a8>
1c00935c:	20202040 	ll.w	$r0,$r2,8224(0x2020)
1c009360:	10102321 	addu16i.d	$r1,$r25,1032(0x408)
1c009364:	ffff1010 	0xffff1010
1c009368:	0c0c0808 	0x0c0c0808
1c00936c:	01000000 	0x01000000
1c009370:	00000000 	0x00000000
1c009374:	3f7f0000 	0x3f7f0000
	...
1c009384:	3f7f0000 	0x3f7f0000
1c009388:	00000000 	0x00000000
1c00938c:	8de80000 	0x8de80000
1c009390:	000000a3 	0x000000a3
1c009394:	80808080 	0x80808080
1c009398:	80808080 	0x80808080
1c00939c:	8088f8fc 	0x8088f8fc
1c0093a0:	80808080 	0x80808080
1c0093a4:	8088f8fc 	0x8088f8fc
1c0093a8:	e0c08080 	0xe0c08080
1c0093ac:	000080c0 	0x000080c0
1c0093b0:	00000000 	0x00000000
1c0093b4:	10f8c080 	addu16i.d	$r0,$r4,15920(0x3e30)
1c0093b8:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0093bc:	10101717 	addu16i.d	$r23,$r24,1029(0x405)
1c0093c0:	1050f0f0 	addu16i.d	$r16,$r7,5180(0x143c)
1c0093c4:	10101317 	addu16i.d	$r23,$r24,1028(0x404)
1c0093c8:	f0d01010 	0xf0d01010
1c0093cc:	00001038 	clo.w	$r24,$r1
1c0093d0:	00000000 	0x00000000
1c0093d4:	02020200 	slti	$r0,$r16,128(0x80)
1c0093d8:	c2820202 	0xc2820202
1c0093dc:	061e3a62 	cacop	0x2,$r19,1934(0x78e)
1c0093e0:	0e02ffff 	0x0e02ffff
1c0093e4:	82c26212 	0x82c26212
1c0093e8:	03020282 	lu52i.d	$r2,$r20,128(0x80)
1c0093ec:	00000203 	0x00000203
1c0093f0:	10000000 	addu16i.d	$r0,$r0,0
1c0093f4:	06040808 	cacop	0x8,$r0,258(0x102)
1c0093f8:	00010102 	0x00010102
1c0093fc:	00000000 	0x00000000
1c009400:	00003f7f 	revb.d	$r31,$r27
1c009404:	01000000 	0x01000000
1c009408:	0e060303 	0x0e060303
1c00940c:	0004040e 	alsl.w	$r14,$r0,$r1,0x1
1c009410:	9b88e500 	0x9b88e500
1c009414:	00000000 	0x00000000
1c009418:	c0000000 	0xc0000000
1c00941c:	28183cf0 	ld.b	$r16,$r7,1551(0x60f)
1c009420:	80c04060 	0x80c04060
	...
1c00942c:	f8000000 	0xf8000000
1c009430:	000000f8 	0x000000f8
1c009434:	40800000 	beqz	$r0,32768(0x8000) # 1c011434 <_sidata+0x762c>
1c009438:	23e6f830 	sc.d	$r16,$r1,-6408(0xe6f8)
1c00943c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c009440:	23f0e020 	sc.d	$r0,$r1,-3872(0xf0e0)
1c009444:	00000207 	0x00000207
1c009448:	0002ff00 	0x0002ff00
1c00944c:	ff000000 	0xff000000
1c009450:	000000ff 	0x000000ff
1c009454:	00000100 	0x00000100
1c009458:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
1c00945c:	60200000 	blt	$r0,$r0,8192(0x2000) # 1c00b45c <_sidata+0x1654>
1c009460:	001f3f60 	mulw.d.w	$r0,$r27,$r15
1c009464:	00008000 	0x00008000
1c009468:	00007f00 	0x00007f00
1c00946c:	ff000000 	0xff000000
1c009470:	000000ff 	0x000000ff
1c009474:	00000000 	0x00000000
1c009478:	303f0700 	0x303f0700
1c00947c:	30303030 	0x30303030
1c009480:	30303030 	0x30303030
1c009484:	00103f38 	add.w	$r24,$r25,$r15
1c009488:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c00948c:	3f703030 	0x3f703030
1c009490:	0000001f 	0x0000001f
1c009494:	0088bcef 	bstrins.d	$r15,$r7,0x8,0x2f
	...
1c0094ac:	40800000 	beqz	$r0,32768(0x8000) # 1c0114ac <_sidata+0x76a4>
1c0094b0:	00102040 	add.w	$r0,$r2,$r8
	...
1c0094c8:	1cf00000 	pcaddu12i	$r0,491520(0x78000)
1c0094cc:	00000306 	0x00000306
	...
1c0094e8:	701f0000 	vaddwev.d.w	$vr0,$vr0,$vr0
1c0094ec:	000000c0 	0x000000c0
	...
1c00950c:	04020100 	csrxchg	$r0,$r8,0x80
1c009510:	0010080c 	add.w	$r12,$r0,$r2
1c009514:	e5000000 	0xe5000000
1c009518:	0000978c 	0x0000978c
	...
1c009524:	08f8fc00 	0x08f8fc00
1c009528:	00000000 	0x00000000
1c00952c:	0008f8fc 	bytepick.w	$r28,$r7,$r30,0x1
	...
1c00953c:	08080808 	0x08080808
1c009540:	08080808 	0x08080808
1c009544:	00ffff08 	bstrpick.d	$r8,$r24,0x3f,0x3f
1c009548:	00000000 	0x00000000
1c00954c:	4040ffff 	beqz	$r31,-245508(0x7c40fc) # 1bfcd648 <_start-0x329b8>
1c009550:	18103020 	pcaddi	$r0,33153(0x8181)
1c009554:	00040e0c 	alsl.w	$r12,$r16,$r3,0x1
	...
1c009560:	80000000 	0x80000000
1c009564:	00ffff80 	bstrpick.d	$r0,$r28,0x3f,0x3f
1c009568:	00000000 	0x00000000
1c00956c:	0000ffff 	0x0000ffff
1c009570:	00000000 	0x00000000
1c009574:	00c00000 	bstrpick.d	$r0,$r0,0x0,0x0
1c009578:	00000000 	0x00000000
1c00957c:	03060606 	lu52i.d	$r6,$r16,385(0x181)
1c009580:	00010103 	0x00010103
1c009584:	003f7f00 	0x003f7f00
1c009588:	00000000 	0x00000000
1c00958c:	30303f1f 	0x30303f1f
1c009590:	30303030 	0x30303030
1c009594:	183f3830 	pcaddi	$r16,129473(0x1f9c1)
1c009598:	bae40000 	0xbae40000
1c00959c:	800000ac 	0x800000ac
1c0095a0:	80808080 	0x80808080
1c0095a4:	80808080 	0x80808080
1c0095a8:	8c808080 	0x8c808080
1c0095ac:	80b0f898 	0x80b0f898
1c0095b0:	80808080 	0x80808080
1c0095b4:	c0808080 	0xc0808080
1c0095b8:	0080c0e0 	bstrins.d	$r0,$r7,0x0,0x30
	...
1c0095c4:	08f8f800 	0x08f8f800
1c0095c8:	08080808 	0x08080808
1c0095cc:	08080808 	0x08080808
1c0095d0:	f8080808 	0xf8080808
1c0095d4:	000008fc 	0x000008fc
	...
1c0095e4:	e4cf0f00 	0xe4cf0f00
1c0095e8:	04040444 	csrxchg	$r4,$r2,0x101
1c0095ec:	0404fcfc 	csrxchg	$r28,$r7,0x13f
1c0095f0:	cf442404 	0xcf442404
1c0095f4:	0000008f 	0x0000008f
1c0095f8:	00000000 	0x00000000
1c0095fc:	20000000 	ll.w	$r0,$r0,0
1c009600:	04081010 	csrrd	$r16,0x204
1c009604:	00010306 	0x00010306
1c009608:	70301010 	vsubwev.h.bu	$vr16,$vr0,$vr4
1c00960c:	00003f3f 	revb.d	$r31,$r25
1c009610:	00000000 	0x00000000
1c009614:	1e0e0301 	pcaddu18i	$r1,28696(0x7018)
1c009618:	00000018 	0x00000018
1c00961c:	89bcef00 	0x89bcef00
1c009620:	00000000 	0x00000000
1c009624:	20100800 	ll.w	$r0,$r0,4104(0x1008)
1c009628:	0080c060 	bstrins.d	$r0,$r3,0x0,0x30
	...
1c009648:	06010000 	cacop	0x0,$r0,64(0x40)
1c00964c:	0000f03c 	0x0000f03c
	...
1c009668:	c0800000 	0xc0800000
1c00966c:	00000f78 	0x00000f78
	...
1c009684:	0c081000 	0x0c081000
1c009688:	00010306 	0x00010306
	...
1c0096a0:	0091a7e7 	bstrins.d	$r7,$r31,0x11,0x29
1c0096a4:	40404000 	beqz	$r0,16448(0x4040) # 1c00d6e4 <_sidata+0x38dc>
1c0096a8:	e0202020 	0xe0202020
1c0096ac:	181030e0 	pcaddi	$r0,33159(0x8187)
1c0096b0:	00000018 	0x00000018
1c0096b4:	00008080 	0x00008080
1c0096b8:	fc000000 	0xfc000000
1c0096bc:	000008f8 	0x000008f8
1c0096c0:	00000000 	0x00000000
1c0096c4:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c0096c8:	ff901010 	0xff901010
1c0096cc:	101010ff 	addu16i.d	$r31,$r7,1028(0x404)
1c0096d0:	00001018 	clo.w	$r24,$r0
1c0096d4:	060781c0 	cacop	0x0,$r14,480(0x1e0)
1c0096d8:	ff000000 	0xff000000
1c0096dc:	000000ff 	0x000000ff
1c0096e0:	00000000 	0x00000000
1c0096e4:	20408000 	ll.w	$r0,$r0,16512(0x4080)
1c0096e8:	ff030e18 	0xff030e18
1c0096ec:	060301ff 	cacop	0x1f,$r15,192(0xc0)
1c0096f0:	2020405e 	ll.w	$r30,$r2,8256(0x2040)
1c0096f4:	10232120 	addu16i.d	$r0,$r9,2248(0x8c8)
1c0096f8:	ff101010 	0xff101010
1c0096fc:	0c0808ff 	0x0c0808ff
1c009700:	0000000c 	0x0000000c
1c009704:	00000001 	0x00000001
1c009708:	7f000000 	0x7f000000
1c00970c:	0000003f 	0x0000003f
	...
1c009718:	7f000000 	0x7f000000
1c00971c:	0000003f 	0x0000003f
1c009720:	e6000000 	0xe6000000
1c009724:	0000808a 	0x0000808a
1c009728:	00000000 	0x00000000
1c00972c:	08f8fc00 	0x08f8fc00
	...
1c009738:	f8fc0000 	0xf8fc0000
1c00973c:	00000008 	0x00000008
	...
1c009748:	02020202 	slti	$r2,$r16,128(0x80)
1c00974c:	02ffff02 	addi.d	$r2,$r24,-1(0xfff)
1c009750:	42438382 	beqz	$r28,672640(0xa4380) # 1c0adad0 <_sidata+0xa3cc8>
1c009754:	82828282 	0x82828282
1c009758:	ffff8282 	0xffff8282
1c00975c:	82828282 	0x82828282
1c009760:	020383c2 	slti	$r2,$r30,224(0xe0)
1c009764:	00000000 	0x00000000
1c009768:	06060c0c 	cacop	0xc,$r0,387(0x183)
1c00976c:	01ffff02 	0x01ffff02
1c009770:	00000000 	0x00000000
1c009774:	1c030000 	pcaddu12i	$r0,6144(0x1800)
1c009778:	8000c070 	0x8000c070
1c00977c:	0f3c70c0 	0x0f3c70c0
1c009780:	00000003 	0x00000003
1c009784:	00000000 	0x00000000
1c009788:	30101000 	vldrepl.d	$vr0,$r0,32(0x20)
1c00978c:	003f3f70 	0x003f3f70
1c009790:	20204040 	ll.w	$r0,$r2,8256(0x2040)
1c009794:	08181020 	fmadd.s	$f0,$f1,$f4,$f16
1c009798:	0703060c 	0x0703060c
1c00979c:	38180c0f 	stx.w	$r15,$r0,$r3
1c0097a0:	20303030 	ll.w	$r16,$r1,12336(0x3030)
1c0097a4:	8fe50000 	0x8fe50000
1c0097a8:	00000091 	0x00000091
1c0097ac:	f0800000 	0xf0800000
1c0097b0:	00000070 	0x00000070
1c0097b4:	18fcc000 	pcaddi	$r0,517632(0x7e600)
1c0097b8:	00000000 	0x00000000
1c0097bc:	70100800 	0x70100800
1c0097c0:	0000c0e0 	0x0000c0e0
	...
1c0097cc:	05070e04 	0x05070e04
1c0097d0:	84040404 	0x84040404
1c0097d4:	8487fff4 	0x8487fff4
1c0097d8:	84848484 	0x84848484
1c0097dc:	84848484 	0x84848484
1c0097e0:	0484c584 	csrxchg	$r4,$r12,0x2131
1c0097e4:	00040606 	alsl.w	$r6,$r16,$r1,0x1
	...
1c0097f0:	0f3ce080 	0x0f3ce080
1c0097f4:	06010003 	cacop	0x3,$r0,64(0x40)
1c0097f8:	80e03018 	0x80e03018
1c0097fc:	1e3860c0 	pcaddu18i	$r0,115462(0x1c306)
1c009800:	00000307 	0x00000307
1c009804:	00000000 	0x00000000
1c009808:	20000000 	ll.w	$r0,$r0,0
1c00980c:	03040810 	lu52i.d	$r16,$r0,258(0x102)
1c009810:	20204041 	ll.w	$r1,$r2,8256(0x2040)
1c009814:	08181020 	fmadd.s	$f0,$f1,$f4,$f16
1c009818:	0303060c 	lu52i.d	$r12,$r16,193(0xc1)
1c00981c:	0c060703 	0x0c060703
1c009820:	3038181c 	0x3038181c
1c009824:	00103030 	add.w	$r16,$r1,$r12
1c009828:	95b1e500 	0x95b1e500
1c00982c:	00000000 	0x00000000
1c009830:	08f80400 	0x08f80400
1c009834:	08080808 	0x08080808
1c009838:	08080808 	0x08080808
1c00983c:	08080808 	0x08080808
1c009840:	08080808 	0x08080808
1c009844:	08f8fc08 	0x08f8fc08
	...
1c009850:	21ff0000 	sc.w	$r0,$r0,-256(0xff00)
1c009854:	21212121 	sc.w	$r1,$r9,8480(0x2120)
1c009858:	21fdff21 	sc.w	$r1,$r25,-516(0xfdfc)
1c00985c:	21212121 	sc.w	$r1,$r9,8480(0x2120)
1c009860:	2121fdff 	sc.w	$r31,$r15,8700(0x21fc)
1c009864:	00233321 	div.du	$r1,$r25,$r12
	...
1c009870:	043fff00 	csrxchg	$r0,$r24,0xfff
1c009874:	fc040404 	0xfc040404
1c009878:	040707fc 	csrxchg	$r28,$r31,0x1c1
1c00987c:	04c4740c 	csrrd	$r12,0x311d
1c009880:	64448707 	bge	$r24,$r7,17540(0x4484) # 1c00dd04 <_sidata+0x3efc>
1c009884:	06062434 	cacop	0x14,$r1,393(0x189)
1c009888:	00000004 	0x00000004
1c00988c:	18204000 	pcaddi	$r0,66048(0x10200)
1c009890:	00000107 	0x00000107
1c009894:	3f000000 	0x3f000000
1c009898:	0818103f 	fmadd.s	$f31,$f1,$f4,$f16
1c00989c:	03000004 	lu52i.d	$r4,$r0,0
1c0098a0:	180c0607 	pcaddi	$r7,24624(0x6030)
1c0098a4:	30383818 	0x30383818
1c0098a8:	00001010 	clo.w	$r16,$r0
1c0098ac:	00899ce6 	bstrins.d	$r6,$r7,0x9,0x27
1c0098b0:	80808000 	0x80808000
1c0098b4:	80808080 	0x80808080
1c0098b8:	80808080 	0x80808080
1c0098bc:	88b8fce0 	0x88b8fce0
1c0098c0:	80808080 	0x80808080
1c0098c4:	80808080 	0x80808080
1c0098c8:	c0e0c080 	0xc0e0c080
1c0098cc:	00000080 	0x00000080
1c0098d0:	00000000 	0x00000000
1c0098d4:	c0800000 	0xc0800000
1c0098d8:	171cf8e0 	lu32i.d	$r0,-464953(0x8e7c7)
1c0098dc:	10101013 	addu16i.d	$r19,$r0,1028(0x404)
1c0098e0:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c0098e4:	10f81010 	addu16i.d	$r16,$r0,15876(0x3e04)
	...
1c0098f0:	04081000 	csrrd	$r0,0x204
1c0098f4:	00010306 	0x00010306
1c0098f8:	4242ffff 	beqz	$r31,-113924(0x7e42fc) # 1bfedbf4 <_start-0x1240c>
1c0098fc:	42424242 	beqz	$r18,672320(0xa4240) # 1c0adb3c <_sidata+0xa3d34>
1c009900:	42424242 	beqz	$r18,672320(0xa4240) # 1c0adb40 <_sidata+0xa3d38>
1c009904:	00ff4242 	bstrpick.d	$r2,$r18,0x3f,0x10
	...
1c009918:	00003f7f 	revb.d	$r31,$r27
1c00991c:	00000000 	0x00000000
1c009920:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c009924:	003f7030 	0x003f7030
1c009928:	00000000 	0x00000000
1c00992c:	e9000000 	0xe9000000
1c009930:	00009099 	0x00009099
1c009934:	10f00800 	addu16i.d	$r0,$r0,15362(0x3c02)
1c009938:	f0101010 	0xf0101010
1c00993c:	00001078 	clo.w	$r24,$r3
1c009940:	1010f0f8 	addu16i.d	$r24,$r7,1084(0x43c)
1c009944:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c009948:	f8101010 	0xf8101010
1c00994c:	00000010 	0x00000010
1c009950:	00000000 	0x00000000
1c009954:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c009958:	c33e0000 	0xc33e0000
1c00995c:	00000000 	0x00000000
1c009960:	8484ffff 	0x8484ffff
1c009964:	84848484 	0x84848484
1c009968:	ff848484 	0xff848484
	...
1c009974:	00ff0000 	bstrpick.d	$r0,$r0,0x3f,0x0
1c009978:	c0c04000 	0xc0c04000
1c00997c:	00007eff 	0x00007eff
1c009980:	0000ffff 	0x0000ffff
1c009984:	c0701e01 	0xc0701e01
1c009988:	0d1030a0 	vbitsel.v	$vr0,$vr5,$vr12,$vr0
1c00998c:	0000040e 	0x0000040e
1c009990:	00000000 	0x00000000
1c009994:	007f0000 	bstrins.w	$r0,$r0,0x1f,0x0
1c009998:	00010000 	asrtle.d	$r0,$r0
1c00999c:	00000000 	0x00000000
1c0099a0:	08183f1f 	fmadd.s	$f31,$f24,$f15,$f16
1c0099a4:	01020204 	0x01020204
1c0099a8:	1c0e0703 	pcaddu12i	$r3,28728(0x7038)
1c0099ac:	00183818 	sra.w	$r24,$r0,$r14
1c0099b0:	85e50000 	0x85e50000
1c0099b4:	000000ac 	0x000000ac
1c0099b8:	00000000 	0x00000000
1c0099bc:	80000000 	0x80000000
1c0099c0:	001078e0 	add.w	$r0,$r7,$r30
1c0099c4:	1c000000 	pcaddu12i	$r0,0
1c0099c8:	000080e0 	0x000080e0
	...
1c0099d8:	c0800000 	0xc0800000
1c0099dc:	070e3860 	0x070e3860
1c0099e0:	00000001 	0x00000001
1c0099e4:	0080c0e0 	bstrins.d	$r0,$r7,0x0,0x30
1c0099e8:	1c0e0300 	pcaddu12i	$r0,28696(0x7018)
1c0099ec:	c0c0e070 	0xc0c0e070
1c0099f0:	00000080 	0x00000080
1c0099f4:	04000000 	csrrd	$r0,0x0
1c0099f8:	00010302 	0x00010302
1c0099fc:	c0000000 	0xc0000000
1c009a00:	071c3860 	0x071c3860
1c009a04:	00000103 	0x00000103
1c009a08:	0080c020 	bstrins.d	$r0,$r1,0x0,0x30
1c009a0c:	03010000 	lu52i.d	$r0,$r0,64(0x40)
1c009a10:	00010103 	0x00010103
1c009a14:	00000000 	0x00000000
1c009a18:	38080000 	ldx.w	$r0,$r0,$r0
1c009a1c:	191b1e3c 	pcaddi	$r28,-468751(0x8d8f1)
1c009a20:	08081818 	0x08081818
1c009a24:	08080808 	0x08080808
1c009a28:	0f090808 	0x0f090808
1c009a2c:	00307c1e 	0x00307c1e
1c009a30:	00000000 	0x00000000
1c009a34:	b88fe500 	0xb88fe500
1c009a38:	00000000 	0x00000000
1c009a3c:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c009a40:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c009a44:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c009a48:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c009a4c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c009a50:	00f0f810 	bstrpick.d	$r16,$r0,0x30,0x3e
1c009a54:	00000000 	0x00000000
1c009a58:	04000000 	csrrd	$r0,0x0
1c009a5c:	84c40404 	0x84c40404
1c009a60:	84848484 	0x84848484
1c009a64:	84848484 	0x84848484
1c009a68:	0684c484 	0x0684c484
1c009a6c:	00000406 	0x00000406
1c009a70:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
	...
1c009a7c:	ffff0000 	0xffff0000
1c009a80:	40404040 	beqz	$r2,16448(0x4040) # 1c00dac0 <_sidata+0x3cb8>
1c009a84:	40404040 	beqz	$r2,16448(0x4040) # 1c00dac4 <_sidata+0x3cbc>
1c009a88:	0000ff40 	0x0000ff40
1c009a8c:	00000000 	0x00000000
1c009a90:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
	...
1c009a9c:	01030000 	fsub.d	$f0,$f0,$f0
	...
1c009aa8:	00010100 	asrtle.d	$r8,$r0
1c009aac:	30101010 	vldrepl.d	$vr16,$r0,32(0x20)
1c009ab0:	000f3f70 	bytepick.d	$r16,$r27,$r15,0x6
1c009ab4:	00000000 	0x00000000
1c009ab8:	00be98e6 	bstrins.d	$r6,$r7,0x3e,0x26
1c009abc:	00000000 	0x00000000
1c009ac0:	f0080000 	0xf0080000
1c009ac4:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c009ac8:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c009acc:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c009ad0:	f0f81010 	0xf0f81010
	...
1c009ae0:	ff000000 	0xff000000
1c009ae4:	42424242 	beqz	$r18,672320(0xa4240) # 1c0add24 <_sidata+0xa3f1c>
1c009ae8:	42424242 	beqz	$r18,672320(0xa4240) # 1c0add28 <_sidata+0xa3f20>
1c009aec:	42424242 	beqz	$r18,672320(0xa4240) # 1c0add2c <_sidata+0xa3f24>
1c009af0:	ffff4242 	0xffff4242
	...
1c009afc:	08000000 	0x08000000
1c009b00:	c0e17030 	0xc0e17030
1c009b04:	fe000000 	0xfe000000
1c009b08:	000000fe 	0x000000fe
1c009b0c:	00fefe00 	bstrpick.d	$r0,$r16,0x3e,0x3f
1c009b10:	60c08000 	blt	$r0,$r0,49280(0xc080) # 1c015b90 <_sidata+0xbd88>
1c009b14:	00081c38 	bytepick.w	$r24,$r1,$r7,0x0
1c009b18:	00000000 	0x00000000
1c009b1c:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c009b20:	13111010 	addu16i.d	$r16,$r0,-15292(0xc444)
1c009b24:	1f101010 	pcaddu18i	$r16,-491392(0x88080)
1c009b28:	1010101f 	addu16i.d	$r31,$r0,1028(0x404)
1c009b2c:	141f1f10 	lu12i.w	$r16,63736(0xf8f8)
1c009b30:	10101112 	addu16i.d	$r18,$r8,1028(0x404)
1c009b34:	10181810 	addu16i.d	$r16,$r0,1542(0x606)
1c009b38:	e7000000 	0xe7000000
1c009b3c:	0000baa4 	0x0000baa4
1c009b40:	00000000 	0x00000000
1c009b44:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c009b48:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c009b4c:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c009b50:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c009b54:	30382020 	0x30382020
1c009b58:	00000020 	0x00000020
1c009b5c:	00000000 	0x00000000
1c009b60:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c009b64:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c009b68:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c009b6c:	20e0e020 	ll.w	$r0,$r1,-7968(0xe0e0)
1c009b70:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c009b74:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c009b78:	20303020 	ll.w	$r0,$r1,12336(0x3030)
1c009b7c:	00000000 	0x00000000
1c009b80:	80000000 	0x80000000
1c009b84:	1e3c70c0 	pcaddu18i	$r0,123782(0x1e386)
1c009b88:	00000406 	0x00000406
1c009b8c:	00ffff00 	bstrpick.d	$r0,$r24,0x3f,0x3f
1c009b90:	04020000 	csrrd	$r0,0x80
1c009b94:	e0701808 	0xe0701808
1c009b98:	000080c0 	0x000080c0
1c009b9c:	00000000 	0x00000000
1c009ba0:	01030408 	fsub.d	$f8,$f0,$f1
1c009ba4:	08000000 	0x08000000
1c009ba8:	30101008 	vldrepl.d	$vr8,$r0,32(0x20)
1c009bac:	001f3f70 	mulw.d.w	$r16,$r27,$r15
	...
1c009bb8:	00030701 	0x00030701
1c009bbc:	aee50000 	0xaee50000
1c009bc0:	0000009e 	0x0000009e
1c009bc4:	00800000 	bstrins.d	$r0,$r0,0x0,0x0
1c009bc8:	00000000 	0x00000000
1c009bcc:	04000000 	csrrd	$r0,0x0
1c009bd0:	0070f818 	bstrpick.w	$r24,$r0,0x10,0x1e
	...
1c009bdc:	00000080 	0x00000080
1c009be0:	00000000 	0x00000000
1c009be4:	810f1c18 	0x810f1c18
1c009be8:	09010101 	0x09010101
1c009bec:	01713919 	0x01713919
1c009bf0:	fdff0101 	0xfdff0101
1c009bf4:	01010105 	fadd.d	$f5,$f8,$f0
1c009bf8:	07090101 	0x07090101
1c009bfc:	00020307 	0x00020307
1c009c00:	10000000 	addu16i.d	$r0,$r0,0
1c009c04:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c009c08:	1e171311 	pcaddu18i	$r17,47256(0xb898)
1c009c0c:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c009c10:	93bffcd0 	0x93bffcd0
1c009c14:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c009c18:	10101010 	addu16i.d	$r16,$r0,1028(0x404)
1c009c1c:	00101818 	add.w	$r24,$r0,$r6
1c009c20:	40000000 	beqz	$r0,0 # 1c009c20 <tfont32+0x998>
1c009c24:	20404040 	ll.w	$r0,$r2,16448(0x4040)
1c009c28:	10102020 	addu16i.d	$r0,$r1,1032(0x408)
1c009c2c:	070e0c18 	0x070e0c18
1c009c30:	01000003 	0x01000003
1c009c34:	06020301 	cacop	0x1,$r24,128(0x80)
1c009c38:	383c1c0e 	fstx.d	$f14,$r0,$r7
1c009c3c:	00000030 	0x00000030
1c009c40:	8caae900 	0x8caae900
1c009c44:	10100000 	addu16i.d	$r0,$r0,1024(0x400)
1c009c48:	10109090 	addu16i.d	$r16,$r4,1060(0x424)
1c009c4c:	10f81010 	addu16i.d	$r16,$r0,15876(0x3e04)
1c009c50:	00000000 	0x00000000
1c009c54:	f0800000 	0xf0800000
1c009c58:	80e8183c 	0x80e8183c
	...
1c009c64:	80000000 	0x80000000
1c009c68:	00001fff 	ctz.w	$r31,$r31
1c009c6c:	003fff00 	0x003fff00
1c009c70:	50204080 	b	33562688(0x2002040) # 1e00bcb0 <_sidata+0x2001ea8>
1c009c74:	4043474c 	beqz	$r26,3162948(0x304344) # 1c30dfb8 <_sidata+0x3041b0>
1c009c78:	43404040 	beqz	$r2,213056(0x34040) # 1c03dcb8 <_sidata+0x33eb0>
1c009c7c:	70784c66 	0x70784c66
1c009c80:	00202070 	div.w	$r16,$r3,$r8
1c009c84:	c1c14000 	0xc1c14000
1c009c88:	21214143 	sc.w	$r3,$r10,8512(0x2140)
1c009c8c:	ff810121 	0xff810121
1c009c90:	1c00000f 	pcaddu12i	$r15,0
1c009c94:	0c02c0f0 	0x0c02c0f0
1c009c98:	0000e0f8 	0x0000e0f8
1c009c9c:	061f7cc0 	cacop	0x0,$r6,2015(0x7df)
	...
1c009ca8:	18080800 	pcaddi	$r0,16448(0x4040)
1c009cac:	070f1838 	0x070f1838
1c009cb0:	10101000 	addu16i.d	$r0,$r0,1028(0x404)
1c009cb4:	10101113 	addu16i.d	$r19,$r8,1028(0x404)
1c009cb8:	1e101011 	pcaddu18i	$r17,32896(0x8080)
1c009cbc:	18101013 	pcaddi	$r19,32896(0x8080)
1c009cc0:	00001018 	clo.w	$r24,$r0
1c009cc4:	64252525 	bge	$r9,$r5,9508(0x2524) # 1c00c1e8 <_sidata+0x23e0>
1c009cc8:	00000064 	0x00000064
1c009ccc:	63656863 	blt	$r3,$r3,-39576(0x36568) # 1c000234 <cpu_wait+0x188>
1c009cd0:	4155206b 	beqz	$r3,2970912(0x2d5520) # 1c2df1f0 <_sidata+0x2d53e8>
1c009cd4:	5f305452 	bne	$r2,$r18,-53164(0x33054) # 1bffcd28 <_start-0x32d8>
1c009cd8:	425f5852 	beqz	$r2,-3514536(0x4a5f58) # 1bcafc30 <_start-0x3503d0>
1c009cdc:	253a4655 	stptr.w	$r21,$r18,14916(0x3a44)
1c009ce0:	000a0d73 	0x000a0d73
1c009ce4:	3a646d63 	0x3a646d63
1c009ce8:	0a0d7325 	0x0a0d7325
1c009cec:	00000000 	0x00000000
1c009cf0:	0a0d7325 	0x0a0d7325
1c009cf4:	00000000 	0x00000000
1c009cf8:	3a6b6361 	0x3a6b6361
1c009cfc:	0a0d7325 	0x0a0d7325
1c009d00:	00000000 	0x00000000
1c009d04:	3a736572 	0x3a736572
1c009d08:	0a0d6425 	0x0a0d6425
1c009d0c:	00000000 	0x00000000
1c009d10:	00007325 	0x00007325
1c009d14:	0000003a 	0x0000003a
1c009d18:	e5a9b8e6 	0xe5a9b8e6
1c009d1c:	203aa6ba 	ll.w	$r26,$r21,15012(0x3aa4)
1c009d20:	20643225 	ll.w	$r5,$r17,25648(0x6430)
1c009d24:	008384e2 	bstrins.d	$r2,$r7,0x3,0x21
1c009d28:	e5bfb9e6 	0xe5bfb9e6
1c009d2c:	203aa6ba 	ll.w	$r26,$r21,15012(0x3aa4)
1c009d30:	20643225 	ll.w	$r5,$r17,25648(0x6430)
1c009d34:	48522525 	bcnez	$fcc1,1331748(0x145224) # 1c14ef58 <_sidata+0x145150>
1c009d38:	00000000 	0x00000000
1c009d3c:	e5a9b8e6 	0xe5a9b8e6
1c009d40:	203aa6ba 	ll.w	$r26,$r21,15012(0x3aa4)
1c009d44:	e2202020 	0xe2202020
1c009d48:	00008384 	0x00008384
1c009d4c:	e5bfb9e6 	0xe5bfb9e6
1c009d50:	203aa6ba 	ll.w	$r26,$r21,15012(0x3aa4)
1c009d54:	25202020 	stptr.w	$r0,$r1,8224(0x2020)
1c009d58:	00004852 	bitrev.4b	$r18,$r2
1c009d5c:	e4a997e6 	0xe4a997e6
1c009d60:	90e58ab8 	0x90e58ab8
1c009d64:	af8de883 	0xaf8de883
1c009d68:	e9b697e6 	0xe9b697e6
1c009d6c:	0000b497 	0x0000b497
1c009d70:	e5adb8e4 	0xe5adb8e4
1c009d74:	90e5888d 	0x90e5888d
1c009d78:	af8de883 	0xaf8de883
1c009d7c:	e9b697e6 	0xe9b697e6
1c009d80:	0000b497 	0x0000b497
1c009d84:	e49a99e6 	0xe49a99e6
1c009d88:	90e58ab8 	0x90e58ab8
1c009d8c:	af8de883 	0xaf8de883
1c009d90:	e9b697e6 	0xe9b697e6
1c009d94:	0000b497 	0x0000b497
1c009d98:	00003a41 	revb.2w	$r1,$r18
1c009d9c:	00003a42 	revb.2w	$r2,$r18
1c009da0:	00003a43 	revb.2w	$r3,$r18
1c009da4:	00003a44 	revb.2w	$r4,$r18
1c009da8:	e6aa9ce6 	0xe6aa9ce6
1c009dac:	b5e680a3 	0xb5e680a3
1c009db0:	b088e58b 	0xb088e58b
1c009db4:	e6a0bce4 	0xe6a0bce4
1c009db8:	99e59f84 	0x99e59f84
1c009dbc:	000000a8 	0x000000a8
1c009dc0:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c009dc4:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c009dc8:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c009dcc:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c009dd0:	00000000 	0x00000000
1c009dd4:	e5a9b8e6 	0xe5a9b8e6
1c009dd8:	203aa6ba 	ll.w	$r26,$r21,15012(0x3aa4)
1c009ddc:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c009de0:	008384e2 	bstrins.d	$r2,$r7,0x3,0x21
1c009de4:	e5bfb9e6 	0xe5bfb9e6
1c009de8:	203aa6ba 	ll.w	$r26,$r21,15012(0x3aa4)
1c009dec:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c009df0:	00485225 	0x00485225
1c009df4:	1c007ce8 	pcaddu12i	$r8,999(0x3e7)
1c009df8:	1c007cf0 	pcaddu12i	$r16,999(0x3e7)
1c009dfc:	1c007cf8 	pcaddu12i	$r24,999(0x3e7)
1c009e00:	1c007d00 	pcaddu12i	$r0,1000(0x3e8)
1c009e04:	1c007d08 	pcaddu12i	$r8,1000(0x3e8)

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	1c007d69 	pcaddu12i	$r9,1003(0x3eb)
80001008:	80000010 	0x80000010
8000100c:	80001034 	0x80001034
80001010:	80000002 	0x80000002
80001014:	80001040 	0x80001040
80001018:	80000140 	0x80000140
8000101c:	80000270 	0x80000270
80001020:	80001041 	0x80001041
80001024:	80001042 	0x80001042
80001028:	80000274 	0x80000274
8000102c:	1c007d60 	pcaddu12i	$r0,1003(0x3eb)
80001030:	80000014 	0x80000014

80001034 <g_SystemFreq>:
80001034:	007a1200 	bstrins.w	$r0,$r16,0x1a,0x4

80001038 <data>:
80001038:	0000aa55 	0x0000aa55
8000103c:	bb000000 	0xbb000000

80001040 <hour>:
80001040:	 	fmadd.d	$f8,$f24,$f11,$f16

80001041 <min>:
80001041:	 	pcaddu18i	$r15,16705(0x4141)

80001042 <sec>:
80001042:	 	0x0c1e0828

80001043 <h1>:
80001043:	 	pcaddu12i	$r8,-499472(0x860f0)

80001044 <m1>:
80001044:	 	addu16i.d	$r30,$r0,-30909(0x8743)

80001045 <h2>:
80001045:	 	pcaddu12i	$r12,-487192(0x890e8)

80001046 <m2>:
80001046:	 	0x3a1d121d

80001047 <h3>:
80001047:	 	0x013a1d12

80001048 <m3>:
80001048:	 	slti	$r29,$r16,78(0x4e)

80001049 <s3>:
80001049:	 	lu52i.d	$r26,$r9,128(0x80)

8000104a <A>:
8000104a:	 	csrxchg	$r1,$r16,0xc0

8000104b <B>:
8000104b:	 	alsl.w	$r2,$r24,$r0,0x1

8000104c <C>:
8000104c:	 	0x00000403

8000104d <D>:
8000104d:	Address 0x000000008000104d is out of bounds.


Disassembly of section .bss:

80000000 <count>:
	...

80000001 <receive_Data.1754>:
	...

80000002 <wifi_connected>:
	...

80000004 <temperature>:
	...

80000006 <humidity>:
	...

80000008 <mode>:
	...

80000009 <select>:
	...

8000000a <change>:
	...

8000000b <s1>:
	...

8000000c <s2>:
_sbss():
8000000c:	00000000 	0x00000000

80000010 <Read_length>:
80000010:	00000000 	0x00000000

80000014 <Read_Buffer>:
	...

80000140 <Circular_queue>:
	...

80000270 <Keynum>:
80000270:	00000000 	0x00000000

80000274 <str>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	4e472820 	jirl	$r0,$r1,-112856(0x24728)
   8:	38202955 	ldx.bu	$r21,$r10,$r10
   c:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
	...
