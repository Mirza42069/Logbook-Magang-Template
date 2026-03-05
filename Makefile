.PHONY: check-pdf check-xe sample package clean

OVERLEAF_DIR = overleaf
ROOT_FILE = logbook.tex
ROOT_BASENAME = logbook
BUILD_DIR = build
PDF_BUILD_DIR = $(BUILD_DIR)/pdf
XE_BUILD_DIR = $(BUILD_DIR)/xe
SAMPLE_BUILD_DIR = $(BUILD_DIR)/sample
PACKAGE_FILE = Logbook_Template_Overleaf.zip
PACKAGE_INPUTS = $(OVERLEAF_DIR)/logbook.tex $(OVERLEAF_DIR)/logo_header.png
LATEX_FLAGS = -interaction=nonstopmode -halt-on-error

check-pdf:
	mkdir -p $(PDF_BUILD_DIR)
	cd $(OVERLEAF_DIR) && pdflatex $(LATEX_FLAGS) -output-directory=../$(PDF_BUILD_DIR) $(ROOT_FILE)
	cd $(OVERLEAF_DIR) && pdflatex $(LATEX_FLAGS) -output-directory=../$(PDF_BUILD_DIR) $(ROOT_FILE)

check-xe:
	mkdir -p $(XE_BUILD_DIR)
	cd $(OVERLEAF_DIR) && xelatex $(LATEX_FLAGS) -output-directory=../$(XE_BUILD_DIR) $(ROOT_FILE)
	cd $(OVERLEAF_DIR) && xelatex $(LATEX_FLAGS) -output-directory=../$(XE_BUILD_DIR) $(ROOT_FILE)

sample:
	mkdir -p $(SAMPLE_BUILD_DIR)
	cd $(OVERLEAF_DIR) && pdflatex $(LATEX_FLAGS) -output-directory=../$(SAMPLE_BUILD_DIR) $(ROOT_FILE)
	cd $(OVERLEAF_DIR) && pdflatex $(LATEX_FLAGS) -output-directory=../$(SAMPLE_BUILD_DIR) $(ROOT_FILE)
	cp $(SAMPLE_BUILD_DIR)/$(ROOT_BASENAME).pdf $(OVERLEAF_DIR)/$(ROOT_BASENAME).pdf

package: $(PACKAGE_INPUTS)
	rm -f $(PACKAGE_FILE)
	cd $(OVERLEAF_DIR) && zip -X -q ../$(PACKAGE_FILE) logbook.tex logo_header.png

clean:
	rm -rf $(BUILD_DIR)
	rm -f *.aux *.log *.out *.toc *.fls *.fdb_latexmk *.synctex.gz *.bak* *.xdv *-converted-to.*
	rm -f $(OVERLEAF_DIR)/*.aux $(OVERLEAF_DIR)/*.log $(OVERLEAF_DIR)/*.out $(OVERLEAF_DIR)/*.toc $(OVERLEAF_DIR)/*.fls $(OVERLEAF_DIR)/*.fdb_latexmk $(OVERLEAF_DIR)/*.synctex.gz $(OVERLEAF_DIR)/*.xdv $(OVERLEAF_DIR)/*-converted-to.*
