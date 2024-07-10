
1c102_demo.elf:     file format elf32-loongarch
1c102_demo.elf


Disassembly of section .text:

1c000000 <_start>:
_start():
1c000000:	0015000d 	move	$r13,$r0
1c000004:	50002000 	b	32(0x20) # 1c000024 <LoopCopyDataInit>

1c000008 <CopyDataInit>:
CopyDataInit():
1c000008:	143800af 	lu12i.w	$r15,114693(0x1c005)
1c00000c:	03aa41ef 	ori	$r15,$r15,0xa90
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
1c000030:	0380a1ef 	ori	$r15,$r15,0x28
1c000034:	0010358e 	add.w	$r14,$r12,$r13
1c000038:	5fffd1cf 	bne	$r14,$r15,-48(0x3ffd0) # 1c000008 <CopyDataInit>
1c00003c:	1500000c 	lu12i.w	$r12,-524288(0x80000)
1c000040:	0380018c 	ori	$r12,$r12,0x0
1c000044:	1500000d 	lu12i.w	$r13,-524288(0x80000)
1c000048:	038a71ad 	ori	$r13,$r13,0x29c
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
1c001090:	54312c00 	bl	12588(0x312c) # 1c0041bc <TIMER_WAKE_INT>
1c001094:	50003c00 	b	60(0x3c) # 1c0010d0 <exception_exit>

1c001098 <touch_label>:
touch_label():
1c001098:	54317400 	bl	12660(0x3174) # 1c00420c <TOUCH>
1c00109c:	50003400 	b	52(0x34) # 1c0010d0 <exception_exit>

1c0010a0 <uart2_label>:
uart2_label():
1c0010a0:	54320000 	bl	12800(0x3200) # 1c0042a0 <UART2_INT>
1c0010a4:	50002c00 	b	44(0x2c) # 1c0010d0 <exception_exit>

1c0010a8 <bcc_label>:
bcc_label():
1c0010a8:	54323400 	bl	12852(0x3234) # 1c0042dc <BAT_FAIL>
1c0010ac:	50002400 	b	36(0x24) # 1c0010d0 <exception_exit>

1c0010b0 <exint_label>:
exint_label():
1c0010b0:	54305400 	bl	12372(0x3054) # 1c004104 <ext_handler>
1c0010b4:	50001c00 	b	28(0x1c) # 1c0010d0 <exception_exit>

1c0010b8 <timer_label>:
timer_label():
1c0010b8:	54349400 	bl	13460(0x3494) # 1c00454c <TIMER_HANDLER>
1c0010bc:	50001400 	b	20(0x14) # 1c0010d0 <exception_exit>

1c0010c0 <exception_core_check>:
exception_core_check():
1c0010c0:	0341018d 	andi	$r13,$r12,0x40
1c0010c4:	40000da0 	beqz	$r13,12(0xc) # 1c0010d0 <exception_exit>
1c0010c8:	5432ec00 	bl	13036(0x32ec) # 1c0043b4 <intc_handler>
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
1c001290:	28b62084 	ld.w	$r4,$r4,-632(0xd88)
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
1c0013d4:	54171800 	bl	5912(0x1718) # 1c002aec <DisableInt>
1c0013d8:	54167c00 	bl	5756(0x167c) # 1c002a54 <SystemClockInit>
1c0013dc:	57ff53ff 	bl	-176(0xfffff50) # 1c00132c <GPIOInit>
1c0013e0:	541d3800 	bl	7480(0x1d38) # 1c003118 <WdgInit>
1c0013e4:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0013e8:	541c7800 	bl	7288(0x1c78) # 1c003060 <WDG_SetWatchDog>
1c0013ec:	1400038c 	lu12i.w	$r12,28(0x1c)
1c0013f0:	03880184 	ori	$r4,$r12,0x200
1c0013f4:	5410a000 	bl	4256(0x10a0) # 1c002494 <Uart1_init>
1c0013f8:	5418e800 	bl	6376(0x18e8) # 1c002ce0 <ls1x_logo>
1c0013fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c001400:	0380118c 	ori	$r12,$r12,0x4
1c001404:	2880018e 	ld.w	$r14,$r12,0
1c001408:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00140c:	0380118c 	ori	$r12,$r12,0x4
1c001410:	1404000d 	lu12i.w	$r13,8192(0x2000)
1c001414:	001535cd 	or	$r13,$r14,$r13
1c001418:	2980018d 	st.w	$r13,$r12,0
1c00141c:	5416f400 	bl	5876(0x16f4) # 1c002b10 <EnableInt>
1c001420:	54198800 	bl	6536(0x1988) # 1c002da8 <open_count>
1c001424:	02801804 	addi.w	$r4,$r0,6(0x6)
1c001428:	54175000 	bl	5968(0x1750) # 1c002b78 <Wake_Set>
1c00142c:	541cc000 	bl	7360(0x1cc0) # 1c0030ec <WDG_DogFeed>
1c001430:	5417f400 	bl	6132(0x17f4) # 1c002c24 <PMU_GetRstRrc>
1c001434:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c001438:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00143c:	44003180 	bnez	$r12,48(0x30) # 1c00146c <bsp_init+0xa8>
1c001440:	1c000084 	pcaddu12i	$r4,4(0x4)
1c001444:	02b0f084 	addi.w	$r4,$r4,-964(0xc3c)
1c001448:	54074c00 	bl	1868(0x74c) # 1c001b94 <myprintf>
1c00144c:	54184400 	bl	6212(0x1844) # 1c002c90 <PMU_GetBootSpiStatus>
1c001450:	0015008c 	move	$r12,$r4
1c001454:	40001180 	beqz	$r12,16(0x10) # 1c001464 <bsp_init+0xa0>
1c001458:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00145c:	02b0d084 	addi.w	$r4,$r4,-972(0xc34)
1c001460:	54073400 	bl	1844(0x734) # 1c001b94 <myprintf>
1c001464:	543ad400 	bl	15060(0x3ad4) # 1c004f38 <main>
1c001468:	50004000 	b	64(0x40) # 1c0014a8 <bsp_init+0xe4>
1c00146c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001470:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c001474:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c00148c <bsp_init+0xc8>
1c001478:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00147c:	02b08084 	addi.w	$r4,$r4,-992(0xc20)
1c001480:	54071400 	bl	1812(0x714) # 1c001b94 <myprintf>
1c001484:	543ab400 	bl	15028(0x3ab4) # 1c004f38 <main>
1c001488:	50002000 	b	32(0x20) # 1c0014a8 <bsp_init+0xe4>
1c00148c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c001490:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c001494:	5c0015ac 	bne	$r13,$r12,20(0x14) # 1c0014a8 <bsp_init+0xe4>
1c001498:	1c000084 	pcaddu12i	$r4,4(0x4)
1c00149c:	02b04084 	addi.w	$r4,$r4,-1008(0xc10)
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
1c0019ac:	54098c00 	bl	2444(0x98c) # 1c002338 <UART_SendData>
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
1c001c2c:	1c00006c 	pcaddu12i	$r12,3(0x3)
1c001c30:	0292218c 	addi.w	$r12,$r12,1160(0x488)
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

1c001f38 <UART_Init>:
UART_Init():
1c001f38:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c001f3c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c001f40:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c001f44:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c001f48:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c001f4c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c001f50:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c001f54:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001f58:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c001f5c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001f60:	03403d8c 	andi	$r12,$r12,0xf
1c001f64:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001f68:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001f6c:	2a00118c 	ld.bu	$r12,$r12,4(0x4)
1c001f70:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c001f74:	0044918c 	srli.w	$r12,$r12,0x4
1c001f78:	293f8ecc 	st.b	$r12,$r22,-29(0xfe3)
1c001f7c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c001f80:	40000d80 	beqz	$r12,12(0xc) # 1c001f8c <UART_Init+0x54>
1c001f84:	2a3f8ecc 	ld.bu	$r12,$r22,-29(0xfe3)
1c001f88:	44001980 	bnez	$r12,24(0x18) # 1c001fa0 <UART_Init+0x68>
1c001f8c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001f90:	0280e00d 	addi.w	$r13,$r0,56(0x38)
1c001f94:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001f98:	0280200c 	addi.w	$r12,$r0,8(0x8)
1c001f9c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001fa0:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001fa4:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c001fa8:	5c0019ac 	bne	$r13,$r12,24(0x18) # 1c001fc0 <UART_Init+0x88>
1c001fac:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001fb0:	02808c0d 	addi.w	$r13,$r0,35(0x23)
1c001fb4:	2900118d 	st.b	$r13,$r12,4(0x4)
1c001fb8:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c001fbc:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c001fc0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c001fc4:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c001fc8:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c001fcc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001fd0:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c001fd4:	580011ac 	beq	$r13,$r12,16(0x10) # 1c001fe4 <UART_Init+0xac>
1c001fd8:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c001fdc:	157fd10c 	lu12i.w	$r12,-262520(0xbfe88)
1c001fe0:	5c0061ac 	bne	$r13,$r12,96(0x60) # 1c002040 <UART_Init+0x108>
1c001fe4:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001fe8:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c001fec:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c001ff0:	2880018c 	ld.w	$r12,$r12,0
1c001ff4:	002131ae 	div.wu	$r14,$r13,$r12
1c001ff8:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002000 <UART_Init+0xc8>
1c001ffc:	002a0007 	break	0x7
1c002000:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c002004:	002135cc 	div.wu	$r12,$r14,$r13
1c002008:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002010 <UART_Init+0xd8>
1c00200c:	002a0007 	break	0x7
1c002010:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002014:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002018:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c00201c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002020:	2880018e 	ld.w	$r14,$r12,0
1c002024:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002028:	001c31ce 	mul.w	$r14,$r14,$r12
1c00202c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002030:	001c31cc 	mul.w	$r12,$r14,$r12
1c002034:	001131ac 	sub.w	$r12,$r13,$r12
1c002038:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c00203c:	50005400 	b	84(0x54) # 1c002090 <UART_Init+0x158>
1c002040:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002044:	2880018c 	ld.w	$r12,$r12,0
1c002048:	1400010d 	lu12i.w	$r13,8(0x8)
1c00204c:	002131ae 	div.wu	$r14,$r13,$r12
1c002050:	5c000980 	bne	$r12,$r0,8(0x8) # 1c002058 <UART_Init+0x120>
1c002054:	002a0007 	break	0x7
1c002058:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00205c:	002135cc 	div.wu	$r12,$r14,$r13
1c002060:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c002068 <UART_Init+0x130>
1c002064:	002a0007 	break	0x7
1c002068:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c00206c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002070:	2880018d 	ld.w	$r13,$r12,0
1c002074:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002078:	001c31ad 	mul.w	$r13,$r13,$r12
1c00207c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c002080:	001c31ac 	mul.w	$r12,$r13,$r12
1c002084:	1400010d 	lu12i.w	$r13,8(0x8)
1c002088:	001131ac 	sub.w	$r12,$r13,$r12
1c00208c:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002090:	28bf92cd 	ld.w	$r13,$r22,-28(0xfe4)
1c002094:	0283fc0c 	addi.w	$r12,$r0,255(0xff)
1c002098:	001c31ad 	mul.w	$r13,$r13,$r12
1c00209c:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0020a0:	2880018c 	ld.w	$r12,$r12,0
1c0020a4:	002131ae 	div.wu	$r14,$r13,$r12
1c0020a8:	5c000980 	bne	$r12,$r0,8(0x8) # 1c0020b0 <UART_Init+0x178>
1c0020ac:	002a0007 	break	0x7
1c0020b0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0020b4:	002135cc 	div.wu	$r12,$r14,$r13
1c0020b8:	5c0009a0 	bne	$r13,$r0,8(0x8) # 1c0020c0 <UART_Init+0x188>
1c0020bc:	002a0007 	break	0x7
1c0020c0:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0020c4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0020c8:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0020cc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0020d0:	02be000c 	addi.w	$r12,$r0,-128(0xf80)
1c0020d4:	001531ac 	or	$r12,$r13,$r12
1c0020d8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0020dc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0020e0:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0020e4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0020e8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0020ec:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0020f0:	2900018d 	st.b	$r13,$r12,0
1c0020f4:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0020f8:	0044a18c 	srli.w	$r12,$r12,0x8
1c0020fc:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002100:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002104:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002108:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00210c:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002110:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002114:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002118:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00211c:	2900098d 	st.b	$r13,$r12,2(0x2)
1c002120:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002124:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002128:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00212c:	0341fd8c 	andi	$r12,$r12,0x7f
1c002130:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002134:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002138:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c00213c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002140:	29000580 	st.b	$r0,$r12,1(0x1)
1c002144:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002148:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c00214c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002150:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002154:	2a00298c 	ld.bu	$r12,$r12,10(0xa)
1c002158:	001531ac 	or	$r12,$r13,$r12
1c00215c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002160:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002164:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c002168:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00216c:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002170:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002174:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002178:	2a00358c 	ld.bu	$r12,$r12,13(0xd)
1c00217c:	001531ac 	or	$r12,$r13,$r12
1c002180:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002184:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002188:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c00218c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002190:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002194:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002198:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c00219c:	2a00398c 	ld.bu	$r12,$r12,14(0xe)
1c0021a0:	001531ac 	or	$r12,$r13,$r12
1c0021a4:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0021a8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0021ac:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0021b0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0021b4:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0021b8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0021bc:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0021c0:	2a002d8c 	ld.bu	$r12,$r12,11(0xb)
1c0021c4:	001531ac 	or	$r12,$r13,$r12
1c0021c8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0021cc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0021d0:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0021d4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0021d8:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c0021dc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0021e0:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c0021e4:	2a003d8c 	ld.bu	$r12,$r12,15(0xf)
1c0021e8:	001531ac 	or	$r12,$r13,$r12
1c0021ec:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0021f0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0021f4:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c0021f8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0021fc:	2a000d8c 	ld.bu	$r12,$r12,3(0x3)
1c002200:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002204:	28bf62cc 	ld.w	$r12,$r22,-40(0xfd8)
1c002208:	2a00318c 	ld.bu	$r12,$r12,12(0xc)
1c00220c:	001531ac 	or	$r12,$r13,$r12
1c002210:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002214:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002218:	29000d8d 	st.b	$r13,$r12,3(0x3)
1c00221c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002220:	2a00018c 	ld.bu	$r12,$r12,0
1c002224:	03400000 	andi	$r0,$r0,0x0
1c002228:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c00222c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002230:	4c000020 	jirl	$r0,$r1,0

1c002234 <UART_StructInit>:
UART_StructInit():
1c002234:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002238:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00223c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002240:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002244:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002248:	1400038d 	lu12i.w	$r13,28(0x1c)
1c00224c:	038801ad 	ori	$r13,$r13,0x200
1c002250:	2980018d 	st.w	$r13,$r12,0
1c002254:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002258:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c00225c:	038801ad 	ori	$r13,$r13,0x200
1c002260:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002264:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002268:	02800c0d 	addi.w	$r13,$r0,3(0x3)
1c00226c:	2900298d 	st.b	$r13,$r12,10(0xa)
1c002270:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002274:	29002d80 	st.b	$r0,$r12,11(0xb)
1c002278:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00227c:	29003580 	st.b	$r0,$r12,13(0xd)
1c002280:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002284:	29003180 	st.b	$r0,$r12,12(0xc)
1c002288:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00228c:	29003d80 	st.b	$r0,$r12,15(0xf)
1c002290:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002294:	29003980 	st.b	$r0,$r12,14(0xe)
1c002298:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00229c:	29402180 	st.h	$r0,$r12,8(0x8)
1c0022a0:	03400000 	andi	$r0,$r0,0x0
1c0022a4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0022a8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0022ac:	4c000020 	jirl	$r0,$r1,0

1c0022b0 <UART_ITConfig>:
UART_ITConfig():
1c0022b0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0022b4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0022b8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0022bc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0022c0:	001500ac 	move	$r12,$r5
1c0022c4:	29bf92c6 	st.w	$r6,$r22,-28(0xfe4)
1c0022c8:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c0022cc:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c0022d0:	40002980 	beqz	$r12,40(0x28) # 1c0022f8 <UART_ITConfig+0x48>
1c0022d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022d8:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c0022dc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0022e0:	2a3faecc 	ld.bu	$r12,$r22,-21(0xfeb)
1c0022e4:	001531ac 	or	$r12,$r13,$r12
1c0022e8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0022ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022f0:	2900058d 	st.b	$r13,$r12,1(0x1)
1c0022f4:	50003400 	b	52(0x34) # 1c002328 <UART_ITConfig+0x78>
1c0022f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0022fc:	2a00058c 	ld.bu	$r12,$r12,1(0x1)
1c002300:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002304:	00005d8d 	ext.w.b	$r13,$r12
1c002308:	283faecc 	ld.b	$r12,$r22,-21(0xfeb)
1c00230c:	0014300c 	nor	$r12,$r0,$r12
1c002310:	00005d8c 	ext.w.b	$r12,$r12
1c002314:	0014b1ac 	and	$r12,$r13,$r12
1c002318:	00005d8c 	ext.w.b	$r12,$r12
1c00231c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002320:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002324:	2900058d 	st.b	$r13,$r12,1(0x1)
1c002328:	03400000 	andi	$r0,$r0,0x0
1c00232c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002330:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002334:	4c000020 	jirl	$r0,$r1,0

1c002338 <UART_SendData>:
UART_SendData():
1c002338:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00233c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002340:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002344:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002348:	001500ac 	move	$r12,$r5
1c00234c:	293faecc 	st.b	$r12,$r22,-21(0xfeb)
1c002350:	03400000 	andi	$r0,$r0,0x0
1c002354:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002358:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c00235c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002360:	0340818c 	andi	$r12,$r12,0x20
1c002364:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c002354 <UART_SendData+0x1c>
1c002368:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00236c:	2a3faecd 	ld.bu	$r13,$r22,-21(0xfeb)
1c002370:	2900018d 	st.b	$r13,$r12,0
1c002374:	03400000 	andi	$r0,$r0,0x0
1c002378:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00237c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002380:	4c000020 	jirl	$r0,$r1,0

1c002384 <UART_ReceiveData>:
UART_ReceiveData():
1c002384:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002388:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c00238c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002390:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002394:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c002398:	03400000 	andi	$r0,$r0,0x0
1c00239c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0023a0:	2a00158c 	ld.bu	$r12,$r12,5(0x5)
1c0023a4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0023a8:	0340058c 	andi	$r12,$r12,0x1
1c0023ac:	43fff19f 	beqz	$r12,-16(0x7ffff0) # 1c00239c <UART_ReceiveData+0x18>
1c0023b0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0023b4:	2a00018c 	ld.bu	$r12,$r12,0
1c0023b8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0023bc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0023c0:	00150184 	move	$r4,$r12
1c0023c4:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c0023c8:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0023cc:	4c000020 	jirl	$r0,$r1,0

1c0023d0 <Uart0_init>:
Uart0_init():
1c0023d0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0023d4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0023d8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0023dc:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0023e0:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0023e4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0023e8:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0023ec:	57f26bff 	bl	-3480(0xffff268) # 1c001654 <gpio_pin_remap>
1c0023f0:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0023f4:	02801c04 	addi.w	$r4,$r0,7(0x7)
1c0023f8:	57f25fff 	bl	-3492(0xffff25c) # 1c001654 <gpio_pin_remap>
1c0023fc:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002400:	00150184 	move	$r4,$r12
1c002404:	57fe33ff 	bl	-464(0xffffe30) # 1c002234 <UART_StructInit>
1c002408:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c00240c:	28b0118c 	ld.w	$r12,$r12,-1020(0xc04)
1c002410:	2880018c 	ld.w	$r12,$r12,0
1c002414:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002418:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00241c:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c002420:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c002424:	00150185 	move	$r5,$r12
1c002428:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c00242c:	57fb0fff 	bl	-1268(0xffffb0c) # 1c001f38 <UART_Init>
1c002430:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002434:	0380098c 	ori	$r12,$r12,0x2
1c002438:	2a00018c 	ld.bu	$r12,$r12,0
1c00243c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002440:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002444:	0380098c 	ori	$r12,$r12,0x2
1c002448:	038021ad 	ori	$r13,$r13,0x8
1c00244c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002450:	2900018d 	st.b	$r13,$r12,0
1c002454:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002458:	2a00018c 	ld.bu	$r12,$r12,0
1c00245c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c002460:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002464:	038021ad 	ori	$r13,$r13,0x8
1c002468:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c00246c:	2900018d 	st.b	$r13,$r12,0
1c002470:	02800406 	addi.w	$r6,$r0,1(0x1)
1c002474:	02800405 	addi.w	$r5,$r0,1(0x1)
1c002478:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c00247c:	57fe37ff 	bl	-460(0xffffe34) # 1c0022b0 <UART_ITConfig>
1c002480:	03400000 	andi	$r0,$r0,0x0
1c002484:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002488:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c00248c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002490:	4c000020 	jirl	$r0,$r1,0

1c002494 <Uart1_init>:
Uart1_init():
1c002494:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002498:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c00249c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0024a0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0024a4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0024a8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0024ac:	02802004 	addi.w	$r4,$r0,8(0x8)
1c0024b0:	57f1a7ff 	bl	-3676(0xffff1a4) # 1c001654 <gpio_pin_remap>
1c0024b4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0024b8:	02802404 	addi.w	$r4,$r0,9(0x9)
1c0024bc:	57f19bff 	bl	-3688(0xffff198) # 1c001654 <gpio_pin_remap>
1c0024c0:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c0024c4:	00150184 	move	$r4,$r12
1c0024c8:	57fd6fff 	bl	-660(0xffffd6c) # 1c002234 <UART_StructInit>
1c0024cc:	1cc7ffec 	pcaddu12i	$r12,409599(0x63fff)
1c0024d0:	28ad018c 	ld.w	$r12,$r12,-1216(0xb40)
1c0024d4:	2880018c 	ld.w	$r12,$r12,0
1c0024d8:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c0024dc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0024e0:	29bf82cc 	st.w	$r12,$r22,-32(0xfe0)
1c0024e4:	02bf82cc 	addi.w	$r12,$r22,-32(0xfe0)
1c0024e8:	00150185 	move	$r5,$r12
1c0024ec:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c0024f0:	57fa4bff 	bl	-1464(0xffffa48) # 1c001f38 <UART_Init>
1c0024f4:	00150006 	move	$r6,$r0
1c0024f8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0024fc:	157fd104 	lu12i.w	$r4,-262520(0xbfe88)
1c002500:	57fdb3ff 	bl	-592(0xffffdb0) # 1c0022b0 <UART_ITConfig>
1c002504:	03400000 	andi	$r0,$r0,0x0
1c002508:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00250c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002510:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002514:	4c000020 	jirl	$r0,$r1,0

1c002518 <CLOCK_WaitForHSEStartUp>:
CLOCK_WaitForHSEStartUp():
1c002518:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00251c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002520:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002524:	1400006c 	lu12i.w	$r12,3(0x3)
1c002528:	03ba018c 	ori	$r12,$r12,0xe80
1c00252c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002530:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002534:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002538:	2880018d 	ld.w	$r13,$r12,0
1c00253c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002540:	038101ad 	ori	$r13,$r13,0x40
1c002544:	2980018d 	st.w	$r13,$r12,0
1c002548:	03400000 	andi	$r0,$r0,0x0
1c00254c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002550:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002554:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002558:	47fff59f 	bnez	$r12,-12(0x7ffff4) # 1c00254c <CLOCK_WaitForHSEStartUp+0x34>
1c00255c:	50001c00 	b	28(0x1c) # 1c002578 <CLOCK_WaitForHSEStartUp+0x60>
1c002560:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002564:	2880018e 	ld.w	$r14,$r12,0
1c002568:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00256c:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002570:	0014b5cd 	and	$r13,$r14,$r13
1c002574:	2980018d 	st.w	$r13,$r12,0
1c002578:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00257c:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002580:	63ffe180 	blt	$r12,$r0,-32(0x3ffe0) # 1c002560 <CLOCK_WaitForHSEStartUp+0x48>
1c002584:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002588:	2880018d 	ld.w	$r13,$r12,0
1c00258c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002590:	038201ad 	ori	$r13,$r13,0x80
1c002594:	2980018d 	st.w	$r13,$r12,0
1c002598:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00259c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0025a0:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0025a4:	00150184 	move	$r4,$r12
1c0025a8:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0025ac:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0025b0:	4c000020 	jirl	$r0,$r1,0

1c0025b4 <CLOCK_WaitForLSEStartUp>:
CLOCK_WaitForLSEStartUp():
1c0025b4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0025b8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0025bc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0025c0:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c0025c4:	50008800 	b	136(0x88) # 1c00264c <CLOCK_WaitForLSEStartUp+0x98>
1c0025c8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0025cc:	2880018e 	ld.w	$r14,$r12,0
1c0025d0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0025d4:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c0025d8:	0014b5cd 	and	$r13,$r14,$r13
1c0025dc:	2980018d 	st.w	$r13,$r12,0
1c0025e0:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c0025e4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0025e8:	50001400 	b	20(0x14) # 1c0025fc <CLOCK_WaitForLSEStartUp+0x48>
1c0025ec:	03400000 	andi	$r0,$r0,0x0
1c0025f0:	03400000 	andi	$r0,$r0,0x0
1c0025f4:	03400000 	andi	$r0,$r0,0x0
1c0025f8:	03400000 	andi	$r0,$r0,0x0
1c0025fc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002600:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002604:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002608:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0025ec <CLOCK_WaitForLSEStartUp+0x38>
1c00260c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002610:	2880018d 	ld.w	$r13,$r12,0
1c002614:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002618:	038081ad 	ori	$r13,$r13,0x20
1c00261c:	2980018d 	st.w	$r13,$r12,0
1c002620:	0280700c 	addi.w	$r12,$r0,28(0x1c)
1c002624:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002628:	50001400 	b	20(0x14) # 1c00263c <CLOCK_WaitForLSEStartUp+0x88>
1c00262c:	03400000 	andi	$r0,$r0,0x0
1c002630:	03400000 	andi	$r0,$r0,0x0
1c002634:	03400000 	andi	$r0,$r0,0x0
1c002638:	03400000 	andi	$r0,$r0,0x0
1c00263c:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002640:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002644:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c002648:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c00262c <CLOCK_WaitForLSEStartUp+0x78>
1c00264c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002650:	0380118c 	ori	$r12,$r12,0x4
1c002654:	2880018d 	ld.w	$r13,$r12,0
1c002658:	1420000c 	lu12i.w	$r12,65536(0x10000)
1c00265c:	0014b1ac 	and	$r12,$r13,$r12
1c002660:	43ff699f 	beqz	$r12,-152(0x7fff68) # 1c0025c8 <CLOCK_WaitForLSEStartUp+0x14>
1c002664:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002668:	0380118c 	ori	$r12,$r12,0x4
1c00266c:	2880018d 	ld.w	$r13,$r12,0
1c002670:	1440000c 	lu12i.w	$r12,131072(0x20000)
1c002674:	0014b1ac 	and	$r12,$r13,$r12
1c002678:	47ff519f 	bnez	$r12,-176(0x7fff50) # 1c0025c8 <CLOCK_WaitForLSEStartUp+0x14>
1c00267c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002680:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c002684:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c002688:	00150184 	move	$r4,$r12
1c00268c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002690:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002694:	4c000020 	jirl	$r0,$r1,0

