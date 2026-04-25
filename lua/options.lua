vim.opt.ignorecase = true
vim.opt.smartcase = true

if vim.g.vscode then
	-- paste without overwriting
	vim.keymap.set('v', 'p', 'P')

	vim.keymap.set('n', '<Esc>', ':nohlsearch<cr>')

	-- sync system clipboard
	vim.opt.clipboard = 'unnamedplus'
end
