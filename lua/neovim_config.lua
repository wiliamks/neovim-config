vim.g.mapleader = ','
vim.o.termguicolors = true

vim.o.confirm = true
vim.o.swapfile = false
vim.o.backup = false

vim.wo.number = true
vim.wo.relativenumber = true
vim.o.autoread = true
vim.o.ignorecase = true

vim.o.tabstop = 4
vim.o.shiftwidth = vim.o.tabstop

vim.o.mouse = "a"

vim.g.indentLine_fileTypeExclude = { 'alpha', 'packer', 'vimwiki', 'help', 'man' }
vim.g.loaded_perl_provider = 0

vim.o.clipboard = "unnamedplus"
vim.o.lazyredraw = false

vim.opt.wrap = false
vim.opt.colorcolumn = "100"
vim.opt.showmode = false
vim.opt.laststatus = 0

vim.o.foldcolumn = '0' -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true

vim.cmd [[ 
	set backspace=indent,eol,start
	"set statusline=""
	command! W execute 'w' <bar> edit!
	command! Q execute 'q' <bar> edit!
	command! WQ execute 'wq' <bar> edit!

	setlocal noet ts=4 sw=4 sts=4

	set noshowcmd  " to get rid of display of last command
	set shortmess+=F  
	set mousescroll=ver:1
]]
