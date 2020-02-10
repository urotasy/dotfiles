#!/bin/bash

# install vim colorscheme: PaperColor
if [ ! -d ${HOME}/.vim ]; then
    mkdir ${HOME}/.vim
fi
if [ ! -d ${HOME}/.vim/colors ]; then
    mkdir ${HOME}/.vim/colors
fi
if [ ! -d ${HOME}/.vim/colors/papercolor ]; then
    mkdir ${HOME}/.vim/colors/papercolor
fi

git clone --depth 1 https://github.com/NLKNguyen/papercolor-theme.git ${HOME}/.vim/colors/papercolor
if [ $? -ne 0 ]; then
    echo "ERROR: failed to git clone PaperColor theme"
    exit 1
fi

ln -sf ${HOME}/.vim/colors/papercolor/colors/PaperColor.vim ${HOME}/.vim/colors
