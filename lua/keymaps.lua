vim.g.mapleader = " "

vim.keymap.set('n', '<leader>[', ':bp<CR>')
vim.keymap.set('n', '<leader>]', ':bn<CR>')
vim.keymap.set('n', '<leader>x', ':bd<CR>')

vim.keymap.set('n', '<leader>s', ':%s/')

vim.keymap.set('n', '<F4>', ':q<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<F2>', ':w<CR>', { noremap = true, silent = true })

vim.keymap.set('i', '<F2>', '<Esc>:w<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-a>', 'ggVG', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>fmp', ':silent !black %<CR>')
