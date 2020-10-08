#!/usr/bin/env bash

toc=""

if [ "$1" == "--toc" ]; then
    toc=$1
    shift
fi

src="$1"
pandoc -s $toc --mathml -f markdown+pipe_tables+smart $src -o $(basename $src .md).epub
