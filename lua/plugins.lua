---@diagnostic disable: undefined-global
local packer = require 'packer'

packer.init({
	display = {
		open_fn = function()
			return require 'packer.util'.float({ border = 'single' })
		end,
		prompt_border = 'single',
	},
	auto_clean = true,
	compile_on_sync = true,
})

packer.startup(function()
	use 'lewis6991/impatient.nvim'

	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use 'voldikss/vim-floaterm'

	-- Telescope
	use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim', 'nvim-lua/popup.nvim' } }

	-- Colors
	use { 'norcalli/nvim-colorizer.lua', config = function() require 'colorizer'.setup() end }
	use { 'wiliamks/mechanical.nvim', config = function() vim.cmd [[ colorscheme mechanical ]] end }
	--use { '/home/wiliamks/Projects/VimPlugins/mechanical.nvim', config = function() vim.cmd [[ colorscheme mechanical ]] end }
	use {
		'Mofiqul/adwaita.nvim',
		config = function()
			vim.g.adwaita_darker = true -- for darker version
			--vim.g.adwaita_disable_cursorline = true -- to disable cursorline
			--vim.cmd([[colorscheme adwaita]])
		end
	}

	-- Flutter
	use {
		'dart-lang/dart-vim-plugin',
		config = function()
			vim.g.dart_html_in_string = true
			vim.g.dart_style_guide = 2
		end,
		ft = "dart"
	}
	use 'akinsho/flutter-tools.nvim'

	-- Scala
	use { 'scalameta/nvim-metals', requires = { "nvim-lua/plenary.nvim" } }

	-- Markdown
	use { 'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview', ft = { 'markdown' } }

	-- Theme
	use { 'hoob3rt/lualine.nvim',
		config = function() require 'lualine'.setup { options = { theme = 'nord', globalstatus = true } } end } --theme = 'adwaita'
	--use 'romgrk/barbar.nvim'

	-- Files
	use 'kyazdani42/nvim-web-devicons'
	--use 'kyazdani42/nvim-tree.lua'
	use {
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
		}
	}

	-- LSP
	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	}
	use 'wiliamks/nice-reference.nvim'
	use 'williamboman/nvim-lsp-installer'
	use { 'rmagatti/goto-preview', config = function() require 'goto-preview'.setup {} end }
	use { 'weilbith/nvim-code-action-menu', event = "BufRead",
		config = function() vim.g.code_action_menu_show_details = false end }
	use { 'onsails/lspkind-nvim', event = "BufRead", config = function() require 'lspkind'.init() end }
	use { 'ray-x/lsp_signature.nvim', event = "BufRead",
		config = function() require 'lsp_signature'.setup({ floating_window = false }) end }
	use { 'filipdutescu/renamer.nvim', branch = 'master', config = function() require 'renamer'.setup() end }

	-- Autocomplete
	use {
		'hrsh7th/nvim-cmp',
		requires = {
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
	}

	-- Syntax
	use {
		'nvim-treesitter/nvim-treesitter', run = ':TSUpdate',
		requires = 'p00f/nvim-ts-rainbow'
	}

	-- Formatting
	use 'mhartington/formatter.nvim'

	-- Tools
	use 'goolord/alpha-nvim'
	use 'preservim/nerdcommenter'
	use 'lukas-reineke/indent-blankline.nvim'
	use 'matze/vim-move'
	use 'tpope/vim-surround' --quoting/parenthesizing

	-- Git
	use 'tpope/vim-fugitive' --Git wrapper
	use 'sindrets/diffview.nvim'
	use { 'lewis6991/gitsigns.nvim', config = function() require 'gitsigns'.setup() end }
	use { 'TimUntersberger/neogit', config = function() require 'neogit'.setup {} end }
end)
