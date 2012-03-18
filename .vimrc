
" my
set tenc=euc-jp
set enc=utf-8
set fenc=utf-8
set nu
set ruler
set nowrap
set cursorline
set showtabline=2
colorscheme desert
syntax on
set title
set expandtab
set ts=4
set noswapfile
set nobackup

" CursorLine
":hi clear CursorLine
":hi CursorLine gui=underline
"highlight CursorLine ctermbg=black guibg=black

set nocompatible
filetype off
set rtp+=~/dotFiles/vimfiles/bundle/vundle/
call vundle#rc()
" git
Bundle 'thinca/vim-quickrun'
Bundle 'Gist.vim'
let g:gist_detect_filetype = 1

Bundle 'mattn/vimplenote-vim'
Bundle 'mattn/webapi-vim'
"source ~/.simplenoterc

filetype plugin indent on " required!
