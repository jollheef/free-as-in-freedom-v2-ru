all: translators
	rubber -m xelatex faif-2.0.tex

open: all
	xdg-open faif-2.0.pdf

clean:
	git clean -xfd

translators:
	git shortlog --summary --numbered | cut -c8- | awk 1 ORS=', ' \
		| sed 's/, $$/./' | rev | sed 's/ ,/ и /' | rev \
		> translators.tex
