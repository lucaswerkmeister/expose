.PHONY: all

all: expose.pdf expose.docx

%.pdf: %.tex %.bib
	latexmk -pdf $<

%.docx: %.odt
	loffice --convert-to docx $<
