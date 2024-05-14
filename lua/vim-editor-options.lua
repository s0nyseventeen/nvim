vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd('abbr bk breakpoint()')

vim.o.ignorecase = true

vim.g.mapleader = " "
vim.api.nvim_set_keymap('n', '<leader>t', ':tabe<CR>', {})
