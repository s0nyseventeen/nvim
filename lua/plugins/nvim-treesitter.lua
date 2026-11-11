return {
  'nvim-treesitter/nvim-treesitter',
  branch='master',  -- rm branch when update nvim to >=0.11
  lazy = false,
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup({
      ensure_installed = {
      'lua',
      'vim',
      'vimdoc',
      'markdown',
      'python'
      },
      highlight = { enable = true }
    })
  end
}
