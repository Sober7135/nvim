local plugin = require("plugin")
local cfg = require("plugin.ui.config")

local plugins = {

  { "kyazdani42/nvim-web-devicons", },

  {
    "akinsho/bufferline.nvim",
    tag = "v2.*",
    requires = 'kyazdani42/nvim-web-devicons',
    config = cfg.bufferline,
  },

  {
		"marko-cerovac/material.nvim",
		config = cfg.material,
	},

  {
    "kyazdani42/nvim-tree.lua",
    requires = 'kyazdani42/nvim-web-devicons', -- optional, for file icons
    config = cfg.nvim_tree,
  },

}

for _, v in ipairs(plugins) do
  plugin.register(v)
end
