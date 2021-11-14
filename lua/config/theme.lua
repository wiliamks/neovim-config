require 'lualine'.setup {
     options = {theme = 'onedark'}
}

require 'nvim-tree'.setup {
    auto_close          = true,
    ignore_ft_on_setup  = {'startify', 'dashboard', '*'},
    open_on_setup       = false,
    view = {
	side = 'right',
	auto_resize = true,
    }
}
