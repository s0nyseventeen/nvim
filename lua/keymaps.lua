-- <leader> key
vim.g.mapleader = ' '

vim.cmd('nmap <leader>c :e ~/AppData/Local/nvim/init.lua<cr>')

vim.keymap.set("n", "<leader>j", "j$", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>k", "k$", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>d", "dd", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>\\", "obreakpoint()<Esc>", { noremap = true, silent = true })

-- redo
vim.keymap.set('n', 'U', '<C-r>')

-- Neovim
-- vim.keymap.set({ "i", "x", "n", "s" }, "<F2>", "<cmd>w<cr><esc>", { desc = "Save File" })
-- vim.keymap.set("n", "<F4>", ":q<CR>", { noremap = true, silent = true })

-- vim.keymap.set("i", "<C-k>", "<C-o>D", { noremap = true, silent = true })
-- vim.keymap.set("i", "<C-y>", "<C-o>dd", { noremap = true, silent = true })
