map , <leader>

set noswapfile
set nobackup
set nowb
set nu
set relativenumber
set confirm
filetype plugin on
set omnifunc=syntaxcomplete#Complete

set autoread
set ignorecase
au FocusGained,BufEnter * checktime

set mouse=a

command! W execute 'w' <bar> edit!
command! Q execute 'q' <bar> edit!
command! WQ execute 'wq' <bar> edit!

set shiftwidth=4
set softtabstop=4

set completeopt=menuone,noselect

set termguicolors
