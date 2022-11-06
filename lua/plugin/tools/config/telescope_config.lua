require('core.keymap')

local nmap = keymap.nmap
local opt = {silent = true, noremap = true}

require("telescope").setup{
}

nmap({
	{"<Leader>ff", ":lua require'telescope.builtin'.find_files(require('telescope.themes').get_ivy({}))<CR>", opt}
})

