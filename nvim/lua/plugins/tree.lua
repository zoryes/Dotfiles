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

-- open tree on start and move to text buffer
vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		require("nvim-tree.api").tree.open()
		vim.cmd("wincmd p")
	end,
})
