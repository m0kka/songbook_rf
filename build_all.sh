#!/bin/sh
shopt -s nullglob
cd songs
for f in *.tex
do
    cat ../header.tex $f ../footer.tex > temp.tex
    xelatex temp.tex
    xelatex temp.tex
    xelatex temp.tex
    mv temp.pdf ../public/songs/${f%%.*}.pdf
done