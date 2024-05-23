vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd('abbr bk breakpoint()')

-- Set case-insensitive search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Enable system clipboard integration
vim.opt.clipboard = "unnamedplus"

vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<leader>t', ':tabe<CR>', {})
