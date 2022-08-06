local config = {}

local cfg = "plugin.ui.config"

config.material = function()
  require(cfg .. "material_config")
end

config.bufferline = function() 
  require(cfg .. "bufferline_config")
end

config.nvim_tree = function ()
  require(cfg .. "nvim_tree_config")
end

return config