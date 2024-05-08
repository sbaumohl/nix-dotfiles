-- Harpoon ReadMe here: https://github.com/ThePrimeagen/harpoon?tab=readme-ov-file

-- Terminal navigation
vim.api.nvim_set_keymap('n', '<leader>ht', '<cmd> lua require("harpoon.term").gotoTerminal(1)<CR>', {noremap = true, silent = false})

-- next/prev buffers
vim.api.nvim_set_keymap('n', '<leader>bh', '<cmd> lua require("harpoon.ui").nav_next()<CR>', {noremap = true, silent = false})

vim.api.nvim_set_keymap('n', '<leader>bl', '<cmd> lua require("harpoon.ui").nav_prev()<CR>', {noremap = true, silent = false})

