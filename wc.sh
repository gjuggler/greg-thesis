#!/bin/bash
str1=`cat Chapters/*.tex | grep 'chapter{' | wc -l`
str2=`texcount Chapters/*.tex -total | grep -i 'words in text' | egrep -o '[0-9]+'`
str3=`cat Chapters/*.tex | grep 'begin{figure' | wc -l`
str4=`cat Chapters/*.tex | grep 'begin{table' | wc -l`
echo "--
Chapters: $str1
Words: $str2
Figures: $str3
Tables: $str4
"