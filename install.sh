#!/bin/bash
# Symlink dotfiles to ~

for file in dotfiles/*; do
    target=`realpath $file`
    link_name=~/.`basename $file`

    ln -fvs $target $link_name
done
