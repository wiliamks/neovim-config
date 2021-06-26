let g:airline_powerline_fonts = 1
let g:rainbow_active = 1
let g:airline_theme='supernova'
let g:airline#extensions#tabline#enabled = 1

let g:nvim_tree_side = 'right'
let g:nvim_tree_auto_close = 1

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute ':bd' | wincmd p | enew | execute 'cd '.argv()[0] | endif

let $FZF_DEFAULT_COMMAND = 'ag -g ""'

command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}), <bang>0)

let g:vim_markdown_conceal = 1
let g:vim_markdown_conceal_code_blocks = 1

let g:colorizer_colornames = 0
let g:colorizer_auto_filetype='css,html,conf,rasi,Xresources'

colorscheme colors
hi Normal guibg=NONE ctermbg=NONE
