vim.g.mapleader = ','
vim.api.nvim_set_keymap("n", ";", ":", { noremap = true })

vim.cmd [[
        source ~/.config/nvim/config/config.vim
	source ~/.config/nvim/config/plug.vim
	source ~/.config/nvim/config/keys.vim
	source ~/.config/nvim/config/settings.vim
]]

require'config.autocomplete'
require'config.lsp'
require'config.telescope'
require'config.icons'
