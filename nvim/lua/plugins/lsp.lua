require("mason").setup()

require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
	},
})

-- global lsp mappings
local on_attach = function(client, bufnr)
	local opts = { noremap = true, silent = true }
	-- open diagnostic
	vim.keymap.set("n", "<leader>vd", function()
		vim.diagnostic.open_float()
	end, opts)
	-- goto next
	vim.keymap.set("n", "]d", function()
		vim.diagnostic.jump({ count = 1 })
	end, {
		desc = "Next diagnostic",
	})
	-- goto prev
	vim.keymap.set("n", "[d", function()
		vim.diagnostic.jump({ count = -1 })
	end, {
		desc = "Previous diagnostic",
	})
end

-- lua config
vim.lsp.config("lua_ls", {
	on_attach = on_attach,
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},

			diagnostics = {
				globals = { "vim" },
			},

			workspace = {
				library = {
					vim.env.VIMRUNTIME,
				},
			},
		},
	},
})

vim.lsp.enable("lua_ls")
