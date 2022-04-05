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
	subq $96, %rsp # error, given $80, expected 6*4 + (15-6)*8
.L_0main:
	movl $97, -4(%rbp)
	movl $98, -12(%rbp)
	movl $99, -20(%rbp)
	movl $100, -28(%rbp)
	movl $101, -36(%rbp)
	movl $102, -44(%rbp)
	movl $103, -52(%rbp)
	movl $104, -60(%rbp)
	movl $105, -68(%rbp)
	movl $106, -76(%rbp)
	movl $107, -84(%rbp)
	movl $108, -92(%rbp)
	movl $109, -100(%rbp)
	movl $110, -108(%rbp)
	movl $111, -116(%rbp)
	subq $8, %rsp 
    
    # invert the order of addition of the IRInstr after 6th parameter
    movslq -116(%rbp), %rax 
    pushq %rax
    movslq -108(%rbp), %rax 
	pushq %rax
    movslq -100(%rbp), %rax 
	pushq %rax
    movslq -92(%rbp), %rax 
	pushq %rax
    movslq -84(%rbp), %rax 
	pushq %rax
    movslq -76(%rbp), %rax 
	pushq %rax
    movslq -68(%rbp), %rax 
	pushq %rax
    movslq -60(%rbp), %rax 
	pushq %rax
    movslq -52(%rbp), %rax 
	pushq %rax
    movl -44(%rbp), %eax 
	movslq %eax, %r9
    movl -36(%rbp), %eax 
	movslq %eax, %r8
    movl -28(%rbp), %eax 
	movslq %eax, %rcx
    movl -20(%rbp), %eax 
	movslq %eax, %rdx
    movl -12(%rbp), %eax 
	movslq %eax, %rsi
    movl -4(%rbp), %eax 
	movslq %eax, %rdi

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
