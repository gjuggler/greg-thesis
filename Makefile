all: thesis wc spell

chapters: Chapters/*.tex

thesis: chapters greg-thesis.tex macros.tex references.bib
	pdflatex greg-thesis; bibtex greg-thesis.aux; pdflatex greg-thesis; pdflatex greg-thesis;

spell: Chapters/*.tex
	cat Chapters/*.tex | aspell -t --dont-suggest pipe | grep "[^\*]" > spelling.txt

wc:
	./wc.sh