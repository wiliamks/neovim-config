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

vim.o.clipboard = "unnamedplus"
vim.o.lazyredraw = false

vim.opt.wrap = false
vim.opt.colorcolumn = "100"

vim.cmd [[ 
	set backspace=indent,eol,start
	"set statusline=""
	command! W execute 'w' <bar> edit!
	command! Q execute 'q' <bar> edit!
	command! WQ execute 'wq' <bar> edit!

	setlocal noet ts=4 sw=4 sts=4

	set noshowcmd  " to get rid of display of last command
	set shortmess+=F  
]]
