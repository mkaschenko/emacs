#!/bin/bash

printf 'Syncing...'
cp ~/.emacs.d/init.el .emacs.d/
cp -r ~/.emacs.d/elisp/ .emacs.d/elisp/
rm -rf .emacs.d/elisp/.git
printf 'done\n'
