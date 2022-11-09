vim.cmd [[highlight IndentBlanklineIndent1 guibg=#afafaf gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guibg=#1a1a1a gui=nocombine]]
require("indent_blankline").setup {
	char = ' ',
	char_highlight_list = {
	},
	space_char_highlight_list = {
	},
	show_trailing_blankline_indent = false,
	show_current_context = true,
  show_current_context_start = true,
}

