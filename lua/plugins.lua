require 'lazy'.setup({
	'lewis6991/impatient.nvim',

	-- Telescope
	{
		'nvim-telescope/telescope.nvim',
		dependencies = {
			'nvim-lua/plenary.nvim',
			'nvim-lua/popup.nvim',
			{'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
		}
	},
	{'kevinhwang91/nvim-bqf', ft = 'qf'},

	-- Colors
	{ 'norcalli/nvim-colorizer.lua', config = function() require 'colorizer'.setup() end },
	{ 'wiliamks/mechanical.nvim', config = function() vim.cmd [[ colorscheme mechanical ]] end },
	--{
		--'Mofiqul/adwaita.nvim',
		--config = function()
			--vim.g.adwaita_darker = true -- for darker version
			--vim.cmd([[colorscheme adwaita]])
		--end
	--},

	-- Flutter
	{
		'dart-lang/dart-vim-plugin',
		config = function()
			vim.g.dart_html_in_string = true
			vim.g.dart_style_guide = 2
		end,
		ft = "dart"
	},
	'akinsho/flutter-tools.nvim',

	-- Scala
	{ 'scalameta/nvim-metals', dependencies = { "nvim-lua/plenary.nvim" } },

	-- Markdown
	{
		'iamcco/markdown-preview.nvim',
		build = 'cd app && yarn install',
		cmd = 'MarkdownPreview',
		ft = { 'markdown' }
	},

	-- Theme
	{
		'hoob3rt/lualine.nvim',
		config = function()
			require 'lualine'.setup {
				options = { theme = 'nord', globalstatus = true } --theme = 'adwaita'
			}
		end
	},
	--'romgrk/barbar.nvim',

	-- Files
	'kyazdani42/nvim-web-devicons',
	--'kyazdani42/nvim-tree.lua',
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
		}
	},

	-- LSP
	{
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	},
	'wiliamks/nice-reference.nvim',
	{ 'rmagatti/goto-preview', config = function() require 'goto-preview'.setup {} end },
	{
		'weilbith/nvim-code-action-menu',
		event = "BufRead",
		config = function() vim.g.code_action_menu_show_details = false end
	},
	{
		'onsails/lspkind-nvim',
		event = "BufRead",
		config = function() require 'lspkind'.init() end
	},
	{
		'ray-x/lsp_signature.nvim',
		event = "BufRead",
		config = function() require 'lsp_signature'.setup({ floating_window = false }) end
	},
	{
		'filipdutescu/renamer.nvim',
		branch = 'master',
		config = function() require 'renamer'.setup() end
	},

	-- Autocomplete
	{
		'hrsh7th/nvim-cmp',
		dependencies = {
			'hrsh7th/cmp-buffer',
			'hrsh7th/cmp-emoji',
			'hrsh7th/cmp-path',
			'hrsh7th/cmp-vsnip',
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-nvim-lua',
			'hrsh7th/cmp-latex-symbols',
			'windwp/nvim-autopairs',
			'windwp/nvim-ts-autotag',
			'hrsh7th/vim-vsnip',
			'hrsh7th/vim-vsnip-integ',
			'rafamadriz/friendly-snippets'
		}
	},
	{
		"jackMort/ChatGPT.nvim",
		config = function()
			require 'chatgpt'.setup({})
		end,
		dependencies = {
			"MunifTanjim/nui.nvim",
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope.nvim"
		},
		cmd = 'ChatGPT'
	},

	-- Syntax
	{
		'nvim-treesitter/nvim-treesitter',
		build = ':TSUpdate',
		dependencies = {
			'p00f/nvim-ts-rainbow',
			'm-demare/hlargs.nvim'
		}
	},

	-- Tools
	'goolord/alpha-nvim',
	'preservim/nerdcommenter',
	'lukas-reineke/indent-blankline.nvim',
	'matze/vim-move',
	'tpope/vim-surround', --quoting/parenthesizing

	-- Git
	'sindrets/diffview.nvim',
	{ 'lewis6991/gitsigns.nvim', config = function() require 'gitsigns'.setup() end },
	{ 'TimUntersberger/neogit', config = function() require 'neogit'.setup {} end, cmd = 'Neogit' },
})
