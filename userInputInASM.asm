section .data
	displayText db "Enter a Number:"
	lenDisplayText equ $-displayText
	showNum db "You have Entered:"
	lenShowNum equ $-showNum

section .bss
	num resb 5 ;Length of allocated bytes for int

section .text
	global _start

_start:
	;Display User Prompt
	mov eax, 4	;sys_Write call
	mov ebx, 1	;File Descriptor
	mov ecx, displayText
	mov edx, lenDisplayText
	int 80h		;Call Kernel
	
	;Store the User Input
	mov eax, 3	;sys_read
	mov ebx, 1	;File Descriptor
	mov ecx, num
	mov edx, 5	;Number of Bytes for the integer(Length)
	int 80h		;Call Kernel

	;Display showNum text
	mov eax, 4	;sys_Write call
	mov ebx, 1	;File Descriptor
	mov ecx, showNum
	mov edx, lenShowNum
	int 80h		;Call Kernel
	
	;Display the user number
	mov eax, 4	;sys_Write call
	mov ebx, 1	;File Descripitor
	mov ecx, num
	mov edx, 5	;Int Length
	int 80h

	;EXIT
	mov eax, 1	;sys_exit
	mov ebx, 0	;exit process with return value 0
	int 80h		;call Kernel
