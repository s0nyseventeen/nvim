-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<F4>", ":q<CR>", { noremap = true, silent = true })
vim.keymap.set({ "i", "x", "n", "s" }, "<F2>", "<cmd>w<cr><esc>", { desc = "Save File" })

vim.keymap.set("n", "<C-a>", "ggVG", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>j", "j$", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>k", "k$", { noremap = true, silent = true })

vim.keymap.set("i", "<leader>\\", "breakpoint()", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>\\", "obreakpoint()<Esc>", { noremap = true, silent = true })