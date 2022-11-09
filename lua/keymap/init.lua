require('core.keymap')

local nmap, imap, vmap, tmap = keymap.nmap, keymap.imap, keymap.vmap, keymap.tmap
local cmd = keymap.cmd
local opt = { noremap = true, silent = true }

imap({
	{ 'jj', '<ESC>', opt },
})

vmap({
	{ '<Leader>jj', '<ESC>', opt },
})

nmap({

	{ '<C-a>', 'ggvG$', opt },
	{ '<C-s>', cmd('w'), opt },
	{ 'Y', 'y$', opt },
	{ 'D', 'd$', opt },
	{ ';q', cmd('q'), opt },

  -- window management
	{ ';', '<C-w>', opt },
	{ '<Leader>.', '<C-w>>', opt },
	{ '<Leader>,', '<C-w><', opt },
	{ '<Leader>-', '<C-w>-', opt },
	{ '<Leader>=', '<C-w>+', opt },


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
	{ '<Leader>ct', cmd('lua require("material.functions").find_style()'), opt },

  -- telescope
	{ "<Leader>ff", ":lua require'telescope.builtin'.find_files(require('telescope.themes').get_ivy({}))<CR>", opt },

  -- toggleterm
	{ 'ct', cmd('ToggleTerm'), opt },
	-- Lspsaga
  { '[e', cmd('Lspsaga diagnostic_jump_next') },
  { ']e', cmd('Lspsaga diagnostic_jump_prev') },
  { '[c', cmd('Lspsaga show_cursor_diagnostics') },
  { 'K', cmd('Lspsaga hover_doc') },
  { 'ga', cmd('Lspsaga code_action') },
  { 'gd', cmd('Lspsaga peek_definition') },
  { 'gs', cmd('Lspsaga signature_help') },
  { 'gr', cmd('Lspsaga rename') },
  { 'gh', cmd('Lspsaga lsp_finder') },
  { '<Leader>o', cmd('LSoutlineToggle') },
  { '<Leader>g', cmd('Lspsaga open_floaterm lazygit') },
})

tmap({
	{ 'kk', '<C-\\><C-n>', opt },
	-- window management
	{ ';h', cmd('wincmd h'), opt },
	{ ';l', cmd('wincmd l'), opt },
	{ ';j', cmd('wincmd j'), opt },
	{ ';k', cmd('wincmd k'), opt },

	-- toggleterm
	{ 'ct', cmd('ToggleTerm'), opt },
})
