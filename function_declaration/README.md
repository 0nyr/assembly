# Function declaration

### Simple functions

A simple function with no use of the *stack* (so no use of *push*, *pop*, *function call*...) has no need to reserve a special Activation Record for its own local variable. This means no need to use the instruction `subq $..., %rsp`.

For instance, the simple function:

```c
int function(int a, int b) {
    return a + b;
}
```

Gives:

```x86
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

```


### Functions

Other functions that make use of the *stack*, for instance by calling another function, need their own Activation Record. Hence, they need to allocate space, by slice of 16 bytes (ABI align requirement).

For instance, the function `toto` make use of the *stack* by calling the function `putchar`. Hence, all its local variable need to be in the local AR of the function, to avoid overriding its local variables.

```c
void toto() {
    int x=1;
    int y=2;
    int z=3;
    putchar('a');
}
```

Which gives:

```x86
toto:
        pushq   %rbp
        movq    %rsp, %rbp
        subq    $16, %rsp
        movl    $1, -4(%rbp)
        movl    $2, -8(%rbp)
        movl    $3, -12(%rbp)
        movl    $97, %edi
        call    putchar
        nop
        leave
        ret
```

Note the instruction `subq    $16, %rsp` that shift the top of the stack pointer 16 bytes towards address 0 (hence the `sub` instruction). This is enough to store 4*3=12 bytes for `x`, `y` and `z` (here using `l` long mode, for 4 bytes instructions). It leaves one blank space of 4 unused bytes.

Of course, it is not false to put `subq    $16, %rsp` for every function call, although it may be unnecessary / innefficient.


## Why %eax/%rax reset to 0 sometimes

[eax at 0 before variadic function | StackOverflow](https://stackoverflow.com/questions/6212665/why-is-eax-zeroed-before-a-call-to-printf)


This happens when calling a function with no params:

```c
int simple() {
    return 'a';
}

int main() {
    simple();
    return 3;
}
```

In this situation, since %rax is a registery that with variable arguments, passes information about the number of vector registers used, it is important to reset it to 0 before the call.

```
simple:
        pushq   %rbp
        movq    %rsp, %rbp
        movl    $97, %eax
        popq    %rbp
        ret
main:
        pushq   %rbp
        movq    %rsp, %rbp
        movl    $0, %eax
        call    simple
        movl    $3, %eax
        popq    %rbp
        ret
```
