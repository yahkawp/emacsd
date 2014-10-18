#!/bin/sh

[ "$1" = "reset" ] && {
    rm -f ~/.emacs.d/init.el
    rm -rf ~/.emacs.d/elisp
    rm -rf ~/.emacs.d/config
}

[ -e ~/.emacs.d ] || { echo "Err: not emacs.d " ; exit 1 ; }

[ -f ~/.emacs.d/init.el ] && { echo "Err: There is already a init.el in ~/.emacs.d - leaving " ; exit 1 ; }
[ -e ~/.emacs.d/elisp ] && { echo "Err: There is already a elisp dir in ~/.emacs.d - leaving " ; exit 1 ; }
[ -e ~/.emacs.d/config ] && { echo "Err: There is already a config dir in ~/.emacs.d - leaving " ; exit 1 ; }



cwd=$(pwd)

ln -s $cwd/init.el ~/.emacs.d/
ln -s $cwd/elisp ~/.emacs.d/
ln -s $cwd/config ~/.emacs.d/

