.globl main
main:
    # prologue (enter new next AR)
    pushq %rbp # save %rbp on the stack
    movq %rsp, %rbp # define %rbp for the current function
	
    # return 3
    movq	$3, %rax
    
    # epilogue (leave AR)
    popq %rbp # restore %rbp from the stack
    ret # return to the caller (here the shell)
