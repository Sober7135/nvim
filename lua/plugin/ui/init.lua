local plugin = require('plugin')
local cfg = require('plugin.ui.config')

local plugins = {

  { 'kyazdani42/nvim-web-devicons', },

  {
    'akinsho/bufferline.nvim',
    tag = 'v2.*',
    requires = 'kyazdani42/nvim-web-devicons',
    config = cfg.bufferline,
		event = 'BufRead',
  },

  {
    'marko-cerovac/material.nvim',
    config = cfg.material,
  },

  {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons', -- optional, for file icons
    config = cfg.nvim_tree,
  },
	
	{
		'nvim-lualine/lualine.nvim',
  	requires = { 'kyazdani42/nvim-web-devicons', opt = true },
		config = cfg.lualine,
	}
}

for _, v in ipairs(plugins) do
  plugin.register(v)
end
