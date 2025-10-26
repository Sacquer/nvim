return {
  { "sainnhe/everforest" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  },
  {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
    init = function()
      vim.o.background = "dark"
      vim.g.everforest_background = "hard"
      vim.g.everforest_better_performance = 1
    end,
  },
}
