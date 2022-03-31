# Assembly x86-64

> For now, we focus on x86-64 assembly for 64 bits AMD64 processors.

### Useful links

[Assembly language | Wikipedia](https://en.wikipedia.org/wiki/Assembly_language)

[list of ressources around x86](https://stackoverflow.com/tags/x86/info) 🌟

##### ressources

[x86-64 basics: registers, instructions...](https://cs61.seas.harvard.edu/site/2018/Asm1/) ⭐️

##### tools

[Godbolt](https://godbolt.org/) 🌟

## Commands

`gcc -S -O0 -o <output.s> <input.c>`: compile a C program to Assembly using `gcc`.

`echo $?`: give the return value of the last executed program.

```shell
(base) onyr@aezyr:~/Documents/4if/phd_track/PLD-Compilateur/tmp/tmp_perso$ gcc -O0 -o main-manual main_manual.s 
(base) onyr@aezyr:~/Documents/4if/phd_track/PLD-Compilateur/tmp/tmp_perso$ ./main-manual 
(base) onyr@aezyr:~/Documents/4if/phd_track/PLD-Compilateur/tmp/tmp_perso$ echo $?
0
```



## Notes
