-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<F4>", ":q<CR>", { noremap = true, silent = true })
vim.keymap.set({ "i", "x", "n", "s" }, "<F2>", "<cmd>w<cr><esc>", { desc = "Save File" })

vim.keymap.set("n", "<C-a>", "ggVG", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>j", "j$", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>k", "k$", { noremap = true, silent = true })

vim.keymap.set("i", "<F9>", "breakpoint()", { noremap = true, silent = true })
vim.keymap.set("n", "<F9>", "obreakpoint()<Esc>", { noremap = true, silent = true })

vim.keymap.set("i", "<C-d>", "<Esc>ddi", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>]", function()
  local dirpath = vim.fn.expand("%:p:h")
  vim.fn.setreg("+", dirpath)
  vim.notify("Copied directory: " .. dirpath)
end, { desc = "Copy directory path to the clipboard" })

vim.keymap.set("n", "<leader>[", function()
  local filepath = vim.fn.expand("%:p")
  vim.fn.setreg("+", filepath)
  vim.notify("Copied file path: " .. filepath)
end, { desc = "Copy file path to clipboard" })

