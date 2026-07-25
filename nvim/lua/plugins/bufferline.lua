require("bufferline").setup({
	options = {
		mode = "buffers",
		separator_style = "slant",
		show_buffer_close_icons = true,
		show_close_icon = true,
    offsets = {
      {
        filetype = "NvimTree",
        text = "File explorer", 
        text_align = "center",
        separator = true
      }
    }
	}
})

vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>", {
  desc = "Next buffer",
})

vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>", {
  desc = "Previous buffer",
})

vim.keymap.set("n", "<leader>x", "<cmd>bdelete<CR>", {
  desc = "Close buffer",
})
