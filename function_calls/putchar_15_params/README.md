# Weird segfault 

Try to understand the condition that requires to have a strange `subq    $8, %rsp` instruction.

Actually, before 7 params, no need for it.

```c
int main() {
    putchar(97, 98, 99, 100, 101, 102, 103);
    return 3;
}

```

```x86
main:
        pushq   %rbp
        movq    %rsp, %rbp
        subq    $8, %rsp
        pushq   $103
        movl    $102, %r9d
        movl    $101, %r8d
        movl    $100, %ecx
        movl    $99, %edx
        movl    $98, %esi
        movl    $97, %edi
        call    putchar
        addq    $16, %rsp
        movl    $3, %eax
        leave
        ret
```

But after, every odd number of params requires the magic instruction, starting at 7:

```c
int main() {
    putchar(97, 98, 99, 100, 101, 102, 103);
    return 3;
}

```

```x86
main:
        pushq   %rbp
        movq    %rsp, %rbp
        subq    $8, %rsp
        pushq   $103
        movl    $102, %r9d
        movl    $101, %r8d
        movl    $100, %ecx
        movl    $99, %edx
        movl    $98, %esi
        movl    $97, %edi
        call    putchar
        addq    $16, %rsp
        movl    $3, %eax
        leave
        ret
```

I understood. Actually, since we can only `addq    $..., %rsp` of multiple of 16, then  when we have an odd number of `pushq` to the stack (of size `q`/8 bytes), then we have 8 other missing bytes required to make a multiple of 16 bytes. To artificially add those bytes, we just shift 8 bytes in the direction of the stack.
