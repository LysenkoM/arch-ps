---
## Front matter
title: "Отчёт по лабораторной работе №4"
subtitle: "Дисциплина: архитектура компьютера"
author: "Лысенко Маргарита Олеговна"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Освоение процедуры компиляции и сборки программ, написанных на ассемблере NASM.

# Задание

Вывести программы Hello world и своё имя, фамилию.

# Теоретическое введение

Основными функциональными элементами любой электронно-вычислительной машины
(ЭВМ) являются центральный процессор, память и периферийные устройства.
Взаимодействие этих устройств осуществляется через общую шину, к которой они подклю-
чены. Физически шина представляет собой большое количество проводников, соединяющих
устройства друг с другом. В современных компьютерах проводники выполнены в виде элек-
тропроводящих дорожек на материнской (системной) плате.
Основной задачей процессора является обработка информации, а также организация
координации всех узлов компьютера. В состав центрального процессора (ЦП) входят
следующие устройства:
• арифметико-логическое устройство (АЛУ) — выполняет логические и арифметиче-
ские действия, необходимые для обработки информации, хранящейся в памяти;
• устройство управления (УУ) — обеспечивает управление и контроль всех устройств
компьютера;
• регистры — сверхбыстрая оперативная память небольшого объёма, входящая в со-
став процессора, для временного хранения промежуточных результатов выполнения
инструкций; регистры процессора делятся на два типа: регистры общего назначения и
специальные регистры.

# Выполнение лабораторной работы

Создала каталог для работы с программами на языке ассемблера NASM (рис. @fig:001).

![Создание каталога и переход в него](image/fig1.png){#fig:001 width=70%}

Создала текстовый файл с именем hello.asm (рис. @fig:002).

![Создание файла](image/fig2.png){#fig:002 width=70%}

Листинг программы Hello, world:

SECTION .data
	hello:      db "Hello, world!",0xa 
		helloLen:   equ $ - hello
SECTION .text
	global _start           

_start:                 
        mov eax, 4      
        mov ebx, 1    
        mov ecx, hello
        mov edx, helloLen
        int 0x80        
	
	mov eax, 1       
        mov ebx, 0      
        int 0x80    

Скомпилировала текст программы «Hello World» (рис. @fig:003).

![Компиляция текста](image/fig3.png){#fig:003 width=70%}

Скомпилировала исходный файл hello.asm в obj.o и сделала проверку (рис. @fig:004).

![Компиляция исходного файла и проверка](image/fig4.png){#fig:004 width=70%}

ПЕредала объектный файл на обработку компоновщику и сделала проверку (рис. @fig:005).

![Передача файла компоновщику и проверка](image/fig5.png){#fig:005 width=70%}

С помощью ключа -o с последующим значением задала в данном случае имя создаваемого исполняе-
мого файла. (рис. @fig:006).

![Присвоение имени](image/fig6.png){#fig:006 width=70%}

Запустила на выполнение созданный исполняемый файл, находящийся в текущем каталоге (рис. @fig:007).

![Запуск файла](image/fig7.png){#fig:007 width=70%}

# Выполнение самостоятельной работы

С помощью команды cp создала копию файла hello.asm с именем lab4.asm. Внесла изменения в текст программы в файле lab4.asm так, чтобы вместо Hello world! на экран выводилась строка с моими фамилией и именем. (рис. @fig:008).

![Копирование  и редактирование файла](image/fig8.png){#fig:008 width=70%}

Листинг программы Лысенко Маргарита:

SECTION .data
	hello:      db "Лысенко Маргаита",0xa 
		helloLen:   equ $ - hello
SECTION .text
	global _start           

_start:                 
        mov eax, 4      
        mov ebx, 1    
        mov ecx, hello
        mov edx, helloLen
        int 0x80        
	
	mov eax, 1       
        mov ebx, 0      
        int 0x80      


Оттранслировала полученный текст программы lab4.asm в объектный файл. Выполнила
компоновку объектного файла и запустила получившийся исполняемый файл (рис. @fig:009).

![Компоновка  и запуск объектного файла](image/fig9.png){#fig:009 width=70%}

Скопировала файлы hello.asm и lab4.asm в свой локальный репозиторий в каталог ~/work/study/2023-2024/"Архитектура компьютера"/arch-pc/labs/lab04/. Загрузила файлы на Github. (рис. @fig:010).

![Загрузка файлов на Github](image/fig10.png){#fig:010 width=70%}      

# Выводы

В ходе лабораторной работы я освоила процедуры компиляции и сборки программ, написанных на ассемблере NASM.
