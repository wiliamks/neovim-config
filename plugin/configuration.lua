vim.o.confirm = true
vim.o.swapfile = false
vim.o.backup = false

vim.wo.number = true
vim.wo.relativenumber = true
vim.o.autoread = true
vim.o.ignorecase = true

vim.o.tabstop = 4
vim.o.shiftwidth = vim.o.tabstop

vim.o.termguicolors = true
vim.o.mouse = "a"

vim.g.indentLine_fileTypeExclude = { 'alpha', 'packer' }

vim.cmd [[ 
    command! W execute 'w' <bar> edit!
    command! Q execute 'q' <bar> edit!
    command! WQ execute 'wq' <bar> edit!

    setlocal noet ts=4 sw=4 sts=4
]]
