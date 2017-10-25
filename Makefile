.PHONY: all

all: expose.pdf

%.pdf: %.tex %.bib
	latexmk -pdf $<
