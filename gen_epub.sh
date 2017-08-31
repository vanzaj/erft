#!/usr/bin/env bash

toc=''
if [ $1 == "--toc" ]; then
    toc=$1
    shift
fi

pandoc -s -S $toc --mathml -f markdown+pipe_tables $1 -o $(basename $1 .md).epub
