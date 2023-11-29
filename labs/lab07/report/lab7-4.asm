%include 'in_out.asm'

SECTION .data
input1 db "Введите х: ",0h
input2 db "Ввведите а: ",0h

SECTION .bss
max resb 10
x resb 10
a resb 10

SECTION .text
GLOBAL _start

_start:
mov eax,input1
call sprint

mov ecx,x
mov edx,10
call sread

mov eax,x
call atoi 
mov [x],eax 

mov eax,input2
call sprint

mov ecx,a
mov edx,10
call sread

mov eax,a
call atoi 
mov [a],eax 

mov ebx, 2
cmp [x], ebx
jle check

mov eax, [x]
mov ebx, 2
sub eax, ebx
call iprintLF
call quit

check:
mov eax, [a]
mov ebx, 3
imul ebx
call iprintLF
call quit
