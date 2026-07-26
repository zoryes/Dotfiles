require("which-key").setup({
	delay = 300,

	preset = "modern", -- "classic", "modern", or "helix"

	win = {
		border = "rounded",
		padding = { 1, 2 },
	},

	layout = {
		spacing = 3,
	},
})

require("which-key").add({
	{ "<leader>v", group = "LSP" },
	{ "<leader>f", group = "Telescope" },
})
