#!/bin/bash
str1=`find Chapters/*.tex | wc -l`
str2=`wc -w Chapters/*.tex | grep 'total' | sed -e 's/ total//'`
str3=`find Figs/*.pdf | wc -l`
echo "--
Chapters: $str1
Words:$str2
Figures: $str3
"