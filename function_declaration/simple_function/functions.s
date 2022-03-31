.globl function
function:
    # prologue (enter new next AR)
    push %rbp # save %rbp on the stack
    mov %rsp, %rbp # define %rbp for the current function
	
    # retrieve params
    movl    %edi, -4(%rbp)
    movl    %esi, -8(%rbp)

    # body
    movl    -4(%rbp), %edx
    movl    -8(%rbp), %eax
    addl    %edx, %eax # %eax is the return register (inside is return value)

    # epilogue (leave AR)
    pop %rbp # restore %rbp from the stack
    ret # return to the caller (here the shell)

.globl main
main:
    # prologue (enter new next AR)
    push %rbp # save %rbp on the stack
    mov %rsp, %rbp # define %rbp for the current function
	
    # call sequence (caller cleans up stack)
    # registers get assigned (in left-to-right order)
    movl    $2, %esi   # register 2
    movl    $1, %edi   # register 1
    call    function # call putchar
    
    # return result
    # no need here, %eax already contains the return value
    
    # epilogue (leave AR)
    pop %rbp # restore %rbp from the stack
    ret # return to the caller (here the shell)
