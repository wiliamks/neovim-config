local js_formatter = {
    function()
        return {
          	exe = "prettier",
          	args = {"--tab-width 4 --stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), '--single-quote'},
			stdin = true
        }
    end
}

require 'formatter'.setup({
  	filetype = {
    	javascript = js_formatter,
		typescript = js_formatter,
		javascriptreact = js_formatter,
		typescriptreact = js_formatter,
		css = js_formatter,
		json = js_formatter,
		rust = { function() return { exe = "rustfmt", args = {"--emit=stdout"}, stdin = true } end },
		dart = { function () return { exe = "dart format", stdin = true } end },
		go = { function() return { exe = "go fmt", stdin = true } end },
  	}
})
