---@diagnostic disable: undefined-global
require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Colors
    use { 'norcalli/nvim-colorizer.lua', config = function() require 'colorizer'.setup() end }
    use 'wiliamks/mechanical.nvim' -- colorscheme

    -- Dart
    use 'dart-lang/dart-vim-plugin'
    use 'akinsho/flutter-tools.nvim'
    use 'udalov/kotlin-vim'

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

    -- LSP
    use 'neovim/nvim-lspconfig'
    use {
	'weilbith/nvim-code-action-menu',
	config = function()
	    vim.g.code_action_menu_show_diff = false
	    vim.g.code_action_menu_show_details = false
	end
    }
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
    use 'p00f/nvim-ts-rainbow'

    -- Tools
    use 'goolord/alpha-nvim'

    use 'nvim-lua/plenary.nvim'
    use 'nvim-lua/popup.nvim'
    use 'preservim/nerdcommenter'
    use 'nvim-telescope/telescope.nvim'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'matze/vim-move'
    use 'tpope/vim-surround' --quoting/parenthesizing
    use 'tpope/vim-endwise'
    use 'windwp/nvim-spectre' --Find and replace
    use 'mbbill/undotree'


    -- Format
    use 'mhartington/formatter.nvim'

    -- Git
    use 'tpope/vim-fugitive' --Git wrapper for vim
    --use 'airblade/vim-gitgutter' --Git status column
    use { 'lewis6991/gitsigns.nvim', config = function() require('gitsigns').setup() end }
    use 'sindrets/diffview.nvim'
    use { 'folke/todo-comments.nvim', config = function() require 'todo-comments'.setup{} end }
    use { 'TimUntersberger/neogit', config = function() require 'neogit'.setup {} end }

    -- Other
    use 'ThePrimeagen/vim-be-good'

end)
