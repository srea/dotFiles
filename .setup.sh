#!/bin/bash

DOT_FILES=( .vimrc .bash_profile .bash_logout .bashrc .zshrc .gitconfig .gitmodules .gitignore .screenrc .tmux.conf)

for file in ${DOT_FILES[@]}
do
    ln -fs $HOME/dotFiles/$file $HOME/$file
    #. $file
done

ln -fs $HOME/dotFiles/vimfiles ~/.vim

mkdir ~/bin
cp -ap ./bin/* ~/bin/
