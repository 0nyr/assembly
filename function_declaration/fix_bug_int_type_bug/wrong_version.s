        [-] Success rate of tests [variable_def] :   100% 
        [-] Success rate of tests [operators] :   80% 
        [-] Success rate of tests [diverse] :   71% 
        [-] Success rate of tests [arithmetics] :   100% 
        [-] Success rate of tests [function_declarations] :   88% 
        [-] Success rate of tests [return] :   8% 
        [-] Success rate of tests [char] :   25% 
        [-] Success rate of tests [loops] :   62% 
        [-] Success rate of tests [affect] :   77% 
        [-] Success rate of tests [invalids] :   100% 
        [-] Success rate of tests [char_and_int_operations] :   100% 
        [-] Success rate of tests [function_calls] :   90% 
        [-] Success rate of tests [syntax] :   90% 
        [-] Success rate of tests [variable_assign] :   100% 
        [-] Success rate of tests [blocs] :   60% 
        [-] Success rate of tests [if_else] :   100% 
        [-] Success rate of tests [arrays] :   0% 
        [-] Success rate of tests [logic_operators] :   100% 
        [-] Success rate of tests [milestones] :   100% 
        [-] Success rate of tests [functions] :   100% 
        
        TEST-CASE 38: ifcc-test-output/38-tests-testfiles-function_declarations-function_15_params_char
        RESULT 38: OK
TEST-CASE 39: ifcc-test-output/39-tests-testfiles-function_declarations-function_30_params
        RESULT 39: OK
TEST-CASE 40: ifcc-test-output/40-tests-testfiles-function_declarations-function_15_params
        RESULT 40: OK
TEST-CASE 41: ifcc-test-output/41-tests-testfiles-function_declarations-function_15_params_char_int
        RESULT 41: OK
TEST-CASE 42: ifcc-test-output/42-tests-testfiles-function_declarations-putchar_with_local_var
        RESULT 42: OK
TEST-CASE 43: ifcc-test-output/43-tests-testfiles-function_declarations-function_6_params
        RESULT 43: OK
TEST-CASE 44: ifcc-test-output/44-tests-testfiles-function_declarations-function_15_params_sum_char_int
        RESULT 44: OK
TEST-CASE 45: ifcc-test-output/45-tests-testfiles-function_declarations-simple_function





.globl function30
function30:
    # prologue
    pushq %rbp # save %rbp on the stack
    movq %rsp, %rbp # define %rbp for the current function
	subq $240, %rsp
