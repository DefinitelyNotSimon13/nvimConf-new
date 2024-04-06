-- "<space>sh" to [s]earch the [h]elp documentation

-- Options
require 'options'

-- Keymaps
require 'keymaps'

-- [[ Install `lazy.nvim` plugin manager ]]
require 'plugins.lazy'

-- [[ Configure and install plugins ]]
require('lazy').setup({ require 'plugins' }, {
  ui = {
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})
-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
