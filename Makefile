%.html: %.md
	pandoc -s $< -o $@

%.pdf: %.md
	pandoc -s $< -o $@ -V geometry:margin=1in -V fontsize=12pt

%.pdf: %.tex references.bib
	pdflatex $<
	bibtex paper
	pdflatex $<
	pdflatex $<
