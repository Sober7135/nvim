local plugin = require("plugin")

local plugins = {

  { "kyazdani42/nvim-web-devicons", },

  { "akinsho/bufferline.nvim", tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons' },

  { "marko-cerovac/material.nvim" }

}

for _, v in ipairs(plugins) do
  plugin.register(v)
end
