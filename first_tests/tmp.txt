    # call sequence (caller cleans up stack - CDECL call convention)
    pushq $97
    call putchar
    addq $4, %rsp

    # function AR space (multiple of 16 - ABI)
    subq	$16, %rsp

    # body instructions
    movl	$1, -12(%rbp)   # int x=1;
	movl	$2, -8(%rbp)    # int y=2;  
	movl	$3, -4(%rbp)    # int z=3;




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