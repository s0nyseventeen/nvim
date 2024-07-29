return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>fp",
      function()
        require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
      end,
      desc = "Find Plugin File",
    },
  },
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = { prompt_position = "top" },
      sorting_strategy = "ascending",
      winblend = 0,
      vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        "--glob=!package.json",
        "--glob=!package-lock.json",
      },
      file_ignore_patterns = {
        ".git",
        ".vscode",
        ".idea",
        ".cache",
        ".coverage",
        ".mypy_cache",
        ".pytest_cache",
        "__pycache__",
        "node_modules",
        "Virtual Box VMs",
        "%.png",
        "%.jpg",
        "%.jpeg",
      },
    },
  },
}
