# makefile for pdf2latex
name=sig-alternate

open: pdf
		open -a Preview ${name}.pdf;
pdf:
		pdflatex ${name}
		pdflatex ${name}.tex;
		bibtex ${name}
		pdflatex ${name}.tex;
clean:
	rm -rf ${name}.aux ${name}.bbl ${name}.log ${name}.blg\
	 ${name}.out ${name}.out.bak ${name}.ps ${name}.dvi *~\
	 ${name}.pdf ${name.log}
