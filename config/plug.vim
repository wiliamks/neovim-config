call plug#begin('~/.local/share/nvim/plugged')
 
"Colors
Plug 'norcalli/nvim-colorizer.lua'
Plug 'wiliamks/mechanical.nvim'

" Dart
Plug 'dart-lang/dart-vim-plugin'
Plug 'akinsho/flutter-tools.nvim'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" Theme
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Files
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'kyazdani42/nvim-tree.lua'

" Fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" LSP
Plug 'prabirshrestha/vim-lsp'
Plug 'neovim/nvim-lspconfig'
Plug 'mattn/vim-lsp-settings' 
Plug 'kabouzeid/nvim-lspinstall'
Plug 'glepnir/lspsaga.nvim'

" Autocomplete
Plug 'hrsh7th/nvim-compe', { 'branch': 'master' }
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'

" Snippets
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'rafamadriz/friendly-snippets'

" Syntax
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"Tools
Plug 'nvim-lua/plenary.nvim'
Plug 'preservim/nerdcommenter'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'mhinz/vim-startify'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'onsails/lspkind-nvim'
Plug 'akinsho/nvim-bufferline.lua'
Plug 'sunjon/shade.nvim'

" Format
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'sindrets/diffview.nvim'

call plug#end()
