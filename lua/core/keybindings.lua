local map = vim.api.nvim_set_keymap
local opt = {noremap = true, silent = true}

map("i", "jj", "<ESC>", opt)