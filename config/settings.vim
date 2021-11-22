filetype plugin indent on
colorscheme mechanical

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute ':bd' | wincmd p | enew | execute 'cd '.argv()[0] | endif

let $FZF_DEFAULT_COMMAND = 'ag -g ""'

command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, fzf#vim#with_preview({'options': '--delimiter : --nth 4..'}), <bang>0)

let g:vim_markdown_conceal = 1
let g:vim_markdown_conceal_code_blocks = 1

au BufNewFile,BufRead *.go setlocal noet ts=4 sw=4 sts=4
autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()

let dart_html_in_string=v:true
let g:dart_style_guide = 2

let g:indentLine_fileTypeExclude = ['dashboard', 'alpha']
let g:dashboard_default_executive ='fzf'

hi DevIconDockerfile guifg=cyan
hi DevIconGitIgnore guifg=#ff3e00
hi DevIconDart guifg=#51a0cf
