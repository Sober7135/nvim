local config = {} 

config.lspconfig = function() 
	require("plugin.completion.config.lspconfig_config")
end

return config
