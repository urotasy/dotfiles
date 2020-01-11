#!/bin/sh

dir=`cd ${0%/*}; pwd`

# bashrc
bashrc_end=`tail -n 1 ${HOME}/.bashrc`
if [ "# dotfiles setting end" != "${bashrc_end}" ]; then
    {
        echo ""
        echo "# Below setting is added by dotfiles"
        echo "source $dir/bashrc"
        echo "# dotfiles setting end"
    } >> ${HOME}/.bashrc
fi
source ${HOME}/.bashrc

# vimrc
if [ ! -L ${HOME}/.vimrc -a -f ${HOME}/.vimrc ]; then
    mv ${HOME}/.vimrc ${HOME}/.vimrc.back
fi
ln -sf ${dir}/vimrc ${HOME}/.vimrc

exit 0
