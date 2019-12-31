#!/bin/sh

dir="${0%/*}"

if [ ! -L ${HOME}/.vimrc -a -f ${HOME}/.vimrc ]; then
    mv ${HOME}/.vimrc ${HOME}/.vimrc.back
fi

ln -sf ${dir}/.vimrc ${HOME}/.vimrc

exit 0
