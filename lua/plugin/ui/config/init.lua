local config = {}

local cfg = 'plugin.ui.config.'

config.material = function()
  require('plugin.ui.config.material_config')
end

config.bufferline = function() 
  require('plugin.ui.config.bufferline_config')
end

config.nvim_tree = function ()
  require('plugin.ui.config.nvim_tree_config')
end

config.lualine = function () 
	require('plugin.ui.config.lualine_config')
end

return config
