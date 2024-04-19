	.file	"prog.c"
	.text
	.section	.rodata
.LC0:
	.string	"sum: %d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$4032, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$10000, -4020(%rbp)
	movl	$0, -4028(%rbp)
	jmp	.L2
.L3:
	movl	-4028(%rbp), %eax
	cltq
	movl	-4028(%rbp), %edx
	movl	%edx, -4016(%rbp,%rax,4)
	addl	$1, -4028(%rbp)
.L2:
	cmpl	$99, -4028(%rbp)
	jle	.L3
	movl	$0, -4028(%rbp)
	jmp	.L4
.L7:
	movl	$0, -4024(%rbp)
	jmp	.L5
.L6:
	movl	-4028(%rbp), %eax
	cltq
	movl	-4016(%rbp,%rax,4), %edx
	movl	-4024(%rbp), %eax
	cltq
	movl	-4016(%rbp,%rax,4), %eax
	imull	%eax, %edx
	movl	-4028(%rbp), %eax
	cltq
	movl	%edx, -4016(%rbp,%rax,4)
	addl	$1, -4024(%rbp)
.L5:
	movl	-4028(%rbp), %eax
	imull	%eax, %eax
	cmpl	%eax, -4024(%rbp)
	jl	.L6
	addl	$1, -4028(%rbp)
.L4:
	cmpl	$9, -4028(%rbp)
	jle	.L7
	movl	-4020(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L9
	call	__stack_chk_fail@PLT
.L9:
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
