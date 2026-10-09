return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("tokyonight-night")
		end,
	},

	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				options = {
					theme = "auto",
					section_separators = "",
					component_separators = "",
				},
				sections = {
					lualine_a = { "mode" },
					lualine_b = { "branch", "diff" },
					lualine_c = {
						{ "filename", path = 1 }, -- keep file name/path

						{
							function()
								local ok, navic = pcall(require, "nvim-navic")
								if ok and navic.is_available() then
									return navic.get_location()
								end
								return ""
							end,
							cond = function()
								local ok, navic = pcall(require, "nvim-navic")
								return ok and navic.is_available()
							end,
							color = { fg = "#7aa2f7" }, -- optional, subtle
						},
					},
					lualine_x = { "encoding", "filetype" },
					lualine_y = { "progress" },
					lualine_z = { "location" },
				},
			})
		end,
	},
}
