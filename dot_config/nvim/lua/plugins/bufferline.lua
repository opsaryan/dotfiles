return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		event = "VeryLazy",
		config = function()
			require("bufferline").setup({
				options = {
					mode = "buffers",
					diagnostics = "nvim_lsp",

					offsets = {
						{
							filetype = "neo-tree",
							text = "File Explorer",
							highlight = "Directory",
							separator = true,
						},
					},

					show_buffer_close_icons = true,
					show_close_icon = false,

					separator_style = "slant",
					always_show_bufferline = true,

					diagnostics_indicator = function(_, _, diagnostics_dict)
						local s = ""
						for e, n in pairs(diagnostics_dict) do
							local sym = e == "error" and " " or e == "warning" and " " or " "
							s = s .. sym .. n .. " "
						end
						return s
					end,
				},
			})
		end,
	},
}
