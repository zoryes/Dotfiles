require("nvim-treesitter").install({
	"lua",
	"c",
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = {
		"lua",
		"c",
	},
	callback = function()
		vim.treesitter.start()
	end,
})
