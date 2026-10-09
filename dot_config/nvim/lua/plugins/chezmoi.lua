return {
  {
    "alker0/chezmoi.vim",
    init = function()
      -- This variable is required for modern lazy-loading plugin managers
      vim.g["chezmoi#use_tmp_buffer"] = 1
    end,
  }
}
