local plugin = {
  content = {}
}
local fn = vim.fn
local install_path = fn.stdpath("data") .. '/site/pack/packer/start/packer.nvim'

local has_packer = function()
  return fn.empty(fn.glob(install_path)) == 0
end

local bootstrap = function()
  fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
  vim.cmd [[packadd packer.nvim]]
  plugin.load()
end

plugin.register = function(plugins)
  table.insert(plugin.content, plugins)
end

plugin.load = function()
  vim.cmd [[packadd packer.nvim]]

  local modules = {
    "completion",
    "lang",
    "tools",
    "ui",
  }

  -- register
  for _, mod in ipairs(modules) do
    require("plugin." .. mod)
  end

  require("packer").startup(function(use)
    use 'wbthomason/packer.nvim'

    for _, plg in ipairs(plugin.content) do
      use(plg)
    end

  end)
end


plugin.init = function()
  if not has_packer() then
    bootstrap()
  end
  plugin.load()
end

return plugin
