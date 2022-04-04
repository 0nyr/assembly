# f is from godbold, main is from ifcc
# the problem comes from our ifcc generated body for f
.globl f
f:
    # prologue
    pushq   %rbp
    movq    %rsp, %rbp
    # body
    movl    %edi, -4(%rbp)
    movl    %esi, -8(%rbp)
    movl    -4(%rbp), %edx
    movl    -8(%rbp), %eax
    addl    %edx, %eax 
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
