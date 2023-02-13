-- Plugins not provided by LazyNvim by default

return {
  -- add Nordic colorscheme
  { "AlexvZyl/nordic.nvim" },

  -- Configure LazyVim to load Nordic
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "nordic",
    },
  },

  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    opts = {
      -- configurations go here
    },
  },
}
