#!/bin/sh
set -eux

sed -i 's/``/\\enquote{/g' $1
sed -i "s/''/}/g" $1

sed -i "s;\\\\enquote{gfdl.tex};\`\`gfdl.tex'';" $1
