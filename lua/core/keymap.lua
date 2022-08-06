local keymap = {
}

local map = vim.api.nvim_set_keymap

local opt = { noremap = true, silent = true }

keymap.setup = function()
  map("i", "jj", "<ESC>", opt)
  map("v", "df", "<ESC>", opt)
  map("n", "<C-a>", "ggvG$", opt)
  map("n", "<C-s>", ":w<CR>", opt)
  map("n", "Y", "y$", opt)

  -- move cursor between windows
  map("n", "<C-h>", ":wincmd h<CR>", opt)
  map("n", "<C-j>", ":wincmd j<CR>", opt)
  map("n", "<C-k>", ":wincmd k<CR>", opt)
  map("n", "<C-l>", ":wincmd l<CR>", opt)

	-- nvim-tree
	map("n", "<C-e>", ":NvimTreeToggle<CR>", opt)


	-- bufferline
  map("n", "<C-c>", ":BufferLinePickClose<CR>", opt)
  map("n", "<Tab>", ":BufferLineCycleNext<CR>", opt)
  map("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", opt)

  map("n", "<A-1>", ":BufferLineGoToBuffer 1 <CR>", opt)
	map("n", "<A-2>", ":BufferLineGoToBuffer 2 <CR>", opt)
	map("n", "<A-3>", ":BufferLineGoToBuffer 3 <CR>", opt)
	map("n", "<A-4>", ":BufferLineGoToBuffer 4 <CR>", opt)
	map("n", "<A-5>", ":BufferLineGoToBuffer 5 <CR>", opt)
	map("n", "<A-6>", ":BufferLineGoToBuffer 6 <CR>", opt)
	map("n", "<A-7>", ":BufferLineGoToBuffer 7 <CR>", opt)
	map("n", "<A-8>", ":BufferLineGoToBuffer 8 <CR>", opt)
	map("n", "<A-9>", ":BufferLineGoToBuffer 9 <CR>", opt)
end

keymap.map = vim.api.nvim_set_keymap

return keymap
