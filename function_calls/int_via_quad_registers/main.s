.globl main
main:
    # prologue
    pushq %rbp # save %rbp on the stack
    movq %rsp, %rbp # define %rbp for the current function
	movl $97, -4(%rbp)
	movl -4(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
	movl $3, -12(%rbp)
	movl -12(%rbp), %eax 
    # epilogue
    popq %rbp # restore %rbp from the stack
    ret # return to the caller (here the shell)
