require 'lazy'.setup({
    'lewis6991/impatient.nvim',

    -- Telescope
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {
            'nvim-lua/plenary.nvim',
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
        },
        config = function() require 'config.telescope_config'.setup() end
    },
    { 'kevinhwang91/nvim-bqf',     ft = 'qf' },

    -- Colors
    { 'NvChad/nvim-colorizer.lua', event = "VeryLazy", config = function() require 'colorizer'.setup() end },
    { 'wiliamks/mechanical.nvim',  lazy = true },

    -- Flutter
    {
        'dart-lang/dart-vim-plugin',
        config = function()
            vim.g.dart_html_in_string = true
            vim.g.dart_style_guide = 2
        end,
        ft = 'dart',
    },
    { 'akinsho/flutter-tools.nvim', config = function() require 'config.lsp'.setup_flutter() end, ft = 'dart' },

    -- Scala
    { 'scalameta/nvim-metals',      dependencies = { "nvim-lua/plenary.nvim" },                   ft = 'scala' },

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
        event = "BufRead",
        config = function()
            require 'lualine'.setup {
                options = { theme = 'nord', globalstatus = true } --theme = 'adwaita'
            }
        end
    },

    -- Files
    'kyazdani42/nvim-web-devicons',
    {
        "nvim-neo-tree/neo-tree.nvim",
        cmd = "Neotree",
        branch = "v2.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
        },
        config = function() require 'config.neotree_config'.setup() end
    },

    -- LSP
    {
        'neovim/nvim-lspconfig',
        event = 'BufRead',
        dependencies = {
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
            { 'onsails/lspkind-nvim', config = function() require 'lspkind'.init() end },
            {
                -- 'wiliamks/nice-reference.nvim',
                -- branch = 'develop',
                dir = '~/dev/lua/nice-reference.nvim/',
                dependencies = {
                    { 'rmagatti/goto-preview', config = function() require 'goto-preview'.setup {} end },
                }
            },
            {
                'weilbith/nvim-code-action-menu',
                config = function() vim.g.code_action_menu_show_details = false end
            },
            {
                'ray-x/lsp_signature.nvim',
                config = function() require 'lsp_signature'.setup({ floating_window = false }) end
            },
            {
                'filipdutescu/renamer.nvim',
                branch = 'master',
                config = function() require 'renamer'.setup() end
            },
        },
        config = function() require 'config.lsp'.setup() end
    },

    -- Autocomplete
    {
        'hrsh7th/nvim-cmp',
        event = "BufRead",
        dependencies = {
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lua',
            'windwp/nvim-autopairs',
            'windwp/nvim-ts-autotag',
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',
            'rafamadriz/friendly-snippets'
        },
        config = function() require 'config.autocomplete'.setup() end
    },
    {
        "jackMort/ChatGPT.nvim",
        config = function()
            require 'chatgpt'.setup()
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
        event = "BufRead",
        build = ':TSUpdate',
        dependencies = {
            'p00f/nvim-ts-rainbow',
            'm-demare/hlargs.nvim',
            'ckolkey/ts-node-action',
        },
        config = function() require 'config.treesitter_config'.setup() end
    },

    -- Tools
    {
        'echasnovski/mini.move',
        event = "VeryLazy",
        config = function()
            require 'mini.move'.setup()
        end
    },
    {
        'lukas-reineke/indent-blankline.nvim',
        event = "VeryLazy",
        config = function()
            require("ibl").setup()
        end
    },
    -- {
    -- 	'kevinhwang91/nvim-ufo',
    -- 	dependencies = 'kevinhwang91/promise-async',
    -- 	event = "VeryLazy",
    -- 	config = function()
    -- 		require 'config.ufo_config'.setup()
    -- 	end
    -- },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require 'which-key'.setup()
        end,
    },
    { 'goolord/alpha-nvim',     config = function() require 'config.alpha_config'.setup() end },
    {
        'numToStr/Comment.nvim',
        event = "BufRead",
        config = function()
            require 'Comment'.setup()
        end
    },
    {
        'kylechui/nvim-surround',
        event = "BufRead",
        config = function()
            require 'nvim-surround'.setup()
        end
    },

    -- Git
    { 'sindrets/diffview.nvim', cmd = 'DiffviewOpen' },
    {
        'lewis6991/gitsigns.nvim',
        event = "VeryLazy",
        config = function()
            require 'gitsigns'.setup()
        end
    },
    { 'TimUntersberger/neogit', config = function() require 'neogit'.setup {} end, cmd = 'Neogit' },
}, {
    -- performance = {
    -- 	rtp = {
    -- 		disabled_plugins = {
    -- 			"netrw",
    -- 			"netrwPlugin",
    -- 			"netrwSettings",
    -- 			"netrwFileHandlers",
    -- 			"gzip",
    -- 			"zip",
    -- 			"zipPlugin",
    -- 			"tar",
    -- 			"tarPlugin",
    -- 			"getscript",
    -- 			"getscriptPlugin",
    -- 			"vimball",
    -- 			"vimballPlugin",
    -- 			"2html_plugin",
    -- 			"logipat",
    -- 			"rrhelper",
    -- 			"spellfile_plugin",
    -- 			"matchit"
    -- 		}
    -- 	}
    -- }
})
