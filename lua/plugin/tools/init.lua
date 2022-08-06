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
}

for _, v in ipairs(plugins) do
  plugin.register(v)
end
