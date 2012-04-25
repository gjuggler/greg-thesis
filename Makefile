all: style thesis

chapters: Chapters/*.tex

thesis: chapters greg-thesis.tex macros.tex references.bib
	pdflatex greg-thesis; bibtex greg-thesis; bibtex bu1; pdflatex greg-thesis; pdflatex greg-thesis;
	cp greg-thesis.pdf greg-thesis-out.pdf;

spell: Chapters/*.tex
	cat Chapters/*.tex | aspell --mode=tex --dont-suggest pipe | egrep -o "[a-zA-Z]+" | sort | uniq -c | sort -n > spelling.txt

wc:
	./wc.sh

style: greg-style.tex
	latex greg-style;

clean:
	rm *.aux */*.aux *.toc *.log *.bbl *.blg *.brf *.nlo

corrections: corrections.tex
	pdflatex corrections
