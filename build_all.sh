#!/bin/sh
a_head="\t\t\t<li><a target='_blank' href='songs/"
a_mid=".pdf'>"
a_tail="</a></li>\n"

cat index_h.html > public/index.html

cd songs
for f in *.tex
do
    cat ../header.tex $f ../footer.tex > temp.tex
    xelatex temp.tex
    xelatex temp.tex
    xelatex temp.tex
    mv temp.pdf ../public/songs/${f%%.*}.pdf
    echo $a_head${f%%.*}$a_mid${f%%.*}$a_tail >> ../public/index.html
done

cd ..
cat index_f.html >> public/index.html