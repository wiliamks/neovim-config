---@diagnostic disable: undefined-global
local packer = require 'packer'

packer.init({
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'single' })
    end,
    prompt_border = 'single',
  },
  auto_clean = true,
  compile_on_sync = true,
})

packer.startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    --use 'nathom/filetype.nvim'
	use 'wiliamks/filetype.nvim'
    use 'lewis6991/impatient.nvim'
    use 'dstein64/vim-startuptime'

    -- Colors
    use { 'norcalli/nvim-colorizer.lua', config = function() require 'colorizer'.setup() end }
	--use { 'navarasu/onedark.nvim', event = "VimEnter", config = function() vim.cmd [[ colorscheme onedark ]] end }
	use { 'wiliamks/mechanical.nvim', config = function() vim.cmd [[ colorscheme mechanical ]] end }

    -- Flutter
	use {
		'dart-lang/dart-vim-plugin',
		config = function()
			vim.g.dart_html_in_string = true
			vim.g.dart_style_guide = 2
		end
	}
    use 'akinsho/flutter-tools.nvim'


    -- Markdown
    use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview', ft = {'markdown'}}

    -- Theme
    use { 'hoob3rt/lualine.nvim',
		config = function() require 'lualine'.setup { options = { theme = 'nord' } } end
	}
    use 'romgrk/barbar.nvim'

    -- Files
	use 'kyazdani42/nvim-web-devicons'
    use 'kyazdani42/nvim-tree.lua'

    -- LSP
    use { 'neovim/nvim-lspconfig', event = "BufRead" }
    use {
	'weilbith/nvim-code-action-menu',
	config = function()
	    vim.g.code_action_menu_show_diff = false
	    vim.g.code_action_menu_show_details = false
	end
    }
    use { 'onsails/lspkind-nvim', event = "BufRead", config = function() require 'lspkind'.init() end }
    use { 'rmagatti/goto-preview', event = "BufRead", config = function() require 'goto-preview'.setup {} end }
    use 'ray-x/lsp_signature.nvim'
    use 'folke/trouble.nvim'
    use {
	'/home/wiliamks/Projects/VimPlugins/navigator.lua/',
	--'ray-x/navigator.lua',
	requires = {'/home/wiliamks/Projects/VimPlugins/guihua.lua/', run = 'cd lua/fzy && make'},
	--requires = {'ray-x/guihua.lua', run = 'cd lua/fzy && make'},
    }
    --use '/home/wiliamks/Projects/VimPlugins/better-reference.nvim/'
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
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'

    -- Snippets
    use { 'hrsh7th/vim-vsnip', event = "InsertEnter" }
    use { 'hrsh7th/vim-vsnip-integ', after = "vim-vsnip" }
    use { 'rafamadriz/friendly-snippets', after= "vim-vsnip" }

    -- Syntax
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
    use 'p00f/nvim-ts-rainbow'

    -- Telescope
    use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim', 'nvim-lua/popup.nvim' } }

    -- Tools
    use 'goolord/alpha-nvim'

    use 'preservim/nerdcommenter'
    use 'lukas-reineke/indent-blankline.nvim'
    use 'matze/vim-move'
    use 'tpope/vim-surround' --quoting/parenthesizing

    -- Git
    use 'tpope/vim-fugitive' --Git wrapper for vim
    use { 'lewis6991/gitsigns.nvim', config = function() require('gitsigns').setup() end }
    use 'sindrets/diffview.nvim'
    use { 'folke/todo-comments.nvim', config = function() require 'todo-comments'.setup{} end }
    use { 'TimUntersberger/neogit', config = function() require 'neogit'.setup {} end }
end)
