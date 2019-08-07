[![Build Status](https://travis-ci.org/jollheef/free-as-in-freedom-v2-ru.svg?branch=master)](https://travis-ci.org/jollheef/free-as-in-freedom-v2-ru)

# [Ричард Столлман и революция свободного программного обеспечения](https://code.dumpstack.io/etc/free-as-in-freedom-v2-ru)

Русский перевод второго издания [Free as in Freedom: Richard Stallman's Crusade for Free Software](https://www.fsf.org/faif/).

## Как скомпилировать книгу?

1 Установить texlive и rubber.

NixOS:

    nix-env -iA nixos.texlive.combined.scheme-full nixos.rubber

Debian/Ubuntu:

    sudo apt install texlive-full rubber

2 Склонировать репозиторий и запустить сборку.

    git clone https://code.dumpstack.io/etc/free-as-in-freedom-v2-ru.git
	cd free-as-in-freedom-v2-ru
    make

В текущей директории появится файл faif-2.0.pdf.

## fb2, markdown или html версии

Для получения fb2, markdown или html версии можно воспользоваться [pandoc](https://pandoc.org/). Одноименный пакет есть во всех основных дистрибутивах.

fb2:

    pandoc -t fb2 faif-2.0.tex > faif-2.0.fb2

markdown:

    pandoc -t markdown faif-2.0.tex > faif-2.0.md

html:

    pandoc -t html faif-2.0.tex > faif-2.0.html
