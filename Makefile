
USE_BIBTEX=yes
TEX=pdflatex
BIBTEX=bibtex
PDF=dvipdf
all: MassiveStars.pdf 


MassiveStars.pdf: MassiveStars.tex
	$(TEX) MassiveStars.tex $@
	$(TEX) MassiveStars.tex $@	
	$(BIBTEX) MassiveStars
	$(BIBTEX) MassiveStars
	$(TEX) MassiveStars.tex $@
	$(BIBTEX) MassiveStars
	$(TEX) MassiveStars.tex $@
	$(TEX) MassiveStars.tex $@
#$(PDF) MassiveStars.dvi
.PHONY : clean

clean:
	rm -f *.log *.aux *.out *.dvi *.blg *.toc *.lof *.lot *.tbx \
	 *.fgx *~ MassiveStars.pdf MassiveStars.ps *.bbl

