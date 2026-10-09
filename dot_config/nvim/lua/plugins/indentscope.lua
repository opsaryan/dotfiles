return {
	{
		"echasnovski/mini.indentscope",
		version = false,
		event = "BufReadPre",
		config = function()
			local indentscope = require("mini.indentscope")

			indentscope.setup({
				symbol = "│",

				draw = {
					animation = indentscope.gen_animation.quadratic({
						easing = "out",
						duration = 120,
						unit = "total",
					}),

					delay = 60,
				},

				options = {
					try_as_border = true,
				},
			})

			vim.api.nvim_set_hl(0, "MiniIndentscopeSymbol", {
				fg = "#bb9af7",
				nocombine = true,
			})
		end,
	},
}
