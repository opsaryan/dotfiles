return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		lazy = false,
		config = function()
			require("neo-tree").setup({
				close_if_last_window = true,
				popup_border_style = "rounded",
				enable_git_status = true,
				enable_diagnostics = true,

				filesystem = {
					follow_current_file = {
						enabled = true,
					},
					hijack_netrw_behavior = "open_default",
					use_libuv_file_watcher = true,
				},

				window = {
					position = "left",
					width = 30,
					mappings = {
						["<space>"] = "toggle_node",
						["<CR>"] = "open",
						["q"] = "close_window",
					},
				},
				vim.api.nvim_create_autocmd("VimEnter", {
					callback = function()
						local arg = vim.fn.argv(0)
						if arg ~= "" then
							local stat = vim.loop.fs_stat(arg)
							if stat and stat.type == "directory" then
								vim.cmd("Neotree show")
							end
						end
					end,
				}),
			})
		end,
	},
}
