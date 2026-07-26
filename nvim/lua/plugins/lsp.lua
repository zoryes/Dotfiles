require("mason").setup()

require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
	},
})

local map = vim.keymap
local diag = vim.diagnostic
local lsp = vim.lsp

-- global lsp mappings
local on_attach = function(client, bufnr)
	local opts = { noremap = true, silent = true }
	-- open diagnostic
	map.set("n", "<leader>vd", function()
		diag.open_float()
	end, opts)
	-- next diagnostic
	map.set("n", "[d", function()
		diag.goto_next()
	end, opts)
	-- prev diagnostic
	map.set("n", "]d", function()
		diag.goto_prev()
	end, opts)
end

-- apply the globals to all languages
lsp.config("lua_ls", {
	on_attach = on_attach,
})

lsp.enable("lua_ls")
