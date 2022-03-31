.globl main
main:
    # prologue (enter new next AR)
    push %rbp # save %rbp on the stack
    mov %rsp, %rbp # define %rbp for the current function
	
    # call sequence (caller cleans up stack - CDECL call convention)
    # normally, putchar takes a single argument, so extra args won't be used
    pushq   $104 # extra arg passed through stack
    pushq   $103 # extra arg passed through stack
    movl    $102, %r9d  # register 6
    movl    $101, %r8d  # register 5
    movl    $100, %ecx  # register 4 
    movl    $99, %edx   # register 3
    movl    $98, %esi   # register 2
    movl    $97, %edi   # register 1
    call    putchar # call putchar
    addq    $16, %rsp # clean up stack (16 bytes as 2 extra args of 8 bytes each)
    
    # return 3
    mov	$3, %rax
    
    # epilogue (leave AR)
    pop %rbp # restore %rbp from the stack
    ret # return to the caller (here the shell)
