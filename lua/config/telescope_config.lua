require 'telescope'.load_extension("flutter")

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
	    theme = "cursor",
	}
    },
}
