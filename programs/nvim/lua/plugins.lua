return { 
  -- Plugins will be added here accordingly.
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
    require("nvim-tree").setup {}
  end,
  },

  {
  "m-demare/hlargs.nvim",
  },
  {
  'nvim-telescope/telescope.nvim', branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' }
  },

  -- {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'}, {'neovim/nvim-lspconfig'}, {'hrsh7th/cmp-nvim-lsp'}, {'hrsh7th/nvim-cmp'}, {'L3MON4D3/LuaSnip'},
}
