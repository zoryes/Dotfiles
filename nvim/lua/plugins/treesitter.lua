require("nvim-treesitter").install({
	"lua",
	"c",
	"swift",
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = {
		"lua",
		"c",
		"swift",
	},
	callback = function()
		vim.treesitter.start()
	end,
})