1c002698 <CLOCK_HSEConfig>:
CLOCK_HSEConfig():
1c002698:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00269c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0026a0:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0026a4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0026a8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0026ac:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0026b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0026b4:	2880018e 	ld.w	$r14,$r12,0
1c0026b8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0026bc:	0014300d 	nor	$r13,$r0,$r12
1c0026c0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0026c4:	0014b5cd 	and	$r13,$r14,$r13
1c0026c8:	2980018d 	st.w	$r13,$r12,0
1c0026cc:	1400002c 	lu12i.w	$r12,1(0x1)
1c0026d0:	03b4bd8c 	ori	$r12,$r12,0xd2f
1c0026d4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c0026d8:	50001400 	b	20(0x14) # 1c0026ec <CLOCK_HSEConfig+0x54>
1c0026dc:	03400000 	andi	$r0,$r0,0x0
1c0026e0:	03400000 	andi	$r0,$r0,0x0
1c0026e4:	03400000 	andi	$r0,$r0,0x0
1c0026e8:	03400000 	andi	$r0,$r0,0x0
1c0026ec:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c0026f0:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c0026f4:	29bfa2cd 	st.w	$r13,$r22,-24(0xfe8)
1c0026f8:	47ffe59f 	bnez	$r12,-28(0x7fffe4) # 1c0026dc <CLOCK_HSEConfig+0x44>
1c0026fc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002700:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002704:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002714 <CLOCK_HSEConfig+0x7c>
1c002708:	57fe13ff 	bl	-496(0xffffe10) # 1c002518 <CLOCK_WaitForHSEStartUp>
1c00270c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002710:	50002400 	b	36(0x24) # 1c002734 <CLOCK_HSEConfig+0x9c>
1c002714:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002718:	2880018e 	ld.w	$r14,$r12,0
1c00271c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002720:	02bdfc0d 	addi.w	$r13,$r0,-129(0xf7f)
1c002724:	0014b5cd 	and	$r13,$r14,$r13
1c002728:	2980018d 	st.w	$r13,$r12,0
1c00272c:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002730:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002734:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002738:	00150184 	move	$r4,$r12
1c00273c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002740:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002744:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002748:	4c000020 	jirl	$r0,$r1,0

1c00274c <CLOCK_LSEConfig>:
CLOCK_LSEConfig():
1c00274c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002750:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002754:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002758:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c00275c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002760:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002764:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c002768:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c00276c:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c00277c <CLOCK_LSEConfig+0x30>
1c002770:	57fe47ff 	bl	-444(0xffffe44) # 1c0025b4 <CLOCK_WaitForLSEStartUp>
1c002774:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002778:	50002400 	b	36(0x24) # 1c00279c <CLOCK_LSEConfig+0x50>
1c00277c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002780:	2880018e 	ld.w	$r14,$r12,0
1c002784:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002788:	02bf7c0d 	addi.w	$r13,$r0,-33(0xfdf)
1c00278c:	0014b5cd 	and	$r13,$r14,$r13
1c002790:	2980018d 	st.w	$r13,$r12,0
1c002794:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002798:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00279c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027a0:	00150184 	move	$r4,$r12
1c0027a4:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c0027a8:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c0027ac:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c0027b0:	4c000020 	jirl	$r0,$r1,0

1c0027b4 <CLOCK_StructInit>:
CLOCK_StructInit():
1c0027b4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0027b8:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0027bc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0027c0:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c0027c4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027c8:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c0027cc:	2980018d 	st.w	$r13,$r12,0
1c0027d0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027d4:	0282000d 	addi.w	$r13,$r0,128(0x80)
1c0027d8:	2980118d 	st.w	$r13,$r12,4(0x4)
1c0027dc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027e0:	0280800d 	addi.w	$r13,$r0,32(0x20)
1c0027e4:	2980218d 	st.w	$r13,$r12,8(0x8)
1c0027e8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027ec:	29803180 	st.w	$r0,$r12,12(0xc)
1c0027f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027f4:	29804180 	st.w	$r0,$r12,16(0x10)
1c0027f8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0027fc:	29805180 	st.w	$r0,$r12,20(0x14)
1c002800:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002804:	29806180 	st.w	$r0,$r12,24(0x18)
1c002808:	03400000 	andi	$r0,$r0,0x0
1c00280c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002810:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002814:	4c000020 	jirl	$r0,$r1,0

1c002818 <CLOCK_Init>:
CLOCK_Init():
1c002818:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c00281c:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002820:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002824:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002828:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c00282c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002830:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002834:	2880018e 	ld.w	$r14,$r12,0
1c002838:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00283c:	02b3fc0d 	addi.w	$r13,$r0,-769(0xcff)
1c002840:	0014b5cd 	and	$r13,$r14,$r13
1c002844:	2980018d 	st.w	$r13,$r12,0
1c002848:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00284c:	2880018e 	ld.w	$r14,$r12,0
1c002850:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002854:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c002858:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00285c:	001535cd 	or	$r13,$r14,$r13
1c002860:	2980018d 	st.w	$r13,$r12,0
1c002864:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002868:	2880018e 	ld.w	$r14,$r12,0
1c00286c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002870:	02bfbc0d 	addi.w	$r13,$r0,-17(0xfef)
1c002874:	0014b5cd 	and	$r13,$r14,$r13
1c002878:	2980018d 	st.w	$r13,$r12,0
1c00287c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002880:	2880018e 	ld.w	$r14,$r12,0
1c002884:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002888:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c00288c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002890:	001535cd 	or	$r13,$r14,$r13
1c002894:	2980018d 	st.w	$r13,$r12,0
1c002898:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00289c:	2880018e 	ld.w	$r14,$r12,0
1c0028a0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0028a4:	15ffffed 	lu12i.w	$r13,-1(0xfffff)
1c0028a8:	039ffdad 	ori	$r13,$r13,0x7ff
1c0028ac:	0014b5cd 	and	$r13,$r14,$r13
1c0028b0:	2980018d 	st.w	$r13,$r12,0
1c0028b4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0028b8:	2880018e 	ld.w	$r14,$r12,0
1c0028bc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0028c0:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c0028c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0028c8:	001535cd 	or	$r13,$r14,$r13
1c0028cc:	2980018d 	st.w	$r13,$r12,0
1c0028d0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0028d4:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c0028d8:	00150184 	move	$r4,$r12
1c0028dc:	57fdbfff 	bl	-580(0xffffdbc) # 1c002698 <CLOCK_HSEConfig>
1c0028e0:	0015008d 	move	$r13,$r4
1c0028e4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0028e8:	58000dac 	beq	$r13,$r12,12(0xc) # 1c0028f4 <CLOCK_Init+0xdc>
1c0028ec:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0028f0:	50015000 	b	336(0x150) # 1c002a40 <CLOCK_Init+0x228>
1c0028f4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0028f8:	2880218c 	ld.w	$r12,$r12,8(0x8)
1c0028fc:	00150184 	move	$r4,$r12
1c002900:	57fe4fff 	bl	-436(0xffffe4c) # 1c00274c <CLOCK_LSEConfig>
1c002904:	0015008d 	move	$r13,$r4
1c002908:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c00290c:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002918 <CLOCK_Init+0x100>
1c002910:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002914:	50012c00 	b	300(0x12c) # 1c002a40 <CLOCK_Init+0x228>
1c002918:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00291c:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002920:	0282000c 	addi.w	$r12,$r0,128(0x80)
1c002924:	5800fdac 	beq	$r13,$r12,252(0xfc) # 1c002a20 <CLOCK_Init+0x208>
1c002928:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00292c:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c002930:	4000a180 	beqz	$r12,160(0xa0) # 1c0029d0 <CLOCK_Init+0x1b8>
1c002934:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002938:	2880018e 	ld.w	$r14,$r12,0
1c00293c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002940:	15efffed 	lu12i.w	$r13,-32769(0xf7fff)
1c002944:	03bffdad 	ori	$r13,$r13,0xfff
1c002948:	0014b5cd 	and	$r13,$r14,$r13
1c00294c:	2980018d 	st.w	$r13,$r12,0
1c002950:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002954:	2880018e 	ld.w	$r14,$r12,0
1c002958:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00295c:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c002960:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002964:	001535cd 	or	$r13,$r14,$r13
1c002968:	2980018d 	st.w	$r13,$r12,0
1c00296c:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002970:	0386c18c 	ori	$r12,$r12,0x1b0
1c002974:	2880018c 	ld.w	$r12,$r12,0
1c002978:	40004180 	beqz	$r12,64(0x40) # 1c0029b8 <CLOCK_Init+0x1a0>
1c00297c:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c002980:	0386c18c 	ori	$r12,$r12,0x1b0
1c002984:	2880018c 	ld.w	$r12,$r12,0
1c002988:	0040898e 	slli.w	$r14,$r12,0x2
1c00298c:	02800c0c 	addi.w	$r12,$r0,3(0x3)
1c002990:	002031cd 	div.w	$r13,$r14,$r12
1c002994:	5c000980 	bne	$r12,$r0,8(0x8) # 1c00299c <CLOCK_Init+0x184>
1c002998:	002a0007 	break	0x7
1c00299c:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c0029a0:	001c31ac 	mul.w	$r12,$r13,$r12
1c0029a4:	0015018d 	move	$r13,$r12
1c0029a8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0029ac:	0299e18c 	addi.w	$r12,$r12,1656(0x678)
1c0029b0:	2980018d 	st.w	$r13,$r12,0
1c0029b4:	50008000 	b	128(0x80) # 1c002a34 <CLOCK_Init+0x21c>
1c0029b8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0029bc:	0299a18c 	addi.w	$r12,$r12,1640(0x668)
1c0029c0:	1401458d 	lu12i.w	$r13,2604(0xa2c)
1c0029c4:	038fe1ad 	ori	$r13,$r13,0x3f8
1c0029c8:	2980018d 	st.w	$r13,$r12,0
1c0029cc:	50006800 	b	104(0x68) # 1c002a34 <CLOCK_Init+0x21c>
1c0029d0:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c0029d4:	0386c18c 	ori	$r12,$r12,0x1b0
1c0029d8:	2880018c 	ld.w	$r12,$r12,0
1c0029dc:	40002d80 	beqz	$r12,44(0x2c) # 1c002a08 <CLOCK_Init+0x1f0>
1c0029e0:	157e040c 	lu12i.w	$r12,-266208(0xbf020)
1c0029e4:	0386c18c 	ori	$r12,$r12,0x1b0
1c0029e8:	2880018d 	ld.w	$r13,$r12,0
1c0029ec:	028fa00c 	addi.w	$r12,$r0,1000(0x3e8)
1c0029f0:	001c31ac 	mul.w	$r12,$r13,$r12
1c0029f4:	0015018d 	move	$r13,$r12
1c0029f8:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c0029fc:	0298a18c 	addi.w	$r12,$r12,1576(0x628)
1c002a00:	2980018d 	st.w	$r13,$r12,0
1c002a04:	50003000 	b	48(0x30) # 1c002a34 <CLOCK_Init+0x21c>
1c002a08:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002a0c:	0298618c 	addi.w	$r12,$r12,1560(0x618)
1c002a10:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c002a14:	038801ad 	ori	$r13,$r13,0x200
1c002a18:	2980018d 	st.w	$r13,$r12,0
1c002a1c:	50001800 	b	24(0x18) # 1c002a34 <CLOCK_Init+0x21c>
1c002a20:	1cc7ffcc 	pcaddu12i	$r12,409598(0x63ffe)
1c002a24:	0298018c 	addi.w	$r12,$r12,1536(0x600)
1c002a28:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c002a2c:	038801ad 	ori	$r13,$r13,0x200
1c002a30:	2980018d 	st.w	$r13,$r12,0
1c002a34:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002a38:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002a3c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002a40:	00150184 	move	$r4,$r12
1c002a44:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002a48:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002a4c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002a50:	4c000020 	jirl	$r0,$r1,0

1c002a54 <SystemClockInit>:
SystemClockInit():
1c002a54:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002a58:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002a5c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002a60:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002a64:	29bf52c0 	st.w	$r0,$r22,-44(0xfd4)
1c002a68:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c002a6c:	29bf72c0 	st.w	$r0,$r22,-36(0xfdc)
1c002a70:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c002a74:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002a78:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002a7c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002a80:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c002a84:	00150184 	move	$r4,$r12
1c002a88:	57fd2fff 	bl	-724(0xffffd2c) # 1c0027b4 <CLOCK_StructInit>
1c002a8c:	02803c0c 	addi.w	$r12,$r0,15(0xf)
1c002a90:	29bf52cc 	st.w	$r12,$r22,-44(0xfd4)
1c002a94:	29bf62c0 	st.w	$r0,$r22,-40(0xfd8)
1c002a98:	0280800c 	addi.w	$r12,$r0,32(0x20)
1c002a9c:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c002aa0:	29bf82c0 	st.w	$r0,$r22,-32(0xfe0)
1c002aa4:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002aa8:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002aac:	1410000c 	lu12i.w	$r12,32768(0x8000)
1c002ab0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002ab4:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c002ab8:	00150184 	move	$r4,$r12
1c002abc:	57fd5fff 	bl	-676(0xffffd5c) # 1c002818 <CLOCK_Init>
1c002ac0:	0015008d 	move	$r13,$r4
1c002ac4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002ac8:	58000dac 	beq	$r13,$r12,12(0xc) # 1c002ad4 <SystemClockInit+0x80>
1c002acc:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002ad0:	50000800 	b	8(0x8) # 1c002ad8 <SystemClockInit+0x84>
1c002ad4:	0015000c 	move	$r12,$r0
1c002ad8:	00150184 	move	$r4,$r12
1c002adc:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002ae0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002ae4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002ae8:	4c000020 	jirl	$r0,$r1,0

1c002aec <DisableInt>:
DisableInt():
1c002aec:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002af0:	29803076 	st.w	$r22,$r3,12(0xc)
1c002af4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002af8:	0380100c 	ori	$r12,$r0,0x4
1c002afc:	04000180 	csrxchg	$r0,$r12,0x0
1c002b00:	03400000 	andi	$r0,$r0,0x0
1c002b04:	28803076 	ld.w	$r22,$r3,12(0xc)
1c002b08:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002b0c:	4c000020 	jirl	$r0,$r1,0

1c002b10 <EnableInt>:
EnableInt():
1c002b10:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002b14:	29803076 	st.w	$r22,$r3,12(0xc)
1c002b18:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002b1c:	0380100c 	ori	$r12,$r0,0x4
1c002b20:	0400018c 	csrxchg	$r12,$r12,0x0
1c002b24:	03400000 	andi	$r0,$r0,0x0
1c002b28:	28803076 	ld.w	$r22,$r3,12(0xc)
1c002b2c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002b30:	4c000020 	jirl	$r0,$r1,0

1c002b34 <Set_Timer_stop>:
Set_Timer_stop():
1c002b34:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002b38:	29803076 	st.w	$r22,$r3,12(0xc)
1c002b3c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002b40:	04010420 	csrwr	$r0,0x41
1c002b44:	03400000 	andi	$r0,$r0,0x0
1c002b48:	28803076 	ld.w	$r22,$r3,12(0xc)
1c002b4c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002b50:	4c000020 	jirl	$r0,$r1,0

1c002b54 <Set_Timer_clear>:
Set_Timer_clear():
1c002b54:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002b58:	29803076 	st.w	$r22,$r3,12(0xc)
1c002b5c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002b60:	0380040c 	ori	$r12,$r0,0x1
1c002b64:	0401102c 	csrwr	$r12,0x44
1c002b68:	03400000 	andi	$r0,$r0,0x0
1c002b6c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c002b70:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002b74:	4c000020 	jirl	$r0,$r1,0

1c002b78 <Wake_Set>:
Wake_Set():
1c002b78:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002b7c:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002b80:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002b84:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002b88:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002b8c:	40006980 	beqz	$r12,104(0x68) # 1c002bf4 <Wake_Set+0x7c>
1c002b90:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002b94:	0040a18c 	slli.w	$r12,$r12,0x8
1c002b98:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002b9c:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002ba0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002ba4:	0380218c 	ori	$r12,$r12,0x8
1c002ba8:	2880018d 	ld.w	$r13,$r12,0
1c002bac:	14001fec 	lu12i.w	$r12,255(0xff)
1c002bb0:	03bffd8c 	ori	$r12,$r12,0xfff
1c002bb4:	0014b1ac 	and	$r12,$r13,$r12
1c002bb8:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002bbc:	001031ac 	add.w	$r12,$r13,$r12
1c002bc0:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002bc4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bc8:	0380318c 	ori	$r12,$r12,0xc
1c002bcc:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c002bd0:	2980018d 	st.w	$r13,$r12,0
1c002bd4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bd8:	0380118c 	ori	$r12,$r12,0x4
1c002bdc:	2880018d 	ld.w	$r13,$r12,0
1c002be0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002be4:	0380118c 	ori	$r12,$r12,0x4
1c002be8:	038601ad 	ori	$r13,$r13,0x180
1c002bec:	2980018d 	st.w	$r13,$r12,0
1c002bf0:	50002400 	b	36(0x24) # 1c002c14 <Wake_Set+0x9c>
1c002bf4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002bf8:	0380118c 	ori	$r12,$r12,0x4
1c002bfc:	2880018e 	ld.w	$r14,$r12,0
1c002c00:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c04:	0380118c 	ori	$r12,$r12,0x4
1c002c08:	02b9fc0d 	addi.w	$r13,$r0,-385(0xe7f)
1c002c0c:	0014b5cd 	and	$r13,$r14,$r13
1c002c10:	2980018d 	st.w	$r13,$r12,0
1c002c14:	03400000 	andi	$r0,$r0,0x0
1c002c18:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002c1c:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002c20:	4c000020 	jirl	$r0,$r1,0

1c002c24 <PMU_GetRstRrc>:
PMU_GetRstRrc():
1c002c24:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002c28:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002c2c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002c30:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002c34:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c38:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002c3c:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c002c40:	0014b1ac 	and	$r12,$r13,$r12
1c002c44:	44000d80 	bnez	$r12,12(0xc) # 1c002c50 <PMU_GetRstRrc+0x2c>
1c002c48:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002c4c:	50003000 	b	48(0x30) # 1c002c7c <PMU_GetRstRrc+0x58>
1c002c50:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c002c54:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002c58:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c002c5c:	0014b1ad 	and	$r13,$r13,$r12
1c002c60:	1418000c 	lu12i.w	$r12,49152(0xc000)
1c002c64:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c002c74 <PMU_GetRstRrc+0x50>
1c002c68:	0280080c 	addi.w	$r12,$r0,2(0x2)
1c002c6c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002c70:	50000c00 	b	12(0xc) # 1c002c7c <PMU_GetRstRrc+0x58>
1c002c74:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002c78:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002c7c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002c80:	00150184 	move	$r4,$r12
1c002c84:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002c88:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002c8c:	4c000020 	jirl	$r0,$r1,0

1c002c90 <PMU_GetBootSpiStatus>:
PMU_GetBootSpiStatus():
1c002c90:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002c94:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002c98:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002c9c:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002ca0:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002ca4:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c002ca8:	0380198c 	ori	$r12,$r12,0x6
1c002cac:	2a00018c 	ld.bu	$r12,$r12,0
1c002cb0:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c002cb4:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c002cb8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002cbc:	0340058c 	andi	$r12,$r12,0x1
1c002cc0:	40000d80 	beqz	$r12,12(0xc) # 1c002ccc <PMU_GetBootSpiStatus+0x3c>
1c002cc4:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c002cc8:	50000800 	b	8(0x8) # 1c002cd0 <PMU_GetBootSpiStatus+0x40>
1c002ccc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002cd0:	00150184 	move	$r4,$r12
1c002cd4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002cd8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002cdc:	4c000020 	jirl	$r0,$r1,0

1c002ce0 <ls1x_logo>:
ls1x_logo():
1c002ce0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002ce4:	29803061 	st.w	$r1,$r3,12(0xc)
1c002ce8:	29802076 	st.w	$r22,$r3,8(0x8)
1c002cec:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002cf0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c002cf4:	02945084 	addi.w	$r4,$r4,1300(0x514)
1c002cf8:	57ee9fff 	bl	-4452(0xfffee9c) # 1c001b94 <myprintf>
1c002cfc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c002d00:	02943084 	addi.w	$r4,$r4,1292(0x50c)
1c002d04:	57ee93ff 	bl	-4464(0xfffee90) # 1c001b94 <myprintf>
1c002d08:	1c000044 	pcaddu12i	$r4,2(0x2)
1c002d0c:	02959084 	addi.w	$r4,$r4,1380(0x564)
1c002d10:	57ee87ff 	bl	-4476(0xfffee84) # 1c001b94 <myprintf>
1c002d14:	1c000044 	pcaddu12i	$r4,2(0x2)
1c002d18:	0296f084 	addi.w	$r4,$r4,1468(0x5bc)
1c002d1c:	57ee7bff 	bl	-4488(0xfffee78) # 1c001b94 <myprintf>
1c002d20:	1c000044 	pcaddu12i	$r4,2(0x2)
1c002d24:	02985084 	addi.w	$r4,$r4,1556(0x614)
1c002d28:	57ee6fff 	bl	-4500(0xfffee6c) # 1c001b94 <myprintf>
1c002d2c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c002d30:	0299b084 	addi.w	$r4,$r4,1644(0x66c)
1c002d34:	57ee63ff 	bl	-4512(0xfffee60) # 1c001b94 <myprintf>
1c002d38:	1c000044 	pcaddu12i	$r4,2(0x2)
1c002d3c:	029b1084 	addi.w	$r4,$r4,1732(0x6c4)
1c002d40:	57ee57ff 	bl	-4524(0xfffee54) # 1c001b94 <myprintf>
1c002d44:	1c000044 	pcaddu12i	$r4,2(0x2)
1c002d48:	029c7084 	addi.w	$r4,$r4,1820(0x71c)
1c002d4c:	57ee4bff 	bl	-4536(0xfffee48) # 1c001b94 <myprintf>
1c002d50:	1c000044 	pcaddu12i	$r4,2(0x2)
1c002d54:	029dd084 	addi.w	$r4,$r4,1908(0x774)
1c002d58:	57ee3fff 	bl	-4548(0xfffee3c) # 1c001b94 <myprintf>
1c002d5c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c002d60:	029f3084 	addi.w	$r4,$r4,1996(0x7cc)
1c002d64:	57ee33ff 	bl	-4560(0xfffee30) # 1c001b94 <myprintf>
1c002d68:	03400000 	andi	$r0,$r0,0x0
1c002d6c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c002d70:	28802076 	ld.w	$r22,$r3,8(0x8)
1c002d74:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002d78:	4c000020 	jirl	$r0,$r1,0

1c002d7c <get_count>:
get_count():
1c002d7c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002d80:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002d84:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002d88:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002d8c:	0000600c 	rdtimel.w	$r12,$r0
1c002d90:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002d94:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002d98:	00150184 	move	$r4,$r12
1c002d9c:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002da0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002da4:	4c000020 	jirl	$r0,$r1,0

1c002da8 <open_count>:
open_count():
1c002da8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c002dac:	29803076 	st.w	$r22,$r3,12(0xc)
1c002db0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c002db4:	0380400c 	ori	$r12,$r0,0x10
1c002db8:	0402bd80 	csrxchg	$r0,$r12,0xaf
1c002dbc:	03400000 	andi	$r0,$r0,0x0
1c002dc0:	28803076 	ld.w	$r22,$r3,12(0xc)
1c002dc4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c002dc8:	4c000020 	jirl	$r0,$r1,0

1c002dcc <start_count>:
start_count():
1c002dcc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002dd0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002dd4:	29806076 	st.w	$r22,$r3,24(0x18)
1c002dd8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002ddc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002de0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002de4:	29800180 	st.w	$r0,$r12,0
1c002de8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002dec:	29801180 	st.w	$r0,$r12,4(0x4)
1c002df0:	57ff8fff 	bl	-116(0xfffff8c) # 1c002d7c <get_count>
1c002df4:	0015008d 	move	$r13,$r4
1c002df8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002dfc:	2980018d 	st.w	$r13,$r12,0
1c002e00:	03400000 	andi	$r0,$r0,0x0
1c002e04:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002e08:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002e0c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002e10:	4c000020 	jirl	$r0,$r1,0

1c002e14 <stop_count>:
stop_count():
1c002e14:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002e18:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002e1c:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002e20:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002e24:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002e28:	57ff57ff 	bl	-172(0xfffff54) # 1c002d7c <get_count>
1c002e2c:	0015008d 	move	$r13,$r4
1c002e30:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e34:	2980118d 	st.w	$r13,$r12,4(0x4)
1c002e38:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e3c:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002e40:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e44:	2880018c 	ld.w	$r12,$r12,0
1c002e48:	68001dac 	bltu	$r13,$r12,28(0x1c) # 1c002e64 <stop_count+0x50>
1c002e4c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e50:	2880118d 	ld.w	$r13,$r12,4(0x4)
1c002e54:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e58:	2880018c 	ld.w	$r12,$r12,0
1c002e5c:	001131ac 	sub.w	$r12,$r13,$r12
1c002e60:	50002800 	b	40(0x28) # 1c002e88 <stop_count+0x74>
1c002e64:	02bffc0c 	addi.w	$r12,$r0,-1(0xfff)
1c002e68:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002e6c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e70:	2880018c 	ld.w	$r12,$r12,0
1c002e74:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002e78:	001131ad 	sub.w	$r13,$r13,$r12
1c002e7c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002e80:	2880118c 	ld.w	$r12,$r12,4(0x4)
1c002e84:	001031ac 	add.w	$r12,$r13,$r12
1c002e88:	00150184 	move	$r4,$r12
1c002e8c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002e90:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002e94:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002e98:	4c000020 	jirl	$r0,$r1,0

1c002e9c <delay_cycle>:
delay_cycle():
1c002e9c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002ea0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c002ea4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c002ea8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002eac:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002eb0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002eb4:	29bf92c0 	st.w	$r0,$r22,-28(0xfe4)
1c002eb8:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002ebc:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c002ec0:	00150184 	move	$r4,$r12
1c002ec4:	57ff0bff 	bl	-248(0xfffff08) # 1c002dcc <start_count>
1c002ec8:	50001400 	b	20(0x14) # 1c002edc <delay_cycle+0x40>
1c002ecc:	02bf92cc 	addi.w	$r12,$r22,-28(0xfe4)
1c002ed0:	00150184 	move	$r4,$r12
1c002ed4:	57ff43ff 	bl	-192(0xfffff40) # 1c002e14 <stop_count>
1c002ed8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002edc:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002ee0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002ee4:	6bffe9ac 	bltu	$r13,$r12,-24(0x3ffe8) # 1c002ecc <delay_cycle+0x30>
1c002ee8:	03400000 	andi	$r0,$r0,0x0
1c002eec:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c002ef0:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c002ef4:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002ef8:	4c000020 	jirl	$r0,$r1,0

1c002efc <delay_ms>:
delay_ms():
1c002efc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002f00:	29807061 	st.w	$r1,$r3,28(0x1c)
1c002f04:	29806076 	st.w	$r22,$r3,24(0x18)
1c002f08:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002f0c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002f10:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c002f14:	1400002c 	lu12i.w	$r12,1(0x1)
1c002f18:	03bd018c 	ori	$r12,$r12,0xf40
1c002f1c:	001c31ac 	mul.w	$r12,$r13,$r12
1c002f20:	00150184 	move	$r4,$r12
1c002f24:	57ff7bff 	bl	-136(0xfffff78) # 1c002e9c <delay_cycle>
1c002f28:	03400000 	andi	$r0,$r0,0x0
1c002f2c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c002f30:	28806076 	ld.w	$r22,$r3,24(0x18)
1c002f34:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002f38:	4c000020 	jirl	$r0,$r1,0

1c002f3c <memset>:
memset():
1c002f3c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002f40:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002f44:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002f48:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002f4c:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c002f50:	29bf52c6 	st.w	$r6,$r22,-44(0xfd4)
1c002f54:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f58:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c002f5c:	50001c00 	b	28(0x1c) # 1c002f78 <memset+0x3c>
1c002f60:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002f64:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c002f68:	29bfb2cd 	st.w	$r13,$r22,-20(0xfec)
1c002f6c:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c002f70:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c002f74:	2900018d 	st.b	$r13,$r12,0
1c002f78:	28bf52cc 	ld.w	$r12,$r22,-44(0xfd4)
1c002f7c:	02bffd8d 	addi.w	$r13,$r12,-1(0xfff)
1c002f80:	29bf52cd 	st.w	$r13,$r22,-44(0xfd4)
1c002f84:	47ffdd9f 	bnez	$r12,-36(0x7fffdc) # 1c002f60 <memset+0x24>
1c002f88:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c002f8c:	00150184 	move	$r4,$r12
1c002f90:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c002f94:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c002f98:	4c000020 	jirl	$r0,$r1,0

