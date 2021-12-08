require 'nvim-tree'.setup {
    auto_close          = true,
    ignore_ft_on_setup  = {'startify', 'dashboard', 'alpha',  '*'},
    open_on_setup       = false,
    update_cwd          = true,
    update_to_buf_dir = {
		enable = false,
		auto_open = false
    },
    view = {
		side = 'right',
		auto_resize = true,
    },
    git = {
		ignore = false
    }
}

require 'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
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

--require 'nvim-web-devicons'.set_default_icon('', '#F9F9F9')

--require 'nvim-web-devicons'.setup {}


vim.cmd[[
	colorscheme mechanical

	hi DevIconDockerfile guifg=cyan
	hi DevIconGitIgnore guifg=#ff3e00
	hi DevIconDart guifg=#51a0cf
]]
