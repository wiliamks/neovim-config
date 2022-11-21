local vim = vim

local function map(mode, key, action)
	local opts = { noremap = true, silent = true }
	vim.keymap.set(mode, key, action, opts)
end

vim.keymap.set("n", ";", ":", { noremap = true })
vim.keymap.set("n", "0", "^", { noremap = true })
vim.keymap.set("v", "0", "^", { noremap = true })

map("n", "<C-b>", "<cmd>Neotree toggle<CR>")
map("i", "<C-b>", "<cmd>Neotree toggle<CR>")
map("n", "<C-p>", "<cmd>Neotree buffers right toggle<CR>")

map("n", "<leader>T", "<cmd>FloatermNew<CR>")

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

---- Clear highlighting on escape in normal mode
map("n", "<esc>", ":noh<return><esc>")
map("n", "<esc>^[", "<esc>^[")

map("n", "<leader>,", "viw")

map("n", "<M-CR>", ":CodeActionMenu<CR>")
map("v", "<M-CR>", ":<C-U>CodeActionMenu<CR>")

map("n", "<leader>pgd", require('goto-preview').goto_preview_definition)

map("n", "<leader>rn", require('renamer').rename)
map("v",  "<leader>rn", require('renamer').rename)

map("n", "<C-k><C-s>", "<cmd> Neogit<CR>")

-- Fugitive Conflict Resolution
map("n", "<leader>gd", ":Gvdiffsplit!<CR>")
map("n", "gdh", ":diffget //2<CR>")
map("n", "gdl", ":diffget //3<CR>")

-- Formatting
map ("n", "<C-k><C-f>", ":Format<CR>")