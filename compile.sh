
#!/bin/bash

# Script to compile LaTeX document using natbib + bibtex

# Default filename is main if no argument is given
FILENAME=${1:-main}

# Run sequence: pdflatex → bibtex → pdflatex → pdflatex
echo "Compiling $FILENAME.tex with natbib..."

pdflatex "$FILENAME.tex" && \
bibtex "$FILENAME" && \
pdflatex "$FILENAME.tex" && \
pdflatex "$FILENAME.tex"

echo "Done. Check $FILENAME.pdf"
