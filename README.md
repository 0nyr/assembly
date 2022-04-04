# Assembly x86-64

> For now, we focus on x86-64 assembly for 64 bits AMD64 processors.

### Useful links

[Assembly language | Wikipedia](https://en.wikipedia.org/wiki/Assembly_language)

[list of ressources around x86 | StackOverflow](https://stackoverflow.com/tags/x86/info) 🌟

##### ressources

[x86-64 basics: registers, instructions...](https://cs61.seas.harvard.edu/site/2018/Asm1/) ⭐️

[registers in x86 Assembly](https://www.cs.uaf.edu/2017/fall/cs301/lecture/09_11_registers.html)

[Understanding how function call works](https://zhu45.org/posts/2017/Jul/30/understanding-how-function-call-works/) ⭐️

[Embedded Systems/Mixed C and Assembly Programming | WikiBooks](https://en.wikibooks.org/wiki/Embedded_Systems/Mixed_C_and_Assembly_Programming#Calling_Conventions)

##### tools

[Godbolt](https://godbolt.org/) 🌟

##### cheatsheets

[asm x86 cheatsheet](https://scadahacker.com/library/Documents/Cheat_Sheets/Programming%20-%20x86%20Instructions%201.pdf)

[asm x86-64 cheatsheet](https://www.cs.cmu.edu/afs/cs/academic/class/15213-s20/www/recitations/x86-cheat-sheet.pdf)

[ASCII table](https://www.asciitable.com/)

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
