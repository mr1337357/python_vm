
examples/mips/hello-mips.elf:     file format elf32-tradlittlemips


Disassembly of section .init:

00400598 <_init>:
  400598:	3c1c0002 	lui	gp,0x2
  40059c:	279c8418 	addiu	gp,gp,-31720
  4005a0:	0399e021 	addu	gp,gp,t9
  4005a4:	27bdffe0 	addiu	sp,sp,-32
  4005a8:	afbc0010 	sw	gp,16(sp)
  4005ac:	afbf001c 	sw	ra,28(sp)
  4005b0:	afbc0018 	sw	gp,24(sp)
  4005b4:	04110001 	bal	4005bc <_init+0x24>
  4005b8:	00000000 	nop
  4005bc:	3c1c0042 	lui	gp,0x42
  4005c0:	279c89b0 	addiu	gp,gp,-30288
  4005c4:	8f998024 	lw	t9,-32732(gp)
  4005c8:	273907c8 	addiu	t9,t9,1992
  4005cc:	0411007e 	bal	4007c8 <frame_dummy>
  4005d0:	00000000 	nop
  4005d4:	8fbc0010 	lw	gp,16(sp)
  4005d8:	04110001 	bal	4005e0 <_init+0x48>
  4005dc:	00000000 	nop
  4005e0:	3c1c0042 	lui	gp,0x42
  4005e4:	279c89b0 	addiu	gp,gp,-30288
  4005e8:	8f998024 	lw	t9,-32732(gp)
  4005ec:	273908a0 	addiu	t9,t9,2208
  4005f0:	041100ab 	bal	4008a0 <__do_global_ctors_aux>
  4005f4:	00000000 	nop
  4005f8:	8fbf001c 	lw	ra,28(sp)
  4005fc:	03e00008 	jr	ra
  400600:	27bd0020 	addiu	sp,sp,32

Disassembly of section .text:

00400610 <__start>:
  400610:	03e00021 	move	zero,ra
  400614:	04110001 	bal	40061c <__start+0xc>
  400618:	00000000 	nop
  40061c:	3c1c0042 	lui	gp,0x42
  400620:	279c89b0 	addiu	gp,gp,-30288
  400624:	0000f821 	move	ra,zero
  400628:	8f848018 	lw	a0,-32744(gp)
  40062c:	8fa50000 	lw	a1,0(sp)
  400630:	27a60004 	addiu	a2,sp,4
  400634:	2401fff8 	li	at,-8
  400638:	03a1e824 	and	sp,sp,at
  40063c:	27bdffe0 	addiu	sp,sp,-32
  400640:	8f87801c 	lw	a3,-32740(gp)
  400644:	8f888020 	lw	t0,-32736(gp)
  400648:	afa80010 	sw	t0,16(sp)
  40064c:	afa20014 	sw	v0,20(sp)
  400650:	afbd0018 	sw	sp,24(sp)
  400654:	8f998048 	lw	t9,-32696(gp)
  400658:	0320f809 	jalr	t9
  40065c:	00000000 	nop
  400660:	1000ffff 	b	400660 <__start+0x50>
  400664:	00000000 	nop
	...

00400670 <deregister_tm_clones>:
  400670:	3c040041 	lui	a0,0x41
  400674:	3c020041 	lui	v0,0x41
  400678:	248409b4 	addiu	a0,a0,2484
  40067c:	244209b7 	addiu	v0,v0,2487
  400680:	00441023 	subu	v0,v0,a0
  400684:	2c420007 	sltiu	v0,v0,7
  400688:	14400007 	bnez	v0,4006a8 <deregister_tm_clones+0x38>
  40068c:	3c1c0042 	lui	gp,0x42
  400690:	279c89b0 	addiu	gp,gp,-30288
  400694:	8f998040 	lw	t9,-32704(gp)
  400698:	13200003 	beqz	t9,4006a8 <deregister_tm_clones+0x38>
  40069c:	00000000 	nop
  4006a0:	03200008 	jr	t9
  4006a4:	00000000 	nop
  4006a8:	03e00008 	jr	ra
  4006ac:	00000000 	nop

004006b0 <register_tm_clones>:
  4006b0:	3c040041 	lui	a0,0x41
  4006b4:	3c020041 	lui	v0,0x41
  4006b8:	248409b4 	addiu	a0,a0,2484
  4006bc:	244209b4 	addiu	v0,v0,2484
  4006c0:	00441023 	subu	v0,v0,a0
  4006c4:	00021083 	sra	v0,v0,0x2
  4006c8:	00022fc2 	srl	a1,v0,0x1f
  4006cc:	00a22821 	addu	a1,a1,v0
  4006d0:	00052843 	sra	a1,a1,0x1
  4006d4:	10a00007 	beqz	a1,4006f4 <register_tm_clones+0x44>
  4006d8:	3c1c0042 	lui	gp,0x42
  4006dc:	279c89b0 	addiu	gp,gp,-30288
  4006e0:	8f998038 	lw	t9,-32712(gp)
  4006e4:	13200003 	beqz	t9,4006f4 <register_tm_clones+0x44>
  4006e8:	00000000 	nop
  4006ec:	03200008 	jr	t9
  4006f0:	00000000 	nop
  4006f4:	03e00008 	jr	ra
  4006f8:	00000000 	nop

