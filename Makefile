.PHONY: all clean

CC = pdflatex
DIR = examples

all: $(DIR)/logbook.pdf

$(DIR)/logbook.pdf: $(DIR)/logbook.tex
	cd $(DIR) && $(CC) logbook.tex && $(CC) logbook.tex

clean:
	cd $(DIR) && rm -f *.aux *.log *.out *.toc *.fls *.fdb_latexmk *.synctex.gz *.bak*
