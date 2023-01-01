local vim = vim
local api = vim.api

local on_attach = function(_, bufnr)
	vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

	local opts = { noremap = true, silent = true, buffer = bufnr }
	vim.keymap.set('n', 'gD', vim.lsp.buf.definition, opts)
	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
	vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
	vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
	vim.keymap.set('i', '<C-a>', vim.lsp.buf.signature_help, opts)
	vim.keymap.set('n', '<C-a>', vim.lsp.buf.signature_help, opts)
	vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
	vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
	vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
	vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
	vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)
	vim.keymap.set('n', '[d', vim.diagnostic.goto_next, opts)
	vim.keymap.set('n', ']d', vim.diagnostic.goto_prev, opts)
	vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, opts)
	vim.keymap.set('n', '<leader>so', require 'telescope.builtin'.lsp_document_symbols, opts)

	api.nvim_create_user_command('Format', function()
		vim.lsp.buf.format { async = true }
	end, {})

	vim.lsp.handlers["textDocument/references"] = require 'nice-reference'.reference_handler
	vim.lsp.handlers['textDocument/declaration'] = require 'nice-reference'.definition_handler
	vim.lsp.handlers['textDocument/definition'] = require 'nice-reference'.definition_handler
	vim.lsp.handlers['textDocument/typeDefinition'] = require 'nice-reference'.definition_handler
	vim.lsp.handlers['textDocument/implementation'] = require 'nice-reference'.definition_handler
end

require 'mason'.setup()
require 'mason-lspconfig'.setup()
require 'mason-lspconfig'.setup_handlers {
	function(server_name)
		require 'lspconfig'[server_name].setup {
			on_attach = on_attach
		}
	end,
}

vim.cmd("set pumheight=10")
vim.cmd("set shortmess+=c")

require 'flutter-tools'.setup {
	widget_guides = {
		enabled = true,
	},
	lsp = {
		on_attach = on_attach
	}
}

vim.diagnostic.config({
	virtual_text = false,
})

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

local metals_config = require 'metals'.bare_config()
local capabilities = vim.lsp.protocol.make_client_capabilities()
metals_config.capabilities = require 'cmp_nvim_lsp'.default_capabilities(capabilities)
metals_config.on_attach = on_attach

local nvim_metals_group = api.nvim_create_augroup("nvim-metals", { clear = true })
api.nvim_create_autocmd("FileType", {
	pattern = { "scala", "sbt", "java" },
	callback = function()
		require 'metals'.initialize_or_attach(metals_config)
	end,
	group = nvim_metals_group,
})
