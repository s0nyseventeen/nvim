vim.keymap.set("i", "<C-k>", "<C-o>D")

vim.keymap.set("n", "<F4>", ":q<CR>")
vim.keymap.set({ "i", "n" }, "<F2>", "<cmd>w<CR><ESC>")

vim.keymap.set("n", "<Esc>", ":nohlsearch<CR>")

vim.keymap.set("n", "<leader>d", "dd")
vim.keymap.set("n", "<leader>y", "yy")
vim.keymap.set("n", "<leader>a", "ggVG")
