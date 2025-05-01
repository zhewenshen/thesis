TEX=pdflatex
MAIN=sample-thesis
BIB=bibtex

.PHONY: all clean fullclean

all:
	latexmk -pdf $(MAIN).tex

bib:
	$(TEX) $(MAIN).tex
	$(BIB) $(MAIN)
	$(TEX) $(MAIN).tex
	$(TEX) $(MAIN).tex

clean:
	latexmk -c

fullclean:
	latexmk -C
	rm -f $(MAIN).bbl $(MAIN).blg $(MAIN).run.xml $(MAIN).bcf
