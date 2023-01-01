local no_preview_picker = {
	previewer = false,
	results_title = false,
	sorting_strategy = "ascending",
	layout_strategy = "vertical",
	layout_config = {
		width = function(_, max_columns, _)
			return math.min(max_columns, 80)
		end,

		height = function(_, _, max_lines)
			return math.min(max_lines, 15)
		end,
	},
}

local default_picker = {
	results_title = false,
	sorting_strategy = "ascending",
	layout_strategy = "vertical",
	prompt_position = "top",
}

require 'telescope'.setup {
	defaults = {
		layout_config        = {
			preview_cutoff = 0,
			prompt_position = "top",
			mirror = true,
			preview_height = 23,
			height = 0.9,
		},
		vimgrep_arguments    = {
			'rg',
			'--no-heading',
			'--with-filename',
			'--line-number',
			'--column',
			'--smart-case',
			'--hidden',
		},
		file_ignore_patterns = { "node_modules", ".git", "LICENSE", "package-lock.json" },
		prompt_prefix        = "   ",
		selection_caret      = "  ",
		entry_prefix         = "  ",
		borderchars          = { "─", "", "", "", "╭", "╮", "", "" }
	},
	pickers = {
		find_files = no_preview_picker,
		buffers = no_preview_picker,
		live_grep = default_picker,
		grep_string = default_picker,
		help_tags = default_picker,
	},
	extensions = {
		fzf = {
			fuzzy = true,
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = "smart_case",
		}
	}
}

require 'telescope'.load_extension 'fzf'
