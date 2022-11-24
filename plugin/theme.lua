require 'nvim-web-devicons'.setup {
	override = {
		[".gitignore"] = {
			icon = "",
			color = "red",
			name = "gitignore"
		},
		[".dockerignore"] = {
			icon = "",
			color = "red",
			name = "dockerignore"
		},
		["Dockerfile"] = {
			icon = "",
			color = "cyan",
			name = "docker"
		},
		[".env"] = {
			icon = "",
			color = "gray",
			name = "env"
		},
		env = {
			icon = "",
			color = "gray",
			name = "env"
		},
		[".packages"] = {
			icon = "",
			color = "yellow",
			name = "packages"
		},
		iml = {
			icon = "",
			color = "orange",
			name = "iml"
		},
		lock = {
			icon = "",
			color = "gray",
			name = "lock"
		},
		dart = {
			icon = "",
			color = "#51A0CF",
			name = "dart"
		},
		js = {
			icon = "",
			color = "#ffdf00",
			name = "js"
		},
		ts = {
			icon = "ﯤ",
			color = "#519aba",
			name = "ts"
		},
		["README.md"] = {
			icon = "",
			color = "cyan",
			name = "readme"
		},
		wiki = {
			icon = "",
			color = "yellow",
			name = "wiki"
		},
		gradle = {
			icon = "",
			color = "gray",
			name = "groovy"
		}
	},
	default = true
}
require 'nvim-web-devicons'.set_default_icon('', '#6d8086')

local c = require 'mechanical.colors'
local highlights = {
	TelescopeBorder = { bg = c.bg2, fg = c.bg2 },
	TelescopePromptBorder = { bg = c.bg1, fg = c.bg1 },
	TelescopePromptNormal = { bg = c.bg1, fg = c.fg },
	TelescopePromptTitle = { fg = c.fg, bg = c.red },
	TelescopePromptPrefix = { bg = c.bg1, fg = c.red },
	TelescopeNormal = { bg = c.bg2, fg = c.fg },
	TelescopePreviewTitle = { fg = c.bg1, bg = c.green },
	TelescopePreviewBorder = { fg = c.bg1, bg = c.bg2 },
	TelescopePreviewNormal = { fg = c.fg, bg = c.bg2 },
	TelescopeSelection = { bg = c.bg1 },
	NeotreeDirectoryIcon = { fg = '#d4b27c' },
	NeotreeDirectoryName = { fg = c.fg, bold = true }
}

for hl, col in pairs(highlights) do
	vim.api.nvim_set_hl(0, hl, col)
end
