.globl simple
simple:
    # prologue
    pushq %rbp # save %rbp on the stack
    movq %rsp, %rbp # define %rbp for the current function
	subq $16, %rsp
	movl $97, -4(%rbp)
	movl -4(%rbp), %eax 
    # epilogue
    leave # restore %rbp from the stack
    ret # return to the caller (here the shell)
.globl main
main:
    # prologue
    pushq %rbp # save %rbp on the stack
    movq %rsp, %rbp # define %rbp for the current function
	subq $16, %rsp
	call simple
	# movl -4(%rbp), %eax # this code is not needed
    # epilogue
    leave # restore %rbp from the stack
    ret # return to the caller (here the shell)