004006fc <__do_global_dtors_aux>:
  4006fc:	27bdffd0 	addiu	sp,sp,-48
  400700:	3c1c0042 	lui	gp,0x42
  400704:	afb10020 	sw	s1,32(sp)
  400708:	3c110041 	lui	s1,0x41
  40070c:	279c89b0 	addiu	gp,gp,-30288
  400710:	afbf002c 	sw	ra,44(sp)
  400714:	afb30028 	sw	s3,40(sp)
  400718:	afb20024 	sw	s2,36(sp)
  40071c:	afb0001c 	sw	s0,28(sp)
  400720:	afbc0010 	sw	gp,16(sp)
  400724:	92220a00 	lbu	v0,2560(s1)
  400728:	14400020 	bnez	v0,4007ac <__do_global_dtors_aux+0xb0>
  40072c:	3c020041 	lui	v0,0x41
  400730:	3c100041 	lui	s0,0x41
  400734:	2442098c 	addiu	v0,v0,2444
  400738:	26100990 	addiu	s0,s0,2448
  40073c:	3c130041 	lui	s3,0x41
  400740:	02028023 	subu	s0,s0,v0
  400744:	00409021 	move	s2,v0
  400748:	00108083 	sra	s0,s0,0x2
  40074c:	2610ffff 	addiu	s0,s0,-1
  400750:	8e620a04 	lw	v0,2564(s3)
  400754:	0050182b 	sltu	v1,v0,s0
  400758:	10600009 	beqz	v1,400780 <__do_global_dtors_aux+0x84>
  40075c:	24420001 	addiu	v0,v0,1
  400760:	ae620a04 	sw	v0,2564(s3)
  400764:	00021080 	sll	v0,v0,0x2
  400768:	02421021 	addu	v0,s2,v0
  40076c:	8c590000 	lw	t9,0(v0)
  400770:	0320f809 	jalr	t9
  400774:	00000000 	nop
  400778:	081001d5 	j	400754 <__do_global_dtors_aux+0x58>
  40077c:	8e620a04 	lw	v0,2564(s3)
  400780:	0c10019c 	jal	400670 <deregister_tm_clones>
  400784:	00000000 	nop
  400788:	8fbc0010 	lw	gp,16(sp)
  40078c:	8f828034 	lw	v0,-32716(gp)
  400790:	10400004 	beqz	v0,4007a4 <__do_global_dtors_aux+0xa8>
  400794:	8f998034 	lw	t9,-32716(gp)
  400798:	3c040040 	lui	a0,0x40
  40079c:	0320f809 	jalr	t9
  4007a0:	24840980 	addiu	a0,a0,2432
  4007a4:	24020001 	li	v0,1
  4007a8:	a2220a00 	sb	v0,2560(s1)
  4007ac:	8fbf002c 	lw	ra,44(sp)
  4007b0:	8fb30028 	lw	s3,40(sp)
  4007b4:	8fb20024 	lw	s2,36(sp)
  4007b8:	8fb10020 	lw	s1,32(sp)
  4007bc:	8fb0001c 	lw	s0,28(sp)
  4007c0:	03e00008 	jr	ra
  4007c4:	27bd0030 	addiu	sp,sp,48

004007c8 <frame_dummy>:
  4007c8:	3c1c0042 	lui	gp,0x42
  4007cc:	27bdffe0 	addiu	sp,sp,-32
  4007d0:	279c89b0 	addiu	gp,gp,-30288
  4007d4:	afbf001c 	sw	ra,28(sp)
  4007d8:	8f82803c 	lw	v0,-32708(gp)
  4007dc:	10400008 	beqz	v0,400800 <frame_dummy+0x38>
  4007e0:	afbc0010 	sw	gp,16(sp)
  4007e4:	3c040040 	lui	a0,0x40
  4007e8:	8f99803c 	lw	t9,-32708(gp)
  4007ec:	3c050041 	lui	a1,0x41
  4007f0:	24840980 	addiu	a0,a0,2432
  4007f4:	0320f809 	jalr	t9
  4007f8:	24a50a08 	addiu	a1,a1,2568
  4007fc:	8fbc0010 	lw	gp,16(sp)
  400800:	3c040041 	lui	a0,0x41
  400804:	24840994 	addiu	a0,a0,2452
  400808:	8c820000 	lw	v0,0(a0)
  40080c:	10400008 	beqz	v0,400830 <frame_dummy+0x68>
  400810:	8fbf001c 	lw	ra,28(sp)
  400814:	8f998044 	lw	t9,-32700(gp)
  400818:	13200005 	beqz	t9,400830 <frame_dummy+0x68>
  40081c:	00000000 	nop
  400820:	0320f809 	jalr	t9
  400824:	00000000 	nop
  400828:	8fbc0010 	lw	gp,16(sp)
  40082c:	8fbf001c 	lw	ra,28(sp)
  400830:	081001ac 	j	4006b0 <register_tm_clones>
  400834:	27bd0020 	addiu	sp,sp,32
	...

