-- require("keymaps")
-- require("options")
-- require("plugins.lazy")

-- <leader> key
vim.g.mapleader = ' '

vim.keymap.set("n", "<leader>j", "j$", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>k", "k$", { noremap = true, silent = true })

-- vim.keymap.set({ "i", "x", "n", "s" }, "<F2>", "<cmd>w<cr><esc>", { desc = "Save File" })
-- vim.keymap.set("n", "<F4>", ":q<CR>", { noremap = true, silent = true })

-- vim.keymap.set("i", "<C-k>", "<C-o>D", { noremap = true, silent = true})

vim.keymap.set("n", "<leader>\\", "obreakpoint()<Esc>", { noremap = true, silent = true })

-- open config
vim.cmd('nmap <leader>c :e ~/.config/nvim/init.lua<cr>')

-- paste without overwriting
vim.keymap.set('v', 'p', 'P')

-- clear search highlighting
vim.keymap.set('n', '<Esc>', ':nohlsearch<cr>')

-- sync system clipboard
vim.opt.clipboard = 'unnamedplus'

vim.optignorecase = true
vim.opt.smartcase = true

if vim.g.vscode then

end