1c002f9c <EXTI_ClearITPendingBit>:
EXTI_ClearITPendingBit():
1c002f9c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c002fa0:	29807076 	st.w	$r22,$r3,28(0x1c)
1c002fa4:	02808076 	addi.w	$r22,$r3,32(0x20)
1c002fa8:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c002fac:	29bfa2c5 	st.w	$r5,$r22,-24(0xfe8)
1c002fb0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002fb4:	2880318d 	ld.w	$r13,$r12,12(0xc)
1c002fb8:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c002fbc:	001531ad 	or	$r13,$r13,$r12
1c002fc0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c002fc4:	2980318d 	st.w	$r13,$r12,12(0xc)
1c002fc8:	03400000 	andi	$r0,$r0,0x0
1c002fcc:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c002fd0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c002fd4:	4c000020 	jirl	$r0,$r1,0

1c002fd8 <WDG_getOddValue>:
WDG_getOddValue():
1c002fd8:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c002fdc:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c002fe0:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c002fe4:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c002fe8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002fec:	29bfa2c0 	st.w	$r0,$r22,-24(0xfe8)
1c002ff0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c002ff4:	50003800 	b	56(0x38) # 1c00302c <WDG_getOddValue+0x54>
1c002ff8:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c002ffc:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003000:	001731ac 	sll.w	$r12,$r13,$r12
1c003004:	0015018d 	move	$r13,$r12
1c003008:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c00300c:	0014b1ac 	and	$r12,$r13,$r12
1c003010:	40001180 	beqz	$r12,16(0x10) # 1c003020 <WDG_getOddValue+0x48>
1c003014:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c003018:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00301c:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c003020:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003024:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c003028:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00302c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003030:	0280380c 	addi.w	$r12,$r0,14(0xe)
1c003034:	67ffc58d 	bge	$r12,$r13,-60(0x3ffc4) # 1c002ff8 <WDG_getOddValue+0x20>
1c003038:	28bfa2cc 	ld.w	$r12,$r22,-24(0xfe8)
1c00303c:	0340058c 	andi	$r12,$r12,0x1
1c003040:	44000d80 	bnez	$r12,12(0xc) # 1c00304c <WDG_getOddValue+0x74>
1c003044:	1400010c 	lu12i.w	$r12,8(0x8)
1c003048:	50000800 	b	8(0x8) # 1c003050 <WDG_getOddValue+0x78>
1c00304c:	0015000c 	move	$r12,$r0
1c003050:	00150184 	move	$r4,$r12
1c003054:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003058:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c00305c:	4c000020 	jirl	$r0,$r1,0

1c003060 <WDG_SetWatchDog>:
WDG_SetWatchDog():
1c003060:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003064:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003068:	29806076 	st.w	$r22,$r3,24(0x18)
1c00306c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003070:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003074:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003078:	140000ec 	lu12i.w	$r12,7(0x7)
1c00307c:	03bffd8c 	ori	$r12,$r12,0xfff
1c003080:	0014b1ac 	and	$r12,$r13,$r12
1c003084:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003088:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c00308c:	57ff4fff 	bl	-180(0xfffff4c) # 1c002fd8 <WDG_getOddValue>
1c003090:	0015008c 	move	$r12,$r4
1c003094:	0015018d 	move	$r13,$r12
1c003098:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00309c:	0015358c 	or	$r12,$r12,$r13
1c0030a0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0030a4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0030a8:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c0030ac:	0396a9ad 	ori	$r13,$r13,0x5aa
1c0030b0:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c0030b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0030b8:	0014300c 	nor	$r12,$r0,$r12
1c0030bc:	0040c18c 	slli.w	$r12,$r12,0x10
1c0030c0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0030c4:	001531ac 	or	$r12,$r13,$r12
1c0030c8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0030cc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0030d0:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0030d4:	2980c18d 	st.w	$r13,$r12,48(0x30)
1c0030d8:	03400000 	andi	$r0,$r0,0x0
1c0030dc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0030e0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0030e4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0030e8:	4c000020 	jirl	$r0,$r1,0

1c0030ec <WDG_DogFeed>:
WDG_DogFeed():
1c0030ec:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0030f0:	29803076 	st.w	$r22,$r3,12(0xc)
1c0030f4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0030f8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0030fc:	154ab4ad 	lu12i.w	$r13,-371291(0xa55a5)
1c003100:	0396a9ad 	ori	$r13,$r13,0x5aa
1c003104:	2980d18d 	st.w	$r13,$r12,52(0x34)
1c003108:	03400000 	andi	$r0,$r0,0x0
1c00310c:	28803076 	ld.w	$r22,$r3,12(0xc)
1c003110:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003114:	4c000020 	jirl	$r0,$r1,0

1c003118 <WdgInit>:
WdgInit():
1c003118:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00311c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003120:	29802076 	st.w	$r22,$r3,8(0x8)
1c003124:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003128:	150000ec 	lu12i.w	$r12,-524281(0x80007)
1c00312c:	03bffd84 	ori	$r4,$r12,0xfff
1c003130:	57ff33ff 	bl	-208(0xfffff30) # 1c003060 <WDG_SetWatchDog>
1c003134:	03400000 	andi	$r0,$r0,0x0
1c003138:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00313c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003140:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003144:	4c000020 	jirl	$r0,$r1,0

1c003148 <TOUCH_GetBaseVal>:
TOUCH_GetBaseVal():
1c003148:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00314c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003150:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003154:	0015008c 	move	$r12,$r4
1c003158:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c00315c:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c003160:	0040898c 	slli.w	$r12,$r12,0x2
1c003164:	0015018d 	move	$r13,$r12
1c003168:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c00316c:	0381018c 	ori	$r12,$r12,0x40
1c003170:	001031ac 	add.w	$r12,$r13,$r12
1c003174:	2880018c 	ld.w	$r12,$r12,0
1c003178:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c00317c:	037ffd8c 	andi	$r12,$r12,0xfff
1c003180:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003184:	00150184 	move	$r4,$r12
1c003188:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00318c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003190:	4c000020 	jirl	$r0,$r1,0

1c003194 <TOUCH_GetCountValue>:
TOUCH_GetCountValue():
1c003194:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003198:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00319c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0031a0:	0015008c 	move	$r12,$r4
1c0031a4:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c0031a8:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c0031ac:	0040898c 	slli.w	$r12,$r12,0x2
1c0031b0:	0015018d 	move	$r13,$r12
1c0031b4:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c0031b8:	0382018c 	ori	$r12,$r12,0x80
1c0031bc:	001031ac 	add.w	$r12,$r13,$r12
1c0031c0:	2880018c 	ld.w	$r12,$r12,0
1c0031c4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0031c8:	037ffd8c 	andi	$r12,$r12,0xfff
1c0031cc:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c0031d0:	00150184 	move	$r4,$r12
1c0031d4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0031d8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0031dc:	4c000020 	jirl	$r0,$r1,0

1c0031e0 <Printf_KeyChannel>:
Printf_KeyChannel():
1c0031e0:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0031e4:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0031e8:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0031ec:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0031f0:	0015008c 	move	$r12,$r4
1c0031f4:	297f7acc 	st.h	$r12,$r22,-34(0xfde)
1c0031f8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0031fc:	50003400 	b	52(0x34) # 1c003230 <Printf_KeyChannel+0x50>
1c003200:	2a7f7acd 	ld.hu	$r13,$r22,-34(0xfde)
1c003204:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003208:	001831ac 	sra.w	$r12,$r13,$r12
1c00320c:	0340058c 	andi	$r12,$r12,0x1
1c003210:	40001580 	beqz	$r12,20(0x14) # 1c003224 <Printf_KeyChannel+0x44>
1c003214:	28bfb2c5 	ld.w	$r5,$r22,-20(0xfec)
1c003218:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00321c:	028dd084 	addi.w	$r4,$r4,884(0x374)
1c003220:	57e977ff 	bl	-5772(0xfffe974) # 1c001b94 <myprintf>
1c003224:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003228:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00322c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003230:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003234:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003238:	6fffc98d 	bgeu	$r12,$r13,-56(0x3ffc8) # 1c003200 <Printf_KeyChannel+0x20>
1c00323c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003240:	028d5084 	addi.w	$r4,$r4,852(0x354)
1c003244:	57e953ff 	bl	-5808(0xfffe950) # 1c001b94 <myprintf>
1c003248:	03400000 	andi	$r0,$r0,0x0
1c00324c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c003250:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c003254:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003258:	4c000020 	jirl	$r0,$r1,0

1c00325c <Printf_KeyType>:
Printf_KeyType():
1c00325c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003260:	29807061 	st.w	$r1,$r3,28(0x1c)
1c003264:	29806076 	st.w	$r22,$r3,24(0x18)
1c003268:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00326c:	0015008c 	move	$r12,$r4
1c003270:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c003274:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003278:	0340058c 	andi	$r12,$r12,0x1
1c00327c:	40001180 	beqz	$r12,16(0x10) # 1c00328c <Printf_KeyType+0x30>
1c003280:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003284:	028c5084 	addi.w	$r4,$r4,788(0x314)
1c003288:	57e90fff 	bl	-5876(0xfffe90c) # 1c001b94 <myprintf>
1c00328c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c003290:	0340098c 	andi	$r12,$r12,0x2
1c003294:	40001180 	beqz	$r12,16(0x10) # 1c0032a4 <Printf_KeyType+0x48>
1c003298:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00329c:	028c1084 	addi.w	$r4,$r4,772(0x304)
1c0032a0:	57e8f7ff 	bl	-5900(0xfffe8f4) # 1c001b94 <myprintf>
1c0032a4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0032a8:	0340118c 	andi	$r12,$r12,0x4
1c0032ac:	40001180 	beqz	$r12,16(0x10) # 1c0032bc <Printf_KeyType+0x60>
1c0032b0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0032b4:	028bd084 	addi.w	$r4,$r4,756(0x2f4)
1c0032b8:	57e8dfff 	bl	-5924(0xfffe8dc) # 1c001b94 <myprintf>
1c0032bc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0032c0:	0340218c 	andi	$r12,$r12,0x8
1c0032c4:	40001180 	beqz	$r12,16(0x10) # 1c0032d4 <Printf_KeyType+0x78>
1c0032c8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0032cc:	028ba084 	addi.w	$r4,$r4,744(0x2e8)
1c0032d0:	57e8c7ff 	bl	-5948(0xfffe8c4) # 1c001b94 <myprintf>
1c0032d4:	03400000 	andi	$r0,$r0,0x0
1c0032d8:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0032dc:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0032e0:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0032e4:	4c000020 	jirl	$r0,$r1,0

1c0032e8 <Printf_KeyVal>:
Printf_KeyVal():
1c0032e8:	02bd4063 	addi.w	$r3,$r3,-176(0xf50)
1c0032ec:	2982b061 	st.w	$r1,$r3,172(0xac)
1c0032f0:	2982a076 	st.w	$r22,$r3,168(0xa8)
1c0032f4:	0282c076 	addi.w	$r22,$r3,176(0xb0)
1c0032f8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0032fc:	5000d800 	b	216(0xd8) # 1c0033d4 <Printf_KeyVal+0xec>
1c003300:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003304:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003308:	00150184 	move	$r4,$r12
1c00330c:	57fe8bff 	bl	-376(0xffffe88) # 1c003194 <TOUCH_GetCountValue>
1c003310:	0015008c 	move	$r12,$r4
1c003314:	0015018d 	move	$r13,$r12
1c003318:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00331c:	0040898c 	slli.w	$r12,$r12,0x2
1c003320:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003324:	001031cc 	add.w	$r12,$r14,$r12
1c003328:	29bdb18d 	st.w	$r13,$r12,-148(0xf6c)
1c00332c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003330:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c003334:	00150184 	move	$r4,$r12
1c003338:	57fe13ff 	bl	-496(0xffffe10) # 1c003148 <TOUCH_GetBaseVal>
1c00333c:	0015008c 	move	$r12,$r4
1c003340:	0015018d 	move	$r13,$r12
1c003344:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003348:	0040898c 	slli.w	$r12,$r12,0x2
1c00334c:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003350:	001031cc 	add.w	$r12,$r14,$r12
1c003354:	29be718d 	st.w	$r13,$r12,-100(0xf9c)
1c003358:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00335c:	0040898c 	slli.w	$r12,$r12,0x2
1c003360:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c003364:	001031ac 	add.w	$r12,$r13,$r12
1c003368:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c00336c:	40004980 	beqz	$r12,72(0x48) # 1c0033b4 <Printf_KeyVal+0xcc>
1c003370:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003374:	0040898c 	slli.w	$r12,$r12,0x2
1c003378:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c00337c:	001031ac 	add.w	$r12,$r13,$r12
1c003380:	28be718d 	ld.w	$r13,$r12,-100(0xf9c)
1c003384:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003388:	0040898c 	slli.w	$r12,$r12,0x2
1c00338c:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c003390:	001031cc 	add.w	$r12,$r14,$r12
1c003394:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003398:	001131ad 	sub.w	$r13,$r13,$r12
1c00339c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0033a0:	0040898c 	slli.w	$r12,$r12,0x2
1c0033a4:	02bfc2ce 	addi.w	$r14,$r22,-16(0xff0)
1c0033a8:	001031cc 	add.w	$r12,$r14,$r12
1c0033ac:	29bf318d 	st.w	$r13,$r12,-52(0xfcc)
1c0033b0:	50001800 	b	24(0x18) # 1c0033c8 <Printf_KeyVal+0xe0>
1c0033b4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0033b8:	0040898c 	slli.w	$r12,$r12,0x2
1c0033bc:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0033c0:	001031ac 	add.w	$r12,$r13,$r12
1c0033c4:	29bf3180 	st.w	$r0,$r12,-52(0xfcc)
1c0033c8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0033cc:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c0033d0:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0033d4:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0033d8:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c0033dc:	67ff258d 	bge	$r12,$r13,-220(0x3ff24) # 1c003300 <Printf_KeyVal+0x18>
1c0033e0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0033e4:	02877084 	addi.w	$r4,$r4,476(0x1dc)
1c0033e8:	57e7afff 	bl	-6228(0xfffe7ac) # 1c001b94 <myprintf>
1c0033ec:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0033f0:	0287e084 	addi.w	$r4,$r4,504(0x1f8)
1c0033f4:	57e7a3ff 	bl	-6240(0xfffe7a0) # 1c001b94 <myprintf>
1c0033f8:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0033fc:	50003400 	b	52(0x34) # 1c003430 <Printf_KeyVal+0x148>
1c003400:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003404:	0040898c 	slli.w	$r12,$r12,0x2
1c003408:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c00340c:	001031ac 	add.w	$r12,$r13,$r12
1c003410:	28bdb18c 	ld.w	$r12,$r12,-148(0xf6c)
1c003414:	00150185 	move	$r5,$r12
1c003418:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00341c:	02875084 	addi.w	$r4,$r4,468(0x1d4)
1c003420:	57e777ff 	bl	-6284(0xfffe774) # 1c001b94 <myprintf>
1c003424:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003428:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00342c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003430:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003434:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003438:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003400 <Printf_KeyVal+0x118>
1c00343c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003440:	0286e084 	addi.w	$r4,$r4,440(0x1b8)
1c003444:	57e753ff 	bl	-6320(0xfffe750) # 1c001b94 <myprintf>
1c003448:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00344c:	50003400 	b	52(0x34) # 1c003480 <Printf_KeyVal+0x198>
1c003450:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003454:	0040898c 	slli.w	$r12,$r12,0x2
1c003458:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c00345c:	001031ac 	add.w	$r12,$r13,$r12
1c003460:	28be718c 	ld.w	$r12,$r12,-100(0xf9c)
1c003464:	00150185 	move	$r5,$r12
1c003468:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00346c:	02861084 	addi.w	$r4,$r4,388(0x184)
1c003470:	57e727ff 	bl	-6364(0xfffe724) # 1c001b94 <myprintf>
1c003474:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003478:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00347c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003480:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003484:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003488:	67ffc98d 	bge	$r12,$r13,-56(0x3ffc8) # 1c003450 <Printf_KeyVal+0x168>
1c00348c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003490:	0285d084 	addi.w	$r4,$r4,372(0x174)
1c003494:	57e703ff 	bl	-6400(0xfffe700) # 1c001b94 <myprintf>
1c003498:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00349c:	50007400 	b	116(0x74) # 1c003510 <Printf_KeyVal+0x228>
1c0034a0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034a4:	0040898c 	slli.w	$r12,$r12,0x2
1c0034a8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0034ac:	001031ac 	add.w	$r12,$r13,$r12
1c0034b0:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c0034b4:	64002d80 	bge	$r12,$r0,44(0x2c) # 1c0034e0 <Printf_KeyVal+0x1f8>
1c0034b8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034bc:	0040898c 	slli.w	$r12,$r12,0x2
1c0034c0:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0034c4:	001031ac 	add.w	$r12,$r13,$r12
1c0034c8:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c0034cc:	00150185 	move	$r5,$r12
1c0034d0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0034d4:	0284f084 	addi.w	$r4,$r4,316(0x13c)
1c0034d8:	57e6bfff 	bl	-6468(0xfffe6bc) # 1c001b94 <myprintf>
1c0034dc:	50002800 	b	40(0x28) # 1c003504 <Printf_KeyVal+0x21c>
1c0034e0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0034e4:	0040898c 	slli.w	$r12,$r12,0x2
1c0034e8:	02bfc2cd 	addi.w	$r13,$r22,-16(0xff0)
1c0034ec:	001031ac 	add.w	$r12,$r13,$r12
1c0034f0:	28bf318c 	ld.w	$r12,$r12,-52(0xfcc)
1c0034f4:	00150185 	move	$r5,$r12
1c0034f8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0034fc:	02847084 	addi.w	$r4,$r4,284(0x11c)
1c003500:	57e697ff 	bl	-6508(0xfffe694) # 1c001b94 <myprintf>
1c003504:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003508:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00350c:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c003510:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003514:	02802c0c 	addi.w	$r12,$r0,11(0xb)
1c003518:	67ff898d 	bge	$r12,$r13,-120(0x3ff88) # 1c0034a0 <Printf_KeyVal+0x1b8>
1c00351c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003520:	0281d084 	addi.w	$r4,$r4,116(0x74)
1c003524:	57e673ff 	bl	-6544(0xfffe670) # 1c001b94 <myprintf>
1c003528:	03400000 	andi	$r0,$r0,0x0
1c00352c:	2882b061 	ld.w	$r1,$r3,172(0xac)
1c003530:	2882a076 	ld.w	$r22,$r3,168(0xa8)
1c003534:	0282c063 	addi.w	$r3,$r3,176(0xb0)
1c003538:	4c000020 	jirl	$r0,$r1,0

1c00353c <TIM_Init>:
TIM_Init():
1c00353c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003540:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003544:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003548:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c00354c:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003550:	29800180 	st.w	$r0,$r12,0
1c003554:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003558:	0380118c 	ori	$r12,$r12,0x4
1c00355c:	29800180 	st.w	$r0,$r12,0
1c003560:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003564:	0380218c 	ori	$r12,$r12,0x8
1c003568:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c00356c:	288011ad 	ld.w	$r13,$r13,4(0x4)
1c003570:	2980018d 	st.w	$r13,$r12,0
1c003574:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003578:	0380318c 	ori	$r12,$r12,0xc
1c00357c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003580:	288021ad 	ld.w	$r13,$r13,8(0x8)
1c003584:	2980018d 	st.w	$r13,$r12,0
1c003588:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c00358c:	2880018e 	ld.w	$r14,$r12,0
1c003590:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003594:	2880518d 	ld.w	$r13,$r12,20(0x14)
1c003598:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c00359c:	001535cd 	or	$r13,$r14,$r13
1c0035a0:	2980018d 	st.w	$r13,$r12,0
1c0035a4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0035a8:	2880518c 	ld.w	$r12,$r12,20(0x14)
1c0035ac:	40002180 	beqz	$r12,32(0x20) # 1c0035cc <TIM_Init+0x90>
1c0035b0:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0035b4:	2a00018c 	ld.bu	$r12,$r12,0
1c0035b8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0035bc:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0035c0:	038005ad 	ori	$r13,$r13,0x1
1c0035c4:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c0035c8:	2900018d 	st.b	$r13,$r12,0
1c0035cc:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0035d0:	2880018e 	ld.w	$r14,$r12,0
1c0035d4:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0035d8:	2880418d 	ld.w	$r13,$r12,16(0x10)
1c0035dc:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0035e0:	001535cd 	or	$r13,$r14,$r13
1c0035e4:	2980018d 	st.w	$r13,$r12,0
1c0035e8:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0035ec:	2880018e 	ld.w	$r14,$r12,0
1c0035f0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0035f4:	2880618d 	ld.w	$r13,$r12,24(0x18)
1c0035f8:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0035fc:	001535cd 	or	$r13,$r14,$r13
1c003600:	2980018d 	st.w	$r13,$r12,0
1c003604:	03400000 	andi	$r0,$r0,0x0
1c003608:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00360c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003610:	4c000020 	jirl	$r0,$r1,0

1c003614 <TIM_StructInit>:
TIM_StructInit():
1c003614:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c003618:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00361c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003620:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003624:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003628:	1400f42d 	lu12i.w	$r13,1953(0x7a1)
1c00362c:	038801ad 	ori	$r13,$r13,0x200
1c003630:	2980018d 	st.w	$r13,$r12,0
1c003634:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003638:	0280040d 	addi.w	$r13,$r0,1(0x1)
1c00363c:	2980618d 	st.w	$r13,$r12,24(0x18)
1c003640:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003644:	0280080d 	addi.w	$r13,$r0,2(0x2)
1c003648:	2980518d 	st.w	$r13,$r12,20(0x14)
1c00364c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003650:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c003654:	2980418d 	st.w	$r13,$r12,16(0x10)
1c003658:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00365c:	1400002d 	lu12i.w	$r13,1(0x1)
1c003660:	03bcfdad 	ori	$r13,$r13,0xf3f
1c003664:	2980118d 	st.w	$r13,$r12,4(0x4)
1c003668:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00366c:	1400026d 	lu12i.w	$r13,19(0x13)
1c003670:	03a201ad 	ori	$r13,$r13,0x880
1c003674:	2980218d 	st.w	$r13,$r12,8(0x8)
1c003678:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c00367c:	29803180 	st.w	$r0,$r12,12(0xc)
1c003680:	03400000 	andi	$r0,$r0,0x0
1c003684:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c003688:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00368c:	4c000020 	jirl	$r0,$r1,0

1c003690 <timer_init>:
timer_init():
1c003690:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c003694:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c003698:	2980e076 	st.w	$r22,$r3,56(0x38)
1c00369c:	02810076 	addi.w	$r22,$r3,64(0x40)
1c0036a0:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c0036a4:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c0036a8:	00150184 	move	$r4,$r12
1c0036ac:	57ff6bff 	bl	-152(0xfffff68) # 1c003614 <TIM_StructInit>
1c0036b0:	28bf32cc 	ld.w	$r12,$r22,-52(0xfcc)
1c0036b4:	00408d8c 	slli.w	$r12,$r12,0x3
1c0036b8:	29bf72cc 	st.w	$r12,$r22,-36(0xfdc)
1c0036bc:	02bf52cc 	addi.w	$r12,$r22,-44(0xfd4)
1c0036c0:	00150184 	move	$r4,$r12
1c0036c4:	57fe7bff 	bl	-392(0xffffe78) # 1c00353c <TIM_Init>
1c0036c8:	03400000 	andi	$r0,$r0,0x0
1c0036cc:	2880f061 	ld.w	$r1,$r3,60(0x3c)
1c0036d0:	2880e076 	ld.w	$r22,$r3,56(0x38)
1c0036d4:	02810063 	addi.w	$r3,$r3,64(0x40)
1c0036d8:	4c000020 	jirl	$r0,$r1,0

1c0036dc <TIM_GetITStatus>:
TIM_GetITStatus():
1c0036dc:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0036e0:	2980b076 	st.w	$r22,$r3,44(0x2c)
1c0036e4:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0036e8:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c0036ec:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c0036f0:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c0036f4:	2880018d 	ld.w	$r13,$r12,0
1c0036f8:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c0036fc:	0014b1ac 	and	$r12,$r13,$r12
1c003700:	40001180 	beqz	$r12,16(0x10) # 1c003710 <TIM_GetITStatus+0x34>
1c003704:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c003708:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00370c:	50000800 	b	8(0x8) # 1c003714 <TIM_GetITStatus+0x38>
1c003710:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c003714:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c003718:	00150184 	move	$r4,$r12
1c00371c:	2880b076 	ld.w	$r22,$r3,44(0x2c)
1c003720:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c003724:	4c000020 	jirl	$r0,$r1,0

1c003728 <TIM_ClearIT>:
TIM_ClearIT():
1c003728:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00372c:	29807076 	st.w	$r22,$r3,28(0x1c)
1c003730:	02808076 	addi.w	$r22,$r3,32(0x20)
1c003734:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c003738:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c00373c:	2880018e 	ld.w	$r14,$r12,0
1c003740:	157fda0c 	lu12i.w	$r12,-262448(0xbfed0)
1c003744:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c003748:	001535cd 	or	$r13,$r14,$r13
1c00374c:	2980018d 	st.w	$r13,$r12,0
1c003750:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003754:	03800d8c 	ori	$r12,$r12,0x3
1c003758:	2a00018c 	ld.bu	$r12,$r12,0
1c00375c:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c003760:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c003764:	03800d8c 	ori	$r12,$r12,0x3
1c003768:	038005ad 	ori	$r13,$r13,0x1
1c00376c:	006781ad 	bstrpick.w	$r13,$r13,0x7,0x0
1c003770:	2900018d 	st.b	$r13,$r12,0
1c003774:	03400000 	andi	$r0,$r0,0x0
1c003778:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c00377c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c003780:	4c000020 	jirl	$r0,$r1,0

1c003784 <exti_gpioa0_irq_handler>:
exti_gpioa0_irq_handler():
1c003784:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003788:	29803061 	st.w	$r1,$r3,12(0xc)
1c00378c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003790:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003794:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003798:	02bff0c6 	addi.w	$r6,$r6,-4(0xffc)
1c00379c:	02804805 	addi.w	$r5,$r0,18(0x12)
1c0037a0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0037a4:	02b9f084 	addi.w	$r4,$r4,-388(0xe7c)
1c0037a8:	57e3efff 	bl	-7188(0xfffe3ec) # 1c001b94 <myprintf>
1c0037ac:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0037b0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0037b4:	03808184 	ori	$r4,$r12,0x20
1c0037b8:	57f7e7ff 	bl	-2076(0xffff7e4) # 1c002f9c <EXTI_ClearITPendingBit>
1c0037bc:	03400000 	andi	$r0,$r0,0x0
1c0037c0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0037c4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0037c8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0037cc:	4c000020 	jirl	$r0,$r1,0

1c0037d0 <exti_gpioa1_irq_handler>:
exti_gpioa1_irq_handler():
1c0037d0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0037d4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0037d8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0037dc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0037e0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0037e4:	02bf20c6 	addi.w	$r6,$r6,-56(0xfc8)
1c0037e8:	02805c05 	addi.w	$r5,$r0,23(0x17)
1c0037ec:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0037f0:	02b8c084 	addi.w	$r4,$r4,-464(0xe30)
1c0037f4:	57e3a3ff 	bl	-7264(0xfffe3a0) # 1c001b94 <myprintf>
1c0037f8:	02800805 	addi.w	$r5,$r0,2(0x2)
1c0037fc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003800:	03808184 	ori	$r4,$r12,0x20
1c003804:	57f79bff 	bl	-2152(0xffff798) # 1c002f9c <EXTI_ClearITPendingBit>
1c003808:	03400000 	andi	$r0,$r0,0x0
1c00380c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003810:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003814:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003818:	4c000020 	jirl	$r0,$r1,0

