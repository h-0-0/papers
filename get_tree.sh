#!/bin/bash

#File: tree-md

tree=$(tree -tf --noreport -I '*~|*.aux|*.fdb_latexmk|*.fls|*.log|*.gz|*.bbl|*.blg' --charset ascii $1 |
       sed -e 's/| \+/  /g' -e 's/[|`]-\+/ */g' -e 's:\(* \)\(\(.*/\)\([^/]\+\)\):\1[\4](\2):g')

printf "# Project tree\n\n${tree}"