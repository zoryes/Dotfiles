-- catppuccin
vim.pack.add({ { src = "https://github.com/catppuccin/nvim", name = "catppuccin" } })

-- tree
vim.pack.add({
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	{ src = "https://github.com/nvim-tree/nvim-tree.lua" },
})

-- lualine
vim.pack.add({
	"https://github.com/nvim-tree/nvim-web-devicons",
	"https://github.com/nvim-lualine/lualine.nvim",
})

-- bufferline
vim.pack.add({
	{ src = "https://github.com/akinsho/nvim-bufferline.lua" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
})

-- telescope
vim.pack.add({
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/nvim-telescope/telescope.nvim" },
})

-- conform
vim.pack.add({
	{ src = "https://github.com/stevearc/conform.nvim" },
})

-- treesitter
vim.pack.add({
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
})

-- lsp
vim.pack.add({
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/mason-org/mason-lspconfig.nvim" },
})

-- blink
vim.pack.add({
	{ src = "https://github.com/saghen/blink.cmp", version = "v1.10.2" },
})

-- plugin setup
require("plugins.catppuccin")
require("plugins.tree")
require("plugins.lualine")
require("plugins.bufferline")
require("plugins.telescope")
require("plugins.conform")
require("plugins.treesitter")
require("plugins.lsp")
