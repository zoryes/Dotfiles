
-- catppuccin 
vim.pack.add { { src = "https://github.com/catppuccin/nvim", name = "catppuccin" } }

-- tree 
vim.pack.add({
  { src = 'https://github.com/nvim-tree/nvim-web-devicons' },
  { src = 'https://github.com/nvim-tree/nvim-tree.lua' },
})

-- lualine 
vim.pack.add({
    'https://github.com/nvim-tree/nvim-web-devicons',
    'https://github.com/nvim-lualine/lualine.nvim'
})

-- bufferline 
vim.pack.add({
	{ src = "https://github.com/akinsho/nvim-bufferline.lua" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
})

-- plugin setup
require("plugins.catppuccin")
require("plugins.tree")
require("plugins.lualine")
require("plugins.bufferline")
