return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  init = function()
    vim.cmd.colorscheme 'catppuccin'
    vim.cmd.hi 'Comment gui=none'
    require('catppuccin').setup {
      default_integrations = true,
      integrations = {
        notify = true,
        noice = true,
        which_key = true,
      },
    }
  end,
}
