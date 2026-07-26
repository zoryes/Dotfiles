require("nvim-treesitter").install({
	"lua",
	"c",
	"cpp",
	"swift",
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = {
		"lua",
		"c",
		"cpp",
		"swift",
	},
	callback = function()
		vim.treesitter.start()
	end,
})
