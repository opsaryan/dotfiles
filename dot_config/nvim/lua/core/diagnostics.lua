vim.diagnostic.config({
	virtual_text = {
		prefix = "●",
		spacing = 2,
	},
	underline = true,
	update_in_insert = false,
	severity_sort = true,

	signs = {
		text = {
			[vim.diagnostic.severity.ERROR] = "",
			[vim.diagnostic.severity.WARN] = "",
			[vim.diagnostic.severity.HINT] = "",
			[vim.diagnostic.severity.INFO] = "",
		},
	},

	float = {
		border = "rounded",
		source = "always",
	},
})
