[![Build Status](https://travis-ci.com/jollheef/free-as-in-freedom-v2-ru.svg?branch=primary)](https://travis-ci.org/jollheef/free-as-in-freedom-v2-ru)
[![Donate](https://img.shields.io/badge/Donate-BitCoin-green.svg)](https://blockchair.com/bitcoin/address/bc1q23fyuq7kmngrgqgp6yq9hk8a5q460f39m8nv87)

# [Ричард Столлман и революция свободного программного обеспечения](https://code.dumpstack.io/etc/free-as-in-freedom-v2-ru)

Русский перевод второго издания [Free as in Freedom: Richard Stallman's Crusade for Free Software](https://www.fsf.org/faif/).

## Как скомпилировать книгу?

	git clone https://code.dumpstack.io/etc/free-as-in-freedom-v2-ru.git
	cd free-as-in-freedom-v2-ru

#### [Nix](https://nixos.org/nix/download.html):

    nix-shell --pure --run make

#### Debian/Ubuntu:

    sudo apt install texlive-full rubber pandoc
    make

В текущей директории появятся файлы faif-2.0.pdf и faif-2.0.fb2.
