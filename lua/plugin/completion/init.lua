local plugin = require("plugin")
local cfg = require("plugin.completion.config")

local plugins = {

  {
		"neovim/nvim-lspconfig",
		ft = {"rust", "c", "h", "cpp", "python"},
		config = cfg.lspconfig
	},

  { 
		"hrsh7th/nvim-cmp",
		after = "LuaSnip",	
		requires = {
			{"hrsh7th/cmp-nvim-lsp", after = "nvim-lspconfig"},
			{"saadparwaiz1/cmp_luasnip", after = "nvim-cmp"},
			{"hrsh7th/cmp-buffer", after = "nvim-cmp"},
			{"hrsh7th/cmp-path", after = "nvim-cmp"},
		},
		config = cfg.nvim_cmp,
	},

  {
    "L3MON4D3/LuaSnip",
    after = "nvim-lspconfig",
  },
	--{
	--	"hrsh7th/cmp-nvim-lsp",
	--	after = "nvim-cmp",
	--},

	--{
	--	"saadparwaiz1/cmp_luasnip",
	--	after = "nvim-cmp",
	--	ft = {"rust", "c", "h", "cpp", "python"},
	--},

	--{
	--	"L3MON4D3/LuaSnip",
	--	after = "nvim-cmp",
	--},

}

for _, v in ipairs(plugins) do
  plugin.register(v)
end
