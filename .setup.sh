#!/bin/bash

DOT_FILES=( .vimrc .zshrc .tmux.conf .snippets)

for file in ${DOT_FILES[@]}
do
    ln -fs $PWD/$file $HOME/$file
done

# mkdir ~/bin
# cp -ap ./bin/* ~/bin/
