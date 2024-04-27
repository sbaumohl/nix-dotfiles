local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- require("sbaumohl")
require("lazy").setup({
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		priority = 1000,
		opts = {},
	},
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		config = function()
			require("nvim-tree").setup({})
		end,
	},

	{
		"m-demare/hlargs.nvim",
	},
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	{ "neovim/nvim-lspconfig" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/cmp-cmdline" },
	{ "hrsh7th/nvim-cmp" },
	{ "L3MON4D3/LuaSnip" },
	{ "saadparwaiz1/cmp_luasnip" },
	{ "onsails/lspkind-nvim" },
	{ "mfussenegger/nvim-lint" },
	{ "mhartington/formatter.nvim" },
	{ "ckipp01/stylua-nvim" },
	{
		"utilyre/barbecue.nvim",
		name = "barbecue",
		version = "*",
		dependencies = {
			"SmiteshP/nvim-navic",
			"nvim-tree/nvim-web-devicons", -- optional dependency
		},
		opts = {
			-- configurations go here
		},
	},
}, {
	dev = {
		path = "~/.local/share/nvim/nix",
		fallback = false,
	},
})

-- tokyonight colorscheme
vim.cmd([[colorscheme tokyonight-night]])

print("hello, world!")
