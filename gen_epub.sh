#!/usr/bin/env bash

pandoc -s -S --mathml $1 -o $(basename $1 .md).epub
