local config = {}

config.material = function()
  require("plugin.ui.config.material_config")
end

config.bufferline = function() 
  require("bufferline").setup{}
end

return config
