#!/bin/bash

dir=`cd ${0%/*}; pwd`

# bashrc
bashrc_end=`tail -n 1 ${HOME}/.bashrc`
end_comment="# dotfiles setting end"
if [ "${bashrc_end}" != "${end_comment}" ]; then
    {
        echo ""
        echo "# Below setting is added by dotfiles"
        echo "source $dir/bashrc"
        echo "${end_comment}"
    } >> ${HOME}/.bashrc
fi

# vimrc
if [ ! -L ${HOME}/.vimrc -a -f ${HOME}/.vimrc ]; then
    mv ${HOME}/.vimrc ${HOME}/.vimrc.back
fi
ln -sf ${dir}/vimrc ${HOME}/.vimrc

exit 0
