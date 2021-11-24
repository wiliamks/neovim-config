require 'telescope'.load_extension("flutter")

require 'telescope'.setup{
    defaults = {
	layout_config = {
	    preview_cutoff = 0,
	    prompt_position = "top",
	    mirror = true,
	}
    },
    pickers = {
	find_files = {
	    theme = "dropdown",
	    previewer = false,
	},
	live_grep = {
	    sorting_strategy = "ascending",
	    layout_strategy = "vertical",
	    prompt_position = "top",
	},
	lsp_references = {
	    previewer = false,
	    theme = "cursor",
	}
    },
}
