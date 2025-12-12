local vim = vim

local function map(mode, key, action)
	local opts = { noremap = true, silent = true }
	vim.keymap.set(mode, key, action, opts)
end

vim.keymap.set("n", ";", ":", { noremap = true })
vim.keymap.set({ 'n', 'x' }, "0", "^", { noremap = true })
vim.keymap.set({ 'n', 'x', 'i' }, "<F11>", "0", { noremap = true })
vim.keymap.set({ 'n', 'x', 'i' }, "<F12>", "<End>", { noremap = true })
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

map("x", "<c-f>", [[ y<ESC>/<c-r>"<CR> ]])
map("x", "<C-r>", [["hy:%s/<C-r>h//gc<left><left><left>]])

---- Clear highlighting on escape in normal mode
map("n", "<esc>", ":noh<return><esc>")

map("n", "<leader>,", "viw")
map("n", "<leader>c ", "<Plug>(comment_toggle_linewise_current)")
map("n", "<leader>cc", "<Plug>(comment_toggle_blockwise_current)")
map("x", "<leader>c ", "<Plug>(comment_toggle_linewise_visual)")
map("x", "<leader>cc", "<Plug>(comment_toggle_blockwise_visual)")

map("n", "<M-CR>", ":CodeActionMenu<CR>")
map("x", "<M-CR>", ":<C-U>CodeActionMenu<CR>")

map("n", "<C-k><C-s>", "<cmd> Neogit<CR>")
