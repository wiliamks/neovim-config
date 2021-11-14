---@diagnostic disable: undefined-global
require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Navigation
    use {
	'karb94/neoscroll.nvim',
	config = function()
	    require 'neoscroll'.setup({
		mappings = {'<C-u>', '<C-d>', '<C-n>', '<C-f>',
		'<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
	    })
	end
    }

    -- Colors
    use { 'norcalli/nvim-colorizer.lua', config = function() require 'colorizer'.setup() end }
    use 'wiliamks/mechanical.nvim' -- colorscheme
    use 'p00f/nvim-ts-rainbow'

    -- Orgmode
    use {'kristijanhusak/orgmode.nvim', config = function() require('orgmode').setup{} end }
    use { 'lukas-reineke/headlines.nvim', config = function() require 'headlines'.setup() end }
    use {"akinsho/org-bullets.nvim", config = function() require 'org-bullets'.setup { symbols = { "◉", "○", "✸", "✿" } } end }

    -- Dart
    use 'dart-lang/dart-vim-plugin'
    use 'akinsho/flutter-tools.nvim'
    use 'udalov/kotlin-vim'

    -- Javascript
    use 'mxw/vim-jsx'
    use 'pangloss/vim-javascript'

    -- Rust
    use 'rust-lang/rust.vim'

    -- Markdown
    use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview', ft = {'markdown'}}

    -- Theme
    use 'hoob3rt/lualine.nvim'
    use 'romgrk/barbar.nvim'

    -- Files
    use { 'kyazdani42/nvim-web-devicons', config = function() require "nvim-web-devicons".setup {} end }
    use 'kyazdani42/nvim-tree.lua'

    -- Fzf
    use { 'junegunn/fzf', run = function() vim.fz['fzf#install'](0) end }
    use 'junegunn/fzf.vim'

    -- LSP
    use 'neovim/nvim-lspconfig'
    use 'weilbith/nvim-code-action-menu'
    use { 'onsails/lspkind-nvim', config = function() require 'lspkind'.init() end }
    use { 'rmagatti/goto-preview', config = function() require 'goto-preview'.setup {} end }
    use 'ray-x/lsp_signature.nvim'
    use 'kosayoda/nvim-lightbulb'
    use 'folke/trouble.nvim'
    use 'williamboman/nvim-lsp-installer'
    use {
	'filipdutescu/renamer.nvim',
	branch = 'master',
	requires = { {'nvim-lua/plenary.nvim'} },
	config = function() require 'renamer'.setup() end
    }

    -- Autocomplete
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-emoji'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-latex-symbols'
    use 'jiangmiao/auto-pairs'
    use {'windwp/nvim-ts-autotag', config = function() require 'nvim-ts-autotag'.setup() end}

    -- Snippets
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/vim-vsnip-integ'
    use 'rafamadriz/friendly-snippets'

    -- Syntax
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- Tools
    use 'mfussenegger/nvim-dap'
    use 'rcarriga/nvim-dap-ui'
    use 'glepnir/dashboard-nvim'
    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/popup.nvim'
    use 'preservim/nerdcommenter'
    use 'nvim-telescope/telescope.nvim'
    use 'lukas-reineke/indent-blankline.nvim'
    use { 'kevinhwang91/nvim-hclipboard', config = function() require 'hclipboard'.start() end }
    use 'matze/vim-move'
    use 'wellle/targets.vim'
    use 'tpope/vim-surround' --quoting/parenthesizing
    use 'tpope/vim-endwise'
    use 'windwp/nvim-spectre' --Find and replace


    -- Format
    use 'mhartington/formatter.nvim'

    -- Git
    use 'tpope/vim-fugitive' --Git wrapper for vim
    use 'airblade/vim-gitgutter' --Git status column
    use 'sindrets/diffview.nvim'
    use { 'folke/todo-comments.nvim', config = function() require 'todo-comments'.setup{} end }
    use { 'TimUntersberger/neogit', config = function() require 'neogit'.setup {} end }

    -- Other
    use 'ThePrimeagen/vim-be-good'

end)
