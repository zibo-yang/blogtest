#!/bin/bash
# Compile a .tex file to PDF with correct TeX Live paths
# Usage: ./compile.sh <file.tex>
FILE="${1:-problem.tex}"
STEM="${FILE%.tex}"
MAPFILE="$HOME/.texlive2021/texmf-var/fonts/map/pdftex/updmap/pdftex.map"

cd "$(dirname "$0")"

TEXMFVAR=$HOME/texmf-var \
TEXINPUTS="/usr/share/texlive/texmf-dist/tex//:/usr/share/texmf/tex//:" \
TFMFONTS="/usr/share/texlive/texmf-dist/fonts//:/usr/share/texmf/fonts//:" \
T1FONTS="/usr/share/texlive/texmf-dist/fonts/type1//:/usr/share/texmf/fonts/type1//:" \
/usr/bin/pdflatex -interaction=nonstopmode \
  "\pdfmapfile{=$MAPFILE}\input{$STEM}" 2>&1

# Second pass for cross-references
TEXMFVAR=$HOME/texmf-var \
TEXINPUTS="/usr/share/texlive/texmf-dist/tex//:/usr/share/texmf/tex//:" \
TFMFONTS="/usr/share/texlive/texmf-dist/fonts//:/usr/share/texmf/fonts//:" \
T1FONTS="/usr/share/texlive/texmf-dist/fonts/type1//:/usr/share/texmf/fonts/type1//:" \
/usr/bin/pdflatex -interaction=nonstopmode \
  "\pdfmapfile{=$MAPFILE}\input{$STEM}" 2>&1 | tail -5
