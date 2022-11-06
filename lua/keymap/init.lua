require('core.keymap')

local nmap, imap, vmap = keymap.nmap, keymap.imap, keymap.vmap
local cmd = keymap.cmd

-- local map = vim.keymap

local opt = { noremap = true, silent = true }

imap({
	{ 'jj', '<ESC>', opt },
})

vmap({
	{ 'df', '<ESC>', opt },
})

nmap({
	{ '<C-a>', 'ggvG$', opt },
	{ '<C-s>', cmd('w'), opt },
	{ 'Y', 'y$', opt },

-- move cursor between windows
	{ '<C-h>', cmd('wincmd h'), opt },
	{ '<C-j>', cmd('wincmd j'), opt },
	{ '<C-k>', cmd('wincmd k'), opt },
	{ '<C-l>', cmd('wincmd l'), opt },

-- nvim-tree
	{ '<C-e>', cmd('NvimTreeToggle'), opt },


-- bufferline
	{ '<C-c>', cmd('BufferLinePickClose'), opt },
	{ '<Tab>', cmd('BufferLineCycleNext'), opt },
	{ '<S-Tab>', cmd('BufferLineCyclePrev'), opt },

	{ '<A-1>', cmd('BufferLineGoToBuffer 1'), opt },
	{ '<A-2>', cmd('BufferLineGoToBuffer 2'), opt },
	{ '<A-3>', cmd('BufferLineGoToBuffer 3'), opt },
	{ '<A-4>', cmd('BufferLineGoToBuffer 4'), opt },
	{ '<A-5>', cmd('BufferLineGoToBuffer 5'), opt },
	{ '<A-6>', cmd('BufferLineGoToBuffer 6'), opt },
	{ '<A-7>', cmd('BufferLineGoToBuffer 7'), opt },
	{ '<A-8>', cmd('BufferLineGoToBuffer 8'), opt },
	{ '<A-9>', cmd('BufferLineGoToBuffer 9'), opt },

-- material_theme
	{'<Leader>ct', cmd('lua require("material.functions").find_style()'), opt}
})
