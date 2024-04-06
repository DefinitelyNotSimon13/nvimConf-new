-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

local function loadPlugins(dir)
  local lsDir = '$HOME/.config/nvim/lua/plugins/' .. dir
  local plugins = {}

  for file in io.popen('ls ' .. lsDir):lines() do
    if file:match '%.lua$' then
      local pluginName = file:match '^(.-)%.lua$'
      if pluginName == 'init' then
        goto continue
      end

      local pluginPath = 'plugins.' .. dir .. '.' .. pluginName
      local success, plugin = pcall(require, pluginPath)

      if success then
        table.insert(plugins, plugin)
      else
        print('Failed to load plugin:', pluginPath)
      end
    end
    ::continue::
  end
  return plugins
end

local plugins = {}
table.insert(plugins, (loadPlugins 'utils'))
table.insert(plugins, (loadPlugins 'misc'))
table.insert(plugins, (loadPlugins 'ui'))
table.insert(plugins, (loadPlugins 'language'))
table.insert(plugins, (require 'plugins.other'))

return plugins
