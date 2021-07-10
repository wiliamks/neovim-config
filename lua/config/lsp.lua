require 'lspsaga'.init_lsp_saga()
require'lspinstall'.setup() -- important

local servers = require'lspinstall'.installed_servers()
for _, server in pairs(servers) do
  require'lspconfig'[server].setup{}
end

vim.cmd("set pumheight=45")
--vim.cmd("set shortmess+=c")

require("flutter-tools").setup{} -- use defaults

require('lspkind').init()

-- setup nvim-go
--require 'go'.setup{}
