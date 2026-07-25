require("nvim-treesitter").install({
	"lua",
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = {
		"lua",
	},
	callback = function()
		vim.treesitter.start()
	end,
})
