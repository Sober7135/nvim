local config = {}

config.nvim_treesitter = function() 
	require("plugin.tools.config.nvim_treesitter_config")
end

config.telescope = function()
	require("plugin.tools.config.telescope_config")
end

config.autopairs = function()
	require("plugin.tools.config.autopairs_config")
end


return config
