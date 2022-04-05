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
    # prologue
    pushq %rbp # save %rbp on the stack
    movq %rsp, %rbp # define %rbp for the current function
	subq $96, %rsp
.L_0main:
    # invert order of arguments added
	movl $111, -4(%rbp)
	movl $110, -12(%rbp)
	movl $109, -20(%rbp)
	movl $108, -28(%rbp)
	movl $107, -36(%rbp)
	movl $106, -44(%rbp)
	movl $105, -52(%rbp)
	movl $104, -60(%rbp)
	movl $103, -68(%rbp)
	movl $102, -76(%rbp)
	movl $101, -84(%rbp)
	movl $100, -92(%rbp)
	movl $99, -100(%rbp)
	movl $98, -108(%rbp)
	movl $97, -116(%rbp)
	subq $8, %rsp 
	movl -4(%rbp), %eax 
	movslq %eax, %rdi 
	movl -12(%rbp), %eax 
	movslq %eax, %rsi 
	movl -20(%rbp), %eax 
	movslq %eax, %rdx 
	movl -28(%rbp), %eax 
	movslq %eax, %rcx 
	movl -36(%rbp), %eax 
	movslq %eax, %r8 
	movl -44(%rbp), %eax 
	movslq %eax, %r9 
	movl -52(%rbp), %eax 
	pushq %rax 
	movl -60(%rbp), %eax 
	pushq %rax 
	movl -68(%rbp), %eax 
	pushq %rax 
	movl -76(%rbp), %eax 
	pushq %rax 
	movl -84(%rbp), %eax 
	pushq %rax 
	movl -92(%rbp), %eax 
	pushq %rax 
	movl -100(%rbp), %eax 
	pushq %rax 
	movl -108(%rbp), %eax 
	pushq %rax 
	movl -116(%rbp), %eax 
	pushq %rax 
	call function15
	addq $80, %rsp 
	movl %eax, -132(%rbp)
	movl $3, -136(%rbp)
	movl -136(%rbp), %eax 
	jmp .end_main
	jmp .end_main
	# epilogue
.end_main:
	leave # restore %rbp from the stack
	ret # return to the caller (here the shell)
