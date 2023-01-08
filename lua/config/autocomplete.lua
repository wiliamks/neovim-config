local M = {}

function M.setup()
	local has_words_before = function()
		unpack = unpack or table.unpack
		local line, col = unpack(vim.api.nvim_win_get_cursor(0))
		return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
	end

	local luasnip = require 'luasnip'
	local cmp = require 'cmp'

	cmp.setup {
		sources = {
			{ name = 'nvim_lsp' },
			{ name = 'path' },
			{ name = 'buffer' },
			{ name = 'nvim_lua' },
			{ name = 'emoji' },
			{ name = 'latex_symbols' },
			{ name = 'luasnip' },
		},
		mapping = {
			['<C-d>'] = cmp.mapping.scroll_docs(-4),
			['<C-f>'] = cmp.mapping.scroll_docs(4),
			['<C-Space>'] = cmp.mapping.complete(),
			['<C-e>'] = cmp.mapping.close(),
			['<CR>'] = cmp.mapping.confirm({ select = true, }),
			['<Down>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
			['<Up>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
			['<Tab>'] = cmp.mapping(function(fallback)
				if cmp.visible() then
					cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select })
				elseif luasnip.expand_or_jumpable() then
					luasnip.expand_or_jump()
				elseif has_words_before() then
					cmp.complete()
				else
					fallback()
				end
			end, { "i", "s" }),
			['<S-Tab>'] = cmp.mapping(function(fallback)
				if cmp.visible() then
					cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select })
				elseif luasnip.jumpable(-1) then
					luasnip.jump(-1)
				else
					fallback()
				end
			end, { "i", "s" })
		},
		window = {
			completion = {
				winhighlight = "Normal:CmpPmenu,FloatBorder:CmpPmenu,CursorLine:CmpPmenuSel,Search:None",
				col_offset = -3,
				side_padding = 0,
			},
			documentation = {
				side_padding = 0,
				winhighlight = "Normal:PmenuSel,FloatBorder:PmenuSel,CursorLine:PmenuSel,Search:None",
			}
		},
		formatting = {
			fields = { "kind", "abbr", "menu" },
			format = function(entry, vim_item)
				local kind = require 'lspkind'.cmp_format({ mode = "symbol_text", maxwidth = 50 })(entry, vim_item)
				local strings = vim.split(kind.kind, "%s", { trimempty = true })
				kind.kind = " " .. strings[1] .. " "
				kind.menu = "    (" .. strings[2] .. ")"

				return kind
			end,
		},
		completion = {
			completeopt = 'menu,menuone,noinsert',
		}
	}

	require 'nvim-autopairs'.setup {
		map_cr = true,
		check_ts = true,
		disable_filetype = { "TelescopePrompt", "spectre_panel" },
	}

	require 'luasnip.loaders.from_vscode'.lazy_load()
end

return M
