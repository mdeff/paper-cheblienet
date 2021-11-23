TEX = $(wildcard *.tex)  # latex sources
PDF = $(TEX:.tex=.pdf)  # produced PDFs
BBL = $(TEX:.tex=.bbl)  # processed bibliography
BIB = $(wildcard *.bib)  # bibliography
BST = $(wildcard *.bst)  # bibliographic style
STY = $(wildcard *.sty)  # style (package)

all: $(PDF)

%.pdf: %.tex $(BIB) $(BST) $(STY) Images
	latexmk -pdf $<

%.bbl: %.tex $(BIB) $(BST) $(STY) Images
	latexmk -pdf $<

clean:
	git clean -Xdf $(addprefix -e !, $(PDF)) -e !arxiv.zip

cleanall: clean
	rm -f $(PDF) arxiv.zip

arxiv.zip: $(TEX) $(BBL) $(STY)
	apack arxiv.zip $(TEX) $(BBL) $(STY) Images/*.{pdf,png,jpg} figures/*.pdf

.PHONY: all clean cleanall
