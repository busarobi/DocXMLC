all: pdf main clean

pdf: plt-vs-hsm.tex xmlc_references.bib
	pdflatex plt-vs-hsm
	bibtex plt-vs-hsm
	pdflatex plt-vs-hsm
	pdflatex plt-vs-hsm

main: mainpaper.tex xmlc_references.bib
	pdflatex mainpaper
	bibtex mainpaper
	pdflatex mainpaper
	pdflatex mainpaper

clean:
	rm -r *.aux
	rm -r *.bbl
	rm -r *.blg
	rm -r *.log
