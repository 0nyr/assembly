.globl main
main:
    # prologue
    pushq %rbp # save %rbp on the stack
    movq %rsp, %rbp # define %rbp for the current function
    subq $16, %rsp
	call getchar
	movb %al, -1(%rbp) 
	movl $0, -8(%rbp)
	movl -8(%rbp), %eax 
    # epilogue
    leave # restore %rbp from the stack
    ret # return to the caller (here the shell)
