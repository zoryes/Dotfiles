-- buffer movement
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to lower window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to upper window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- clear search
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", {
	desc = "Clear search highlight",
})

-- autoclose quickfix window
vim.api.nvim_create_autocmd("FileType", {
	pattern = "qf",
	callback = function(event)
		vim.keymap.set("n", "<CR>", "<CR><cmd>cclose<CR>", {
			buffer = event.buf,
			silent = true,
			desc = "Open quickfix item and close quickfix",
		})
	end,
})
