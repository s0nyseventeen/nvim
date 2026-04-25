-- <leader> key
vim.g.mapleader = ' '
vim.keymap.set("n", "<leader>j", "j$", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>k", "k$", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>d", "dd", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>\\", "obreakpoint()<Esc>", { noremap = true, silent = true })

-- open config
vim.cmd('nmap <leader>c :e ~/AppData/Local/nvim/init.lua<cr>')

-- paste without overwriting
vim.keymap.set('v', 'p', 'P')

-- clear search highlighting
vim.keymap.set('n', '<Esc>', ':nohlsearch<cr>')

-- sync system clipboard
vim.opt.clipboard = 'unnamedplus'

-- search ignoring case
vim.opt.ignorecase = true

-- disable "ignorecase" option if the search pattern contains upper case characters
vim.opt.smartcase = true
