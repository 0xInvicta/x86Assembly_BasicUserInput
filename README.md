# x86Assembly_BasicUserInput
x86Assembly_BasicUserInput

Create Object File:
nasm -f elf32 -o userInputInASM.o userInputInASM.asm

Link Files:
ld -m elf_i386 userInputInASM.o -o userInputInASM

Run: ./userInputInASM
