#!/bin/bash
str1=`find Chapters/*.tex | wc -l`
str2=`detex Chapters/*.tex | wc -w`
str3=`find Figs/*.pdf | wc -l`
echo "--
Chapters: $str1
Words: $str2
Figures: $str3
"