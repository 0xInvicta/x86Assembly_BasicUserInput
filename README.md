# x86Assembly_BasicUserInput
x86Assembly_BasicUserInput

<h2>
Create Object File:
</h2>
nasm -f elf32 -o userInputInASM.o userInputInASM.asm
<h2>
Link Files:
 </h2>
ld -m elf_i386 userInputInASM.o -o userInputInASM
<h3>
Run: ./userInputInASM
</h3>
