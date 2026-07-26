require("catppuccin").setup({
	flavour = "macchiato", -- latte, frappe, macchiato, mocha
	transparent_background = true, -- disables setting the background color.
})

vim.cmd.colorscheme("catppuccin-nvim")

-- catpuccin clears there
-- need to reset for blink pairs to work
vim.api.nvim_set_hl(0, "BlinkPairsOrange", { fg = "#fab387" })
vim.api.nvim_set_hl(0, "BlinkPairsPurple", { fg = "#cba6f7" })
vim.api.nvim_set_hl(0, "BlinkPairsBlue", { fg = "#89b4fa" })
vim.api.nvim_set_hl(0, "BlinkPairsUnmatched", {
	fg = "#f38ba8",
	bold = true,
})
