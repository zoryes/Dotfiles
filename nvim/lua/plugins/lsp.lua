require("mason").setup()

require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
	},
})

vim.lsp.enable("lua_ls")
