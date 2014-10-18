#!/bin/sh

[ -e ~/.emacs.d ] || { echo "Err: not emacs.d " ; exit 1 ; }

[ -f ~/.emacs.d/init.el ] && { echo "Err: There is already a init.el in ~/.emacs.d - leaving " ; exit 1 ; }
[ -f ~/.emacs.d/elisp ] && { echo "Err: There is already a elisp dir in ~/.emacs.d - leaving " ; exit 1 ; }



cwd=$(pwd)

ln -s $cwd/init.el ~/.emacs.d
ln -s $cwd/elisp ~/.emacs.d

