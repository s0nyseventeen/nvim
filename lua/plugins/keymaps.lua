vim.keymap.set('n', '<leader>p', ':Telescope find_files<CR>')
vim.keymap.set('n', '<leader>g', ':Telescope live_grep<CR>')
vim.keymap.set('n', '<leader>b', ':Telescope buffers<CR>')

vim.keymap.set('n', '<leader>e', ':NvimTreeFindFileToggle<CR>')

vim.keymap.set('n', '<leader>mp', ':MarkdownPreviewToggle<CR>')

vim.keymap.set({'n', 'v'}, '<leader>/', ':CommentToggle<CR>')

vim.keymap.set('n', '<leader>fmd', vim.lsp.buf.format)
