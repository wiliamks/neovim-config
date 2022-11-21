require 'nvim-treesitter.configs'.setup {
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
