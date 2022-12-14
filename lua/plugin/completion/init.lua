local plugin = require('plugin')
local cfg = require('plugin.completion.config')

local plugins = {
  {
		'neovim/nvim-lspconfig',
		after = 'cmp-nvim-lsp',
		ft = {'rust', 'c', 'h', 'cpp', 'python'},
		config = cfg.lspconfig
	},

	{
    'L3MON4D3/LuaSnip',
		event = 'InsertEnter',
		config = cfg.luasnip
  },

  { 
		'hrsh7th/nvim-cmp',
		after = 'LuaSnip',	
		requires = {
			{ 'hrsh7th/cmp-nvim-lsp', after = 'nvim-cmp' },
			{ 'saadparwaiz1/cmp_luasnip', after = 'LuaSnip' },
			{ 'hrsh7th/cmp-buffer', after = 'nvim-cmp' },
			{ 'hrsh7th/cmp-path', after = 'nvim-cmp' },
		},
		config = cfg.nvim_cmp,
	},

	{
		'hrsh7th/cmp-nvim-lsp',
		after = 'nvim-cmp',
	},

	{
		'saadparwaiz1/cmp_luasnip',
		after = 'nvim-cmp',
		ft = {'rust', 'c', 'h', 'cpp', 'python'},
	},

	{
		"windwp/nvim-autopairs",
		config = cfg.autopairs,
	},

	{
		'glepnir/lspsaga.nvim',
		after = 'nvim-lspconfig',
		config = cfg.lspsaga,
	}
}

for _, v in ipairs(plugins) do
  plugin.register(v)
end
