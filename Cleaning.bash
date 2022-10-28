#!/bin/bash

arg=${1:-.}
exts="aux bbl blg brf idx ilg ind lof log lol lot out toc pytxcode dat gnuplot"

if [ -d $arg ]; then
    for ext in $exts; do
         rm -f $arg/*.$ext
    done
else
    for ext in $exts; do
         rm -f $arg.$ext
    done
fi