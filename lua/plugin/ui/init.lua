local plugin = require("plugin")
local cfg = require("plugin.ui.config")

local plugins = {

  { "kyazdani42/nvim-web-devicons", },

  { "akinsho/bufferline.nvim", tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons', config = cfg.bufferline},

  { "marko-cerovac/material.nvim", config = cfg.material }

}

for _, v in ipairs(plugins) do
  plugin.register(v)
end
