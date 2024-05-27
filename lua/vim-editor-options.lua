vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd('abbr bk breakpoint()')

vim.o.ignorecase = true
vim.o.smartcase = true

vim.opt.clipboard = "unnamedplus"

vim.o.relativenumber = true
vim.o.number = true

vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<leader>t', ':tabe<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>s', ':%s/', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<leader>p', '"0p', { noremap = true, silent = true })
