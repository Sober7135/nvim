local o, g, au = vim.o, vim.g, vim.api.nvim_create_autocmd

o.startofline = true
o.number = true
o.relativenumber = true
o.guifont = [[FiraCode\ Nerd\ Font\ Mono:h12]]
o.termguicolors = true
o.tabstop = 2
o.shiftwidth = 2
o.cursorline = true
o.laststatus = 3
o.list = true

g.mapleader = ' '
g.loaded_netrw = 1
g.loaded_netrwPlugin = 1
g.material_style = "palenight"

vim.cmd("set fillchars=eob:\\ ")
vim.cmd("set splitbelow")