1c00381c <exti_gpioa2_irq_handler>:
exti_gpioa2_irq_handler():
1c00381c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003820:	29803061 	st.w	$r1,$r3,12(0xc)
1c003824:	29802076 	st.w	$r22,$r3,8(0x8)
1c003828:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00382c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003830:	02be50c6 	addi.w	$r6,$r6,-108(0xf94)
1c003834:	02807005 	addi.w	$r5,$r0,28(0x1c)
1c003838:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00383c:	02b79084 	addi.w	$r4,$r4,-540(0xde4)
1c003840:	57e357ff 	bl	-7340(0xfffe354) # 1c001b94 <myprintf>
1c003844:	02801005 	addi.w	$r5,$r0,4(0x4)
1c003848:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00384c:	03808184 	ori	$r4,$r12,0x20
1c003850:	57f74fff 	bl	-2228(0xffff74c) # 1c002f9c <EXTI_ClearITPendingBit>
1c003854:	03400000 	andi	$r0,$r0,0x0
1c003858:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00385c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003860:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003864:	4c000020 	jirl	$r0,$r1,0

1c003868 <exti_gpioa3_irq_handler>:
exti_gpioa3_irq_handler():
1c003868:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00386c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003870:	29802076 	st.w	$r22,$r3,8(0x8)
1c003874:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003878:	1c000046 	pcaddu12i	$r6,2(0x2)
1c00387c:	02bd80c6 	addi.w	$r6,$r6,-160(0xf60)
1c003880:	02808405 	addi.w	$r5,$r0,33(0x21)
1c003884:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003888:	02b66084 	addi.w	$r4,$r4,-616(0xd98)
1c00388c:	57e30bff 	bl	-7416(0xfffe308) # 1c001b94 <myprintf>
1c003890:	02802005 	addi.w	$r5,$r0,8(0x8)
1c003894:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003898:	03808184 	ori	$r4,$r12,0x20
1c00389c:	57f703ff 	bl	-2304(0xffff700) # 1c002f9c <EXTI_ClearITPendingBit>
1c0038a0:	03400000 	andi	$r0,$r0,0x0
1c0038a4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0038a8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0038ac:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0038b0:	4c000020 	jirl	$r0,$r1,0

1c0038b4 <exti_gpioa4_irq_handler>:
exti_gpioa4_irq_handler():
1c0038b4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0038b8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0038bc:	29802076 	st.w	$r22,$r3,8(0x8)
1c0038c0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0038c4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0038c8:	02bcb0c6 	addi.w	$r6,$r6,-212(0xf2c)
1c0038cc:	02809805 	addi.w	$r5,$r0,38(0x26)
1c0038d0:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0038d4:	02b53084 	addi.w	$r4,$r4,-692(0xd4c)
1c0038d8:	57e2bfff 	bl	-7492(0xfffe2bc) # 1c001b94 <myprintf>
1c0038dc:	02804005 	addi.w	$r5,$r0,16(0x10)
1c0038e0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0038e4:	03808184 	ori	$r4,$r12,0x20
1c0038e8:	57f6b7ff 	bl	-2380(0xffff6b4) # 1c002f9c <EXTI_ClearITPendingBit>
1c0038ec:	03400000 	andi	$r0,$r0,0x0
1c0038f0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0038f4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0038f8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0038fc:	4c000020 	jirl	$r0,$r1,0

1c003900 <exti_gpioa5_irq_handler>:
exti_gpioa5_irq_handler():
1c003900:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003904:	29803061 	st.w	$r1,$r3,12(0xc)
1c003908:	29802076 	st.w	$r22,$r3,8(0x8)
1c00390c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003910:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003914:	02bbe0c6 	addi.w	$r6,$r6,-264(0xef8)
1c003918:	0280ac05 	addi.w	$r5,$r0,43(0x2b)
1c00391c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003920:	02b40084 	addi.w	$r4,$r4,-768(0xd00)
1c003924:	57e273ff 	bl	-7568(0xfffe270) # 1c001b94 <myprintf>
1c003928:	02808005 	addi.w	$r5,$r0,32(0x20)
1c00392c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003930:	03808184 	ori	$r4,$r12,0x20
1c003934:	57f66bff 	bl	-2456(0xffff668) # 1c002f9c <EXTI_ClearITPendingBit>
1c003938:	03400000 	andi	$r0,$r0,0x0
1c00393c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003940:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003944:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003948:	4c000020 	jirl	$r0,$r1,0

1c00394c <exti_gpioa6_irq_handler>:
exti_gpioa6_irq_handler():
1c00394c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003950:	29803061 	st.w	$r1,$r3,12(0xc)
1c003954:	29802076 	st.w	$r22,$r3,8(0x8)
1c003958:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00395c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003960:	02bb10c6 	addi.w	$r6,$r6,-316(0xec4)
1c003964:	0280c005 	addi.w	$r5,$r0,48(0x30)
1c003968:	1c000044 	pcaddu12i	$r4,2(0x2)
1c00396c:	02b2d084 	addi.w	$r4,$r4,-844(0xcb4)
1c003970:	57e227ff 	bl	-7644(0xfffe224) # 1c001b94 <myprintf>
1c003974:	02810005 	addi.w	$r5,$r0,64(0x40)
1c003978:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00397c:	03808184 	ori	$r4,$r12,0x20
1c003980:	57f61fff 	bl	-2532(0xffff61c) # 1c002f9c <EXTI_ClearITPendingBit>
1c003984:	03400000 	andi	$r0,$r0,0x0
1c003988:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00398c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003990:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003994:	4c000020 	jirl	$r0,$r1,0

1c003998 <exti_gpioa7_irq_handler>:
exti_gpioa7_irq_handler():
1c003998:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00399c:	29803061 	st.w	$r1,$r3,12(0xc)
1c0039a0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0039a4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0039a8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0039ac:	02ba40c6 	addi.w	$r6,$r6,-368(0xe90)
1c0039b0:	0280d405 	addi.w	$r5,$r0,53(0x35)
1c0039b4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c0039b8:	02b1a084 	addi.w	$r4,$r4,-920(0xc68)
1c0039bc:	57e1dbff 	bl	-7720(0xfffe1d8) # 1c001b94 <myprintf>
1c0039c0:	02820005 	addi.w	$r5,$r0,128(0x80)
1c0039c4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0039c8:	03808184 	ori	$r4,$r12,0x20
1c0039cc:	57f5d3ff 	bl	-2608(0xffff5d0) # 1c002f9c <EXTI_ClearITPendingBit>
1c0039d0:	03400000 	andi	$r0,$r0,0x0
1c0039d4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0039d8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0039dc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0039e0:	4c000020 	jirl	$r0,$r1,0

1c0039e4 <exti_gpiob0_irq_handler>:
exti_gpiob0_irq_handler():
1c0039e4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0039e8:	29803061 	st.w	$r1,$r3,12(0xc)
1c0039ec:	29802076 	st.w	$r22,$r3,8(0x8)
1c0039f0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0039f4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0039f8:	02b970c6 	addi.w	$r6,$r6,-420(0xe5c)
1c0039fc:	0280e805 	addi.w	$r5,$r0,58(0x3a)
1c003a00:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003a04:	02b07084 	addi.w	$r4,$r4,-996(0xc1c)
1c003a08:	57e18fff 	bl	-7796(0xfffe18c) # 1c001b94 <myprintf>
1c003a0c:	02840005 	addi.w	$r5,$r0,256(0x100)
1c003a10:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003a14:	03808184 	ori	$r4,$r12,0x20
1c003a18:	57f587ff 	bl	-2684(0xffff584) # 1c002f9c <EXTI_ClearITPendingBit>
1c003a1c:	03400000 	andi	$r0,$r0,0x0
1c003a20:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003a24:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003a28:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003a2c:	4c000020 	jirl	$r0,$r1,0

1c003a30 <exti_gpiob1_irq_handler>:
exti_gpiob1_irq_handler():
1c003a30:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003a34:	29803061 	st.w	$r1,$r3,12(0xc)
1c003a38:	29802076 	st.w	$r22,$r3,8(0x8)
1c003a3c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003a40:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003a44:	02b8a0c6 	addi.w	$r6,$r6,-472(0xe28)
1c003a48:	0280fc05 	addi.w	$r5,$r0,63(0x3f)
1c003a4c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003a50:	02af4084 	addi.w	$r4,$r4,-1072(0xbd0)
1c003a54:	57e143ff 	bl	-7872(0xfffe140) # 1c001b94 <myprintf>
1c003a58:	02880005 	addi.w	$r5,$r0,512(0x200)
1c003a5c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003a60:	03808184 	ori	$r4,$r12,0x20
1c003a64:	57f53bff 	bl	-2760(0xffff538) # 1c002f9c <EXTI_ClearITPendingBit>
1c003a68:	03400000 	andi	$r0,$r0,0x0
1c003a6c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003a70:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003a74:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003a78:	4c000020 	jirl	$r0,$r1,0

1c003a7c <exti_gpiob2_irq_handler>:
exti_gpiob2_irq_handler():
1c003a7c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003a80:	29803061 	st.w	$r1,$r3,12(0xc)
1c003a84:	29802076 	st.w	$r22,$r3,8(0x8)
1c003a88:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003a8c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003a90:	02b7d0c6 	addi.w	$r6,$r6,-524(0xdf4)
1c003a94:	02811005 	addi.w	$r5,$r0,68(0x44)
1c003a98:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003a9c:	02ae1084 	addi.w	$r4,$r4,-1148(0xb84)
1c003aa0:	57e0f7ff 	bl	-7948(0xfffe0f4) # 1c001b94 <myprintf>
1c003aa4:	02900005 	addi.w	$r5,$r0,1024(0x400)
1c003aa8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003aac:	03808184 	ori	$r4,$r12,0x20
1c003ab0:	57f4efff 	bl	-2836(0xffff4ec) # 1c002f9c <EXTI_ClearITPendingBit>
1c003ab4:	03400000 	andi	$r0,$r0,0x0
1c003ab8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003abc:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003ac0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003ac4:	4c000020 	jirl	$r0,$r1,0

1c003ac8 <exti_gpiob3_irq_handler>:
exti_gpiob3_irq_handler():
1c003ac8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003acc:	29803061 	st.w	$r1,$r3,12(0xc)
1c003ad0:	29802076 	st.w	$r22,$r3,8(0x8)
1c003ad4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003ad8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003adc:	02b700c6 	addi.w	$r6,$r6,-576(0xdc0)
1c003ae0:	02812405 	addi.w	$r5,$r0,73(0x49)
1c003ae4:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003ae8:	02ace084 	addi.w	$r4,$r4,-1224(0xb38)
1c003aec:	57e0abff 	bl	-8024(0xfffe0a8) # 1c001b94 <myprintf>
1c003af0:	03a00005 	ori	$r5,$r0,0x800
1c003af4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003af8:	03808184 	ori	$r4,$r12,0x20
1c003afc:	57f4a3ff 	bl	-2912(0xffff4a0) # 1c002f9c <EXTI_ClearITPendingBit>
1c003b00:	03400000 	andi	$r0,$r0,0x0
1c003b04:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003b08:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003b0c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003b10:	4c000020 	jirl	$r0,$r1,0

1c003b14 <exti_gpiob4_irq_handler>:
exti_gpiob4_irq_handler():
1c003b14:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003b18:	29803061 	st.w	$r1,$r3,12(0xc)
1c003b1c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003b20:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003b24:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003b28:	02b630c6 	addi.w	$r6,$r6,-628(0xd8c)
1c003b2c:	02813805 	addi.w	$r5,$r0,78(0x4e)
1c003b30:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003b34:	02abb084 	addi.w	$r4,$r4,-1300(0xaec)
1c003b38:	57e05fff 	bl	-8100(0xfffe05c) # 1c001b94 <myprintf>
1c003b3c:	14000025 	lu12i.w	$r5,1(0x1)
1c003b40:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003b44:	03808184 	ori	$r4,$r12,0x20
1c003b48:	57f457ff 	bl	-2988(0xffff454) # 1c002f9c <EXTI_ClearITPendingBit>
1c003b4c:	03400000 	andi	$r0,$r0,0x0
1c003b50:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003b54:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003b58:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003b5c:	4c000020 	jirl	$r0,$r1,0

1c003b60 <exti_gpiob5_irq_handler>:
exti_gpiob5_irq_handler():
1c003b60:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003b64:	29803061 	st.w	$r1,$r3,12(0xc)
1c003b68:	29802076 	st.w	$r22,$r3,8(0x8)
1c003b6c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003b70:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003b74:	02b560c6 	addi.w	$r6,$r6,-680(0xd58)
1c003b78:	02814c05 	addi.w	$r5,$r0,83(0x53)
1c003b7c:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003b80:	02aa8084 	addi.w	$r4,$r4,-1376(0xaa0)
1c003b84:	57e013ff 	bl	-8176(0xfffe010) # 1c001b94 <myprintf>
1c003b88:	14000045 	lu12i.w	$r5,2(0x2)
1c003b8c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003b90:	03808184 	ori	$r4,$r12,0x20
1c003b94:	57f40bff 	bl	-3064(0xffff408) # 1c002f9c <EXTI_ClearITPendingBit>
1c003b98:	03400000 	andi	$r0,$r0,0x0
1c003b9c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003ba0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003ba4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003ba8:	4c000020 	jirl	$r0,$r1,0

1c003bac <exti_gpiob6_irq_handler>:
exti_gpiob6_irq_handler():
1c003bac:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003bb0:	29803061 	st.w	$r1,$r3,12(0xc)
1c003bb4:	29802076 	st.w	$r22,$r3,8(0x8)
1c003bb8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003bbc:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003bc0:	02b490c6 	addi.w	$r6,$r6,-732(0xd24)
1c003bc4:	02816005 	addi.w	$r5,$r0,88(0x58)
1c003bc8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003bcc:	02a95084 	addi.w	$r4,$r4,-1452(0xa54)
1c003bd0:	57dfc7ff 	bl	-8252(0xfffdfc4) # 1c001b94 <myprintf>
1c003bd4:	14000085 	lu12i.w	$r5,4(0x4)
1c003bd8:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003bdc:	03808184 	ori	$r4,$r12,0x20
1c003be0:	57f3bfff 	bl	-3140(0xffff3bc) # 1c002f9c <EXTI_ClearITPendingBit>
1c003be4:	03400000 	andi	$r0,$r0,0x0
1c003be8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003bec:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003bf0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003bf4:	4c000020 	jirl	$r0,$r1,0

1c003bf8 <exti_gpiob7_irq_handler>:
exti_gpiob7_irq_handler():
1c003bf8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003bfc:	29803061 	st.w	$r1,$r3,12(0xc)
1c003c00:	29802076 	st.w	$r22,$r3,8(0x8)
1c003c04:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003c08:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003c0c:	02b3c0c6 	addi.w	$r6,$r6,-784(0xcf0)
1c003c10:	02817405 	addi.w	$r5,$r0,93(0x5d)
1c003c14:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003c18:	02a82084 	addi.w	$r4,$r4,-1528(0xa08)
1c003c1c:	57df7bff 	bl	-8328(0xfffdf78) # 1c001b94 <myprintf>
1c003c20:	14000105 	lu12i.w	$r5,8(0x8)
1c003c24:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003c28:	03808184 	ori	$r4,$r12,0x20
1c003c2c:	57f373ff 	bl	-3216(0xffff370) # 1c002f9c <EXTI_ClearITPendingBit>
1c003c30:	03400000 	andi	$r0,$r0,0x0
1c003c34:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003c38:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003c3c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003c40:	4c000020 	jirl	$r0,$r1,0

1c003c44 <exti_gpioc0_irq_handler>:
exti_gpioc0_irq_handler():
1c003c44:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003c48:	29803061 	st.w	$r1,$r3,12(0xc)
1c003c4c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003c50:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003c54:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003c58:	02b2f0c6 	addi.w	$r6,$r6,-836(0xcbc)
1c003c5c:	02818c05 	addi.w	$r5,$r0,99(0x63)
1c003c60:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003c64:	02a6f084 	addi.w	$r4,$r4,-1604(0x9bc)
1c003c68:	57df2fff 	bl	-8404(0xfffdf2c) # 1c001b94 <myprintf>
1c003c6c:	14000205 	lu12i.w	$r5,16(0x10)
1c003c70:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003c74:	03808184 	ori	$r4,$r12,0x20
1c003c78:	57f327ff 	bl	-3292(0xffff324) # 1c002f9c <EXTI_ClearITPendingBit>
1c003c7c:	03400000 	andi	$r0,$r0,0x0
1c003c80:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003c84:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003c88:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003c8c:	4c000020 	jirl	$r0,$r1,0

1c003c90 <exti_gpioc1_irq_handler>:
exti_gpioc1_irq_handler():
1c003c90:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003c94:	29803061 	st.w	$r1,$r3,12(0xc)
1c003c98:	29802076 	st.w	$r22,$r3,8(0x8)
1c003c9c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003ca0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003ca4:	02b220c6 	addi.w	$r6,$r6,-888(0xc88)
1c003ca8:	0281a005 	addi.w	$r5,$r0,104(0x68)
1c003cac:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003cb0:	02a5c084 	addi.w	$r4,$r4,-1680(0x970)
1c003cb4:	57dee3ff 	bl	-8480(0xfffdee0) # 1c001b94 <myprintf>
1c003cb8:	14000405 	lu12i.w	$r5,32(0x20)
1c003cbc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003cc0:	03808184 	ori	$r4,$r12,0x20
1c003cc4:	57f2dbff 	bl	-3368(0xffff2d8) # 1c002f9c <EXTI_ClearITPendingBit>
1c003cc8:	03400000 	andi	$r0,$r0,0x0
1c003ccc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003cd0:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003cd4:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003cd8:	4c000020 	jirl	$r0,$r1,0

1c003cdc <exti_gpioc2_irq_handler>:
exti_gpioc2_irq_handler():
1c003cdc:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003ce0:	29803061 	st.w	$r1,$r3,12(0xc)
1c003ce4:	29802076 	st.w	$r22,$r3,8(0x8)
1c003ce8:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003cec:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003cf0:	02b150c6 	addi.w	$r6,$r6,-940(0xc54)
1c003cf4:	0281b405 	addi.w	$r5,$r0,109(0x6d)
1c003cf8:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003cfc:	02a49084 	addi.w	$r4,$r4,-1756(0x924)
1c003d00:	57de97ff 	bl	-8556(0xfffde94) # 1c001b94 <myprintf>
1c003d04:	14000805 	lu12i.w	$r5,64(0x40)
1c003d08:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003d0c:	03808184 	ori	$r4,$r12,0x20
1c003d10:	57f28fff 	bl	-3444(0xffff28c) # 1c002f9c <EXTI_ClearITPendingBit>
1c003d14:	03400000 	andi	$r0,$r0,0x0
1c003d18:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003d1c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003d20:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003d24:	4c000020 	jirl	$r0,$r1,0

1c003d28 <exti_gpioc3_irq_handler>:
exti_gpioc3_irq_handler():
1c003d28:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003d2c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003d30:	29802076 	st.w	$r22,$r3,8(0x8)
1c003d34:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003d38:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003d3c:	02b080c6 	addi.w	$r6,$r6,-992(0xc20)
1c003d40:	0281c805 	addi.w	$r5,$r0,114(0x72)
1c003d44:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003d48:	02a36084 	addi.w	$r4,$r4,-1832(0x8d8)
1c003d4c:	57de4bff 	bl	-8632(0xfffde48) # 1c001b94 <myprintf>
1c003d50:	14001005 	lu12i.w	$r5,128(0x80)
1c003d54:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003d58:	03808184 	ori	$r4,$r12,0x20
1c003d5c:	57f243ff 	bl	-3520(0xffff240) # 1c002f9c <EXTI_ClearITPendingBit>
1c003d60:	03400000 	andi	$r0,$r0,0x0
1c003d64:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003d68:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003d6c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003d70:	4c000020 	jirl	$r0,$r1,0

1c003d74 <exti_gpioc4_irq_handler>:
exti_gpioc4_irq_handler():
1c003d74:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003d78:	29803061 	st.w	$r1,$r3,12(0xc)
1c003d7c:	29802076 	st.w	$r22,$r3,8(0x8)
1c003d80:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003d84:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003d88:	02afb0c6 	addi.w	$r6,$r6,-1044(0xbec)
1c003d8c:	0281dc05 	addi.w	$r5,$r0,119(0x77)
1c003d90:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003d94:	02a23084 	addi.w	$r4,$r4,-1908(0x88c)
1c003d98:	57ddffff 	bl	-8708(0xfffddfc) # 1c001b94 <myprintf>
1c003d9c:	14002005 	lu12i.w	$r5,256(0x100)
1c003da0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003da4:	03808184 	ori	$r4,$r12,0x20
1c003da8:	57f1f7ff 	bl	-3596(0xffff1f4) # 1c002f9c <EXTI_ClearITPendingBit>
1c003dac:	03400000 	andi	$r0,$r0,0x0
1c003db0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003db4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003db8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003dbc:	4c000020 	jirl	$r0,$r1,0

1c003dc0 <exti_gpioc5_irq_handler>:
exti_gpioc5_irq_handler():
1c003dc0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003dc4:	29803061 	st.w	$r1,$r3,12(0xc)
1c003dc8:	29802076 	st.w	$r22,$r3,8(0x8)
1c003dcc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003dd0:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003dd4:	02aee0c6 	addi.w	$r6,$r6,-1096(0xbb8)
1c003dd8:	0281f005 	addi.w	$r5,$r0,124(0x7c)
1c003ddc:	1c000044 	pcaddu12i	$r4,2(0x2)
1c003de0:	02a10084 	addi.w	$r4,$r4,-1984(0x840)
1c003de4:	57ddb3ff 	bl	-8784(0xfffddb0) # 1c001b94 <myprintf>
1c003de8:	14004005 	lu12i.w	$r5,512(0x200)
1c003dec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003df0:	03808184 	ori	$r4,$r12,0x20
1c003df4:	57f1abff 	bl	-3672(0xffff1a8) # 1c002f9c <EXTI_ClearITPendingBit>
1c003df8:	03400000 	andi	$r0,$r0,0x0
1c003dfc:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003e00:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003e04:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003e08:	4c000020 	jirl	$r0,$r1,0

1c003e0c <exti_gpioc6_irq_handler>:
exti_gpioc6_irq_handler():
1c003e0c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003e10:	29803061 	st.w	$r1,$r3,12(0xc)
1c003e14:	29802076 	st.w	$r22,$r3,8(0x8)
1c003e18:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003e1c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003e20:	02ae10c6 	addi.w	$r6,$r6,-1148(0xb84)
1c003e24:	02820405 	addi.w	$r5,$r0,129(0x81)
1c003e28:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003e2c:	029fd084 	addi.w	$r4,$r4,2036(0x7f4)
1c003e30:	57dd67ff 	bl	-8860(0xfffdd64) # 1c001b94 <myprintf>
1c003e34:	14008005 	lu12i.w	$r5,1024(0x400)
1c003e38:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003e3c:	03808184 	ori	$r4,$r12,0x20
1c003e40:	57f15fff 	bl	-3748(0xffff15c) # 1c002f9c <EXTI_ClearITPendingBit>
1c003e44:	03400000 	andi	$r0,$r0,0x0
1c003e48:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003e4c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003e50:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003e54:	4c000020 	jirl	$r0,$r1,0

1c003e58 <exti_gpioc7_irq_handler>:
exti_gpioc7_irq_handler():
1c003e58:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003e5c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003e60:	29802076 	st.w	$r22,$r3,8(0x8)
1c003e64:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003e68:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003e6c:	02ad40c6 	addi.w	$r6,$r6,-1200(0xb50)
1c003e70:	02821805 	addi.w	$r5,$r0,134(0x86)
1c003e74:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003e78:	029ea084 	addi.w	$r4,$r4,1960(0x7a8)
1c003e7c:	57dd1bff 	bl	-8936(0xfffdd18) # 1c001b94 <myprintf>
1c003e80:	14010005 	lu12i.w	$r5,2048(0x800)
1c003e84:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003e88:	03808184 	ori	$r4,$r12,0x20
1c003e8c:	57f113ff 	bl	-3824(0xffff110) # 1c002f9c <EXTI_ClearITPendingBit>
1c003e90:	03400000 	andi	$r0,$r0,0x0
1c003e94:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003e98:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003e9c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003ea0:	4c000020 	jirl	$r0,$r1,0

1c003ea4 <exti_gpiod0_irq_handler>:
exti_gpiod0_irq_handler():
1c003ea4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003ea8:	29803061 	st.w	$r1,$r3,12(0xc)
1c003eac:	29802076 	st.w	$r22,$r3,8(0x8)
1c003eb0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003eb4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003eb8:	02ac70c6 	addi.w	$r6,$r6,-1252(0xb1c)
1c003ebc:	02822c05 	addi.w	$r5,$r0,139(0x8b)
1c003ec0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003ec4:	029d7084 	addi.w	$r4,$r4,1884(0x75c)
1c003ec8:	57dccfff 	bl	-9012(0xfffdccc) # 1c001b94 <myprintf>
1c003ecc:	14020005 	lu12i.w	$r5,4096(0x1000)
1c003ed0:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003ed4:	03808184 	ori	$r4,$r12,0x20
1c003ed8:	57f0c7ff 	bl	-3900(0xffff0c4) # 1c002f9c <EXTI_ClearITPendingBit>
1c003edc:	03400000 	andi	$r0,$r0,0x0
1c003ee0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003ee4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003ee8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003eec:	4c000020 	jirl	$r0,$r1,0

1c003ef0 <exti_gpiod1_irq_handler>:
exti_gpiod1_irq_handler():
1c003ef0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003ef4:	29803061 	st.w	$r1,$r3,12(0xc)
1c003ef8:	29802076 	st.w	$r22,$r3,8(0x8)
1c003efc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003f00:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003f04:	02aba0c6 	addi.w	$r6,$r6,-1304(0xae8)
1c003f08:	02824005 	addi.w	$r5,$r0,144(0x90)
1c003f0c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003f10:	029c4084 	addi.w	$r4,$r4,1808(0x710)
1c003f14:	57dc83ff 	bl	-9088(0xfffdc80) # 1c001b94 <myprintf>
1c003f18:	14040005 	lu12i.w	$r5,8192(0x2000)
1c003f1c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003f20:	03808184 	ori	$r4,$r12,0x20
1c003f24:	57f07bff 	bl	-3976(0xffff078) # 1c002f9c <EXTI_ClearITPendingBit>
1c003f28:	03400000 	andi	$r0,$r0,0x0
1c003f2c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003f30:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003f34:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003f38:	4c000020 	jirl	$r0,$r1,0

1c003f3c <exti_gpiod2_irq_handler>:
exti_gpiod2_irq_handler():
1c003f3c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003f40:	29803061 	st.w	$r1,$r3,12(0xc)
1c003f44:	29802076 	st.w	$r22,$r3,8(0x8)
1c003f48:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003f4c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003f50:	02aad0c6 	addi.w	$r6,$r6,-1356(0xab4)
1c003f54:	02825405 	addi.w	$r5,$r0,149(0x95)
1c003f58:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003f5c:	029b1084 	addi.w	$r4,$r4,1732(0x6c4)
1c003f60:	57dc37ff 	bl	-9164(0xfffdc34) # 1c001b94 <myprintf>
1c003f64:	14080005 	lu12i.w	$r5,16384(0x4000)
1c003f68:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003f6c:	03808184 	ori	$r4,$r12,0x20
1c003f70:	57f02fff 	bl	-4052(0xffff02c) # 1c002f9c <EXTI_ClearITPendingBit>
1c003f74:	03400000 	andi	$r0,$r0,0x0
1c003f78:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003f7c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003f80:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003f84:	4c000020 	jirl	$r0,$r1,0

1c003f88 <exti_gpiod3_irq_handler>:
exti_gpiod3_irq_handler():
1c003f88:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003f8c:	29803061 	st.w	$r1,$r3,12(0xc)
1c003f90:	29802076 	st.w	$r22,$r3,8(0x8)
1c003f94:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003f98:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003f9c:	02aa00c6 	addi.w	$r6,$r6,-1408(0xa80)
1c003fa0:	02826805 	addi.w	$r5,$r0,154(0x9a)
1c003fa4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003fa8:	0299e084 	addi.w	$r4,$r4,1656(0x678)
1c003fac:	57dbebff 	bl	-9240(0xfffdbe8) # 1c001b94 <myprintf>
1c003fb0:	14100005 	lu12i.w	$r5,32768(0x8000)
1c003fb4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c003fb8:	03808184 	ori	$r4,$r12,0x20
1c003fbc:	57efe3ff 	bl	-4128(0xfffefe0) # 1c002f9c <EXTI_ClearITPendingBit>
1c003fc0:	03400000 	andi	$r0,$r0,0x0
1c003fc4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c003fc8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c003fcc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c003fd0:	4c000020 	jirl	$r0,$r1,0

