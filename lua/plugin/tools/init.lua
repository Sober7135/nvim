local plugin = require("plugin")
local cfg = require("plugin.tools.config")

local plugins = {

	{
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate' ,
		event = 'BufRead',
		config = cfg.nvim_treesitter,
	},

	{
		'nvim-telescope/telescope.nvim',
		requires = { 
			'nvim-lua/plenary.nvim',
			'nvim-telescope/telescope-fzf-native.nvim',
			'BurntSushi/ripgrep',
		},
		config = cfg.telescope,
	},

	{
		'wakatime/vim-wakatime',
	},

	{
		"lukas-reineke/indent-blankline.nvim",
		after = 'nvim-treesitter',
		event = 'BufRead',
		config = cfg.indent_blankline
	},

	{
		"akinsho/toggleterm.nvim",
		tag = '*',
		config = cfg.toggleterm
	},

  {
		'phaazon/hop.nvim',
	  branch = 'v2',
	  config = function()
	    require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
	  end
	},
}

for _, v in ipairs(plugins) do
  plugin.register(v)
end
