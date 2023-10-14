---
## Front matter
title: "Отчёт по лабораторной работе №3"
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

Целью работы является освоение процедуры оформления отчетов с помощью легковесного
языка разметки Markdown.

# Задание

Создать отчёт.

# Теоретическое введение

Markdown - облегченный язык разметки, при помощи которого оформляют текстовые документы. Он конвертируется в HTML и другие форматы, но сделан так, чтобы его было удобно читать даже в виде исходного кода.

# Выполнение лабораторной работы

Открыла терминал, перешла в каталог arch-pc, обновила локальный репозиторий, введя git pull, перешла в каталог с шаблоном отчета по лабораторной работе №3 (рис. @fig:001)

![Обновление терминала и перемещение между директориями](image/fig1.png){#fig:001 width=70%}

Провожу компиляцию шаблона и проверяю корректность выполнения команды (рис. @fig:002)

![Компиляция шаблона](image/fig2.png){#fig:002 width=70%}

Удаляю полученные файлы (рис. @fig:003)

![Удаление файлов](image/fig3.png){#fig:003 width=70%}

# Выводы

В ходе лабораторной работы мы освоили процедуры оформления отчетов с помощью легковесного
языка разметки Markdown.



