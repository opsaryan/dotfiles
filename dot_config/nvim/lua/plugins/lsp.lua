return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},

	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "williamboman/mason.nvim" },
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"ts_ls",
					"html",
					"cssls",
					"jsonls",
				},
			})
		end,
	},

	{
		-- nvim-lspconfig is still needed for server definitions
		"neovim/nvim-lspconfig",
		config = function()
			-- Keymaps on attach
			local navic = require("nvim-navic")
			local on_attach = function(client, bufnr)
				-- local opts = { buffer = bufnr }

				if client.server_capabilities.documentSymbolProvider then
					navic.attach(client, bufnr)
				end
			end

			vim.lsp.config("lua_ls", {
				on_attach = on_attach,
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			})

			vim.lsp.config("ts_ls", {
				on_attach = on_attach,
			})

			vim.lsp.config("html", {
				on_attach = on_attach,
			})

			vim.lsp.config("cssls", {
				on_attach = on_attach,
			})

			vim.lsp.config("jsonls", {
				on_attach = on_attach,
			})
		end,
	},
}
