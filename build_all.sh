#!/bin/sh
shopt -s nullglob

cat index_h.html > public/songs/index.html

cd songs
for f in *.tex
do
#    cat ../header.tex $f ../footer.tex > temp.tex
#    xelatex temp.tex
#    xelatex temp.tex
#    xelatex temp.tex
#    mv temp.pdf ../public/songs/${f%%.*}.pdf
    echo '<a href="${f%%.*}.pdf">$f</a>' >> ../public/songs/index.html
done

cd ..
cat index_f.html >> public/songs/index.html