1c003fd4 <exti_gpiod4_irq_handler>:
exti_gpiod4_irq_handler():
1c003fd4:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c003fd8:	29803061 	st.w	$r1,$r3,12(0xc)
1c003fdc:	29802076 	st.w	$r22,$r3,8(0x8)
1c003fe0:	02804076 	addi.w	$r22,$r3,16(0x10)
1c003fe4:	1c000046 	pcaddu12i	$r6,2(0x2)
1c003fe8:	02a930c6 	addi.w	$r6,$r6,-1460(0xa4c)
1c003fec:	02827c05 	addi.w	$r5,$r0,159(0x9f)
1c003ff0:	1c000024 	pcaddu12i	$r4,1(0x1)
1c003ff4:	0298b084 	addi.w	$r4,$r4,1580(0x62c)
1c003ff8:	57db9fff 	bl	-9316(0xfffdb9c) # 1c001b94 <myprintf>
1c003ffc:	14200005 	lu12i.w	$r5,65536(0x10000)
1c004000:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004004:	03808184 	ori	$r4,$r12,0x20
1c004008:	57ef97ff 	bl	-4204(0xfffef94) # 1c002f9c <EXTI_ClearITPendingBit>
1c00400c:	03400000 	andi	$r0,$r0,0x0
1c004010:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004014:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004018:	02804063 	addi.w	$r3,$r3,16(0x10)
1c00401c:	4c000020 	jirl	$r0,$r1,0

1c004020 <exti_gpiod5_irq_handler>:
exti_gpiod5_irq_handler():
1c004020:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004024:	29803061 	st.w	$r1,$r3,12(0xc)
1c004028:	29802076 	st.w	$r22,$r3,8(0x8)
1c00402c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004030:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004034:	02a860c6 	addi.w	$r6,$r6,-1512(0xa18)
1c004038:	02829405 	addi.w	$r5,$r0,165(0xa5)
1c00403c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004040:	02978084 	addi.w	$r4,$r4,1504(0x5e0)
1c004044:	57db53ff 	bl	-9392(0xfffdb50) # 1c001b94 <myprintf>
1c004048:	14400005 	lu12i.w	$r5,131072(0x20000)
1c00404c:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004050:	03808184 	ori	$r4,$r12,0x20
1c004054:	57ef4bff 	bl	-4280(0xfffef48) # 1c002f9c <EXTI_ClearITPendingBit>
1c004058:	03400000 	andi	$r0,$r0,0x0
1c00405c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004060:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004064:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004068:	4c000020 	jirl	$r0,$r1,0

1c00406c <exti_gpiod6_irq_handler>:
exti_gpiod6_irq_handler():
1c00406c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004070:	29803061 	st.w	$r1,$r3,12(0xc)
1c004074:	29802076 	st.w	$r22,$r3,8(0x8)
1c004078:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00407c:	1c000046 	pcaddu12i	$r6,2(0x2)
1c004080:	02a790c6 	addi.w	$r6,$r6,-1564(0x9e4)
1c004084:	0282a805 	addi.w	$r5,$r0,170(0xaa)
1c004088:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00408c:	02965084 	addi.w	$r4,$r4,1428(0x594)
1c004090:	57db07ff 	bl	-9468(0xfffdb04) # 1c001b94 <myprintf>
1c004094:	14800005 	lu12i.w	$r5,262144(0x40000)
1c004098:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00409c:	03808184 	ori	$r4,$r12,0x20
1c0040a0:	57eeffff 	bl	-4356(0xfffeefc) # 1c002f9c <EXTI_ClearITPendingBit>
1c0040a4:	03400000 	andi	$r0,$r0,0x0
1c0040a8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0040ac:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0040b0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0040b4:	4c000020 	jirl	$r0,$r1,0

1c0040b8 <exti_gpiod7_irq_handler>:
exti_gpiod7_irq_handler():
1c0040b8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0040bc:	29803061 	st.w	$r1,$r3,12(0xc)
1c0040c0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0040c4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0040c8:	1c000046 	pcaddu12i	$r6,2(0x2)
1c0040cc:	02a6c0c6 	addi.w	$r6,$r6,-1616(0x9b0)
1c0040d0:	0282bc05 	addi.w	$r5,$r0,175(0xaf)
1c0040d4:	1c000024 	pcaddu12i	$r4,1(0x1)
1c0040d8:	02952084 	addi.w	$r4,$r4,1352(0x548)
1c0040dc:	57dabbff 	bl	-9544(0xfffdab8) # 1c001b94 <myprintf>
1c0040e0:	15000005 	lu12i.w	$r5,-524288(0x80000)
1c0040e4:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0040e8:	03808184 	ori	$r4,$r12,0x20
1c0040ec:	57eeb3ff 	bl	-4432(0xfffeeb0) # 1c002f9c <EXTI_ClearITPendingBit>
1c0040f0:	03400000 	andi	$r0,$r0,0x0
1c0040f4:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0040f8:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0040fc:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004100:	4c000020 	jirl	$r0,$r1,0

1c004104 <ext_handler>:
ext_handler():
1c004104:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004108:	29807061 	st.w	$r1,$r3,28(0x1c)
1c00410c:	29806076 	st.w	$r22,$r3,24(0x18)
1c004110:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004114:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004118:	0380f18c 	ori	$r12,$r12,0x3c
1c00411c:	1402000d 	lu12i.w	$r13,4096(0x1000)
1c004120:	2980018d 	st.w	$r13,$r12,0
1c004124:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004128:	0380818c 	ori	$r12,$r12,0x20
1c00412c:	2880318c 	ld.w	$r12,$r12,12(0xc)
1c004130:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004134:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004138:	0380818c 	ori	$r12,$r12,0x20
1c00413c:	2880018c 	ld.w	$r12,$r12,0
1c004140:	29bf92cc 	st.w	$r12,$r22,-28(0xfe4)
1c004144:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004148:	28bf92cc 	ld.w	$r12,$r22,-28(0xfe4)
1c00414c:	0014b1ac 	and	$r12,$r13,$r12
1c004150:	29bfa2cc 	st.w	$r12,$r22,-24(0xfe8)
1c004154:	03400000 	andi	$r0,$r0,0x0
1c004158:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c00415c:	50004000 	b	64(0x40) # 1c00419c <ext_handler+0x98>
1c004160:	28bfa2cd 	ld.w	$r13,$r22,-24(0xfe8)
1c004164:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004168:	0017b1ac 	srl.w	$r12,$r13,$r12
1c00416c:	0340058c 	andi	$r12,$r12,0x1
1c004170:	40002180 	beqz	$r12,32(0x20) # 1c004190 <ext_handler+0x8c>
1c004174:	1c00002d 	pcaddu12i	$r13,1(0x1)
1c004178:	029561ad 	addi.w	$r13,$r13,1368(0x558)
1c00417c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004180:	0040898c 	slli.w	$r12,$r12,0x2
1c004184:	001031ac 	add.w	$r12,$r13,$r12
1c004188:	2880018c 	ld.w	$r12,$r12,0
1c00418c:	4c000181 	jirl	$r1,$r12,0
1c004190:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004194:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004198:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c00419c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c0041a0:	02807c0c 	addi.w	$r12,$r0,31(0x1f)
1c0041a4:	6fffbd8d 	bgeu	$r12,$r13,-68(0x3ffbc) # 1c004160 <ext_handler+0x5c>
1c0041a8:	03400000 	andi	$r0,$r0,0x0
1c0041ac:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0041b0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0041b4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0041b8:	4c000020 	jirl	$r0,$r1,0

1c0041bc <TIMER_WAKE_INT>:
TIMER_WAKE_INT():
1c0041bc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0041c0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0041c4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0041c8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0041cc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0041d0:	0380f18c 	ori	$r12,$r12,0x3c
1c0041d4:	1400020d 	lu12i.w	$r13,16(0x10)
1c0041d8:	2980018d 	st.w	$r13,$r12,0
1c0041dc:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0041e0:	0380118c 	ori	$r12,$r12,0x4
1c0041e4:	2880018c 	ld.w	$r12,$r12,0
1c0041e8:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0041ec:	57ef03ff 	bl	-4352(0xfffef00) # 1c0030ec <WDG_DogFeed>
1c0041f0:	02801804 	addi.w	$r4,$r0,6(0x6)
1c0041f4:	57e987ff 	bl	-5756(0xfffe984) # 1c002b78 <Wake_Set>
1c0041f8:	03400000 	andi	$r0,$r0,0x0
1c0041fc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004200:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004204:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004208:	4c000020 	jirl	$r0,$r1,0

1c00420c <TOUCH>:
TOUCH():
1c00420c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004210:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004214:	29806076 	st.w	$r22,$r3,24(0x18)
1c004218:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00421c:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004220:	0380118c 	ori	$r12,$r12,0x4
1c004224:	2880018c 	ld.w	$r12,$r12,0
1c004228:	0044c18c 	srli.w	$r12,$r12,0x10
1c00422c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004230:	037ffd8c 	andi	$r12,$r12,0xfff
1c004234:	297fbacc 	st.h	$r12,$r22,-18(0xfee)
1c004238:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c00423c:	0380118c 	ori	$r12,$r12,0x4
1c004240:	2880018c 	ld.w	$r12,$r12,0
1c004244:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004248:	03403d8c 	andi	$r12,$r12,0xf
1c00424c:	293fb6cc 	st.b	$r12,$r22,-19(0xfed)
1c004250:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004254:	0380f18c 	ori	$r12,$r12,0x3c
1c004258:	1400040d 	lu12i.w	$r13,32(0x20)
1c00425c:	2980018d 	st.w	$r13,$r12,0
1c004260:	157fd68c 	lu12i.w	$r12,-262476(0xbfeb4)
1c004264:	0380118c 	ori	$r12,$r12,0x4
1c004268:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c00426c:	2980018d 	st.w	$r13,$r12,0
1c004270:	2a3fb6cc 	ld.bu	$r12,$r22,-19(0xfed)
1c004274:	00150184 	move	$r4,$r12
1c004278:	57efe7ff 	bl	-4124(0xfffefe4) # 1c00325c <Printf_KeyType>
1c00427c:	2a7fbacc 	ld.hu	$r12,$r22,-18(0xfee)
1c004280:	00150184 	move	$r4,$r12
1c004284:	57ef5fff 	bl	-4260(0xfffef5c) # 1c0031e0 <Printf_KeyChannel>
1c004288:	57f063ff 	bl	-4000(0xffff060) # 1c0032e8 <Printf_KeyVal>
1c00428c:	03400000 	andi	$r0,$r0,0x0
1c004290:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004294:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004298:	02808063 	addi.w	$r3,$r3,32(0x20)
1c00429c:	4c000020 	jirl	$r0,$r1,0

1c0042a0 <UART2_INT>:
UART2_INT():
1c0042a0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0042a4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c0042a8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0042ac:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0042b0:	0380f18c 	ori	$r12,$r12,0x3c
1c0042b4:	1400080d 	lu12i.w	$r13,64(0x40)
1c0042b8:	2980018d 	st.w	$r13,$r12,0
1c0042bc:	157fd18c 	lu12i.w	$r12,-262516(0xbfe8c)
1c0042c0:	0380098c 	ori	$r12,$r12,0x2
1c0042c4:	2a00018c 	ld.bu	$r12,$r12,0
1c0042c8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0042cc:	03400000 	andi	$r0,$r0,0x0
1c0042d0:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0042d4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0042d8:	4c000020 	jirl	$r0,$r1,0

1c0042dc <BAT_FAIL>:
BAT_FAIL():
1c0042dc:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0042e0:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0042e4:	29806076 	st.w	$r22,$r3,24(0x18)
1c0042e8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0042ec:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c0042f0:	0380118c 	ori	$r12,$r12,0x4
1c0042f4:	2880018c 	ld.w	$r12,$r12,0
1c0042f8:	0044cd8c 	srli.w	$r12,$r12,0x13
1c0042fc:	03407d8c 	andi	$r12,$r12,0x1f
1c004300:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004304:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004308:	0380118c 	ori	$r12,$r12,0x4
1c00430c:	2880018e 	ld.w	$r14,$r12,0
1c004310:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004314:	0380f18c 	ori	$r12,$r12,0x3c
1c004318:	1401f00d 	lu12i.w	$r13,3968(0xf80)
1c00431c:	0014b5cd 	and	$r13,$r14,$r13
1c004320:	2980018d 	st.w	$r13,$r12,0
1c004324:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004328:	0280400c 	addi.w	$r12,$r0,16(0x10)
1c00432c:	6800718d 	bltu	$r12,$r13,112(0x70) # 1c00439c <BAT_FAIL+0xc0>
1c004330:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004334:	0040898d 	slli.w	$r13,$r12,0x2
1c004338:	1c00002c 	pcaddu12i	$r12,1(0x1)
1c00433c:	0290518c 	addi.w	$r12,$r12,1044(0x414)
1c004340:	001031ac 	add.w	$r12,$r13,$r12
1c004344:	2880018c 	ld.w	$r12,$r12,0
1c004348:	4c000180 	jirl	$r0,$r12,0
1c00434c:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004350:	028c5084 	addi.w	$r4,$r4,788(0x314)
1c004354:	57d843ff 	bl	-10176(0xfffd840) # 1c001b94 <myprintf>
1c004358:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c00435c:	0380118c 	ori	$r12,$r12,0x4
1c004360:	29800180 	st.w	$r0,$r12,0
1c004364:	50003c00 	b	60(0x3c) # 1c0043a0 <BAT_FAIL+0xc4>
1c004368:	1c000024 	pcaddu12i	$r4,1(0x1)
1c00436c:	028c8084 	addi.w	$r4,$r4,800(0x320)
1c004370:	57d827ff 	bl	-10204(0xfffd824) # 1c001b94 <myprintf>
1c004374:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004378:	0380118c 	ori	$r12,$r12,0x4
1c00437c:	2880018e 	ld.w	$r14,$r12,0
1c004380:	157fd60c 	lu12i.w	$r12,-262480(0xbfeb0)
1c004384:	0380118c 	ori	$r12,$r12,0x4
1c004388:	15fffeed 	lu12i.w	$r13,-9(0xffff7)
1c00438c:	03bffdad 	ori	$r13,$r13,0xfff
1c004390:	0014b5cd 	and	$r13,$r14,$r13
1c004394:	2980018d 	st.w	$r13,$r12,0
1c004398:	50000800 	b	8(0x8) # 1c0043a0 <BAT_FAIL+0xc4>
1c00439c:	03400000 	andi	$r0,$r0,0x0
1c0043a0:	03400000 	andi	$r0,$r0,0x0
1c0043a4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0043a8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0043ac:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0043b0:	4c000020 	jirl	$r0,$r1,0

1c0043b4 <intc_handler>:
intc_handler():
1c0043b4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0043b8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0043bc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0043c0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0043c4:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c0043c8:	0380158c 	ori	$r12,$r12,0x5
1c0043cc:	2a00018c 	ld.bu	$r12,$r12,0
1c0043d0:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0043d4:	02840004 	addi.w	$r4,$r0,256(0x100)
1c0043d8:	57f307ff 	bl	-3324(0xffff304) # 1c0036dc <TIM_GetITStatus>
1c0043dc:	0015008c 	move	$r12,$r4
1c0043e0:	4000a980 	beqz	$r12,168(0xa8) # 1c004488 <intc_handler+0xd4>
1c0043e4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0043e8:	02b0718c 	addi.w	$r12,$r12,-996(0xc1c)
1c0043ec:	2880018c 	ld.w	$r12,$r12,0
1c0043f0:	0280058d 	addi.w	$r13,$r12,1(0x1)
1c0043f4:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0043f8:	02b0318c 	addi.w	$r12,$r12,-1012(0xc0c)
1c0043fc:	2980018d 	st.w	$r13,$r12,0
1c004400:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004404:	02b0018c 	addi.w	$r12,$r12,-1024(0xc00)
1c004408:	2880018c 	ld.w	$r12,$r12,0
1c00440c:	60002d80 	blt	$r12,$r0,44(0x2c) # 1c004438 <intc_handler+0x84>
1c004410:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004414:	02afc18c 	addi.w	$r12,$r12,-1040(0xbf0)
1c004418:	2880018d 	ld.w	$r13,$r12,0
1c00441c:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c004420:	02b0218c 	addi.w	$r12,$r12,-1016(0xc08)
1c004424:	2880018c 	ld.w	$r12,$r12,0
1c004428:	6000118d 	blt	$r12,$r13,16(0x10) # 1c004438 <intc_handler+0x84>
1c00442c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004430:	02808804 	addi.w	$r4,$r0,34(0x22)
1c004434:	57d1abff 	bl	-11864(0xfffd1a8) # 1c0015dc <gpio_write_pin>
1c004438:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00443c:	02af218c 	addi.w	$r12,$r12,-1080(0xbc8)
1c004440:	2880018d 	ld.w	$r13,$r12,0
1c004444:	1cc7ffac 	pcaddu12i	$r12,409597(0x63ffd)
1c004448:	02af818c 	addi.w	$r12,$r12,-1056(0xbe0)
1c00444c:	2880018c 	ld.w	$r12,$r12,0
1c004450:	6400118d 	bge	$r12,$r13,16(0x10) # 1c004460 <intc_handler+0xac>
1c004454:	00150005 	move	$r5,$r0
1c004458:	02808804 	addi.w	$r4,$r0,34(0x22)
1c00445c:	57d183ff 	bl	-11904(0xfffd180) # 1c0015dc <gpio_write_pin>
1c004460:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004464:	02ae818c 	addi.w	$r12,$r12,-1120(0xba0)
1c004468:	2880018d 	ld.w	$r13,$r12,0
1c00446c:	0283200c 	addi.w	$r12,$r0,200(0xc8)
1c004470:	5c0011ac 	bne	$r13,$r12,16(0x10) # 1c004480 <intc_handler+0xcc>
1c004474:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004478:	02ae318c 	addi.w	$r12,$r12,-1140(0xb8c)
1c00447c:	29800180 	st.w	$r0,$r12,0
1c004480:	02840004 	addi.w	$r4,$r0,256(0x100)
1c004484:	57f2a7ff 	bl	-3420(0xffff2a4) # 1c003728 <TIM_ClearIT>
1c004488:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00448c:	0340118c 	andi	$r12,$r12,0x4
1c004490:	40001580 	beqz	$r12,20(0x14) # 1c0044a4 <intc_handler+0xf0>
1c004494:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c004498:	03800d8c 	ori	$r12,$r12,0x3
1c00449c:	0280100d 	addi.w	$r13,$r0,4(0x4)
1c0044a0:	2900018d 	st.b	$r13,$r12,0
1c0044a4:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0044a8:	0340218c 	andi	$r12,$r12,0x8
1c0044ac:	40007d80 	beqz	$r12,124(0x7c) # 1c004528 <intc_handler+0x174>
1c0044b0:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c0044b4:	0380098c 	ori	$r12,$r12,0x2
1c0044b8:	2a00018c 	ld.bu	$r12,$r12,0
1c0044bc:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0044c0:	0340118c 	andi	$r12,$r12,0x4
1c0044c4:	40005580 	beqz	$r12,84(0x54) # 1c004518 <intc_handler+0x164>
1c0044c8:	50003800 	b	56(0x38) # 1c004500 <intc_handler+0x14c>
1c0044cc:	157fd004 	lu12i.w	$r4,-262528(0xbfe80)
1c0044d0:	57deb7ff 	bl	-8524(0xfffdeb4) # 1c002384 <UART_ReceiveData>
1c0044d4:	0015008c 	move	$r12,$r4
1c0044d8:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c0044dc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c0044e0:	02aca18c 	addi.w	$r12,$r12,-1240(0xb28)
1c0044e4:	2900018d 	st.b	$r13,$r12,0
1c0044e8:	02800406 	addi.w	$r6,$r0,1(0x1)
1c0044ec:	1cc7ff85 	pcaddu12i	$r5,409596(0x63ffc)
1c0044f0:	02ac60a5 	addi.w	$r5,$r5,-1256(0xb18)
1c0044f4:	1cc7ffa4 	pcaddu12i	$r4,409597(0x63ffd)
1c0044f8:	28ac7084 	ld.w	$r4,$r4,-1252(0xb1c)
1c0044fc:	54088400 	bl	2180(0x884) # 1c004d80 <Queue_Wirte>
1c004500:	157fd00c 	lu12i.w	$r12,-262528(0xbfe80)
1c004504:	0380158c 	ori	$r12,$r12,0x5
1c004508:	2a00018c 	ld.bu	$r12,$r12,0
1c00450c:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004510:	0340058c 	andi	$r12,$r12,0x1
1c004514:	47ffb99f 	bnez	$r12,-72(0x7fffb8) # 1c0044cc <intc_handler+0x118>
1c004518:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00451c:	03800d8c 	ori	$r12,$r12,0x3
1c004520:	0280200d 	addi.w	$r13,$r0,8(0x8)
1c004524:	2900018d 	st.b	$r13,$r12,0
1c004528:	157fd40c 	lu12i.w	$r12,-262496(0xbfea0)
1c00452c:	03800d8c 	ori	$r12,$r12,0x3
1c004530:	02bffc0d 	addi.w	$r13,$r0,-1(0xfff)
1c004534:	2900018d 	st.b	$r13,$r12,0
1c004538:	03400000 	andi	$r0,$r0,0x0
1c00453c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004540:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004544:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004548:	4c000020 	jirl	$r0,$r1,0

1c00454c <TIMER_HANDLER>:
TIMER_HANDLER():
1c00454c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004550:	29803061 	st.w	$r1,$r3,12(0xc)
1c004554:	29802076 	st.w	$r22,$r3,8(0x8)
1c004558:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00455c:	57e5fbff 	bl	-6664(0xfffe5f8) # 1c002b54 <Set_Timer_clear>
1c004560:	1c000024 	pcaddu12i	$r4,1(0x1)
1c004564:	02853084 	addi.w	$r4,$r4,332(0x14c)
1c004568:	57d62fff 	bl	-10708(0xfffd62c) # 1c001b94 <myprintf>
1c00456c:	57e5cbff 	bl	-6712(0xfffe5c8) # 1c002b34 <Set_Timer_stop>
1c004570:	03400000 	andi	$r0,$r0,0x0
1c004574:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004578:	28802076 	ld.w	$r22,$r3,8(0x8)
1c00457c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004580:	4c000020 	jirl	$r0,$r1,0

1c004584 <IIC_Delay>:
IIC_Delay():
1c004584:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004588:	29807076 	st.w	$r22,$r3,28(0x1c)
1c00458c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004590:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004594:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004598:	50001000 	b	16(0x10) # 1c0045a8 <IIC_Delay+0x24>
1c00459c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0045a0:	02bffd8c 	addi.w	$r12,$r12,-1(0xfff)
1c0045a4:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c0045a8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c0045ac:	47fff19f 	bnez	$r12,-16(0x7ffff0) # 1c00459c <IIC_Delay+0x18>
1c0045b0:	03400000 	andi	$r0,$r0,0x0
1c0045b4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c0045b8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0045bc:	4c000020 	jirl	$r0,$r1,0

1c0045c0 <IIC_Init>:
IIC_Init():
1c0045c0:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0045c4:	29803061 	st.w	$r1,$r3,12(0xc)
1c0045c8:	29802076 	st.w	$r22,$r3,8(0x8)
1c0045cc:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0045d0:	00150005 	move	$r5,$r0
1c0045d4:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0045d8:	57d07fff 	bl	-12164(0xfffd07c) # 1c001654 <gpio_pin_remap>
1c0045dc:	00150005 	move	$r5,$r0
1c0045e0:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c0045e4:	57d073ff 	bl	-12176(0xfffd070) # 1c001654 <gpio_pin_remap>
1c0045e8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0045ec:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0045f0:	57d273ff 	bl	-11664(0xfffd270) # 1c001860 <gpio_set_direction>
1c0045f4:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0045f8:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c0045fc:	57d267ff 	bl	-11676(0xfffd264) # 1c001860 <gpio_set_direction>
1c004600:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004604:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004608:	57cfd7ff 	bl	-12332(0xfffcfd4) # 1c0015dc <gpio_write_pin>
1c00460c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004610:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004614:	57cfcbff 	bl	-12344(0xfffcfc8) # 1c0015dc <gpio_write_pin>
1c004618:	03400000 	andi	$r0,$r0,0x0
1c00461c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004620:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004624:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004628:	4c000020 	jirl	$r0,$r1,0

1c00462c <SDA_IN>:
SDA_IN():
1c00462c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004630:	29803061 	st.w	$r1,$r3,12(0xc)
1c004634:	29802076 	st.w	$r22,$r3,8(0x8)
1c004638:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00463c:	00150005 	move	$r5,$r0
1c004640:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004644:	57d21fff 	bl	-11748(0xfffd21c) # 1c001860 <gpio_set_direction>
1c004648:	03400000 	andi	$r0,$r0,0x0
1c00464c:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004650:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004654:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004658:	4c000020 	jirl	$r0,$r1,0

1c00465c <SDA_OUT>:
SDA_OUT():
1c00465c:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004660:	29803061 	st.w	$r1,$r3,12(0xc)
1c004664:	29802076 	st.w	$r22,$r3,8(0x8)
1c004668:	02804076 	addi.w	$r22,$r3,16(0x10)
1c00466c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004670:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004674:	57d1efff 	bl	-11796(0xfffd1ec) # 1c001860 <gpio_set_direction>
1c004678:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00467c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004680:	57cf5fff 	bl	-12452(0xfffcf5c) # 1c0015dc <gpio_write_pin>
1c004684:	03400000 	andi	$r0,$r0,0x0
1c004688:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00468c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004690:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004694:	4c000020 	jirl	$r0,$r1,0

1c004698 <IIC_Start>:
IIC_Start():
1c004698:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00469c:	29803061 	st.w	$r1,$r3,12(0xc)
1c0046a0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0046a4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0046a8:	57ffb7ff 	bl	-76(0xfffffb4) # 1c00465c <SDA_OUT>
1c0046ac:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0046b0:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0046b4:	57cf2bff 	bl	-12504(0xfffcf28) # 1c0015dc <gpio_write_pin>
1c0046b8:	02800405 	addi.w	$r5,$r0,1(0x1)
1c0046bc:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c0046c0:	57cf1fff 	bl	-12516(0xfffcf1c) # 1c0015dc <gpio_write_pin>
1c0046c4:	57fec3ff 	bl	-320(0xffffec0) # 1c004584 <IIC_Delay>
1c0046c8:	00150005 	move	$r5,$r0
1c0046cc:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0046d0:	57cf0fff 	bl	-12532(0xfffcf0c) # 1c0015dc <gpio_write_pin>
1c0046d4:	57feb3ff 	bl	-336(0xffffeb0) # 1c004584 <IIC_Delay>
1c0046d8:	00150005 	move	$r5,$r0
1c0046dc:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c0046e0:	57ceffff 	bl	-12548(0xfffcefc) # 1c0015dc <gpio_write_pin>
1c0046e4:	03400000 	andi	$r0,$r0,0x0
1c0046e8:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0046ec:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0046f0:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0046f4:	4c000020 	jirl	$r0,$r1,0

