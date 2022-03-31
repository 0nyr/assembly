printall:
        pushq   %rbp
        movq    %rsp, %rbp

        # function AR space (multiple of 16 - ABI)
        subq    $16, %rsp

        movl    %edi, -4(%rbp)
        movl    -4(%rbp), %eax
        movl    %eax, %edi
        call    putchar
        movl    $98, %edi
        call    putchar
        movl    -4(%rbp), %eax
        leave
        ret
toto:
        pushq   %rbp
        movq    %rsp, %rbp

        # function AR space (multiple of 16 - ABI)
        subq    $16, %rsp

        movl    $1, -4(%rbp)
        movl    $2, -8(%rbp)
        movl    $3, -12(%rbp)
        movl    $97, %edi
        call    putchar
        nop
        leave
        ret
main:
        pushq   %rbp
        movq    %rsp, %rbp

        # call toto (no params)
        movl    $0, %eax # fix for variadic functions with no params
        call    toto

        # call printall (1 param)
        movl    $97, %edi
        call    printall

        popq    %rbp
        ret