%include 'in_out.asm' 
SECTION .data
msg: DB 'Введите значение переменной x: ',0
rem: DB 'Результат: ',0
SECTION .bss
x: RESB 80
SECTION .text
GLOBAL _start
_start:
; Вычисление выражения
mov eax, msg
call sprint
mov ecx, x
mov edx, 80
call sread
mov eax,x ; вызов подпрограммы преобразования
call atoi ; ASCII кода в число, `eax=x`
add eax,18; eax = eax+18 = x+18
mov ebx,5
mul ebx; EAX=EAX*EBX = (x+18)*5
sub eax, 28; eax = eax-28 = (x+18)*5-28
mov edi,eax
; Вывод результата на экран
mov eax,rem ; вызов подпрограммы печати
call sprint ; сообщение 'Результат: '
mov eax,edi ; вызов подпрограммы печати значения
call iprint ; из 'edi' в виде символов
call quit
