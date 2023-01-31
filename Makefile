DOCNAME=paper

all: comp clean open

comp:
	pdflatex --shell-escape $(DOCNAME).tex
	bibtex $(DOCNAME).aux
	pdflatex --shell-escape $(DOCNAME).tex
	pdflatex --shell-escape $(DOCNAME).tex

open:
	xdg-open $(DOCNAME).pdf

clean:
	rm *.blg *.bbl *.aux *.log *.out *.lua *.in *.lof *.lot *.toc
	rm -r _markdown_paper
