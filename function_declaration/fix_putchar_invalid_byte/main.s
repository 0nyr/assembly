.globl function15
function15:
    # prologue
    pushq %rbp # save %rbp on the stack
    movq %rsp, %rbp # define %rbp for the current function
	subq    $32, %rsp # add this expression to fix problem
	movl %edi, -4(%rbp)
	movl %esi, -8(%rbp)
	movl %edx, -12(%rbp)
	movl %ecx, -16(%rbp)
	movl %r8d, -20(%rbp)
	movl %r9d, -24(%rbp)
	movl -4(%rbp), %eax
	movl %eax, -28(%rbp)
	movl -28(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
	movl -8(%rbp), %eax
	movl %eax, -36(%rbp)
	movl -36(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
	movl -12(%rbp), %eax
	movl %eax, -44(%rbp)
	movl -44(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
	movl -16(%rbp), %eax
	movl %eax, -52(%rbp)
	movl -52(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
	movl -20(%rbp), %eax
	movl %eax, -60(%rbp)
	movl -60(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
	movl -24(%rbp), %eax
	movl %eax, -68(%rbp)
	movl -68(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
    # epilogue
    leave # restore %rbp from the stack
    ret # return to the caller (here the shell)
.globl main
main:
    # prologue
    pushq %rbp # save %rbp on the stack
    movq %rsp, %rbp # define %rbp for the current function
	movl $97, -4(%rbp)
	movl $98, -12(%rbp)
	movl $99, -20(%rbp)
	movl $100, -28(%rbp)
	movl $101, -36(%rbp)
	movl $102, -44(%rbp)
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
	call function15
	movl %eax, -52(%rbp)
	movl $3, -56(%rbp)
	movl -56(%rbp), %eax 
    # epilogue
    leave # restore %rbp from the stack
    ret # return to the caller (here the shell)
