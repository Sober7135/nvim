local map = require("core.keymap").map
local opt = {silent = true, noremap = true}

require("telescope").setup{
}

map("n", "<Leader>ff", ":lua require'telescope.builtin'.find_files(require('telescope.themes').get_ivy({}))<CR>", opt)

