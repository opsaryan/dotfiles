return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter").install({
        "lua",
        "javascript",
        "typescript",
        "html",
        "css",
        "json",
        "bash",
        -- highlight = { enable = true },
        -- indent = { enable = true },
      })
    end,
  },
}
