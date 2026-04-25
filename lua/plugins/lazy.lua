local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    {
      "nvim-treesitter/nvim-treesitter",
      branch = "master",
      build = ":TSUpdate",
      dependencies = { "nvim-treesitter/nvim-treesitter-textobjects" },
      config = function()
        require("nvim-treesitter.configs").setup({
          auto_install = true,
          highlight = { enable = true },
        })
        require("nvim-treesitter-textobjects").setup({
          select = { lookahead = true },
        })
        local select = require("nvim-treesitter-textobjects.select")
        vim.keymap.set({ "x", "o" }, "af", function()
          select.select_textobject("@function.outer", "textobjects")
        end)
        vim.keymap.set({ "x", "o" }, "if", function()
          select.select_textobject("@function.inner", "textobjects")
        end)
      end,
    },
    { "nvim-treesitter/nvim-treesitter-textobjects" },
  },
})