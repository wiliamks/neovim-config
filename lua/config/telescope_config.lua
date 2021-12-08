--require 'telescope'.load_extension('flutter')

require 'telescope'.setup{
    defaults = {
	layout_config = {
	    preview_cutoff = 0,
	    prompt_position = "top",
	    mirror = true,
	},
	vimgrep_arguments = {
	    'rg',
	    '--no-heading',
	    '--with-filename',
	    '--line-number',
	    '--column',
	    '--smart-case',
	    '--hidden',
	},
	file_ignore_patterns = { "node_modules", ".git", "LICENSE", "package-lock.json" }
    },
    pickers = {
	find_files = {
	    theme = "dropdown",
	    previewer = false,
	    hidden = true
	},
	live_grep = {
	    sorting_strategy = "ascending",
	    layout_strategy = "vertical",
	    prompt_position = "top",
	},
	lsp_references = {
	    previewer = false,
	    layout_strategy = "cursor",
	    sorting_strategy = "ascending",
	    layout_config = {
		width = 0.8,
		height = 0.4
	    }
	}
    },
    extensions = {
	fzf = {
	    fuzzy = false,                    -- false will only do exact matching
	    override_generic_sorter = true,  -- override the generic sorter
	    override_file_sorter = true,     -- override the file sorter
	    case_mode = "ignore_case"
	}
    }
}
