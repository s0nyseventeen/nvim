local opt = vim.opt

opt.tabstop = true
opt.softtabstop = true
opt.shiftwidth = true
opt.expandtab = true
opt.autoindent = true
opt.cursorline = true
opt.ignorecase = true
opt.smartcase = true

if vim.g.vscode then
	vim.keymap.set("n", "<leader>\\", "obreakpoint()<Esc>", { noremap = true, silent = true })

	-- open config
	vim.cmd('nmap <leader>c :e ~/.config/nvim/init.lua<cr>')

	-- paste without overwriting
	vim.keymap.set('v', 'p', 'P')

	-- clear search highlighting
	vim.keymap.set('n', '<Esc>', ':nohlsearch<cr>')

	-- sync system clipboard
	vim.opt.clipboard = 'unnamedplus'
end
