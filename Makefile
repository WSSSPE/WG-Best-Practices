all: main.pdf

main.pdf: *.tex *.bib 
	pdflatex -interaction nonstopmode main.tex
	bibtex main
	pdflatex -interaction nonstopmode main.tex
	pdflatex -interaction nonstopmode main.tex
	pdflatex -interaction nonstopmode main.tex

.PHONY: clean

clean:
	rm -f *.pdf *.log *.aux *.out *.bbl *.blg *.toc *.lof *.lot *.dvi *.ps 
