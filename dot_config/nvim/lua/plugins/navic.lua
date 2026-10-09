return {
	{
		"SmiteshP/nvim-navic",
		lazy = true,
		dependencies = {
			"neovim/nvim-lspconfig",
		},
		config = function()
			require("nvim-navic").setup({
				highlight = true,
				separator = " › ",
				depth_limit = 0,
				depth_limit_indicator = "..",
				safe_output = true,
			})
		end,
	},
}
