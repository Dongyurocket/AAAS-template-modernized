# Makefile for AAAS LaTeX Template
# Usage: make [target]
#   make        - compile PDF (default)
#   make clean  - remove build artifacts
#   make help   - show this message

MAIN    := TempExample
XELATEX := xelatex
BIBTEX  := bibtex
FLAGS   := -interaction=nonstopmode

.PHONY: all clean help

all: $(MAIN).pdf

$(MAIN).pdf: $(MAIN).tex $(MAIN).bib aaas.cls
	$(XELATEX) $(FLAGS) $(MAIN).tex
	$(BIBTEX)  $(MAIN)
	$(XELATEX) $(FLAGS) $(MAIN).tex
	$(XELATEX) $(FLAGS) $(MAIN).tex

clean:
	rm -f $(MAIN).aux $(MAIN).bbl $(MAIN).blg $(MAIN).log \
	      $(MAIN).out $(MAIN).toc $(MAIN).xdv $(MAIN).fls \
	      $(MAIN).fdb_latexmk $(MAIN).synctex.gz $(MAIN).bcf \
	      $(MAIN).run.xml Symbol/SymbolTable.aux Symbol/SymbolTable.log

help:
	@echo "Usage:"
	@echo "  make        - compile TempExample.pdf"
	@echo "  make clean  - remove build artifacts"
	@echo "  make help   - show this message"
