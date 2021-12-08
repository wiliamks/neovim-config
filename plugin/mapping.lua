local function map(mode, key, action)
	local opts = { noremap = true, silent = true }
	vim.api.nvim_set_keymap(mode, key, action, opts)
end

vim.api.nvim_set_keymap("n", ";", ":", { noremap = true })

vim.api.nvim_set_keymap("n", "0", "^", { noremap = true })
vim.api.nvim_set_keymap("v", "0", "^", { noremap = true })

map("n", "<C-b>", "<cmd>NvimTreeToggle<CR>")
map("n", "<leader>r", "<cmd>NvimTreeRefresh<CR>")
map("n", "<leader>n" ,"<cmd>NvimTreeFindFile<CR>")

map("n", "<leader><C-f>", "<cmd>Telescope live_grep<cr>")
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>")
map("n", "<C-f>", "/")

map("n","<leader><Tab>" ,"<cmd>Telescope buffers<cr>")

map("n", "<leader><C-s>", ":bd <CR>")

map("v", "<c-f>", [[ y<ESC>/<c-r>"<CR> ]])
map("v", "<C-r>", [["hy:%s/<C-r>h//gc<left><left><left>]])

-- Clear highlighting on escape in normal mode
map("n", "<esc>", ":noh<return><esc>")
map("n", "<esc>^[", "<esc>^[")

map("n", "<leader>,", "viw")

map("v", "<leader>y", [["+y]])
map("n", "<leader>Y", [["+yg]])
map("n", "<leader>y", [["+y]])
map("n", "<leader>yy", [["+yy]])

map("n", "<leader>a", ":CodeActionMenu<CR>")
map("v", "<leader>a", ":<C-U>CodeActionMenu<CR>")

map("n", "pgd", "<cmd>lua require('goto-preview').goto_preview_definition()<CR>")

map("n", "pgr", "<cmd>lua require('goto-preview').goto_preview_references()<CR>")
map("n", "gpi", "<cmd>lua require('goto-preview').goto_preview_implementation()<CR>")

map("n", "[e", ":Trouble<CR>")
map("n", "]e", ":TroubleClose<CR>")

map("n", "<leader>rn", "<cmd>lua require('renamer').rename()<cr>")
map("v",  "<leader>rn", "<cmd>lua require('renamer').rename()<cr>")

map("n", "<C-k><C-s>", "<cmd> Neogit<CR>")

-- Fugitive Conflict Resolution
map("n", "<leader>gd", ":Gvdiffsplit!<CR>")
map("n", "gdh", ":diffget //2<CR>")
map("n", "gdl", ":diffget //3<CR>")

-- Move to previous/next
map("n", "<leader>n", ":BufferNext<CR>")
map("n", "<leader>p", ":BufferPrevious<CR>")

-- Re-order to previous/next
map("n", "<A-<>", ":BufferMovePrevious<CR>")
map("n", "<A->>", ":BufferMoveNext<CR>")

-- Goto buffer in position...
map("n", "<A-1>", ":BufferGoto 1<CR>")
map("n", "<A-2>", ":BufferGoto 2<CR>")
map("n", "<A-3>", ":BufferGoto 3<CR>")
map("n", "<A-4>", ":BufferGoto 4<CR>")
map("n", "<A-5>", ":BufferGoto 5<CR>")
map("n", "<A-6>", ":BufferGoto 6<CR>")
map("n", "<A-7>", ":BufferGoto 7<CR>")
map("n", "<A-8>", ":BufferGoto 8<CR>")
map("n", "<A-9>", ":BufferLast<CR>")
-- Pin/unpin buffer
map("n", "<A-p>", ":BufferPin<CR>")
-- Close buffer
map("n", "<A-c>", ":BufferClose<CR>")
