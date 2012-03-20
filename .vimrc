" 
"""""""""""""""" 
" せってぃんぐ "
""""""""""""""""
" 文字コード設定
set encoding     =utf-8 " enc
set termencoding =utf-8 " tenc
set fileencoding =utf-8 " fenc
set fileencodings=iso-2022-jp,utf-8,cp932,euc-jp
" 検索設定
set ignorecase
set smartcase
set incsearch
set wrapscan " 繰り返して検索する nowrapscan
" キー動作設定
set backspace =indent,eol,start
" 表示設定
set number " nu
set ruler
set nowrap
set cursorline
set showmatch
set wildmenu
set ambiwidth=double
set showcmd
set cmdheight=2
set laststatus=2 " 下部バーを常に表示
set statusline=%<%f\ %m%r%h%w%{'[^_^]['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
" 編集設定
set nosmartindent " 自動インデント無効
set noautoindent
set whichwrap=b,s,h,l,<,>,[,] " 行末で次の行に行くため
set formatoptions+=m " マルチバイト対応
" タブ設定
set tabstop    =4 " ts
set shiftwidth =4 " sw >> <<
set showtabline=2
set expandtab " tab to space
" 色設定
colorscheme desert
syntax on
set title
" ファイル設定
set noswapfile
set nobackup

""""""""""""""""""
" キーマッピング "
""""""""""""""""""
" インサートモードでもhjkl移動
imap <C-h> <Left>
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-l> <Right>
" BackSpaceもDelete
imap <C-u> <BS>
imap <C-i> <Del>
" 現在行の下に空行
imap <C-o> <ESC>o
" エンターで改行
noremap <CR> o<ESC>

" ショートカット
noremap <C-c> <ESC>:q<CR>

" Mac USキーボード
noremap ; :
noremap : ;

" CursorLine
:hi clear CursorLine
:hi CursorLine gui=underline
highlight CursorLine ctermbg=black guibg=black

" 全角を表示 
highlight ZenkakuSpace cterm=underline ctermfg=red guibg=white
match ZenkakuSpace /　/

""""""""""""""
" プラグイン " 
""""""""""""""
" install:BundleInstall
" update :BundleInstall!
set nocompatible " 互換モードOFF
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
