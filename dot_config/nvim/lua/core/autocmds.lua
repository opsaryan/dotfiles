-- High light yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank({ timeout = 150 })
	end,
})

-- Show diagnostics in a floating window on hover
vim.api.nvim_create_autocmd("CursorHold", {
	callback = function()
		vim.diagnostic.open_float(nil, { focus = false })
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = {
		"neo-tree",
		"TelescopePrompt",
		"TelescopeResults",
		"lazy",
		"mason",
	},
	callback = function()
		vim.b.miniindentscope_disable = true
	end,
})
