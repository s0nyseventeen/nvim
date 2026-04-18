-- <leader> key
vim.g.mapleader = ' '

vim.keymap.set("n", "<leader>j", "j$", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>k", "k$", { noremap = true, silent = true })

vim.keymap.set({ "i", "x", "n", "s" }, "<F2>", "<cmd>w<cr><esc>", { desc = "Save File" })
vim.keymap.set("n", "<F4>", ":q<CR>", { noremap = true, silent = true })

vim.keymap.set("i", "<C-k>", "<C-o>D", { noremap = true, silent = true})