1c0046f8 <IIC_Stop>:
IIC_Stop():
1c0046f8:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c0046fc:	29803061 	st.w	$r1,$r3,12(0xc)
1c004700:	29802076 	st.w	$r22,$r3,8(0x8)
1c004704:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004708:	57ff57ff 	bl	-172(0xfffff54) # 1c00465c <SDA_OUT>
1c00470c:	00150005 	move	$r5,$r0
1c004710:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004714:	57cecbff 	bl	-12600(0xfffcec8) # 1c0015dc <gpio_write_pin>
1c004718:	00150005 	move	$r5,$r0
1c00471c:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004720:	57cebfff 	bl	-12612(0xfffcebc) # 1c0015dc <gpio_write_pin>
1c004724:	57fe63ff 	bl	-416(0xffffe60) # 1c004584 <IIC_Delay>
1c004728:	02800405 	addi.w	$r5,$r0,1(0x1)
1c00472c:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004730:	57ceafff 	bl	-12628(0xfffceac) # 1c0015dc <gpio_write_pin>
1c004734:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004738:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00473c:	57cea3ff 	bl	-12640(0xfffcea0) # 1c0015dc <gpio_write_pin>
1c004740:	57fe47ff 	bl	-444(0xffffe44) # 1c004584 <IIC_Delay>
1c004744:	03400000 	andi	$r0,$r0,0x0
1c004748:	28803061 	ld.w	$r1,$r3,12(0xc)
1c00474c:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004750:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004754:	4c000020 	jirl	$r0,$r1,0

1c004758 <IIC_Wait_Ack>:
IIC_Wait_Ack():
1c004758:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c00475c:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004760:	29806076 	st.w	$r22,$r3,24(0x18)
1c004764:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004768:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c00476c:	57fec3ff 	bl	-320(0xffffec0) # 1c00462c <SDA_IN>
1c004770:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004774:	02800404 	addi.w	$r4,$r0,1(0x1)
1c004778:	57ce67ff 	bl	-12700(0xfffce64) # 1c0015dc <gpio_write_pin>
1c00477c:	57fe0bff 	bl	-504(0xffffe08) # 1c004584 <IIC_Delay>
1c004780:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004784:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004788:	57ce57ff 	bl	-12716(0xfffce54) # 1c0015dc <gpio_write_pin>
1c00478c:	57fdfbff 	bl	-520(0xffffdf8) # 1c004584 <IIC_Delay>
1c004790:	50002800 	b	40(0x28) # 1c0047b8 <IIC_Wait_Ack+0x60>
1c004794:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004798:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c00479c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0047a0:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c0047a4:	0283e80c 	addi.w	$r12,$r0,250(0xfa)
1c0047a8:	6c00118d 	bgeu	$r12,$r13,16(0x10) # 1c0047b8 <IIC_Wait_Ack+0x60>
1c0047ac:	57ff4fff 	bl	-180(0xfffff4c) # 1c0046f8 <IIC_Stop>
1c0047b0:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c0047b4:	50002400 	b	36(0x24) # 1c0047d8 <IIC_Wait_Ack+0x80>
1c0047b8:	02800404 	addi.w	$r4,$r0,1(0x1)
1c0047bc:	57cdd3ff 	bl	-12848(0xfffcdd0) # 1c00158c <gpio_get_pin>
1c0047c0:	0015008c 	move	$r12,$r4
1c0047c4:	47ffd19f 	bnez	$r12,-48(0x7fffd0) # 1c004794 <IIC_Wait_Ack+0x3c>
1c0047c8:	00150005 	move	$r5,$r0
1c0047cc:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c0047d0:	57ce0fff 	bl	-12788(0xfffce0c) # 1c0015dc <gpio_write_pin>
1c0047d4:	0015000c 	move	$r12,$r0
1c0047d8:	00150184 	move	$r4,$r12
1c0047dc:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0047e0:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0047e4:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0047e8:	4c000020 	jirl	$r0,$r1,0

1c0047ec <IIC_Send_Byte>:
IIC_Send_Byte():
1c0047ec:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c0047f0:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c0047f4:	2980a076 	st.w	$r22,$r3,40(0x28)
1c0047f8:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c0047fc:	0015008c 	move	$r12,$r4
1c004800:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c004804:	57fe5bff 	bl	-424(0xffffe58) # 1c00465c <SDA_OUT>
1c004808:	00150005 	move	$r5,$r0
1c00480c:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004810:	57cdcfff 	bl	-12852(0xfffcdcc) # 1c0015dc <gpio_write_pin>
1c004814:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c004818:	50006000 	b	96(0x60) # 1c004878 <IIC_Send_Byte+0x8c>
1c00481c:	283f7ecc 	ld.b	$r12,$r22,-33(0xfdf)
1c004820:	64001580 	bge	$r12,$r0,20(0x14) # 1c004834 <IIC_Send_Byte+0x48>
1c004824:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004828:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00482c:	57cdb3ff 	bl	-12880(0xfffcdb0) # 1c0015dc <gpio_write_pin>
1c004830:	50001000 	b	16(0x10) # 1c004840 <IIC_Send_Byte+0x54>
1c004834:	00150005 	move	$r5,$r0
1c004838:	02800404 	addi.w	$r4,$r0,1(0x1)
1c00483c:	57cda3ff 	bl	-12896(0xfffcda0) # 1c0015dc <gpio_write_pin>
1c004840:	2a3f7ecc 	ld.bu	$r12,$r22,-33(0xfdf)
1c004844:	0040858c 	slli.w	$r12,$r12,0x1
1c004848:	293f7ecc 	st.b	$r12,$r22,-33(0xfdf)
1c00484c:	02800405 	addi.w	$r5,$r0,1(0x1)
1c004850:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004854:	57cd8bff 	bl	-12920(0xfffcd88) # 1c0015dc <gpio_write_pin>
1c004858:	57fd2fff 	bl	-724(0xffffd2c) # 1c004584 <IIC_Delay>
1c00485c:	00150005 	move	$r5,$r0
1c004860:	0280e404 	addi.w	$r4,$r0,57(0x39)
1c004864:	57cd7bff 	bl	-12936(0xfffcd78) # 1c0015dc <gpio_write_pin>
1c004868:	57fd1fff 	bl	-740(0xffffd1c) # 1c004584 <IIC_Delay>
1c00486c:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004870:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004874:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004878:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c00487c:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c004880:	6fff9d8d 	bgeu	$r12,$r13,-100(0x3ff9c) # 1c00481c <IIC_Send_Byte+0x30>
1c004884:	03400000 	andi	$r0,$r0,0x0
1c004888:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c00488c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004890:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004894:	4c000020 	jirl	$r0,$r1,0

1c004898 <OLED_Hardware_Init>:
OLED_Hardware_Init():
1c004898:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c00489c:	29803061 	st.w	$r1,$r3,12(0xc)
1c0048a0:	29802076 	st.w	$r22,$r3,8(0x8)
1c0048a4:	02804076 	addi.w	$r22,$r3,16(0x10)
1c0048a8:	57fd1bff 	bl	-744(0xffffd18) # 1c0045c0 <IIC_Init>
1c0048ac:	03400000 	andi	$r0,$r0,0x0
1c0048b0:	28803061 	ld.w	$r1,$r3,12(0xc)
1c0048b4:	28802076 	ld.w	$r22,$r3,8(0x8)
1c0048b8:	02804063 	addi.w	$r3,$r3,16(0x10)
1c0048bc:	4c000020 	jirl	$r0,$r1,0

1c0048c0 <OLED_WR_Byte>:
OLED_WR_Byte():
1c0048c0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0048c4:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0048c8:	29806076 	st.w	$r22,$r3,24(0x18)
1c0048cc:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0048d0:	0015008c 	move	$r12,$r4
1c0048d4:	001500ad 	move	$r13,$r5
1c0048d8:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c0048dc:	001501ac 	move	$r12,$r13
1c0048e0:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c0048e4:	57fdb7ff 	bl	-588(0xffffdb4) # 1c004698 <IIC_Start>
1c0048e8:	0281e004 	addi.w	$r4,$r0,120(0x78)
1c0048ec:	57ff03ff 	bl	-256(0xfffff00) # 1c0047ec <IIC_Send_Byte>
1c0048f0:	57fe6bff 	bl	-408(0xffffe68) # 1c004758 <IIC_Wait_Ack>
1c0048f4:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c0048f8:	00150184 	move	$r4,$r12
1c0048fc:	57fef3ff 	bl	-272(0xffffef0) # 1c0047ec <IIC_Send_Byte>
1c004900:	57fe5bff 	bl	-424(0xffffe58) # 1c004758 <IIC_Wait_Ack>
1c004904:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004908:	00150184 	move	$r4,$r12
1c00490c:	57fee3ff 	bl	-288(0xffffee0) # 1c0047ec <IIC_Send_Byte>
1c004910:	57fe4bff 	bl	-440(0xffffe48) # 1c004758 <IIC_Wait_Ack>
1c004914:	57fde7ff 	bl	-540(0xffffde4) # 1c0046f8 <IIC_Stop>
1c004918:	03400000 	andi	$r0,$r0,0x0
1c00491c:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004920:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004924:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004928:	4c000020 	jirl	$r0,$r1,0

1c00492c <OLED_Set_Pos>:
OLED_Set_Pos():
1c00492c:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004930:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004934:	29806076 	st.w	$r22,$r3,24(0x18)
1c004938:	02808076 	addi.w	$r22,$r3,32(0x20)
1c00493c:	0015008c 	move	$r12,$r4
1c004940:	001500ad 	move	$r13,$r5
1c004944:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004948:	001501ac 	move	$r12,$r13
1c00494c:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c004950:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c004954:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c004958:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00495c:	00150005 	move	$r5,$r0
1c004960:	00150184 	move	$r4,$r12
1c004964:	57ff5fff 	bl	-164(0xfffff5c) # 1c0048c0 <OLED_WR_Byte>
1c004968:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00496c:	0044918c 	srli.w	$r12,$r12,0x4
1c004970:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004974:	0380418c 	ori	$r12,$r12,0x10
1c004978:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c00497c:	00150005 	move	$r5,$r0
1c004980:	00150184 	move	$r4,$r12
1c004984:	57ff3fff 	bl	-196(0xfffff3c) # 1c0048c0 <OLED_WR_Byte>
1c004988:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c00498c:	03403d8c 	andi	$r12,$r12,0xf
1c004990:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c004994:	00150005 	move	$r5,$r0
1c004998:	00150184 	move	$r4,$r12
1c00499c:	57ff27ff 	bl	-220(0xfffff24) # 1c0048c0 <OLED_WR_Byte>
1c0049a0:	03400000 	andi	$r0,$r0,0x0
1c0049a4:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c0049a8:	28806076 	ld.w	$r22,$r3,24(0x18)
1c0049ac:	02808063 	addi.w	$r3,$r3,32(0x20)
1c0049b0:	4c000020 	jirl	$r0,$r1,0

1c0049b4 <OLED_Clear>:
OLED_Clear():
1c0049b4:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c0049b8:	29807061 	st.w	$r1,$r3,28(0x1c)
1c0049bc:	29806076 	st.w	$r22,$r3,24(0x18)
1c0049c0:	02808076 	addi.w	$r22,$r3,32(0x20)
1c0049c4:	293fbec0 	st.b	$r0,$r22,-17(0xfef)
1c0049c8:	50006800 	b	104(0x68) # 1c004a30 <OLED_Clear+0x7c>
1c0049cc:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c0049d0:	02bec18c 	addi.w	$r12,$r12,-80(0xfb0)
1c0049d4:	0067818c 	bstrpick.w	$r12,$r12,0x7,0x0
1c0049d8:	00150005 	move	$r5,$r0
1c0049dc:	00150184 	move	$r4,$r12
1c0049e0:	57fee3ff 	bl	-288(0xffffee0) # 1c0048c0 <OLED_WR_Byte>
1c0049e4:	00150005 	move	$r5,$r0
1c0049e8:	02800804 	addi.w	$r4,$r0,2(0x2)
1c0049ec:	57fed7ff 	bl	-300(0xffffed4) # 1c0048c0 <OLED_WR_Byte>
1c0049f0:	00150005 	move	$r5,$r0
1c0049f4:	02804004 	addi.w	$r4,$r0,16(0x10)
1c0049f8:	57fecbff 	bl	-312(0xffffec8) # 1c0048c0 <OLED_WR_Byte>
1c0049fc:	293fbac0 	st.b	$r0,$r22,-18(0xfee)
1c004a00:	50001c00 	b	28(0x1c) # 1c004a1c <OLED_Clear+0x68>
1c004a04:	02810005 	addi.w	$r5,$r0,64(0x40)
1c004a08:	00150004 	move	$r4,$r0
1c004a0c:	57feb7ff 	bl	-332(0xffffeb4) # 1c0048c0 <OLED_WR_Byte>
1c004a10:	2a3fbacc 	ld.bu	$r12,$r22,-18(0xfee)
1c004a14:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004a18:	293fbacc 	st.b	$r12,$r22,-18(0xfee)
1c004a1c:	283fbacc 	ld.b	$r12,$r22,-18(0xfee)
1c004a20:	67ffe580 	bge	$r12,$r0,-28(0x3ffe4) # 1c004a04 <OLED_Clear+0x50>
1c004a24:	2a3fbecc 	ld.bu	$r12,$r22,-17(0xfef)
1c004a28:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004a2c:	293fbecc 	st.b	$r12,$r22,-17(0xfef)
1c004a30:	2a3fbecd 	ld.bu	$r13,$r22,-17(0xfef)
1c004a34:	02801c0c 	addi.w	$r12,$r0,7(0x7)
1c004a38:	6fff958d 	bgeu	$r12,$r13,-108(0x3ff94) # 1c0049cc <OLED_Clear+0x18>
1c004a3c:	03400000 	andi	$r0,$r0,0x0
1c004a40:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004a44:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004a48:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004a4c:	4c000020 	jirl	$r0,$r1,0

1c004a50 <OLED_Init>:
OLED_Init():
1c004a50:	02bfc063 	addi.w	$r3,$r3,-16(0xff0)
1c004a54:	29803061 	st.w	$r1,$r3,12(0xc)
1c004a58:	29802076 	st.w	$r22,$r3,8(0x8)
1c004a5c:	02804076 	addi.w	$r22,$r3,16(0x10)
1c004a60:	57fe3bff 	bl	-456(0xffffe38) # 1c004898 <OLED_Hardware_Init>
1c004a64:	02819004 	addi.w	$r4,$r0,100(0x64)
1c004a68:	57e497ff 	bl	-7020(0xfffe494) # 1c002efc <delay_ms>
1c004a6c:	57ff4bff 	bl	-184(0xfffff48) # 1c0049b4 <OLED_Clear>
1c004a70:	00150005 	move	$r5,$r0
1c004a74:	00150004 	move	$r4,$r0
1c004a78:	57feb7ff 	bl	-332(0xffffeb4) # 1c00492c <OLED_Set_Pos>
1c004a7c:	00150005 	move	$r5,$r0
1c004a80:	0282b804 	addi.w	$r4,$r0,174(0xae)
1c004a84:	57fe3fff 	bl	-452(0xffffe3c) # 1c0048c0 <OLED_WR_Byte>
1c004a88:	00150005 	move	$r5,$r0
1c004a8c:	00150004 	move	$r4,$r0
1c004a90:	57fe33ff 	bl	-464(0xffffe30) # 1c0048c0 <OLED_WR_Byte>
1c004a94:	00150005 	move	$r5,$r0
1c004a98:	02804004 	addi.w	$r4,$r0,16(0x10)
1c004a9c:	57fe27ff 	bl	-476(0xffffe24) # 1c0048c0 <OLED_WR_Byte>
1c004aa0:	00150005 	move	$r5,$r0
1c004aa4:	02810004 	addi.w	$r4,$r0,64(0x40)
1c004aa8:	57fe1bff 	bl	-488(0xffffe18) # 1c0048c0 <OLED_WR_Byte>
1c004aac:	00150005 	move	$r5,$r0
1c004ab0:	02820404 	addi.w	$r4,$r0,129(0x81)
1c004ab4:	57fe0fff 	bl	-500(0xffffe0c) # 1c0048c0 <OLED_WR_Byte>
1c004ab8:	00150005 	move	$r5,$r0
1c004abc:	02833c04 	addi.w	$r4,$r0,207(0xcf)
1c004ac0:	57fe03ff 	bl	-512(0xffffe00) # 1c0048c0 <OLED_WR_Byte>
1c004ac4:	00150005 	move	$r5,$r0
1c004ac8:	02828404 	addi.w	$r4,$r0,161(0xa1)
1c004acc:	57fdf7ff 	bl	-524(0xffffdf4) # 1c0048c0 <OLED_WR_Byte>
1c004ad0:	00150005 	move	$r5,$r0
1c004ad4:	02832004 	addi.w	$r4,$r0,200(0xc8)
1c004ad8:	57fdebff 	bl	-536(0xffffde8) # 1c0048c0 <OLED_WR_Byte>
1c004adc:	00150005 	move	$r5,$r0
1c004ae0:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c004ae4:	57fddfff 	bl	-548(0xffffddc) # 1c0048c0 <OLED_WR_Byte>
1c004ae8:	00150005 	move	$r5,$r0
1c004aec:	0282a004 	addi.w	$r4,$r0,168(0xa8)
1c004af0:	57fdd3ff 	bl	-560(0xffffdd0) # 1c0048c0 <OLED_WR_Byte>
1c004af4:	00150005 	move	$r5,$r0
1c004af8:	0280fc04 	addi.w	$r4,$r0,63(0x3f)
1c004afc:	57fdc7ff 	bl	-572(0xffffdc4) # 1c0048c0 <OLED_WR_Byte>
1c004b00:	00150005 	move	$r5,$r0
1c004b04:	02820404 	addi.w	$r4,$r0,129(0x81)
1c004b08:	57fdbbff 	bl	-584(0xffffdb8) # 1c0048c0 <OLED_WR_Byte>
1c004b0c:	00150005 	move	$r5,$r0
1c004b10:	0283fc04 	addi.w	$r4,$r0,255(0xff)
1c004b14:	57fdafff 	bl	-596(0xffffdac) # 1c0048c0 <OLED_WR_Byte>
1c004b18:	00150005 	move	$r5,$r0
1c004b1c:	02834c04 	addi.w	$r4,$r0,211(0xd3)
1c004b20:	57fda3ff 	bl	-608(0xffffda0) # 1c0048c0 <OLED_WR_Byte>
1c004b24:	00150005 	move	$r5,$r0
1c004b28:	00150004 	move	$r4,$r0
1c004b2c:	57fd97ff 	bl	-620(0xffffd94) # 1c0048c0 <OLED_WR_Byte>
1c004b30:	00150005 	move	$r5,$r0
1c004b34:	02835404 	addi.w	$r4,$r0,213(0xd5)
1c004b38:	57fd8bff 	bl	-632(0xffffd88) # 1c0048c0 <OLED_WR_Byte>
1c004b3c:	00150005 	move	$r5,$r0
1c004b40:	02820004 	addi.w	$r4,$r0,128(0x80)
1c004b44:	57fd7fff 	bl	-644(0xffffd7c) # 1c0048c0 <OLED_WR_Byte>
1c004b48:	00150005 	move	$r5,$r0
1c004b4c:	02836404 	addi.w	$r4,$r0,217(0xd9)
1c004b50:	57fd73ff 	bl	-656(0xffffd70) # 1c0048c0 <OLED_WR_Byte>
1c004b54:	00150005 	move	$r5,$r0
1c004b58:	0283c404 	addi.w	$r4,$r0,241(0xf1)
1c004b5c:	57fd67ff 	bl	-668(0xffffd64) # 1c0048c0 <OLED_WR_Byte>
1c004b60:	00150005 	move	$r5,$r0
1c004b64:	02836804 	addi.w	$r4,$r0,218(0xda)
1c004b68:	57fd5bff 	bl	-680(0xffffd58) # 1c0048c0 <OLED_WR_Byte>
1c004b6c:	00150005 	move	$r5,$r0
1c004b70:	02804804 	addi.w	$r4,$r0,18(0x12)
1c004b74:	57fd4fff 	bl	-692(0xffffd4c) # 1c0048c0 <OLED_WR_Byte>
1c004b78:	00150005 	move	$r5,$r0
1c004b7c:	02836c04 	addi.w	$r4,$r0,219(0xdb)
1c004b80:	57fd43ff 	bl	-704(0xffffd40) # 1c0048c0 <OLED_WR_Byte>
1c004b84:	00150005 	move	$r5,$r0
1c004b88:	02810004 	addi.w	$r4,$r0,64(0x40)
1c004b8c:	57fd37ff 	bl	-716(0xffffd34) # 1c0048c0 <OLED_WR_Byte>
1c004b90:	00150005 	move	$r5,$r0
1c004b94:	02808004 	addi.w	$r4,$r0,32(0x20)
1c004b98:	57fd2bff 	bl	-728(0xffffd28) # 1c0048c0 <OLED_WR_Byte>
1c004b9c:	00150005 	move	$r5,$r0
1c004ba0:	02800804 	addi.w	$r4,$r0,2(0x2)
1c004ba4:	57fd1fff 	bl	-740(0xffffd1c) # 1c0048c0 <OLED_WR_Byte>
1c004ba8:	00150005 	move	$r5,$r0
1c004bac:	02823404 	addi.w	$r4,$r0,141(0x8d)
1c004bb0:	57fd13ff 	bl	-752(0xffffd10) # 1c0048c0 <OLED_WR_Byte>
1c004bb4:	00150005 	move	$r5,$r0
1c004bb8:	02805004 	addi.w	$r4,$r0,20(0x14)
1c004bbc:	57fd07ff 	bl	-764(0xffffd04) # 1c0048c0 <OLED_WR_Byte>
1c004bc0:	00150005 	move	$r5,$r0
1c004bc4:	02829004 	addi.w	$r4,$r0,164(0xa4)
1c004bc8:	57fcfbff 	bl	-776(0xffffcf8) # 1c0048c0 <OLED_WR_Byte>
1c004bcc:	00150005 	move	$r5,$r0
1c004bd0:	02829804 	addi.w	$r4,$r0,166(0xa6)
1c004bd4:	57fcefff 	bl	-788(0xffffcec) # 1c0048c0 <OLED_WR_Byte>
1c004bd8:	00150005 	move	$r5,$r0
1c004bdc:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c004be0:	57fce3ff 	bl	-800(0xffffce0) # 1c0048c0 <OLED_WR_Byte>
1c004be4:	00150005 	move	$r5,$r0
1c004be8:	0282bc04 	addi.w	$r4,$r0,175(0xaf)
1c004bec:	57fcd7ff 	bl	-812(0xffffcd4) # 1c0048c0 <OLED_WR_Byte>
1c004bf0:	57fdc7ff 	bl	-572(0xffffdc4) # 1c0049b4 <OLED_Clear>
1c004bf4:	00150005 	move	$r5,$r0
1c004bf8:	00150004 	move	$r4,$r0
1c004bfc:	57fd33ff 	bl	-720(0xffffd30) # 1c00492c <OLED_Set_Pos>
1c004c00:	03400000 	andi	$r0,$r0,0x0
1c004c04:	28803061 	ld.w	$r1,$r3,12(0xc)
1c004c08:	28802076 	ld.w	$r22,$r3,8(0x8)
1c004c0c:	02804063 	addi.w	$r3,$r3,16(0x10)
1c004c10:	4c000020 	jirl	$r0,$r1,0

1c004c14 <Queue_Init>:
Queue_Init():
1c004c14:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004c18:	29807061 	st.w	$r1,$r3,28(0x1c)
1c004c1c:	29806076 	st.w	$r22,$r3,24(0x18)
1c004c20:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004c24:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004c28:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004c2c:	44000d80 	bnez	$r12,12(0xc) # 1c004c38 <Queue_Init+0x24>
1c004c30:	0015000c 	move	$r12,$r0
1c004c34:	50001800 	b	24(0x18) # 1c004c4c <Queue_Init+0x38>
1c004c38:	0284c006 	addi.w	$r6,$r0,304(0x130)
1c004c3c:	00150005 	move	$r5,$r0
1c004c40:	28bfb2c4 	ld.w	$r4,$r22,-20(0xfec)
1c004c44:	57e2fbff 	bl	-7432(0xfffe2f8) # 1c002f3c <memset>
1c004c48:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004c4c:	00150184 	move	$r4,$r12
1c004c50:	28807061 	ld.w	$r1,$r3,28(0x1c)
1c004c54:	28806076 	ld.w	$r22,$r3,24(0x18)
1c004c58:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004c5c:	4c000020 	jirl	$r0,$r1,0

1c004c60 <Queue_isEmpty>:
Queue_isEmpty():
1c004c60:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004c64:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004c68:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004c6c:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004c70:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004c74:	44000d80 	bnez	$r12,12(0xc) # 1c004c80 <Queue_isEmpty+0x20>
1c004c78:	0015000c 	move	$r12,$r0
1c004c7c:	50002400 	b	36(0x24) # 1c004ca0 <Queue_isEmpty+0x40>
1c004c80:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004c84:	2a40018d 	ld.hu	$r13,$r12,0
1c004c88:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004c8c:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c004c90:	5c000dac 	bne	$r13,$r12,12(0xc) # 1c004c9c <Queue_isEmpty+0x3c>
1c004c94:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004c98:	50000800 	b	8(0x8) # 1c004ca0 <Queue_isEmpty+0x40>
1c004c9c:	0015000c 	move	$r12,$r0
1c004ca0:	00150184 	move	$r4,$r12
1c004ca4:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004ca8:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004cac:	4c000020 	jirl	$r0,$r1,0

1c004cb0 <Queue_HadUse>:
Queue_HadUse():
1c004cb0:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004cb4:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004cb8:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004cbc:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004cc0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004cc4:	44000d80 	bnez	$r12,12(0xc) # 1c004cd0 <Queue_HadUse+0x20>
1c004cc8:	0015000c 	move	$r12,$r0
1c004ccc:	50003800 	b	56(0x38) # 1c004d04 <Queue_HadUse+0x54>
1c004cd0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004cd4:	2a40098d 	ld.hu	$r13,$r12,2(0x2)
1c004cd8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004cdc:	2a40018c 	ld.hu	$r12,$r12,0
1c004ce0:	001131ac 	sub.w	$r12,$r13,$r12
1c004ce4:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004ce8:	0284b18c 	addi.w	$r12,$r12,300(0x12c)
1c004cec:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c004cf0:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c004cf4:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c004cf8:	5c000980 	bne	$r12,$r0,8(0x8) # 1c004d00 <Queue_HadUse+0x50>
1c004cfc:	002a0007 	break	0x7
1c004d00:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c004d04:	00150184 	move	$r4,$r12
1c004d08:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004d0c:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004d10:	4c000020 	jirl	$r0,$r1,0

1c004d14 <Queue_NoUse>:
Queue_NoUse():
1c004d14:	02bf8063 	addi.w	$r3,$r3,-32(0xfe0)
1c004d18:	29807076 	st.w	$r22,$r3,28(0x1c)
1c004d1c:	02808076 	addi.w	$r22,$r3,32(0x20)
1c004d20:	29bfb2c4 	st.w	$r4,$r22,-20(0xfec)
1c004d24:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004d28:	44000d80 	bnez	$r12,12(0xc) # 1c004d34 <Queue_NoUse+0x20>
1c004d2c:	0015000c 	move	$r12,$r0
1c004d30:	50004000 	b	64(0x40) # 1c004d70 <Queue_NoUse+0x5c>
1c004d34:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004d38:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c004d3c:	0015018d 	move	$r13,$r12
1c004d40:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004d44:	2a40018c 	ld.hu	$r12,$r12,0
1c004d48:	001131ac 	sub.w	$r12,$r13,$r12
1c004d4c:	0284b18d 	addi.w	$r13,$r12,300(0x12c)
1c004d50:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c004d54:	0020b1ae 	mod.w	$r14,$r13,$r12
1c004d58:	5c000980 	bne	$r12,$r0,8(0x8) # 1c004d60 <Queue_NoUse+0x4c>
1c004d5c:	002a0007 	break	0x7
1c004d60:	006f81cc 	bstrpick.w	$r12,$r14,0xf,0x0
1c004d64:	0284ac0d 	addi.w	$r13,$r0,299(0x12b)
1c004d68:	001131ac 	sub.w	$r12,$r13,$r12
1c004d6c:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004d70:	00150184 	move	$r4,$r12
1c004d74:	28807076 	ld.w	$r22,$r3,28(0x1c)
1c004d78:	02808063 	addi.w	$r3,$r3,32(0x20)
1c004d7c:	4c000020 	jirl	$r0,$r1,0

