return {
  'nvim-treesitter/nvim-treesitter',
  branch='master',  -- rm branch when update nvim to >=0.11
  lazy = false,
  build = ':TSUpdate'
}
