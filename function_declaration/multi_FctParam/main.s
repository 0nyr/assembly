.globl f
f:
    # prologue
    pushq %rbp # save %rbp on the stack
    movq %rsp, %rbp # define %rbp for the current function
    # body
	subq $32, %rsp
	movsql %rdi, -4(%rbp)
	movsql %rsi, -8(%rbp)
	movl -4(%rbp), %eax
	movl %eax, -16(%rbp)
	movl -8(%rbp), %eax
	movl %eax, -20(%rbp)
	movl -16(%rbp), %edx 
	movl -20(%rbp), %eax 
	addl %edx, %eax 
	movl %eax, -12(%rbp) 
	movl -12(%rbp), %eax 
    # epilogue
    leave # restore %rbp from the stack
    ret # return to the caller (here the shell)
.globl main
main:
    # prologue
    pushq %rbp # save %rbp on the stack
    movq %rsp, %rbp # define %rbp for the current function
	subq $32, %rsp
	movl $20, -4(%rbp)
	movl $22, -12(%rbp)
	movl -4(%rbp), %eax 
	movslq %eax, %rdi 
	movl -12(%rbp), %eax 
	movslq %eax, %rsi 
	call f
	movl %eax, -20(%rbp)
	movl -20(%rbp), %eax 
    # epilogue
    leave # restore %rbp from the stack
    ret # return to the caller (here the shell)
