require("nvim-tree").setup({
	view = {
		adaptive_size = true,
	},
	update_focused_file = {
		enable = true,
	},
	sync_root_with_cwd = true,
	respect_buf_cwd = true,
})

vim.keymap.set("n", "<C-n>", vim.cmd.NvimTreeToggle)
