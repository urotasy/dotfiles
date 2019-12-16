#!/bin/sh

if [ ! -L ~/.vimrc -a -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.back
fi

ln -sf ~/dotfiles/.vimrc ~/.vimrc

exit 0
