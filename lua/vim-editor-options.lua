vim.g.mapleader = " "
vim.g.python3_host_prog = 'C:/Users/503282404.HCAD/AppData/Local/Programs/Python/Python312/python.exe'

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd('abbr bk breakpoint()')

vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.relativenumber = true
vim.o.number = true

vim.opt.clipboard = "unnamedplus"
vim.opt.termguicolors = true

vim.api.nvim_set_keymap('n', '<leader>t', ':tabe<CR>', {})
vim.api.nvim_set_keymap('n', '<leader>s', ':s/', { noremap = true, silent = false })
vim.api.nvim_set_keymap('n', '<leader>mp', ':MarkdownPreviewToggle<CR>', {})

-- Keybindings to switch buffers
vim.api.nvim_set_keymap(
  'n', '<leader>[', ':bprevious<CR>', { noremap = true, silent = true }
)
vim.api.nvim_set_keymap('n', '<leader>]', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>x', ':bd<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<F4>', ':q<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F2>', ':w<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('i', '<F2>', '<Esc>:w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-a>', 'ggVG', { noremap = true, silent = true })
