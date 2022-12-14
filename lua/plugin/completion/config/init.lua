local config = {} 

config.lspconfig = function() 
	require("plugin.completion.config.lspconfig_config")
end

config.nvim_cmp = function() 
	require("plugin.completion.config.nvim_cmp_config")
end

config.luasnip = function() 
	require("luasnip.loaders.from_vscode").lazy_load()
	require('luasnip').filetype_extend('cpp', {'cc'})
end

config.autopairs = function()
	require("plugin.completion.config.autopairs_config")
end

config.lspsaga_config = function()
	require("lspsaga").init_lsp_saga({
		symbol_in_winbar = {
			enable = true,
		},
	})
end

return config
