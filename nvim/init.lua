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

require("sbaumohl")
require("lazy").setup("plugins", {
    dev = {
        path = "~/.local/share/nvim/nix",
        fallback = false,
    }
})

-- tokyonight colorscheme
vim.cmd[[colorscheme tokyonight-night]]

print("hello, world!")
