#!/bin/sh
a_head="<a href='"
a_mid=".pdf'>"
a_tail="</a><br/>\n"

cat index_h.html > public/songs/index.html

cd songs
for f in *.tex
do
#    cat ../header.tex $f ../footer.tex > temp.tex
#    xelatex temp.tex
#    xelatex temp.tex
#    xelatex temp.tex
#    mv temp.pdf ../public/songs/${f%%.*}.pdf
    echo $a_head${f%%.*}$a_mid$f$a_tail
    echo $a_head${f%%.*}$a_mid$f$a_tail >> ../public/songs/index.html
done

cd ..
cat index_f.html >> public/songs/index.html