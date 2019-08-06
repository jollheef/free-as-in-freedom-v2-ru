all: translators version time
	rubber -m xelatex faif-2.0.tex
	cp faif-2.0.pdf faif-2.0-$(shell git describe --abbrev=0 --tags).pdf

open: all
	xdg-open faif-2.0.pdf

clean:
	git clean -xfd

translators:
	git shortlog --summary --numbered | cut -c8- | awk 1 ORS=', ' \
		| sed 's/, $$/./' | rev | sed 's/ ,/ и /' | rev \
		> translators.tex

version:
	git describe --abbrev=0 --tags | tr -d '\n' > build-ver.tex
	echo -n '-' >> build-ver.tex
	git rev-parse --short HEAD | tr -d '\n' >> build-ver.tex
	echo -n ',' >> build-ver.tex

time:
	date -I | tr -d '\n' > build-time.tex
	echo -n '.' >> build-time.tex
