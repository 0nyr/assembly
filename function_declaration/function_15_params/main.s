.globl function15
function15:
        pushq   %rbp
        movq    %rsp, %rbp
        subq    $32, %rsp
        movl    %edi, -4(%rbp)
        movl    %esi, -8(%rbp)
        movl    %edx, -12(%rbp)
        movl    %ecx, -16(%rbp)
        movl    %r8d, -20(%rbp)
        movl    %r9d, -24(%rbp)
        movl    -4(%rbp), %eax
        movl    %eax, %edi
        call    putchar
        movl    -8(%rbp), %eax
        movl    %eax, %edi
        call    putchar
        movl    -12(%rbp), %eax
        movl    %eax, %edi
        call    putchar
        movl    -16(%rbp), %eax
        movl    %eax, %edi
        call    putchar
        movl    -20(%rbp), %eax
        movl    %eax, %edi
        call    putchar
        movl    -24(%rbp), %eax
        movl    %eax, %edi
        call    putchar
        movl    16(%rbp), %edi
        call    putchar
        movl    24(%rbp), %eax
        movl    %eax, %edi
        call    putchar
        movl    32(%rbp), %eax
        movl    %eax, %edi
        call    putchar
        movl    40(%rbp), %eax
        movl    %eax, %edi
        call    putchar
        movl    48(%rbp), %eax
        movl    %eax, %edi
        call    putchar
        movl    56(%rbp), %eax
        movl    %eax, %edi
        call    putchar
        movl    64(%rbp), %eax
        movl    %eax, %edi
        call    putchar
        movl    72(%rbp), %eax
        movl    %eax, %edi
        call    putchar
        movl    80(%rbp), %eax
        movl    %eax, %edi
        call    putchar
        nop
        leave
        ret

.globl main
main:
        pushq   %rbp
        movq    %rsp, %rbp
        # subq    $8, %rsp
        pushq   $111
        pushq   $110
        pushq   $109
        pushq   $108
        pushq   $107
        pushq   $106
        pushq   $105
        pushq   $104
        pushq   $103
        movl    $102, %r9d
        movl    $101, %r8d
        movl    $100, %ecx
        movl    $99, %edx
        movl    $98, %esi
        movl    $97, %edi
        call    function15
        addq    $80, %rsp
        movl    $3, %eax
        leave
        ret