1c004d80 <Queue_Wirte>:
Queue_Wirte():
1c004d80:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004d84:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004d88:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004d8c:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004d90:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004d94:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004d98:	001500cc 	move	$r12,$r6
1c004d9c:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c004da0:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004da4:	44000d80 	bnez	$r12,12(0xc) # 1c004db0 <Queue_Wirte+0x30>
1c004da8:	0015000c 	move	$r12,$r0
1c004dac:	50009c00 	b	156(0x9c) # 1c004e48 <Queue_Wirte+0xc8>
1c004db0:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c004db4:	57ff63ff 	bl	-160(0xfffff60) # 1c004d14 <Queue_NoUse>
1c004db8:	0015008c 	move	$r12,$r4
1c004dbc:	0015018d 	move	$r13,$r12
1c004dc0:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c004dc4:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c004dd0 <Queue_Wirte+0x50>
1c004dc8:	0015000c 	move	$r12,$r0
1c004dcc:	50007c00 	b	124(0x7c) # 1c004e48 <Queue_Wirte+0xc8>
1c004dd0:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004dd4:	50006400 	b	100(0x64) # 1c004e38 <Queue_Wirte+0xb8>
1c004dd8:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004ddc:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c004de0:	001031ac 	add.w	$r12,$r13,$r12
1c004de4:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004de8:	2a4009ad 	ld.hu	$r13,$r13,2(0x2)
1c004dec:	001501ae 	move	$r14,$r13
1c004df0:	2a00018d 	ld.bu	$r13,$r12,0
1c004df4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004df8:	0010398c 	add.w	$r12,$r12,$r14
1c004dfc:	2900118d 	st.b	$r13,$r12,4(0x4)
1c004e00:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004e04:	2a40098c 	ld.hu	$r12,$r12,2(0x2)
1c004e08:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004e0c:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c004e10:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c004e14:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c004e18:	5c000980 	bne	$r12,$r0,8(0x8) # 1c004e20 <Queue_Wirte+0xa0>
1c004e1c:	002a0007 	break	0x7
1c004e20:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c004e24:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004e28:	2940098d 	st.h	$r13,$r12,2(0x2)
1c004e2c:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004e30:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004e34:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004e38:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c004e3c:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004e40:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c004dd8 <Queue_Wirte+0x58>
1c004e44:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004e48:	00150184 	move	$r4,$r12
1c004e4c:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004e50:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004e54:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004e58:	4c000020 	jirl	$r0,$r1,0

1c004e5c <Queue_Read>:
Queue_Read():
1c004e5c:	02bf4063 	addi.w	$r3,$r3,-48(0xfd0)
1c004e60:	2980b061 	st.w	$r1,$r3,44(0x2c)
1c004e64:	2980a076 	st.w	$r22,$r3,40(0x28)
1c004e68:	0280c076 	addi.w	$r22,$r3,48(0x30)
1c004e6c:	29bf72c4 	st.w	$r4,$r22,-36(0xfdc)
1c004e70:	29bf62c5 	st.w	$r5,$r22,-40(0xfd8)
1c004e74:	001500cc 	move	$r12,$r6
1c004e78:	297f5acc 	st.h	$r12,$r22,-42(0xfd6)
1c004e7c:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004e80:	44000d80 	bnez	$r12,12(0xc) # 1c004e8c <Queue_Read+0x30>
1c004e84:	0015000c 	move	$r12,$r0
1c004e88:	50009c00 	b	156(0x9c) # 1c004f24 <Queue_Read+0xc8>
1c004e8c:	28bf72c4 	ld.w	$r4,$r22,-36(0xfdc)
1c004e90:	57fe23ff 	bl	-480(0xffffe20) # 1c004cb0 <Queue_HadUse>
1c004e94:	0015008c 	move	$r12,$r4
1c004e98:	0015018d 	move	$r13,$r12
1c004e9c:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c004ea0:	6c000dac 	bgeu	$r13,$r12,12(0xc) # 1c004eac <Queue_Read+0x50>
1c004ea4:	0015000c 	move	$r12,$r0
1c004ea8:	50007c00 	b	124(0x7c) # 1c004f24 <Queue_Read+0xc8>
1c004eac:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004eb0:	50006400 	b	100(0x64) # 1c004f14 <Queue_Read+0xb8>
1c004eb4:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004eb8:	2a40018c 	ld.hu	$r12,$r12,0
1c004ebc:	0015018e 	move	$r14,$r12
1c004ec0:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004ec4:	28bf62cd 	ld.w	$r13,$r22,-40(0xfd8)
1c004ec8:	001031ac 	add.w	$r12,$r13,$r12
1c004ecc:	28bf72cd 	ld.w	$r13,$r22,-36(0xfdc)
1c004ed0:	001039ad 	add.w	$r13,$r13,$r14
1c004ed4:	2a0011ad 	ld.bu	$r13,$r13,4(0x4)
1c004ed8:	2900018d 	st.b	$r13,$r12,0
1c004edc:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004ee0:	2a40018c 	ld.hu	$r12,$r12,0
1c004ee4:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004ee8:	006f818d 	bstrpick.w	$r13,$r12,0xf,0x0
1c004eec:	0284b00c 	addi.w	$r12,$r0,300(0x12c)
1c004ef0:	0021b1ae 	mod.wu	$r14,$r13,$r12
1c004ef4:	5c000980 	bne	$r12,$r0,8(0x8) # 1c004efc <Queue_Read+0xa0>
1c004ef8:	002a0007 	break	0x7
1c004efc:	006f81cd 	bstrpick.w	$r13,$r14,0xf,0x0
1c004f00:	28bf72cc 	ld.w	$r12,$r22,-36(0xfdc)
1c004f04:	2940018d 	st.h	$r13,$r12,0
1c004f08:	28bfb2cc 	ld.w	$r12,$r22,-20(0xfec)
1c004f0c:	0280058c 	addi.w	$r12,$r12,1(0x1)
1c004f10:	29bfb2cc 	st.w	$r12,$r22,-20(0xfec)
1c004f14:	2a7f5acc 	ld.hu	$r12,$r22,-42(0xfd6)
1c004f18:	28bfb2cd 	ld.w	$r13,$r22,-20(0xfec)
1c004f1c:	63ff99ac 	blt	$r13,$r12,-104(0x3ff98) # 1c004eb4 <Queue_Read+0x58>
1c004f20:	0280040c 	addi.w	$r12,$r0,1(0x1)
1c004f24:	00150184 	move	$r4,$r12
1c004f28:	2880b061 	ld.w	$r1,$r3,44(0x2c)
1c004f2c:	2880a076 	ld.w	$r22,$r3,40(0x28)
1c004f30:	0280c063 	addi.w	$r3,$r3,48(0x30)
1c004f34:	4c000020 	jirl	$r0,$r1,0

1c004f38 <main>:
main():
1c004f38:	02bf0063 	addi.w	$r3,$r3,-64(0xfc0)
1c004f3c:	2980f061 	st.w	$r1,$r3,60(0x3c)
1c004f40:	2980e076 	st.w	$r22,$r3,56(0x38)
1c004f44:	02810076 	addi.w	$r22,$r3,64(0x40)
1c004f48:	29bf32c4 	st.w	$r4,$r22,-52(0xfcc)
1c004f4c:	29bf22c5 	st.w	$r5,$r22,-56(0xfc8)
1c004f50:	29bfb2c0 	st.w	$r0,$r22,-20(0xfec)
1c004f54:	293faec0 	st.b	$r0,$r22,-21(0xfeb)
1c004f58:	293faac0 	st.b	$r0,$r22,-22(0xfea)
1c004f5c:	293fa6c0 	st.b	$r0,$r22,-23(0xfe9)
1c004f60:	293fa2c0 	st.b	$r0,$r22,-24(0xfe8)
1c004f64:	57daf3ff 	bl	-9488(0xfffdaf0) # 1c002a54 <SystemClockInit>
1c004f68:	57c3c7ff 	bl	-15420(0xfffc3c4) # 1c00132c <GPIOInit>
1c004f6c:	57f657ff 	bl	-2476(0xffff654) # 1c0045c0 <IIC_Init>
1c004f70:	57fae3ff 	bl	-1312(0xffffae0) # 1c004a50 <OLED_Init>
1c004f74:	02819004 	addi.w	$r4,$r0,100(0x64)
1c004f78:	57e71bff 	bl	-6376(0xfffe718) # 1c003690 <timer_init>
1c004f7c:	57db97ff 	bl	-9324(0xfffdb94) # 1c002b10 <EnableInt>
1c004f80:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004f84:	28824084 	ld.w	$r4,$r4,144(0x90)
1c004f88:	57fc8fff 	bl	-884(0xffffc8c) # 1c004c14 <Queue_Init>
1c004f8c:	1400004c 	lu12i.w	$r12,2(0x2)
1c004f90:	03960184 	ori	$r4,$r12,0x580
1c004f94:	57d43fff 	bl	-11204(0xfffd43c) # 1c0023d0 <Uart0_init>
1c004f98:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004f9c:	2882018c 	ld.w	$r12,$r12,128(0x80)
1c004fa0:	0280140d 	addi.w	$r13,$r0,5(0x5)
1c004fa4:	2980018d 	st.w	$r13,$r12,0
1c004fa8:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004fac:	2881a084 	ld.w	$r4,$r4,104(0x68)
1c004fb0:	57fcb3ff 	bl	-848(0xffffcb0) # 1c004c60 <Queue_isEmpty>
1c004fb4:	0015008c 	move	$r12,$r4
1c004fb8:	44009180 	bnez	$r12,144(0x90) # 1c005048 <main+0x110>
1c004fbc:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004fc0:	28815084 	ld.w	$r4,$r4,84(0x54)
1c004fc4:	57fcefff 	bl	-788(0xffffcec) # 1c004cb0 <Queue_HadUse>
1c004fc8:	0015008c 	move	$r12,$r4
1c004fcc:	0067818d 	bstrpick.w	$r13,$r12,0x7,0x0
1c004fd0:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004fd4:	2880e18c 	ld.w	$r12,$r12,56(0x38)
1c004fd8:	2900018d 	st.b	$r13,$r12,0
1c004fdc:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c004fe0:	2880b18c 	ld.w	$r12,$r12,44(0x2c)
1c004fe4:	2a00018c 	ld.bu	$r12,$r12,0
1c004fe8:	006f818c 	bstrpick.w	$r12,$r12,0xf,0x0
1c004fec:	00150186 	move	$r6,$r12
1c004ff0:	1cc7ff85 	pcaddu12i	$r5,409596(0x63ffc)
1c004ff4:	2880b0a5 	ld.w	$r5,$r5,44(0x2c)
1c004ff8:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c004ffc:	28806084 	ld.w	$r4,$r4,24(0x18)
1c005000:	57fe5fff 	bl	-420(0xffffe5c) # 1c004e5c <Queue_Read>
1c005004:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c005008:	2880618c 	ld.w	$r12,$r12,24(0x18)
1c00500c:	2a00018d 	ld.bu	$r13,$r12,0
1c005010:	0280c40c 	addi.w	$r12,$r0,49(0x31)
1c005014:	5fff95ac 	bne	$r13,$r12,-108(0x3ff94) # 1c004fa8 <main+0x70>
1c005018:	1cc7ff8c 	pcaddu12i	$r12,409596(0x63ffc)
1c00501c:	2880018c 	ld.w	$r12,$r12,0
1c005020:	02803c0d 	addi.w	$r13,$r0,15(0xf)
1c005024:	2980018d 	st.w	$r13,$r12,0
1c005028:	028fa004 	addi.w	$r4,$r0,1000(0x3e8)
1c00502c:	57ded3ff 	bl	-8496(0xfffded0) # 1c002efc <delay_ms>
1c005030:	0284b006 	addi.w	$r6,$r0,300(0x12c)
1c005034:	00150005 	move	$r5,$r0
1c005038:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c00503c:	28bf9084 	ld.w	$r4,$r4,-28(0xfe4)
1c005040:	57deffff 	bl	-8452(0xfffdefc) # 1c002f3c <memset>
1c005044:	53ff67ff 	b	-156(0xfffff64) # 1c004fa8 <main+0x70>
1c005048:	0284b006 	addi.w	$r6,$r0,300(0x12c)
1c00504c:	00150005 	move	$r5,$r0
1c005050:	1cc7ff84 	pcaddu12i	$r4,409596(0x63ffc)
1c005054:	28bf3084 	ld.w	$r4,$r4,-52(0xfcc)
1c005058:	57dee7ff 	bl	-8476(0xfffdee4) # 1c002f3c <memset>
1c00505c:	53ff4fff 	b	-180(0xfffff4c) # 1c004fa8 <main+0x70>

Disassembly of section .rodata:

1c005060 <msg_wakeup>:
msg_wakeup():
1c005060:	656b6177 	bge	$r11,$r23,93024(0x16b60) # 1c01bbc0 <_sidata+0x16130>
1c005064:	0a217075 	xvfmadd.d	$xr21,$xr3,$xr28,$xr2
	...

1c005069 <hexdecarr>:
hexdecarr():
1c005069:	33323130 	xvstelm.w	$xr16,$r9,-464(0x230),0x4
1c00506d:	37363534 	0x37363534
1c005071:	62613938 	blt	$r9,$r24,-106184(0x26138) # 1bfeb1a9 <_start-0x14e57>
1c005075:	66656463 	bge	$r3,$r3,-105116(0x26564) # 1bfeb5d9 <_start-0x14a27>
1c005079:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c00507d:	79654b0a 	0x79654b0a
1c005081:	73657220 	vssrani.wu.d	$vr0,$vr17,0x1c
1c005085:	0d217465 	xvbitsel.v	$xr5,$xr3,$xr29,$xr2
1c005089:	0d00000a 	fsel	$f10,$f0,$f0,$fcc0
1c00508d:	6970730a 	bltu	$r24,$r10,94320(0x17070) # 1c01c0fd <_sidata+0x1666d>
1c005091:	6f6f6220 	bgeu	$r17,$r0,-37024(0x36f60) # 1bffbff1 <_start-0x400f>
1c005095:	0d000074 	fsel	$f20,$f3,$f0,$fcc0
1c005099:	676f640a 	bge	$r0,$r10,-37020(0x36f64) # 1bffbffd <_start-0x4003>
1c00509d:	72616220 	0x72616220
1c0050a1:	0a0d216b 	0x0a0d216b
1c0050a5:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0050a9:	6b61770a 	bltu	$r24,$r10,-40588(0x36174) # 1bffb21d <_start-0x4de3>
1c0050ad:	21705565 	sc.w	$r5,$r11,28756(0x7054)
1c0050b1:	b4000a0d 	0xb4000a0d
1c0050b5:	d01c001d 	0xd01c001d
1c0050b9:	d01c001e 	0xd01c001e
1c0050bd:	d01c001e 	0xd01c001e
1c0050c1:	d01c001e 	0xd01c001e
1c0050c5:	d01c001e 	0xd01c001e
1c0050c9:	d01c001e 	0xd01c001e
1c0050cd:	d01c001e 	0xd01c001e
1c0050d1:	d01c001e 	0xd01c001e
1c0050d5:	d01c001e 	0xd01c001e
1c0050d9:	d01c001e 	0xd01c001e
1c0050dd:	cc1c001e 	0xcc1c001e
1c0050e1:	541c001d 	bl	7609344(0x741c00) # 1c746ce1 <_sidata+0x741251>
1c0050e5:	541c001e 	bl	7871488(0x781c00) # 1c786ce5 <_sidata+0x781255>
1c0050e9:	541c001e 	bl	7871488(0x781c00) # 1c786ce9 <_sidata+0x781259>
1c0050ed:	541c001e 	bl	7871488(0x781c00) # 1c786ced <_sidata+0x78125d>
1c0050f1:	541c001e 	bl	7871488(0x781c00) # 1c786cf1 <_sidata+0x781261>
1c0050f5:	541c001e 	bl	7871488(0x781c00) # 1c786cf5 <_sidata+0x781265>
1c0050f9:	541c001e 	bl	7871488(0x781c00) # 1c786cf9 <_sidata+0x781269>
1c0050fd:	541c001e 	bl	7871488(0x781c00) # 1c786cfd <_sidata+0x78126d>
1c005101:	541c001e 	bl	7871488(0x781c00) # 1c786d01 <_sidata+0x781271>
1c005105:	d01c001e 	0xd01c001e
1c005109:	d01c001e 	0xd01c001e
1c00510d:	d01c001e 	0xd01c001e
1c005111:	d01c001e 	0xd01c001e
1c005115:	d01c001e 	0xd01c001e
1c005119:	d01c001e 	0xd01c001e
1c00511d:	d01c001e 	0xd01c001e
1c005121:	d01c001e 	0xd01c001e
1c005125:	d01c001e 	0xd01c001e
1c005129:	d01c001e 	0xd01c001e
1c00512d:	d01c001e 	0xd01c001e
1c005131:	d01c001e 	0xd01c001e
1c005135:	d01c001e 	0xd01c001e
1c005139:	d01c001e 	0xd01c001e
1c00513d:	d01c001e 	0xd01c001e
1c005141:	d01c001e 	0xd01c001e
1c005145:	d01c001e 	0xd01c001e
1c005149:	d01c001e 	0xd01c001e
1c00514d:	d01c001e 	0xd01c001e
1c005151:	d01c001e 	0xd01c001e
1c005155:	d01c001e 	0xd01c001e
1c005159:	d01c001e 	0xd01c001e
1c00515d:	d01c001e 	0xd01c001e
1c005161:	d01c001e 	0xd01c001e
1c005165:	d01c001e 	0xd01c001e
1c005169:	d01c001e 	0xd01c001e
1c00516d:	d01c001e 	0xd01c001e
1c005171:	d01c001e 	0xd01c001e
1c005175:	d01c001e 	0xd01c001e
1c005179:	d01c001e 	0xd01c001e
1c00517d:	d01c001e 	0xd01c001e
1c005181:	d01c001e 	0xd01c001e
1c005185:	d01c001e 	0xd01c001e
1c005189:	d01c001e 	0xd01c001e
1c00518d:	d01c001e 	0xd01c001e
1c005191:	d01c001e 	0xd01c001e
1c005195:	d01c001e 	0xd01c001e
1c005199:	d01c001e 	0xd01c001e
1c00519d:	d01c001e 	0xd01c001e
1c0051a1:	d01c001e 	0xd01c001e
1c0051a5:	441c001e 	bnez	$r0,-517120(0x781c00) # 1bf86da5 <_start-0x7925b>
1c0051a9:	6c1c001d 	bgeu	$r0,$r29,7168(0x1c00) # 1c006da9 <_sidata+0x1319>
1c0051ad:	d41c001c 	0xd41c001c
1c0051b1:	d01c001c 	0xd01c001c
1c0051b5:	d01c001e 	0xd01c001e
1c0051b9:	d01c001e 	0xd01c001e
1c0051bd:	d01c001e 	0xd01c001e
1c0051c1:	d01c001e 	0xd01c001e
1c0051c5:	d01c001e 	0xd01c001e
1c0051c9:	d01c001e 	0xd01c001e
1c0051cd:	d01c001e 	0xd01c001e
1c0051d1:	d01c001e 	0xd01c001e
1c0051d5:	d01c001e 	0xd01c001e
1c0051d9:	0c1c001e 	0x0c1c001e
1c0051dd:	7c1c001d 	0x7c1c001d
1c0051e1:	d01c001d 	0xd01c001d
1c0051e5:	d01c001e 	0xd01c001e
1c0051e9:	401c001e 	beqz	$r0,-517120(0x781c00) # 1bf86de9 <_start-0x79217>
1c0051ed:	d01c001c 	0xd01c001c
1c0051f1:	9c1c001e 	0x9c1c001e
1c0051f5:	d01c001c 	0xd01c001c
1c0051f9:	d01c001e 	0xd01c001e
1c0051fd:	7c1c001e 	0x7c1c001e
1c005201:	0a1c001d 	xvfmadd.s	$xr29,$xr0,$xr0,$xr24
1c005205:	7c000000 	0x7c000000
1c005209:	7c7c7c7c 	0x7c7c7c7c
1c00520d:	7c7c7c7c 	0x7c7c7c7c
1c005211:	7c7c7c7c 	0x7c7c7c7c
1c005215:	7c7c7c7c 	0x7c7c7c7c
1c005219:	7c7c7c7c 	0x7c7c7c7c
1c00521d:	7c7c7c7c 	0x7c7c7c7c
1c005221:	7c7c7c7c 	0x7c7c7c7c
1c005225:	7c7c7c7c 	0x7c7c7c7c
1c005229:	7c7c7c7c 	0x7c7c7c7c
1c00522d:	7c7c7c7c 	0x7c7c7c7c
1c005231:	7c7c7c7c 	0x7c7c7c7c
1c005235:	7c7c7c7c 	0x7c7c7c7c
1c005239:	7c7c7c7c 	0x7c7c7c7c
1c00523d:	7c7c7c7c 	0x7c7c7c7c
1c005241:	7c7c7c7c 	0x7c7c7c7c
1c005245:	7c7c7c7c 	0x7c7c7c7c
1c005249:	7c7c7c7c 	0x7c7c7c7c
1c00524d:	7c7c7c7c 	0x7c7c7c7c
1c005251:	7c7c7c7c 	0x7c7c7c7c
1c005255:	7c7c7c7c 	0x7c7c7c7c
1c005259:	7c7c7c7c 	0x7c7c7c7c
1c00525d:	7c7c7c7c 	0x7c7c7c7c
1c005261:	7c7c7c7c 	0x7c7c7c7c
1c005265:	7c7c7c7c 	0x7c7c7c7c
1c005269:	7c00000a 	0x7c00000a
1c00526d:	7c20207c 	0x7c20207c
1c005271:	7c7c7c7c 	0x7c7c7c7c
1c005275:	7c7c7c7c 	0x7c7c7c7c
1c005279:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c00527d:	7c202020 	0x7c202020
1c005281:	7c7c7c7c 	0x7c7c7c7c
1c005285:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c005289:	7c202020 	0x7c202020
1c00528d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005291:	7c7c2020 	0x7c7c2020
1c005295:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005299:	7c7c7c20 	0x7c7c7c20
1c00529d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0052a1:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0052a5:	7c7c7c7c 	0x7c7c7c7c
1c0052a9:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0052ad:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0052b1:	7c7c7c7c 	0x7c7c7c7c
1c0052b5:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0052b9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0052bd:	7c7c7c7c 	0x7c7c7c7c
1c0052c1:	7c202020 	0x7c202020
1c0052c5:	7c7c7c7c 	0x7c7c7c7c
1c0052c9:	7c7c2020 	0x7c7c2020
1c0052cd:	7c00000a 	0x7c00000a
1c0052d1:	7c20207c 	0x7c20207c
1c0052d5:	7c7c7c7c 	0x7c7c7c7c
1c0052d9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0052dd:	7c7c2020 	0x7c7c2020
1c0052e1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0052e5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0052e9:	7c7c2020 	0x7c7c2020
1c0052ed:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0052f1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0052f5:	7c202020 	0x7c202020
1c0052f9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0052fd:	7c7c7c20 	0x7c7c7c20
1c005301:	7c20207c 	0x7c20207c
1c005305:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005309:	7c7c7c20 	0x7c7c7c20
1c00530d:	7c202020 	0x7c202020
1c005311:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005315:	7c7c7c20 	0x7c7c7c20
1c005319:	7c202020 	0x7c202020
1c00531d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005321:	7c7c7c20 	0x7c7c7c20
1c005325:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c005329:	7c7c7c7c 	0x7c7c7c7c
1c00532d:	7c7c2020 	0x7c7c2020
1c005331:	7c00000a 	0x7c00000a
1c005335:	7c20207c 	0x7c20207c
1c005339:	7c7c7c7c 	0x7c7c7c7c
1c00533d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005341:	7c7c7c20 	0x7c7c7c20
1c005345:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005349:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00534d:	7c7c7c20 	0x7c7c7c20
1c005351:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005355:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005359:	20207c20 	ll.w	$r0,$r1,8316(0x207c)
1c00535d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005361:	7c7c7c20 	0x7c7c7c20
1c005365:	7c7c2020 	0x7c7c2020
1c005369:	7c7c7c7c 	0x7c7c7c7c
1c00536d:	7c7c7c7c 	0x7c7c7c7c
1c005371:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c005375:	7c7c7c20 	0x7c7c7c20
1c005379:	7c7c7c7c 	0x7c7c7c7c
1c00537d:	7c7c2020 	0x7c7c2020
1c005381:	7c7c7c7c 	0x7c7c7c7c
1c005385:	7c7c7c20 	0x7c7c7c20
1c005389:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c00538d:	7c7c7c20 	0x7c7c7c20
1c005391:	7c7c2020 	0x7c7c2020
1c005395:	7c00000a 	0x7c00000a
1c005399:	7c20207c 	0x7c20207c
1c00539d:	7c7c7c7c 	0x7c7c7c7c
1c0053a1:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0053a5:	7c7c7c20 	0x7c7c7c20
1c0053a9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0053ad:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0053b1:	7c7c7c20 	0x7c7c7c20
1c0053b5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0053b9:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0053bd:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c0053c1:	207c7c20 	ll.w	$r0,$r1,31868(0x7c7c)
1c0053c5:	7c7c7c20 	0x7c7c7c20
1c0053c9:	7c7c2020 	0x7c7c2020
1c0053cd:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0053d1:	7c7c7c20 	0x7c7c7c20
1c0053d5:	7c7c7c7c 	0x7c7c7c7c
1c0053d9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0053dd:	7c7c7c7c 	0x7c7c7c7c
1c0053e1:	7c7c2020 	0x7c7c2020
1c0053e5:	7c7c7c7c 	0x7c7c7c7c
1c0053e9:	7c7c7c20 	0x7c7c7c20
1c0053ed:	7c7c2020 	0x7c7c2020
1c0053f1:	7c7c2020 	0x7c7c2020
1c0053f5:	7c7c2020 	0x7c7c2020
1c0053f9:	7c00000a 	0x7c00000a
1c0053fd:	7c20207c 	0x7c20207c
1c005401:	7c7c7c7c 	0x7c7c7c7c
1c005405:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005409:	7c7c7c20 	0x7c7c7c20
1c00540d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005411:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005415:	7c7c7c20 	0x7c7c7c20
1c005419:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00541d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005421:	7c7c7c20 	0x7c7c7c20
1c005425:	207c2020 	ll.w	$r0,$r1,31776(0x7c20)
1c005429:	7c7c7c20 	0x7c7c7c20
1c00542d:	7c7c2020 	0x7c7c2020
1c005431:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005435:	7c7c7c20 	0x7c7c7c20
1c005439:	7c7c7c7c 	0x7c7c7c7c
1c00543d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005441:	7c7c7c20 	0x7c7c7c20
1c005445:	7c7c2020 	0x7c7c2020
1c005449:	7c7c7c7c 	0x7c7c7c7c
1c00544d:	7c7c7c20 	0x7c7c7c20
1c005451:	7c7c2020 	0x7c7c2020
1c005455:	7c20207c 	0x7c20207c
1c005459:	7c7c2020 	0x7c7c2020
1c00545d:	7c00000a 	0x7c00000a
1c005461:	7c20207c 	0x7c20207c
1c005465:	7c7c7c7c 	0x7c7c7c7c
1c005469:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c00546d:	7c7c2020 	0x7c7c2020
1c005471:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c005475:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005479:	7c7c2020 	0x7c7c2020
1c00547d:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c005481:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005485:	7c7c7c20 	0x7c7c7c20
1c005489:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c00548d:	7c7c7c20 	0x7c7c7c20
1c005491:	7c202020 	0x7c202020
1c005495:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005499:	7c7c7c20 	0x7c7c7c20
1c00549d:	7c202020 	0x7c202020
1c0054a1:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0054a5:	7c7c7c7c 	0x7c7c7c7c
1c0054a9:	7c202020 	0x7c202020
1c0054ad:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0054b1:	7c7c7c20 	0x7c7c7c20
1c0054b5:	7c7c2020 	0x7c7c2020
1c0054b9:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0054bd:	7c7c2020 	0x7c7c2020
1c0054c1:	7c00000a 	0x7c00000a
1c0054c5:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0054c9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0054cd:	7c7c7c7c 	0x7c7c7c7c
1c0054d1:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0054d5:	7c202020 	0x7c202020
1c0054d9:	7c7c7c7c 	0x7c7c7c7c
1c0054dd:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0054e1:	7c202020 	0x7c202020
1c0054e5:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c0054e9:	7c7c7c20 	0x7c7c7c20
1c0054ed:	20207c7c 	ll.w	$r28,$r3,8316(0x207c)
1c0054f1:	7c7c7c20 	0x7c7c7c20
1c0054f5:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c0054f9:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c0054fd:	7c7c7c7c 	0x7c7c7c7c
1c005501:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c005505:	7c202020 	0x7c202020
1c005509:	7c7c7c7c 	0x7c7c7c7c
1c00550d:	2020207c 	ll.w	$r28,$r3,8224(0x2020)
1c005511:	20202020 	ll.w	$r0,$r1,8224(0x2020)
1c005515:	7c7c7c7c 	0x7c7c7c7c
1c005519:	7c7c2020 	0x7c7c2020
1c00551d:	207c7c7c 	ll.w	$r28,$r3,31868(0x7c7c)
1c005521:	7c7c2020 	0x7c7c2020
1c005525:	7c00000a 	0x7c00000a
1c005529:	7c7c7c7c 	0x7c7c7c7c
1c00552d:	7c7c7c7c 	0x7c7c7c7c
1c005531:	7c7c7c7c 	0x7c7c7c7c
1c005535:	7c7c7c7c 	0x7c7c7c7c
1c005539:	7c7c7c7c 	0x7c7c7c7c
1c00553d:	7c7c7c7c 	0x7c7c7c7c
1c005541:	7c7c7c7c 	0x7c7c7c7c
1c005545:	7c7c7c7c 	0x7c7c7c7c
1c005549:	7c7c7c7c 	0x7c7c7c7c
1c00554d:	325b7c7c 	xvldrepl.h	$xr28,$r3,-578(0xdbe)
1c005551:	20303230 	ll.w	$r16,$r17,12336(0x3030)
1c005555:	4e4f4f4c 	jirl	$r12,$r26,-110772(0x24f4c)
1c005559:	4e4f5347 	jirl	$r7,$r26,-110768(0x24f50)
1c00555d:	7c7c7c5d 	0x7c7c7c5d
1c005561:	7c7c7c7c 	0x7c7c7c7c
1c005565:	7c7c7c7c 	0x7c7c7c7c
1c005569:	7c7c7c7c 	0x7c7c7c7c
1c00556d:	7c7c7c7c 	0x7c7c7c7c
1c005571:	7c7c7c7c 	0x7c7c7c7c
1c005575:	7c7c7c7c 	0x7c7c7c7c
1c005579:	7c7c7c7c 	0x7c7c7c7c
1c00557d:	7c7c7c7c 	0x7c7c7c7c
1c005581:	7c7c7c7c 	0x7c7c7c7c
1c005585:	7c7c7c7c 	0x7c7c7c7c
1c005589:	0900000a 	0x0900000a
1c00558d:	0a006425 	0x0a006425
1c005591:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c005595:	776f440a 	xvssrarni.du.q	$xr10,$xr0,0x51
1c005599:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c00559d:	0050550a 	0x0050550a
1c0055a1:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0055a5:	6c754d0a 	bgeu	$r8,$r10,30028(0x754c) # 1c00caf1 <_sidata+0x7061>
1c0055a9:	776f4469 	xvssrarni.du.q	$xr9,$xr3,0x51
1c0055ad:	0d00006e 	fsel	$f14,$f3,$f0,$fcc0
1c0055b1:	756f430a 	0x756f430a
1c0055b5:	4f20746e 	jirl	$r14,$r3,-57228(0x32074)
1c0055b9:	0d000056 	fsel	$f22,$f2,$f0,$fcc0
1c0055bd:	3030090a 	0x3030090a
1c0055c1:	09313009 	0x09313009
1c0055c5:	30093230 	0x30093230
1c0055c9:	34300933 	0x34300933
1c0055cd:	09353009 	0x09353009
1c0055d1:	30093630 	0x30093630
1c0055d5:	38300937 	fldx.s	$f23,$r9,$r2
1c0055d9:	09393009 	0x09393009
1c0055dd:	31093031 	0x31093031
1c0055e1:	0d000031 	fsel	$f17,$f1,$f0,$fcc0
1c0055e5:	746e630a 	0x746e630a
1c0055e9:	09000000 	0x09000000
1c0055ed:	00643425 	bstrins.w	$r5,$r1,0x4,0xd
1c0055f1:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c0055f5:	7361420a 	vssrani.w.d	$vr10,$vr16,0x10
1c0055f9:	6c615665 	bgeu	$r19,$r5,24916(0x6154) # 1c00b74d <_sidata+0x5cbd>
1c0055fd:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c005601:	6275530a 	blt	$r24,$r10,-101040(0x27550) # 1bfecb51 <_start-0x134af>
1c005605:	006c6156 	bstrins.w	$r22,$r10,0xc,0x18
1c005609:	09000000 	0x09000000
1c00560d:	00643225 	bstrins.w	$r5,$r17,0x4,0xc
1c005611:	09000000 	0x09000000
1c005615:	00643325 	bstrins.w	$r5,$r25,0x4,0xc
1c005619:	0d000000 	fsel	$f0,$f0,$f0,$fcc0
1c00561d:	203c200a 	ll.w	$r10,$r0,15392(0x3c20)
1c005621:	3a515249 	0x3a515249
1c005625:	20642520 	ll.w	$r0,$r9,25636(0x6424)
1c005629:	636e7566 	blt	$r11,$r6,-37260(0x36e74) # 1bffc49d <_start-0x3b63>
1c00562d:	2073253a 	ll.w	$r26,$r9,29476(0x7324)
1c005631:	0d3e2020 	0x0d3e2020
1c005635:	0a00000a 	0x0a00000a
1c005639:	2e2e2e2e 	0x2e2e2e2e
1c00563d:	2e2e2e2e 	0x2e2e2e2e
1c005641:	2e2e2e2e 	0x2e2e2e2e
1c005645:	464f532e 	bnez	$r25,3821392(0x3a4f50) # 1c3aa595 <_sidata+0x3a4b05>
1c005649:	4e495f54 	jirl	$r20,$r26,-112292(0x2495c)
1c00564d:	2e2e2e54 	0x2e2e2e54
1c005651:	2e2e2e2e 	0x2e2e2e2e
1c005655:	2e2e2e2e 	0x2e2e2e2e
1c005659:	0a2e2e2e 	xvfmadd.d	$xr14,$xr17,$xr11,$xr28
1c00565d:	0d00000d 	fsel	$f13,$f0,$f0,$fcc0
1c005661:	2e2e2e0a 	0x2e2e2e0a
1c005665:	2e2e2e2e 	0x2e2e2e2e
1c005669:	2e2e2e2e 	0x2e2e2e2e
1c00566d:	41422e2e 	beqz	$r17,3752492(0x39422c) # 1c399899 <_sidata+0x393e09>
1c005671:	41465f54 	beqz	$r26,-3062180(0x51465c) # 1bd19ccd <_start-0x2e6333>
1c005675:	2e2e4c49 	0x2e2e4c49
1c005679:	2e2e2e2e 	0x2e2e2e2e
1c00567d:	2e2e2e2e 	0x2e2e2e2e
1c005681:	2e2e2e2e 	0x2e2e2e2e
1c005685:	0d000a0d 	fsel	$f13,$f16,$f2,$fcc0
1c005689:	2e2e2e0a 	0x2e2e2e0a
1c00568d:	2e2e2e2e 	0x2e2e2e2e
1c005691:	2e2e2e2e 	0x2e2e2e2e
1c005695:	44412e2e 	bnez	$r17,3686700(0x38412c) # 1c3897c1 <_sidata+0x383d31>
1c005699:	2e2e2e43 	0x2e2e2e43
1c00569d:	2e2e2e2e 	0x2e2e2e2e
1c0056a1:	2e2e2e2e 	0x2e2e2e2e
1c0056a5:	0d2e2e2e 	xvbitsel.v	$xr14,$xr17,$xr11,$xr28
1c0056a9:	4300000a 	beqz	$r0,2818048(0x2b0000) # 1c2b56a9 <_sidata+0x2afc19>
1c0056ad:	2065726f 	ll.w	$r15,$r19,25968(0x6570)
1c0056b1:	656d6954 	bge	$r10,$r20,93544(0x16d68) # 1c01c419 <_sidata+0x16989>
1c0056b5:	6c632072 	bgeu	$r3,$r18,25376(0x6320) # 1c00b9d5 <_sidata+0x5f45>
1c0056b9:	20726165 	ll.w	$r5,$r11,29280(0x7260)
1c0056bd:	65746e69 	bge	$r19,$r9,95340(0x1746c) # 1c01cb29 <_sidata+0x17099>
1c0056c1:	70757272 	vmax.wu	$vr18,$vr19,$vr28
1c0056c5:	0d2e2e74 	xvbitsel.v	$xr20,$xr19,$xr11,$xr28
1c0056c9:	 	0x8400000a

