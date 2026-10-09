vim.g.mapleader = " "

vim.keymap.set("n", "<leader>w", ":w<CR>", { desc = "Save file" })
vim.keymap.set("n", "<leader>q", ":q<CR>", { desc = "Quit" })
vim.keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlight" })

local function telescope_builtin(fn, arg)
	return function()
		require("telescope.builtin")[fn](arg)
	end
end

vim.keymap.set("n", "<leader>sf", telescope_builtin("find_files"), { desc = "Find files" })
vim.keymap.set("n", "<leader>sg", telescope_builtin("live_grep"), { desc = "Live grep" })
vim.keymap.set("n", "<leader>sb", telescope_builtin("buffers"), { desc = "Find buffers" })
vim.keymap.set("n", "<leader>sr", telescope_builtin("oldfiles"), { desc = "Recent files" })
vim.keymap.set(
	"n",
	"<leader>sbg",
	telescope_builtin("live_grep", { grep_open_files = true }),
	{ desc = "Open Buffer Grep" }
)

vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("n", "gr", vim.lsp.buf.references)
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename)
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)

vim.keymap.set("n", "\\", ":Neotree toggle<CR>", { desc = "File Explorer" })

vim.keymap.set("n", "<leader>f", function()
	require("conform").format({ timeout_ms = 2000 })
end, { desc = "Format file" })

vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
vim.keymap.set("n", "<leader>de", vim.diagnostic.open_float, { desc = "Show diagnostic" })
vim.keymap.set("n", "<leader>dq", vim.diagnostic.setloclist, { desc = "Diagnostics list" })

-- Buffer navigation (IDE-style)
vim.keymap.set("n", "<S-l>", ":bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<S-h>", ":bprevious<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { desc = "Close buffer" })

-- Session management
vim.keymap.set("n", "<leader>qs", function()
	require("persistence").load()
end, { desc = "Restore session" })

vim.keymap.set("n", "<leader>ql", function()
	require("persistence").load({ last = true })
end, { desc = "Restore last session" })

vim.keymap.set("n", "<leader>qd", function()
	require("persistence").stop()
end, { desc = "Disable session saving" })
