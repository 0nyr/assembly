# Empty files

Empty files not allowed to be compiled both in C and Assembly.

```shell
(base) onyr@aezyr:~/Documents/code/assembly/function_declaration/empty$ cat main.c
(base) onyr@aezyr:~/Documents/code/assembly/function_declaration/empty$ cat main.s
(base) onyr@aezyr:~/Documents/code/assembly/function_declaration/empty$ gcc -O0 -o main main.c 
/usr/bin/ld: /usr/lib/gcc/x86_64-linux-gnu/9/../../../x86_64-linux-gnu/Scrt1.o: in function `_start':
(.text+0x24): undefined reference to `main'
collect2: error: ld returned 1 exit status
(base) onyr@aezyr:~/Documents/code/assembly/function_declaration/empty$ gcc -O0 -o main main.s 
/usr/bin/ld: /usr/lib/gcc/x86_64-linux-gnu/9/../../../x86_64-linux-gnu/Scrt1.o: in function `_start':
(.text+0x24): undefined reference to `main'
collect2: error: ld returned 1 exit status
```
