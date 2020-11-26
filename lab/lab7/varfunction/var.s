	.file	"var.c"
	.text
	.section	.rodata
.LC0:
	.string	"%d\n"
	.text
	.globl	variance
	.type	variance, @function
variance:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	movq	%rdx, -56(%rbp)
	movl	$0, -12(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -16(%rbp)
	jmp	.L2
.L3:
	movl	-16(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	addl	%eax, -24(%rbp)
	addl	$1, -16(%rbp)
.L2:
	movl	-16(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jl	.L3
	movl	-24(%rbp), %eax
	cltd
	idivl	-44(%rbp)
	movl	%eax, -8(%rbp)
	movl	$1, -20(%rbp)
	jmp	.L4
.L5:
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	subl	-8(%rbp), %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	subl	-8(%rbp), %eax
	imull	%edx, %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	subl	-8(%rbp), %eax
	movl	%eax, %edx
	movl	-20(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rcx
	movq	-40(%rbp), %rax
	addq	%rcx, %rax
	movl	(%rax), %eax
	subl	-8(%rbp), %eax
	imull	%edx, %eax
	addl	%eax, -12(%rbp)
	addl	$1, -20(%rbp)
.L4:
	movl	-44(%rbp), %eax
	addl	$1, %eax
	cmpl	%eax, -20(%rbp)
	jl	.L5
	movl	-12(%rbp), %eax
	cltd
	idivl	-44(%rbp)
	cvtsi2ss	%eax, %xmm0
	movss	%xmm0, -4(%rbp)
	movq	-56(%rbp), %rax
	movss	-4(%rbp), %xmm0
	movss	%xmm0, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	variance, .-variance
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
