pandoc --citeproc --bibliography *.bib --css custom.css --mathjax -s -t revealjs slides.md -o slides.html $@
pandoc --citeproc --bibliography *.bib --css custom.css --mathjax -s -t revealjs intro.md -o intro.html $@
