# Variables
XELATEX = xelatex
LATEXMK = latexmk -xelatex -output-directory=../$(OUT_DIR)
SRC_DIR = src
OUT_DIR = output
CLS_FILE = $(SRC_DIR)/fullstackdeveloper-ats.cls

# CV Basenames
CV_MAIN = nilushan_cv
CV_ARCH = nilushan_cv_architect
CV_SSE = nilushan_cv_sse

# Phony targets (targets that don't represent files)
.PHONY: all build arch sse clean

# Default target: build all CV versions
all: build arch sse

# Target to build the main CV
build: $(OUT_DIR)/$(CV_MAIN).pdf

# Target to build the architect CV
arch: $(OUT_DIR)/$(CV_ARCH).pdf

# Target to build the SSE CV
sse: $(OUT_DIR)/$(CV_SSE).pdf

# Generic rule to build a PDF from a TEX file in src/
# Depends on the .tex file and the .cls file
$(OUT_DIR)/%.pdf: $(SRC_DIR)/%.tex $(CLS_FILE)
	@mkdir -p $(OUT_DIR)
	@echo "Building $@ from $<..."
	cd $(SRC_DIR) && $(LATEXMK) $*.tex

# Clean up generated files
clean:
	@echo "Cleaning up generated files..."
	cd $(SRC_DIR) && $(LATEXMK) -C $(CV_MAIN).tex $(CV_ARCH).tex $(CV_SSE).tex > /dev/null 2>&1 || true
	rm -rf $(OUT_DIR)
	@echo "Cleaned output directory and LaTeX auxiliary files."