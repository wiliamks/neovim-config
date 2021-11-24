require 'lualine'.setup {
     options = {theme = 'onedark'}
}

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
    }
}
