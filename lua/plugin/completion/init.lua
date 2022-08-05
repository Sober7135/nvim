local plugin = require("plugin")

local plugins = {

  { "neovim/nvim-lspconfig"},

  { "hrsh7th/nvim-cmp" },

}

for _, v in ipairs(plugins) do
  plugin.register(v)
end
