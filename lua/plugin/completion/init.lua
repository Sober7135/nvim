local plugin = require("plugin")
local cfg = require("plugin.completion.config")

local plugins = {

  {
		"neovim/nvim-lspconfig",
		ft = {"rust", "c", "h", "cpp", "python"},
		config = cfg.lspconfig
	},

  --{ 
	--	"hrsh7th/nvim-cmp",
	--	after = "nvim-lspconfig",	
	--},

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
