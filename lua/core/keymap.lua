local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

local set_keymap = function()
  map("i", "jj", "<ESC>", opt)
  map("v", "df", "<ESC>", opt)
  map("n", "<C-a>", "ggvG$", opt)
end

set_keymap()
