return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.6',
  dependencies = {'nvim-lua/plenary.nvim'},
  config = function()
    local telescope = require("telescope").setup {
      defaults = {
        file_ignore_patterns = {
          '.git',
          '.vscode',
          '.idea',
          '.cache',
          '.coverage',
          '.mypy_cache',
          '.pytest_cache',
          '__pycache__',
          'node_modules',
          'venv',
          'env',
          'Virtual Box VMs',
          'package.json',
          'package-lock.json',
        }
      }
    }
    local builtin = require("telescope.builtin")
    vim.keymap.set('n', '<C-p>', builtin.find_files, {})
    vim.keymap.set('n', '<leader>g', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>b', builtin.buffers, {})
  end
}
