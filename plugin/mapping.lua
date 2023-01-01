local vim = vim

local function map(mode, key, action)
	local opts = { noremap = true, silent = true }
	vim.keymap.set(mode, key, action, opts)
end

vim.keymap.set("n", ";", ":", { noremap = true })
vim.keymap.set({ 'n', 'v' }, "0", "^", { noremap = true })
vim.keymap.set({ 'n', 'v', 'i' }, "<F11>", "<Home>", { noremap = true })
vim.keymap.set({ 'n', 'v', 'i' }, "<F12>", "<End>", { noremap = true })
vim.keymap.set('n', 'n', 'nzzzvw')
vim.keymap.set('n', 'N', 'nzzzvw')

map("n", "<C-b>", "<cmd>Neotree toggle<CR>")
map("i", "<C-b>", "<cmd>Neotree toggle<CR>")
map("n", "<C-p>", "<cmd>Neotree buffers right toggle<CR>")

map("n", "<leader><C-f>", function ()
	require 'telescope.builtin'.grep_string({ search = "", only_sort_text = true })
end)
map("n", "<leader>fg", function ()
	require 'telescope.builtin'.live_grep({ only_sort_text = true })
end)
map("n", "<leader>ff", require 'telescope.builtin'.find_files)
map("n","<leader><Tab>" , require 'telescope.builtin'.buffers)
map("n", "<leader>fh", require 'telescope.builtin'.help_tags)

map("n", "<C-f>", "/")

map("n", "<leader><C-s>", ":bd <CR>")

map("v", "<c-f>", [[ y<ESC>/<c-r>"<CR> ]])
map("v", "<C-r>", [["hy:%s/<C-r>h//gc<left><left><left>]])

---- Clear highlighting on escape in normal mode
map("n", "<esc>", ":noh<return><esc>")
map("n", "<esc>^[", "<esc>^[")

map("n", "<leader>,", "viw")

map("n", "<M-CR>", ":CodeActionMenu<CR>")
map("v", "<M-CR>", ":<C-U>CodeActionMenu<CR>")

map("n", "<leader>pgd", require 'goto-preview'.goto_preview_definition)

map("n", "<leader>rn", require 'renamer'.rename)
map("v",  "<leader>rn", require 'renamer'.rename)

map("n", "<C-k><C-s>", "<cmd> Neogit<CR>")

-- Fugitive Conflict Resolution
map("n", "<leader>gd", ":Gvdiffsplit!<CR>")
map("n", "gdh", ":diffget //2<CR>")
map("n", "gdl", ":diffget //3<CR>")

-- Formatting
map ("n", "<C-k><C-f>", ":Format<CR>")

for i = 1, 99 do
	vim.keymap.set('n', i .. 'b', '<cmd>b ' .. i .. '<CR>')
end
