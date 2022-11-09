local config = {}

config.nvim_treesitter = function() 
	require("plugin.tools.config.nvim_treesitter_config")
end

config.telescope = function()
	require("plugin.tools.config.telescope_config")
end

config.indent_blankline = function()
	require("plugin.tools.config.indent_blankline_config")
end

config.toggleterm = function()
	require("toggleterm").setup {}
end
return config
