.globl main
main:
    # prologue (enter new next AR)
    push %rbp # save %rbp on the stack
    mov %rsp, %rbp # define %rbp for the current function
	
    # call sequence (caller cleans up stack - CDECL call convention)
    # normally, putchar takes a single argument, so extra args won't be used
    mov $97, %rdi # 97 is 'a' in ASCII
    mov $98, %rsi # 98 is 'b' in ASCII
    mov $99, %rdx # 99 is 'c' in ASCII
    mov $10, %rcx # 10 is '\n' in ASCII
    call putchar # call putchar
    
    # return 3
    mov	$3, %rax
    
    # epilogue (leave AR)
    pop %rbp # restore %rbp from the stack
    ret # return to the caller (here the shell)
