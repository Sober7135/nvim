local config = {} 

config.lspconfig = function() 
	require("plugin.completion.config.lspconfig_config")
end

config.nvim_cmp = function() 
	require("plugin.completion.config.nvim_cmp_config")
end

return config
