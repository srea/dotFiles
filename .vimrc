set tenc=euc-jp
set enc=utf-8
set fenc=utf-8
set nu
set ruler
set nowrap
set showtabline=2
colorscheme desert
set expandtab
set ts=4
set noswapfile

set nocompatible
filetype off
set rtp+=~/dotFiles/vimfiles/bundle/vundle/
call vundle#rc()
filetype plugin indent on " required!
