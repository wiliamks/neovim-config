local M = {}

function M.setup()
	require 'nvim-treesitter.configs'.setup {
		ensure_installed = {
			'bash',
			'c',
			'comment',
			'css',
			'dart',
			'dockerfile',
			'gitcommit',
			'gitignore',
			'go',
			'gomod',
			'html',
			'javascript',
			'jsdoc',
			'json',
			'jsonc',
			'lua',
			'markdown',
			'python',
			'ruby',
			'rust',
			'scala',
			'tsx',
			'typescript',
			'vim'
		},
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = true
		},
		indent = {
			enable = true
		},
		incremental_selection = {
			enable = true,
			keymaps = {
				init_selection = '<CR>',
				scope_incremental = '<CR>',
				node_incremental = '<TAB>',
				node_decremental = '<S-TAB>',
			},
		},
		rainbow = {
			enable = true,
			extended_mode = true,
			colors = {
				"#e5c07b", "#61afef", "#d8a6f4", "#979eab", "#be5046"
			},
		},
		autotag = {
			enable = true,
		},
		autopairs = {
			enable = true
		},
	}

	require 'hlargs'.setup()

	vim.keymap.set({ "n" }, "<leader>k", require 'ts-node-action'.node_action, { desc = "Trigger Node Action" })

end

return M
