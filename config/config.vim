set noswapfile
set nobackup
set nowb
set nu
set relativenumber
set confirm
filetype plugin on
set omnifunc=syntaxcomplete#Complete

colorscheme colors
hi Normal guibg=NONE ctermbg=NONE

set autoread
set ignorecase
au FocusGained,BufEnter * checktime

set mouse=a

command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

set shiftwidth=4
set softtabstop=4

set completeopt=menuone,noselect

"set termguicolors

