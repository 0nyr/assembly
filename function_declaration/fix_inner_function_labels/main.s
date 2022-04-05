.globl f
f:
    # prologue
    pushq %rbp # save %rbp on the stack
    movq %rsp, %rbp # define %rbp for the current function
	subq $32, %rsp
.L0_f:
	movl %edi, -4(%rbp)
	movl %esi, -8(%rbp)
	movl -4(%rbp), %eax
	movl %eax, -16(%rbp)
	movl -8(%rbp), %eax
	movl %eax, -20(%rbp)
	movl -16(%rbp), %edx 
	movl -20(%rbp), %eax 
	addl %edx, %eax 
	movl %eax, -12(%rbp) 
	movl -12(%rbp), %eax 
	jmp .end_f
	jmp .end_f
	# epilogue
.end_f:
	leave # restore %rbp from the stack
	ret # return to the caller (here the shell)
.globl main
main:
    # prologue
    pushq %rbp # save %rbp on the stack
    movq %rsp, %rbp # define %rbp for the current function
	subq $32, %rsp
.L0_main:
	movl $100, -8(%rbp)
	movl $20, -16(%rbp)
	movl $22, -24(%rbp)
	movl -16(%rbp), %eax 
	movslq %eax, %rdi 
	movl -24(%rbp), %eax 
	movslq %eax, %rsi 
	call f
	movl %eax, -32(%rbp)
	movl -32(%rbp), %eax 
    negl %eax 
	movl %eax, -36(%rbp) 
	movl -8(%rbp), %edx 
	movl -36(%rbp), %eax 
	addl %edx, %eax 
	movl %eax, -4(%rbp) 
	movl -4(%rbp), %eax 
	jmp .end_main
	jmp .end_main
	# epilogue
.end_main:
	leave # restore %rbp from the stack
	ret # return to the caller (here the shell)
