local o, g = vim.o, vim.g

local set_options = function()
  o.startofline = true
  o.number = true
  o.relativenumber = true
  o.guifont = [[FiraCode\ Nerd\ Font\ Mono:h12]]
  o.termguicolors = true
  o.tabstop = 2
	o.shiftwidth = 2
	o.cursorline = true

  g.mapleader = ' '
end

set_options()
