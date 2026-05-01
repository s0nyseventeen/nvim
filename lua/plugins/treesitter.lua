return {
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

      vim.keymap.set({ "x", "o" }, "ac", function()
        select.select_textobject("@class.outer", "textobjects")
      end)
      vim.keymap.set({ "x", "o" }, "ic", function()
        select.select_textobject("@class.inner", "textobjects")
      end)

      vim.keymap.set({ "x", "o" }, "ai", function()
        select.select_textobject("@conditional.outer", "textobjects")
      end)
      vim.keymap.set({ "x", "o" }, "ii", function()
        select.select_textobject("@conditional.inner", "textobjects")
      end)

      vim.keymap.set({ "x", "o" }, "al", function()
        select.select_textobject("@loop.outer", "textobjects")
      end)
      vim.keymap.set({ "x", "o" }, "il", function()
        select.select_textobject("@loop.inner", "textobjects")
      end)

      vim.keymap.set({ "x", "o" }, "am", function()
        select.select_textobject("@call.outer", "textobjects")
      end)
      vim.keymap.set({ "x", "o" }, "im", function()
        select.select_textobject("@call.inner", "textobjects")
      end)

      vim.keymap.set({ "x", "o" }, "ab", function()
        select.select_textobject("@block.outer", "textobjects")
      end)
      vim.keymap.set({ "x", "o" }, "ib", function()
        select.select_textobject("@block.inner", "textobjects")
      end)

      -- 4:28 https://www.youtube.com/watch?v=UpaGkOKWfmA&list=PLXDouhCU5r6qzUHiOYTCGf1QATlv3eC6F&index=2
    end,
  },
  { "nvim-treesitter/nvim-treesitter-textobjects" },
}
