ALL=$(wildcard *.tex)

all: $(ALL:.tex=.pdf) clean

clean:
	rm -f *.aux *.dvi *.log *.synctex.gz *.out

%.pdf:	%.tex $(wildcard *.cls)
	pdflatex $<