.L_0function30:
	movl %edi, -4(%rbp)
	movl %esi, -8(%rbp)
	movl %edx, -12(%rbp)
	movl %ecx, -16(%rbp)
	movl %r8d, -20(%rbp)
	movl %r9d, -24(%rbp)
	movl 16(%rbp), %eax
	movl %eax, -28(%rbp)
	movl 24(%rbp), %eax
	movl %eax, -32(%rbp)
	movl 32(%rbp), %eax
	movl %eax, -36(%rbp)
	movl 40(%rbp), %eax
	movl %eax, -40(%rbp)
	movl 48(%rbp), %eax
	movl %eax, -44(%rbp)
	movl 56(%rbp), %eax
	movl %eax, -48(%rbp)
	movl 64(%rbp), %eax
	movl %eax, -52(%rbp)
	movl 72(%rbp), %eax
	movl %eax, -56(%rbp)
	movl 80(%rbp), %eax
	movl %eax, -60(%rbp)
	movl 88(%rbp), %eax
	movl %eax, -64(%rbp)
	movl 96(%rbp), %eax
	movl %eax, -68(%rbp)
	movl 104(%rbp), %eax
	movl %eax, -72(%rbp)
	movl 112(%rbp), %eax
	movl %eax, -76(%rbp)
	movl 120(%rbp), %eax
	movl %eax, -80(%rbp)
	movl 128(%rbp), %eax
	movl %eax, -84(%rbp)
	movl 136(%rbp), %eax
	movl %eax, -88(%rbp)
	movl 144(%rbp), %eax
	movl %eax, -92(%rbp)
	movl 152(%rbp), %eax
	movl %eax, -96(%rbp)
	movl 160(%rbp), %eax
	movl %eax, -100(%rbp)
	movl 168(%rbp), %eax
	movl %eax, -104(%rbp)
	movl 176(%rbp), %eax
	movl %eax, -108(%rbp)
	movl 184(%rbp), %eax
	movl %eax, -112(%rbp)
	movl 192(%rbp), %eax
	movl %eax, -116(%rbp)
	movl 200(%rbp), %eax
	movl %eax, -120(%rbp)
	movl -4(%rbp), %eax
	movl %eax, -124(%rbp)
	movl -124(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
	movl -8(%rbp), %eax
	movl %eax, -132(%rbp)
	movl -132(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
	movl -12(%rbp), %eax
	movl %eax, -140(%rbp)
	movl -140(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
	movl -16(%rbp), %eax
	movl %eax, -148(%rbp)
	movl -148(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
	movl -20(%rbp), %eax
	movl %eax, -156(%rbp)
	movl -156(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
	movl -24(%rbp), %eax
	movl %eax, -164(%rbp)
	movl -164(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
	movl -28(%rbp), %eax
	movl %eax, -172(%rbp)
	movl -172(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
	movl -32(%rbp), %eax
	movl %eax, -180(%rbp)
	movl -180(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
	movl -36(%rbp), %eax
	movl %eax, -188(%rbp)
	movl -188(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
	movl -40(%rbp), %eax
	movl %eax, -196(%rbp)
	movl -196(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
	movl -44(%rbp), %eax
	movl %eax, -204(%rbp)
	movl -204(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
	movl -48(%rbp), %eax
	movl %eax, -212(%rbp)
	movl -212(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
	movl -52(%rbp), %eax
	movl %eax, -220(%rbp)
	movl -220(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
	movl -56(%rbp), %eax
	movl %eax, -228(%rbp)
	movl -228(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
	movl -60(%rbp), %eax
	movl %eax, -236(%rbp)
	movl -236(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
	movl -64(%rbp), %eax
	movl %eax, -244(%rbp)
	movl -244(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
	movl -68(%rbp), %eax
	movl %eax, -252(%rbp)
	movl -252(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
	movl -72(%rbp), %eax
	movl %eax, -260(%rbp)
	movl -260(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
	movl -76(%rbp), %eax
	movl %eax, -268(%rbp)
	movl -268(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
	movl -80(%rbp), %eax
	movl %eax, -276(%rbp)
	movl -276(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
	movl -84(%rbp), %eax
	movl %eax, -284(%rbp)
	movl -284(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
	movl -88(%rbp), %eax
	movl %eax, -292(%rbp)
	movl -292(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
	movl -92(%rbp), %eax
	movl %eax, -300(%rbp)
	movl -300(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
	movl -96(%rbp), %eax
	movl %eax, -308(%rbp)
	movl -308(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
	movl -100(%rbp), %eax
	movl %eax, -316(%rbp)
	movl -316(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
	movl -104(%rbp), %eax
	movl %eax, -324(%rbp)
	movl -324(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
	movl -108(%rbp), %eax
	movl %eax, -332(%rbp)
	movl -332(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
	movl -112(%rbp), %eax
	movl %eax, -340(%rbp)
	movl -340(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
	movl -116(%rbp), %eax
	movl %eax, -348(%rbp)
	movl -348(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
	movl -120(%rbp), %eax
	movl %eax, -356(%rbp)
	movl -356(%rbp), %eax 
	movslq %eax, %rdi 
	call putchar
	jmp .end_function30
	# epilogue
.end_function30:
	leave # restore %rbp from the stack
	ret # return to the caller (here the shell)
.globl main
main:
    # prologue
    pushq %rbp # save %rbp on the stack
    movq %rsp, %rbp # define %rbp for the current function
	subq $224, %rsp
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
	movl $112, -124(%rbp)
	movl $113, -132(%rbp)
	movl $114, -140(%rbp)
	movl $115, -148(%rbp)
	movl $116, -156(%rbp)
	movl $117, -164(%rbp)
	movl $118, -172(%rbp)
	movl $119, -180(%rbp)
	movl $120, -188(%rbp)
	movl $121, -196(%rbp)
	movl $122, -204(%rbp)
	movl $123, -212(%rbp)
	movl $124, -220(%rbp)
	movl $125, -228(%rbp)
	movl $126, -236(%rbp)
	movslq -236(%rbp), %rax 
	pushq %rax 
	movslq -228(%rbp), %rax 
	pushq %rax 
	movslq -220(%rbp), %rax 
	pushq %rax 
	movslq -212(%rbp), %rax 
	pushq %rax 
	movslq -204(%rbp), %rax 
	pushq %rax 
	movslq -196(%rbp), %rax 
	pushq %rax 
	movslq -188(%rbp), %rax 
	pushq %rax 
	movslq -180(%rbp), %rax 
	pushq %rax 
	movslq -172(%rbp), %rax 
	pushq %rax 
	movslq -164(%rbp), %rax 
	pushq %rax 
	movslq -156(%rbp), %rax 
	pushq %rax 
	movslq -148(%rbp), %rax 
	pushq %rax 
	movslq -140(%rbp), %rax 
	pushq %rax 
	movslq -132(%rbp), %rax 
	pushq %rax 
	movslq -124(%rbp), %rax 
	pushq %rax 
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
	call function30
	addq $192, %rsp 
	movl $3, -252(%rbp)
	movl -252(%rbp), %eax 
	jmp .end_main
	jmp .end_main
	# epilogue
.end_main:
	leave # restore %rbp from the stack
	ret # return to the caller (here the shell)
