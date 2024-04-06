local function loadPlugins(dir)
  local pluginDir = dir
  local plugins = {}

  for file in io.popen('ls ' .. pluginDir):lines() do
    if file:match '%.lua$' then
      local pluginName = file:match '^(.-)%.lua$'
      if pluginName == 'init' then
        goto continue
      end

      local pluginPath = pluginDir .. '.' .. pluginName
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

return loadPlugins('utils')