1c0056cc <Ext_IrqHandle>:
1c0056cc:	1c003784 	pcaddu12i	$r4,444(0x1bc)
1c0056d0:	1c0037d0 	pcaddu12i	$r16,446(0x1be)
1c0056d4:	1c00381c 	pcaddu12i	$r28,448(0x1c0)
1c0056d8:	1c003868 	pcaddu12i	$r8,451(0x1c3)
1c0056dc:	1c0038b4 	pcaddu12i	$r20,453(0x1c5)
1c0056e0:	1c003900 	pcaddu12i	$r0,456(0x1c8)
1c0056e4:	1c00394c 	pcaddu12i	$r12,458(0x1ca)
1c0056e8:	1c003998 	pcaddu12i	$r24,460(0x1cc)
1c0056ec:	1c0039e4 	pcaddu12i	$r4,463(0x1cf)
1c0056f0:	1c003a30 	pcaddu12i	$r16,465(0x1d1)
1c0056f4:	1c003a7c 	pcaddu12i	$r28,467(0x1d3)
1c0056f8:	1c003ac8 	pcaddu12i	$r8,470(0x1d6)
1c0056fc:	1c003b14 	pcaddu12i	$r20,472(0x1d8)
1c005700:	1c003b60 	pcaddu12i	$r0,475(0x1db)
1c005704:	1c003bac 	pcaddu12i	$r12,477(0x1dd)
1c005708:	1c003bf8 	pcaddu12i	$r24,479(0x1df)
1c00570c:	1c003c44 	pcaddu12i	$r4,482(0x1e2)
1c005710:	1c003c90 	pcaddu12i	$r16,484(0x1e4)
1c005714:	1c003cdc 	pcaddu12i	$r28,486(0x1e6)
1c005718:	1c003d28 	pcaddu12i	$r8,489(0x1e9)
1c00571c:	1c003d74 	pcaddu12i	$r20,491(0x1eb)
1c005720:	1c003dc0 	pcaddu12i	$r0,494(0x1ee)
1c005724:	1c003e0c 	pcaddu12i	$r12,496(0x1f0)
1c005728:	1c003e58 	pcaddu12i	$r24,498(0x1f2)
1c00572c:	1c003ea4 	pcaddu12i	$r4,501(0x1f5)
1c005730:	1c003ef0 	pcaddu12i	$r16,503(0x1f7)
1c005734:	1c003f3c 	pcaddu12i	$r28,505(0x1f9)
1c005738:	1c003f88 	pcaddu12i	$r8,508(0x1fc)
1c00573c:	1c003fd4 	pcaddu12i	$r20,510(0x1fe)
1c005740:	1c004020 	pcaddu12i	$r0,513(0x201)
1c005744:	1c00406c 	pcaddu12i	$r12,515(0x203)
1c005748:	1c0040b8 	pcaddu12i	$r24,517(0x205)
1c00574c:	1c00439c 	pcaddu12i	$r28,540(0x21c)
1c005750:	1c00434c 	pcaddu12i	$r12,538(0x21a)
1c005754:	1c00439c 	pcaddu12i	$r28,540(0x21c)
1c005758:	1c00439c 	pcaddu12i	$r28,540(0x21c)
1c00575c:	1c00439c 	pcaddu12i	$r28,540(0x21c)
1c005760:	1c00439c 	pcaddu12i	$r28,540(0x21c)
1c005764:	1c00439c 	pcaddu12i	$r28,540(0x21c)
1c005768:	1c00439c 	pcaddu12i	$r28,540(0x21c)
1c00576c:	1c00439c 	pcaddu12i	$r28,540(0x21c)
1c005770:	1c00439c 	pcaddu12i	$r28,540(0x21c)
1c005774:	1c00439c 	pcaddu12i	$r28,540(0x21c)
1c005778:	1c00439c 	pcaddu12i	$r28,540(0x21c)
1c00577c:	1c00439c 	pcaddu12i	$r28,540(0x21c)
1c005780:	1c00439c 	pcaddu12i	$r28,540(0x21c)
1c005784:	1c00439c 	pcaddu12i	$r28,540(0x21c)
1c005788:	1c00439c 	pcaddu12i	$r28,540(0x21c)
1c00578c:	1c004368 	pcaddu12i	$r8,539(0x21b)

1c005790 <__FUNCTION__.1575>:
1c005790:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cc08 <_sidata+0x17178>
1c005794:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c7f8 <_sidata+0x16d68>
1c005798:	5f30616f 	bne	$r11,$r15,-53152(0x33060) # 1bff87f8 <_start-0x7808>
1c00579c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffc90c <_start-0x36f4>
1c0057a0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c600 <_sidata+0x6b70>
1c0057a4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0057a8 <__FUNCTION__.1579>:
1c0057a8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cc20 <_sidata+0x17190>
1c0057ac:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c810 <_sidata+0x16d80>
1c0057b0:	5f31616f 	bne	$r11,$r15,-52896(0x33160) # 1bff8910 <_start-0x76f0>
1c0057b4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffc924 <_start-0x36dc>
1c0057b8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c618 <_sidata+0x6b88>
1c0057bc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0057c0 <__FUNCTION__.1583>:
1c0057c0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cc38 <_sidata+0x171a8>
1c0057c4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c828 <_sidata+0x16d98>
1c0057c8:	5f32616f 	bne	$r11,$r15,-52640(0x33260) # 1bff8a28 <_start-0x75d8>
1c0057cc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffc93c <_start-0x36c4>
1c0057d0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c630 <_sidata+0x6ba0>
1c0057d4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0057d8 <__FUNCTION__.1587>:
1c0057d8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cc50 <_sidata+0x171c0>
1c0057dc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c840 <_sidata+0x16db0>
1c0057e0:	5f33616f 	bne	$r11,$r15,-52384(0x33360) # 1bff8b40 <_start-0x74c0>
1c0057e4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffc954 <_start-0x36ac>
1c0057e8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c648 <_sidata+0x6bb8>
1c0057ec:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0057f0 <__FUNCTION__.1591>:
1c0057f0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cc68 <_sidata+0x171d8>
1c0057f4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c858 <_sidata+0x16dc8>
1c0057f8:	5f34616f 	bne	$r11,$r15,-52128(0x33460) # 1bff8c58 <_start-0x73a8>
1c0057fc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffc96c <_start-0x3694>
1c005800:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c660 <_sidata+0x6bd0>
1c005804:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005808 <__FUNCTION__.1595>:
1c005808:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cc80 <_sidata+0x171f0>
1c00580c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c870 <_sidata+0x16de0>
1c005810:	5f35616f 	bne	$r11,$r15,-51872(0x33560) # 1bff8d70 <_start-0x7290>
1c005814:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffc984 <_start-0x367c>
1c005818:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c678 <_sidata+0x6be8>
1c00581c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005820 <__FUNCTION__.1599>:
1c005820:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cc98 <_sidata+0x17208>
1c005824:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c888 <_sidata+0x16df8>
1c005828:	5f36616f 	bne	$r11,$r15,-51616(0x33660) # 1bff8e88 <_start-0x7178>
1c00582c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffc99c <_start-0x3664>
1c005830:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c690 <_sidata+0x6c00>
1c005834:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005838 <__FUNCTION__.1603>:
1c005838:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ccb0 <_sidata+0x17220>
1c00583c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c8a0 <_sidata+0x16e10>
1c005840:	5f37616f 	bne	$r11,$r15,-51360(0x33760) # 1bff8fa0 <_start-0x7060>
1c005844:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffc9b4 <_start-0x364c>
1c005848:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c6a8 <_sidata+0x6c18>
1c00584c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005850 <__FUNCTION__.1607>:
1c005850:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ccc8 <_sidata+0x17238>
1c005854:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c8b8 <_sidata+0x16e28>
1c005858:	5f30626f 	bne	$r19,$r15,-53152(0x33060) # 1bff88b8 <_start-0x7748>
1c00585c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffc9cc <_start-0x3634>
1c005860:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c6c0 <_sidata+0x6c30>
1c005864:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005868 <__FUNCTION__.1611>:
1c005868:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cce0 <_sidata+0x17250>
1c00586c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c8d0 <_sidata+0x16e40>
1c005870:	5f31626f 	bne	$r19,$r15,-52896(0x33160) # 1bff89d0 <_start-0x7630>
1c005874:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffc9e4 <_start-0x361c>
1c005878:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c6d8 <_sidata+0x6c48>
1c00587c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005880 <__FUNCTION__.1615>:
1c005880:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ccf8 <_sidata+0x17268>
1c005884:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c8e8 <_sidata+0x16e58>
1c005888:	5f32626f 	bne	$r19,$r15,-52640(0x33260) # 1bff8ae8 <_start-0x7518>
1c00588c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffc9fc <_start-0x3604>
1c005890:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c6f0 <_sidata+0x6c60>
1c005894:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005898 <__FUNCTION__.1619>:
1c005898:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cd10 <_sidata+0x17280>
1c00589c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c900 <_sidata+0x16e70>
1c0058a0:	5f33626f 	bne	$r19,$r15,-52384(0x33360) # 1bff8c00 <_start-0x7400>
1c0058a4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffca14 <_start-0x35ec>
1c0058a8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c708 <_sidata+0x6c78>
1c0058ac:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0058b0 <__FUNCTION__.1623>:
1c0058b0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cd28 <_sidata+0x17298>
1c0058b4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c918 <_sidata+0x16e88>
1c0058b8:	5f34626f 	bne	$r19,$r15,-52128(0x33460) # 1bff8d18 <_start-0x72e8>
1c0058bc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffca2c <_start-0x35d4>
1c0058c0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c720 <_sidata+0x6c90>
1c0058c4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0058c8 <__FUNCTION__.1627>:
1c0058c8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cd40 <_sidata+0x172b0>
1c0058cc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c930 <_sidata+0x16ea0>
1c0058d0:	5f35626f 	bne	$r19,$r15,-51872(0x33560) # 1bff8e30 <_start-0x71d0>
1c0058d4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffca44 <_start-0x35bc>
1c0058d8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c738 <_sidata+0x6ca8>
1c0058dc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0058e0 <__FUNCTION__.1631>:
1c0058e0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cd58 <_sidata+0x172c8>
1c0058e4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c948 <_sidata+0x16eb8>
1c0058e8:	5f36626f 	bne	$r19,$r15,-51616(0x33660) # 1bff8f48 <_start-0x70b8>
1c0058ec:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffca5c <_start-0x35a4>
1c0058f0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c750 <_sidata+0x6cc0>
1c0058f4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0058f8 <__FUNCTION__.1635>:
1c0058f8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cd70 <_sidata+0x172e0>
1c0058fc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c960 <_sidata+0x16ed0>
1c005900:	5f37626f 	bne	$r19,$r15,-51360(0x33760) # 1bff9060 <_start-0x6fa0>
1c005904:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffca74 <_start-0x358c>
1c005908:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c768 <_sidata+0x6cd8>
1c00590c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005910 <__FUNCTION__.1639>:
1c005910:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cd88 <_sidata+0x172f8>
1c005914:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c978 <_sidata+0x16ee8>
1c005918:	5f30636f 	bne	$r27,$r15,-53152(0x33060) # 1bff8978 <_start-0x7688>
1c00591c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffca8c <_start-0x3574>
1c005920:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c780 <_sidata+0x6cf0>
1c005924:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005928 <__FUNCTION__.1643>:
1c005928:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cda0 <_sidata+0x17310>
1c00592c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c990 <_sidata+0x16f00>
1c005930:	5f31636f 	bne	$r27,$r15,-52896(0x33160) # 1bff8a90 <_start-0x7570>
1c005934:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcaa4 <_start-0x355c>
1c005938:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c798 <_sidata+0x6d08>
1c00593c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005940 <__FUNCTION__.1647>:
1c005940:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cdb8 <_sidata+0x17328>
1c005944:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c9a8 <_sidata+0x16f18>
1c005948:	5f32636f 	bne	$r27,$r15,-52640(0x33260) # 1bff8ba8 <_start-0x7458>
1c00594c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcabc <_start-0x3544>
1c005950:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c7b0 <_sidata+0x6d20>
1c005954:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005958 <__FUNCTION__.1651>:
1c005958:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cdd0 <_sidata+0x17340>
1c00595c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c9c0 <_sidata+0x16f30>
1c005960:	5f33636f 	bne	$r27,$r15,-52384(0x33360) # 1bff8cc0 <_start-0x7340>
1c005964:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcad4 <_start-0x352c>
1c005968:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c7c8 <_sidata+0x6d38>
1c00596c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005970 <__FUNCTION__.1655>:
1c005970:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cde8 <_sidata+0x17358>
1c005974:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c9d8 <_sidata+0x16f48>
1c005978:	5f34636f 	bne	$r27,$r15,-52128(0x33460) # 1bff8dd8 <_start-0x7228>
1c00597c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcaec <_start-0x3514>
1c005980:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c7e0 <_sidata+0x6d50>
1c005984:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005988 <__FUNCTION__.1659>:
1c005988:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ce00 <_sidata+0x17370>
1c00598c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01c9f0 <_sidata+0x16f60>
1c005990:	5f35636f 	bne	$r27,$r15,-51872(0x33560) # 1bff8ef0 <_start-0x7110>
1c005994:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcb04 <_start-0x34fc>
1c005998:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c7f8 <_sidata+0x6d68>
1c00599c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0059a0 <__FUNCTION__.1663>:
1c0059a0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ce18 <_sidata+0x17388>
1c0059a4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ca08 <_sidata+0x16f78>
1c0059a8:	5f36636f 	bne	$r27,$r15,-51616(0x33660) # 1bff9008 <_start-0x6ff8>
1c0059ac:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcb1c <_start-0x34e4>
1c0059b0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c810 <_sidata+0x6d80>
1c0059b4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0059b8 <__FUNCTION__.1667>:
1c0059b8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ce30 <_sidata+0x173a0>
1c0059bc:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ca20 <_sidata+0x16f90>
1c0059c0:	5f37636f 	bne	$r27,$r15,-51360(0x33760) # 1bff9120 <_start-0x6ee0>
1c0059c4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcb34 <_start-0x34cc>
1c0059c8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c828 <_sidata+0x6d98>
1c0059cc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0059d0 <__FUNCTION__.1671>:
1c0059d0:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ce48 <_sidata+0x173b8>
1c0059d4:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ca38 <_sidata+0x16fa8>
1c0059d8:	5f30646f 	bne	$r3,$r15,-53148(0x33064) # 1bff8a3c <_start-0x75c4>
1c0059dc:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcb4c <_start-0x34b4>
1c0059e0:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c840 <_sidata+0x6db0>
1c0059e4:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c0059e8 <__FUNCTION__.1675>:
1c0059e8:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ce60 <_sidata+0x173d0>
1c0059ec:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ca50 <_sidata+0x16fc0>
1c0059f0:	5f31646f 	bne	$r3,$r15,-52892(0x33164) # 1bff8b54 <_start-0x74ac>
1c0059f4:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcb64 <_start-0x349c>
1c0059f8:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c858 <_sidata+0x6dc8>
1c0059fc:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005a00 <__FUNCTION__.1679>:
1c005a00:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ce78 <_sidata+0x173e8>
1c005a04:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ca68 <_sidata+0x16fd8>
1c005a08:	5f32646f 	bne	$r3,$r15,-52636(0x33264) # 1bff8c6c <_start-0x7394>
1c005a0c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcb7c <_start-0x3484>
1c005a10:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c870 <_sidata+0x6de0>
1c005a14:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005a18 <__FUNCTION__.1683>:
1c005a18:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ce90 <_sidata+0x17400>
1c005a1c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ca80 <_sidata+0x16ff0>
1c005a20:	5f33646f 	bne	$r3,$r15,-52380(0x33364) # 1bff8d84 <_start-0x727c>
1c005a24:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcb94 <_start-0x346c>
1c005a28:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c888 <_sidata+0x6df8>
1c005a2c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005a30 <__FUNCTION__.1687>:
1c005a30:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cea8 <_sidata+0x17418>
1c005a34:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01ca98 <_sidata+0x17008>
1c005a38:	5f34646f 	bne	$r3,$r15,-52124(0x33464) # 1bff8e9c <_start-0x7164>
1c005a3c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcbac <_start-0x3454>
1c005a40:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c8a0 <_sidata+0x6e10>
1c005a44:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005a48 <__FUNCTION__.1691>:
1c005a48:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cec0 <_sidata+0x17430>
1c005a4c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01cab0 <_sidata+0x17020>
1c005a50:	5f35646f 	bne	$r3,$r15,-51868(0x33564) # 1bff8fb4 <_start-0x704c>
1c005a54:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcbc4 <_start-0x343c>
1c005a58:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c8b8 <_sidata+0x6e28>
1c005a5c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005a60 <__FUNCTION__.1695>:
1c005a60:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01ced8 <_sidata+0x17448>
1c005a64:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01cac8 <_sidata+0x17038>
1c005a68:	5f36646f 	bne	$r3,$r15,-51612(0x33664) # 1bff90cc <_start-0x6f34>
1c005a6c:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcbdc <_start-0x3424>
1c005a70:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c8d0 <_sidata+0x6e40>
1c005a74:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

1c005a78 <__FUNCTION__.1699>:
1c005a78:	69747865 	bltu	$r3,$r5,95352(0x17478) # 1c01cef0 <_sidata+0x17460>
1c005a7c:	6970675f 	bltu	$r26,$r31,94308(0x17064) # 1c01cae0 <_sidata+0x17050>
1c005a80:	5f37646f 	bne	$r3,$r15,-51356(0x33764) # 1bff91e4 <_start-0x6e1c>
1c005a84:	5f717269 	bne	$r19,$r9,-36496(0x37170) # 1bffcbf4 <_start-0x340c>
1c005a88:	646e6168 	bge	$r11,$r8,28256(0x6e60) # 1c00c8e8 <_sidata+0x6e58>
1c005a8c:	0072656c 	bstrins.w	$r12,$r11,0x12,0x19

Disassembly of section .data:

80001000 <_sdata>:
_sdata():
80001000:	00000000 	0x00000000
80001004:	1c005069 	pcaddu12i	$r9,643(0x283)
80001008:	80000138 	0x80000138
8000100c:	80001020 	0x80001020
80001010:	80000008 	0x80000008
80001014:	1c005060 	pcaddu12i	$r0,643(0x283)
80001018:	80001024 	0x80001024
8000101c:	80000170 	0x80000170

80001020 <g_SystemFreq>:
80001020:	007a1200 	bstrins.w	$r0,$r16,0x1a,0x4

80001024 <duty>:
80001024:	00000005 	0x00000005

Disassembly of section .bss:

80000000 <cnt>:
_sbss():
80000000:	00000000 	0x00000000

80000004 <receive_Data.1753>:
80000004:	00000000 	0x00000000

80000008 <Circular_queue>:
	...

80000138 <Read_length>:
80000138:	00000000 	0x00000000

8000013c <str>:
	...

80000170 <Read_Buffer>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	0x3a434347
   4:	4e472820 	jirl	$r0,$r1,-112856(0x24728)
   8:	38202955 	ldx.bu	$r21,$r10,$r10
   c:	302e332e 	vldrepl.w	$vr14,$r25,-464(0xe30)
	...