00400840 <main>:
  400840:	27bdffe0 	addiu	sp,sp,-32
  400844:	afbf001c 	sw	ra,28(sp)
  400848:	afbe0018 	sw	s8,24(sp)
  40084c:	03a0f021 	move	s8,sp
  400850:	3c1c0042 	lui	gp,0x42
  400854:	279c89b0 	addiu	gp,gp,-30288
  400858:	afbc0010 	sw	gp,16(sp)
  40085c:	afc40020 	sw	a0,32(s8)
  400860:	afc50024 	sw	a1,36(s8)
  400864:	3c020040 	lui	v0,0x40
  400868:	24440970 	addiu	a0,v0,2416
  40086c:	8f828030 	lw	v0,-32720(gp)
  400870:	0040c821 	move	t9,v0
  400874:	0320f809 	jalr	t9
  400878:	00000000 	nop
  40087c:	8fdc0010 	lw	gp,16(s8)
  400880:	00001021 	move	v0,zero
  400884:	03c0e821 	move	sp,s8
  400888:	8fbf001c 	lw	ra,28(sp)
  40088c:	8fbe0018 	lw	s8,24(sp)
  400890:	27bd0020 	addiu	sp,sp,32
  400894:	03e00008 	jr	ra
  400898:	00000000 	nop
  40089c:	00000000 	nop

004008a0 <__do_global_ctors_aux>:
  4008a0:	27bdffd8 	addiu	sp,sp,-40
  4008a4:	afb0001c 	sw	s0,28(sp)
  4008a8:	3c100041 	lui	s0,0x41
  4008ac:	afb10020 	sw	s1,32(sp)
  4008b0:	2411ffff 	li	s1,-1
  4008b4:	26100984 	addiu	s0,s0,2436
  4008b8:	afbf0024 	sw	ra,36(sp)
  4008bc:	8e190000 	lw	t9,0(s0)
  4008c0:	13310005 	beq	t9,s1,4008d8 <__do_global_ctors_aux+0x38>
  4008c4:	8fbf0024 	lw	ra,36(sp)
  4008c8:	0320f809 	jalr	t9
  4008cc:	2610fffc 	addiu	s0,s0,-4
  4008d0:	08100230 	j	4008c0 <__do_global_ctors_aux+0x20>
  4008d4:	8e190000 	lw	t9,0(s0)
  4008d8:	8fb10020 	lw	s1,32(sp)
  4008dc:	8fb0001c 	lw	s0,28(sp)
  4008e0:	03e00008 	jr	ra
  4008e4:	27bd0028 	addiu	sp,sp,40
	...

Disassembly of section .MIPS.stubs:

004008f0 <.MIPS.stubs>:
  4008f0:	8f998010 	lw	t9,-32752(gp)
  4008f4:	03e07821 	move	t7,ra
  4008f8:	0320f809 	jalr	t9
  4008fc:	24180014 	li	t8,20
  400900:	8f998010 	lw	t9,-32752(gp)
  400904:	03e07821 	move	t7,ra
  400908:	0320f809 	jalr	t9
  40090c:	2418000e 	li	t8,14
	...

Disassembly of section .fini:

00400920 <_fini>:
  400920:	3c1c0002 	lui	gp,0x2
  400924:	279c8090 	addiu	gp,gp,-32624
  400928:	0399e021 	addu	gp,gp,t9
  40092c:	27bdffe0 	addiu	sp,sp,-32
  400930:	afbc0010 	sw	gp,16(sp)
  400934:	afbf001c 	sw	ra,28(sp)
  400938:	afbc0018 	sw	gp,24(sp)
  40093c:	04110001 	bal	400944 <_fini+0x24>
  400940:	00000000 	nop
  400944:	3c1c0042 	lui	gp,0x42
  400948:	279c89b0 	addiu	gp,gp,-30288
  40094c:	8f998024 	lw	t9,-32732(gp)
  400950:	273906fc 	addiu	t9,t9,1788
  400954:	0411ff69 	bal	4006fc <__do_global_dtors_aux>
  400958:	00000000 	nop
  40095c:	8fbc0010 	lw	gp,16(sp)
  400960:	8fbf001c 	lw	ra,28(sp)
  400964:	03e00008 	jr	ra
  400968:	27bd0020 	addiu	sp,sp,32
