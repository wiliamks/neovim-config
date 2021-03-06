local cmp = require 'cmp'

cmp.setup {
    sources = {
	{ name = 'nvim_lsp' },
	{ name = 'path' },
	{ name = 'buffer' },
	{ name = 'nvim_lua' },
	{ name = 'emoji' },
	{ name = 'latex_symbols' },
	{ name = 'vsnip' },
	{ name = 'orgmode' }
    },
    mapping = {
	['<C-d>'] = cmp.mapping.scroll_docs(-4),
	['<C-f>'] = cmp.mapping.scroll_docs(4),
	['<C-Space>'] = cmp.mapping.complete(),
	['<C-e>'] = cmp.mapping.close(),
	['<CR>'] = cmp.mapping.confirm({
	    behavior = cmp.ConfirmBehavior.Replace,
	    select = true,
	}),
	['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
	['<Down>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
	['<Up>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
	['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
    },
    snippet = {
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body)
      end,
    },
    formatting = {
	format = function(entry, vim_item)
	    vim_item.abbr = string.sub(vim_item.abbr, 1, 50)
	    -- fancy icons and a name of kind
	    vim_item.kind = require("lspkind").presets.default[vim_item.kind] .. " " .. vim_item.kind
	     -- set a name for each source
	    return vim_item
	end,
    },
}
