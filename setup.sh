#!/bin/bash

DOT_FILES=( .vimrc .bashrc .gitconfig)

for file in ${DOT_FILES[@]}
do
    ln -fs $HOME/dotFiles/$file $HOME/$file
    #. $file
done

ln -fs $HOME/dotFiles/vimfiles ~/.vim
