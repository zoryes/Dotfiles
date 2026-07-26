require("blink.pairs").download():pwait(60000)
require("blink.pairs").setup({
	mappings = {
		enabled = true,
		cmdline = true,
		disabled_filetypes = {
			"TelescopePrompt",
		},
	},
	highlights = {
		enabled = true,
		groups = {
			"BlinkPairsOrange",
			"BlinkPairsPurple",
			"BlinkPairsBlue",
		},
		unmatched_group = "BlinkPairsUnmatched",
		matchparen = {
			enabled = true,
			include_surrounding = false,
		},
	},
})
