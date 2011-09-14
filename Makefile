all: thesis wc

chapters: Chapters/*.tex

thesis: chapters greg-thesis.tex macros.tex references.bib
	pdflatex greg-thesis; bibtex references; pdflatex greg-thesis; pdflatex greg-thesis;

wc:
	./wc.sh