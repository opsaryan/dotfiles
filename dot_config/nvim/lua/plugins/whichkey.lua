return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy", 
    config = function()
      require("which-key").setup({
        preset = "modern",
        plugins = {
          spelling = true,
        },
        icons = {
          rules = false, 
        },
      })
    end,
  },
}
