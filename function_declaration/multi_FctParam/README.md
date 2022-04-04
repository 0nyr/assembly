# Finding the error of ifcc compiler


The version of the  `f` function given by Godbold works with our ifcc main, so the problem comes from `f`.

```shell
(base) onyr@aezyr:~/Documents/code/assembly/function_declaration/multi_FctParam$ gcc -g -O0 -o main_correct main_correct.s 
(base) onyr@aezyr:~/Documents/code/assembly/function_declaration/multi_FctParam$ ./main_correct 
(base) onyr@aezyr:~/Documents/code/assembly/function_declaration/multi_FctParam$ echo $?
42
```

Once isolated, the problem comes from the 2 instructions that save argument registers to the stack. We were using quad registers to do the job but I couldn't make it work to be then passed to long %e.. registers. So I just changed the register being used to usual %e.. long registers.
