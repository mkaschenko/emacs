#!/bin/bash

printf 'Syncing...'
cp ~/.emacs .
cp -r ~/.emacs.d/elisp/ .emacs.d/elisp/
rm -rf .emacs.d/elisp/.git
printf 'done\n'
