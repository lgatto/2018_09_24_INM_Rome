LATEXFILES = *.aux\
	*.snm\
	*.nav\
	*.vrb\
	*.bbl\
	*.blg\
	*.ilg\
	*.log\
	*.nlo\
	*.nls\
	*.toc\
	*.aux\
	Rplots.pdf\
	*.dvi\
	*.map\
	*.out\
	*.figlist\
	*.dep\
	*.dpth\
	*-blx.bib\
	*.run.xml\
	*.makefile


INM_poster.pdf: INM_poster.tex
	pdflatex INM_poster.tex

INM_poster.tex: INM_poster.Rnw
	R-3.5 --vanilla -e "knitr::knit2pdf('INM_poster.Rnw')"


.PHONY: all clean

clean:
	rm -f *~
	rm -f $(LATEXFILES)
	rm -f .Rhistory .Makefile.swp
	rm -f INM_poster.tex
