f:
    pushq   %rbp
    movq    %rsp, %rbp
    movl    %edi, -4(%rbp)
    movl    %esi, -8(%rbp)
    movl    -4(%rbp), %edx
    movl    -8(%rbp), %eax
    addl    %edx, %eax
    leave # restore %rbp from the stack
    ret

.globl main
main:
    # prologue
    pushq %rbp # save %rbp on the stack
    movq %rsp, %rbp # define %rbp for the current function
	subq $32, %rsp
	movl $100, -8(%rbp)
	movl $20, -16(%rbp)
	movl $22, -24(%rbp)
	movl -16(%rbp), %eax 
	movslq %eax, %rdi 
	movl -24(%rbp), %eax 
	movslq %eax, %rsi 
	call f
	movl %eax, -32(%rbp)
	movl -8(%rbp), %edx 
	movl -32(%rbp), %eax 
	addl %edx, %eax 
	movl %eax, -4(%rbp) 
	movl -4(%rbp), %eax 
    # epilogue
    leave # restore %rbp from the stack
    ret # return to the caller (here the shell)
