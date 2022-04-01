.globl multiPutchar
multiPutchar:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     DWORD PTR [rbp-4], edi
        mov     DWORD PTR [rbp-8], esi
        mov     eax, DWORD PTR [rbp-4]
        mov     edi, eax
        call    putchar
        mov     eax, DWORD PTR [rbp-8]
        mov     edi, eax
        call    putchar
        nop
        leave
        ret

.globl main
main:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     DWORD PTR [rbp-4], 97
        mov     BYTE PTR [rbp-5], 98
        movsx   edx, BYTE PTR [rbp-5]
        mov     eax, DWORD PTR [rbp-4]
        mov     esi, edx
        mov     edi, eax
        call    multiPutchar
        movsx   eax, BYTE PTR [rbp-5]
        leave
        ret