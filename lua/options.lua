vim.o.nu = true
vim.o.relativenumber = true

vim.g.python3_host_prog = 'C:/Users/503282404.HCAD/AppData/Local/Programs/Python/Python312/python.exe'

vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2

vim.o.autoread = true

vim.cmd('abbr bk breakpoint()')

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.clipboard = "unnamedplus"
vim.o.termguicolors = true

-- return to the last position when opening files
vim.api.nvim_create_autocmd('BufReadPost', {
  pattern = '*',
  callback = function()
    if vim.fn.line("'\"") > 0 and vim.fn.line("'\"") <= vim.fn.line("$") then
      vim.cmd("normal! g`\"")
    end
  end
})
