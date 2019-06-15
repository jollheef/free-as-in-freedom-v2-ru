all:
	rubber -m xelatex faif-2.0.tex

open: all
	xdg-open faif-2.0.pdf

clean:
	git clean -xfd
