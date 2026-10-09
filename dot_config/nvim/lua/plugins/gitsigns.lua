return {
	{
		"lewis6991/gitsigns.nvim",
		event = { "BufReadPre", "BufNewFile" }, -- lazy & safe
		config = function()
			require("gitsigns").setup({
				signs = {
					add = { text = "▎" },
					change = { text = "▎" },
					delete = { text = "▎" },
					topdelete = { text = "▎" },
					changedelete = { text = "▎" },
				},

				current_line_blame = false, -- toggle with keybind
				current_line_blame_opts = {
					delay = 300,
				},

				on_attach = function(bufnr)
					local gs = package.loaded.gitsigns
					local map = function(mode, lhs, rhs, desc)
						vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, desc = desc })
					end

					-- Navigation
					map("n", "]c", gs.next_hunk, "Next hunk")
					map("n", "[c", gs.prev_hunk, "Prev hunk")

					-- Actions
					map("n", "<leader>hs", gs.stage_hunk, "Stage hunk")
					map("n", "<leader>hr", gs.reset_hunk, "Reset hunk")
					map("v", "<leader>hs", function()
						gs.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
					end, "Stage hunk")
					map("v", "<leader>hr", function()
						gs.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
					end, "Reset hunk")

					map("n", "<leader>hS", gs.stage_buffer, "Stage buffer")
					map("n", "<leader>hu", gs.undo_stage_hunk, "Undo stage hunk")
					map("n", "<leader>hR", gs.reset_buffer, "Reset buffer")

					map("n", "<leader>hp", gs.preview_hunk, "Preview hunk")
					map("n", "<leader>hb", gs.toggle_current_line_blame, "Toggle blame")
					map("n", "<leader>hd", gs.diffthis, "Diff this")
				end,
			})
		end,
	},
}
