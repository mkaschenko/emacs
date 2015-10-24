#!/bin/bash

printf 'Syncing...'
cp ~/.emacs .
cp -r ~/.emacs.d/elisp/ .emacs.d/elisp/
printf 'done\n'
