#!/bin/bash

# adapted from http://angel-de-vicente.blogspot.com/2017/11/emacs-interface-to-recoll.html
query=$@
recoll -t -b "$query" 2>/dev/null | \
    sed -e "s/file:\/\///" | \
    # grep '\.\(txt\|tex\|org\|md\|pdf\)$' | \
    xargs -d '\n' ag --group --line-number --column --color --color-match 30\;43 --color-path 1\;32 --smart-case --max-count 3 "$query" 
