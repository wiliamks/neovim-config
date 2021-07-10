let g:airline_powerline_fonts = 1
let g:rainbow_active = 1
let g:airline_theme='supernova'

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

set termguicolors
colorscheme mechanical

augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto,javascript,arduino AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType gn AutoFormatBuffer gn
  autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer yapf
  autocmd FileType rust AutoFormatBuffer rustfmt
  autocmd FileType vue AutoFormatBuffer prettier
augroup END

"autocmd FileType dart setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType go setlocal shiftwidth=8 softtabstop=8 expandtab

let dart_html_in_string=v:true
let g:dart_style_guide = 2
let g:dart_format_on_save = 1
