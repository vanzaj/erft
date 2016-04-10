#!/usr/bin/env bash

pandoc -s -S --toc --mathml -f markdown+pipe_tables $1 -o $(basename $1 .md).epub
