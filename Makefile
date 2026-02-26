.PHONY: all local overleaf clean

CC = xelatex
OVERLEAF_DIR = overleaf
LOCAL_DIR = local
LOCAL_FILE = logbook2

all: local

local: $(LOCAL_DIR)/$(LOCAL_FILE).pdf

$(LOCAL_DIR)/$(LOCAL_FILE).pdf: $(LOCAL_DIR)/$(LOCAL_FILE).tex
	cd $(LOCAL_DIR) && $(CC) $(LOCAL_FILE).tex && $(CC) $(LOCAL_FILE).tex

overleaf: $(OVERLEAF_DIR)/logbook.pdf

$(OVERLEAF_DIR)/logbook.pdf: $(OVERLEAF_DIR)/logbook.tex
	cd $(OVERLEAF_DIR) && $(CC) logbook.tex && $(CC) logbook.tex

clean:
	rm -f *.aux *.log *.out *.toc *.fls *.fdb_latexmk *.synctex.gz *.bak* && cd $(LOCAL_DIR) && rm -f *.aux *.log *.out *.toc *.fls *.fdb_latexmk *.synctex.gz *.bak* && cd .. && cd $(OVERLEAF_DIR) && rm -f *.aux *.log *.out *.toc *.fls *.fdb_latexmk *.synctex.gz *.bak*
