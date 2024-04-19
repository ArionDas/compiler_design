	.file	"prog3.c"
# GNU C17 (Ubuntu 13.2.0-4ubuntu3) version 13.2.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.2.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"%d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# prog3.c:4: 	int a=5,b=7,c=8,d=10,s;
	movl	$5, -20(%rbp)	#, a
# prog3.c:4: 	int a=5,b=7,c=8,d=10,s;
	movl	$7, -16(%rbp)	#, b
# prog3.c:4: 	int a=5,b=7,c=8,d=10,s;
	movl	$8, -12(%rbp)	#, c
# prog3.c:4: 	int a=5,b=7,c=8,d=10,s;
	movl	$10, -8(%rbp)	#, d
# prog3.c:6: 	s = a*b + c*d;
	movl	-20(%rbp), %eax	# a, tmp86
	imull	-16(%rbp), %eax	# b, tmp86
	movl	%eax, %edx	# tmp86, _1
# prog3.c:6: 	s = a*b + c*d;
	movl	-12(%rbp), %eax	# c, tmp87
	imull	-8(%rbp), %eax	# d, _2
# prog3.c:6: 	s = a*b + c*d;
	addl	%edx, %eax	# _1, tmp88
	movl	%eax, -4(%rbp)	# tmp88, s
# prog3.c:7: 	printf("%d",s);
	movl	-4(%rbp), %eax	# s, tmp89
	movl	%eax, %esi	# tmp89,
	leaq	.LC0(%rip), %rax	#, tmp90
	movq	%rax, %rdi	# tmp90,
	movl	$0, %eax	#,
	call	printf@PLT	#
	movl	$0, %eax	#, _10
# prog3.c:9: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 13.2.0-4ubuntu3) 13.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
