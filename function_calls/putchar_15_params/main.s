.globl main
main:
    # prologue
    pushq %rbp # save %rbp on the stack
    movq %rsp, %rbp # define %rbp for the current function
	subq    $80, %rsp # the problem comes from there
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
	call putchar
	addq $80, %rsp 
	movl $3, -128(%rbp)
	movl -128(%rbp), %eax 
    # epilogue
    popq %rbp # restore %rbp from the stack
    ret # return to the caller (here the shell)
