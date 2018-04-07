#!/bin/bash

DOT_FILES=( .vimrc .zshrc .tmux.conf .snippets .gitconfig)

for file in ${DOT_FILES[@]}
do
    ln -fsi $PWD/$file $HOME/$file
done

# peco

mkdir $HOME/.config/peco/
ln -fsi $PWD/.config/peco/config.json $HOME/.config/peco/config.json

# mkdir ~/bin
# cp -ap ./bin/* ~/bin/