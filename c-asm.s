	.file	"c-asm.c"
	.option nopic
	.attribute arch, "rv32i2p1"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	name
	.section	.sbss,"aw",@nobits
	.align	2
	.type	name, @object
	.size	name, 4
name:
	.zero	4
	.text
	.align	2
	.globl	sumanth
	.type	sumanth, @function
sumanth:
	addi	sp,sp,-32
	sw	s0,28(sp)
	addi	s0,sp,32
	li	a5,1
	sw	a5,-20(s0)
	lui	a5,%hi(name)
	li	a4,14
	sw	a4,%lo(name)(a5)
	li	a5,0
	mv	a0,a5
	lw	s0,28(sp)
	addi	sp,sp,32
	jr	ra
	.size	sumanth, .-sumanth
	.ident	"GCC: (13.2.0-11ubuntu1+12) 13.2.0"
