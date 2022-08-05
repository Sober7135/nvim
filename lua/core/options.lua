local opt = vim.opt

local set_options = function()
  opt.startofline = true
  opt.number = true
  opt.relativenumber = true
  opt.guifont = [[FiraCode\ Nerd\ Font\ Mono:h12]]
  opt.termguicolors = true
end

set_options()
