#!/bin/bash

DOT_FILES=( .vimrc .bashrc)

for file in ${DOT_FILES[@]}
do
    ln -s $HOME/dotFiles/$file $HOME/$file
    . $file
done
