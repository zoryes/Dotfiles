
-- add plugins by pack.nvim
vim.pack.add { { src = "https://github.com/catppuccin/nvim", name = "catppuccin" } }

vim.pack.add({
  { src = 'https://github.com/nvim-tree/nvim-web-devicons' }, -- optional
  { src = 'https://github.com/nvim-tree/nvim-tree.lua' },
})

vim.pack.add({
    'https://github.com/nvim-tree/nvim-web-devicons',
    'https://github.com/nvim-lualine/lualine.nvim'
})

vim.pack.add({
	{ src = "https://github.com/akinsho/nvim-bufferline.lua" },
	-- Optional, but recommended for file icons
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
})

-- plugin setup
require("plugins.catppuccin")
require("plugins.tree")
require("plugins.lualine")
require("plugins.bufferline")
